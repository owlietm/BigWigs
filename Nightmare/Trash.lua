
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Emerald Nightmare Trash", 1094)
if not mod then return end
mod.displayName = CL.trash
mod:RegisterEnableMob(
	111004, -- Gelatinized Decay
	111354, -- Taintheart Befouler
	112153 -- Dire Shaman
)

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.gelatinizedDecay = "Gelatinized Decay"
	L.befouler = "Taintheart Befouler"
	L.shaman = "Dire Shaman"

	L.totem = 223918 -- Corrupted Totem
	L.totem_desc = 223923 -- Twisted Nova (cast by the totem)
	L.totem_icon = "spell_shaman_stormtotem"
	L.custom_on_mark_totem = "Mark the Totems"
	L.custom_on_mark_totem_desc = "Mark the Totems with {rt8}{rt7}, requires promoted or leader."
	L.custom_on_mark_totem_icon = 8
end

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		--[[ Gelatinized Decay ]]--
		221059, -- Wave of Decay
		{221028, "SAY"}, -- Unstable Decay
		--[[ Taintheart Befouler ]]--
		{222719, "SAY"}, -- Befoulment
		--[[ Dire Shaman ]]--
		"totem", -- Corrupted Totem
		"custom_on_mark_totem",
	}, {
		[221059] = L.gelatinizedDecay,
		[222719] = L.befouler,
		["totem"] = L.shaman,
	}
end

function mod:OnBossEnable()
	self:RegisterMessage("BigWigs_OnBossEngage", "Disable")

	--[[ Gelatinized Decay ]]--
	self:Log("SPELL_CAST_START", "WaveofDecay", 221059)
	self:Log("SPELL_AURA_APPLIED", "UnstableDecay", 221028)

	--[[ Taintheart Befouler ]]--
	self:Log("SPELL_AURA_APPLIED", "Befoulment", 222719)

	--[[ Dire Shaman ]]--
	self:Log("SPELL_SUMMON", "CorruptedTotem", 223918)
	self:Death("TotemDies", 112474)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

--[[ Gelatinized Decay ]]--
function mod:WaveofDecay(args)
	if not self:LFR() then
		self:Message(args.spellId, "Urgent", self:Interrupter(args.sourceGUID) and "Info", CL.casting:format(args.spellName))
	end
end

function mod:UnstableDecay(args)
	if self:Me(args.destGUID) then
		self:Say(args.spellId)
		self:TargetBar(args.spellId, 9, args.destName)
		self:TargetMessage(args.spellId, args.destName, "Personal", "Warning")
	end
end

--[[ Taintheart Befouler ]]--
function mod:Befoulment(args)
	self:TargetMessage(args.spellId, args.destName, "Positive", "Alert", nil, nil, true)
	self:TargetBar(args.spellId, 15, args.destName)
	if self:Me(args.destGUID) then
		self:Say(args.spellId)
	end
end

--[[ Dire Shaman ]]--
do
	local guids = {}
	function mod:CorruptedTotem(args)
		self:Message("totem", "Important", "Long", args.spellName, L.totem_icon)
		if self:GetOption("custom_on_mark_totem") then
			if not next(guids) then
				guids[args.destGUID] = 8
			else
				guids[args.destGUID] = 7
			end
			self:RegisterTargetEvents("MarkTotem")
		end
	end

	function mod:MarkTotem(event, unit)
		local guid = UnitGUID(unit)
		local icon = guids[guid]
		if icon and icon > 0 then
			local mobId = self:MobId(guid)
			if mobId == 112474 then -- Corrupted Totem
				SetRaidTarget(unit, icon)
				guids[guid] = 0
			end
		end
	end

	function mod:TotemDies(args)
		if guids[args.destGUID] then
			guids[args.destGUID] = nil
		end
	end
end
