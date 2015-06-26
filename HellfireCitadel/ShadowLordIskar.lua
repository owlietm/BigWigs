
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Shadow-Lord Iskar", 1026, 1433)
if not mod then return end
mod:RegisterEnableMob(90316, 91591) -- 90316 in beta
mod.engageId = 1788

--------------------------------------------------------------------------------
-- Locals
--

local shadowEscapeCount = 1
local windTargets = {}

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.custom_off_wind_marker = "Phantasmal Winds marker"
	L.custom_off_wind_marker_desc = "Marks Phantasmal Winds targets with {rt1}{rt2}{rt3}{rt4}{rt5}, requires promoted or leader."
	L.custom_off_wind_marker_icon = 1
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		--[[ Phase 1 ]]--
		{182200, "SAY"}, -- Fel Chakram
		181956, -- Phantasmal Winds
		"custom_off_wind_marker",
		182323, -- Phantasmal Wounds
		--[[ Phase 2 ]]--
		{181912, "FLASH"}, -- Focused Blast
		{181753, "SAY"}, -- Fel Bomb
		181827, -- Fel Conduit
		{181824, "SAY", "PROXIMITY"}, -- Phantasmal Corruption
		{185510, "SAY"}, -- Dark Bindings
		--[[ General ]]--
		{179202, "SAY", "FLASH"}, -- Eye of Anzu
		185345, -- Shadow Riposte
		{182582, "SAY"}, -- Fel Incineration
		"stages",
	}, {
		[182200] = CL.phase:format(1),
		[181912] = CL.phase:format(2),
		[179202] = "general",
	}
end

function mod:OnBossEnable()
	self:Log("SPELL_AURA_APPLIED", "EyeOfAnzu", 179202)
	self:Log("SPELL_CAST_SUCCESS", "PhantasmalWinds", 181956)
	self:Log("SPELL_AURA_APPLIED", "PhantasmalWindsApplied", 185757, 181957)
	self:Log("SPELL_AURA_REMOVED", "PhantasmalWindsRemoved", 185757, 181957)
	self:Log("SPELL_AURA_APPLIED", "PhantasmalCorruption", 181824, 187990)
	self:Log("SPELL_AURA_REMOVED", "PhantasmalCorruptionRemoved", 181824, 187990)
	self:Log("SPELL_AURA_APPLIED", "FelBomb", 181753)
	self:Log("SPELL_CAST_START", "FocusedBlast", 181912)
	self:Log("SPELL_CAST_START", "FelConduit", 181827, 187998)
	self:Log("SPELL_AURA_APPLIED", "FelChakram", 182200, 182178)
	self:Log("SPELL_CAST_START", "DarkBindingsCast", 185510)
	self:Log("SPELL_AURA_APPLIED", "DarkBindings", 185510)
	self:Log("SPELL_CAST_START", "Stage2", 181873) -- Shadow Escape
	self:Log("SPELL_CAST_START", "ShadowRiposte", 185345)
	--self:Death("Deaths", 91543, 93625) --Corrupted Talonpriest, Phantasmal Resonance

	self:RegisterEvent("RAID_BOSS_WHISPER")
end

function mod:OnEngage()
	shadowEscapeCount = 1
	wipe(windTargets)
	if self:Mythic() then
		self:CDBar(185345, 9.5) -- Shadow Riposte
	end
	self:CDBar(181956, 16) -- Phantasmal Winds
end

--------------------------------------------------------------------------------
-- Event Handlers
--

--function mod:Deaths(args)
	--cancel timers from the adds if needed
--end

function mod:EyeOfAnzu(args)
	self:TargetMessage(args.spellId, args.destName, "Positive")
	if self:Me(args.destGUID) then
		self:PlaySound(args.spellId, "Info")
		self:Say(args.spellId)
		self:Flash(args.spellId)
	end
end

function mod:ShadowRiposte(args)
	self:CDBar(args.spellId, 27)
end

function mod:PhantasmalWinds(args)
	self:Message(args.spellId, "Attention")
	self:CDBar(args.spellId, 35.5)
	wipe(windTargets)
end

function mod:PhantasmalWindsApplied(args)
	windTargets[#windTargets + 1] = args.destName
	if self.db.profile.custom_off_wind_marker then
		SetRaidTarget(args.destName, #windTargets)
	end
end

function mod:PhantasmalWindsRemoved(args)
	if self.db.profile.custom_off_wind_marker then
		SetRaidTarget(args.destName, 0)
	end
	windTargets[args.destName] = nil
end

do
	local prev = 0
	function mod:PhantasmalWounds(args)
		local t = GetTime()
		if t-prev > 2 then
			prev = t
			self:Message(182323, "Urgent")
		end
	end
end

function mod:PhantasmalCorruption(args)
	self:TargetBar(181824, 10, args.destName)
	self:TargetMessage(181824, args.destName, "Urgent", "Alert")
	if self:Me(args.destGUID) then
		self:Say(181824)
		self:OpenProximity(181824, 15) -- XXX verify obliteration range
	end
end

function mod:PhantasmalCorruptionRemoved(args)
	if self:Me(args.destGUID) then
		self:CloseProximity(181824)
	end
	self:StopBar(args.spellName, args.destName)
end

function mod:FelBomb(args)
	self:TargetMessage(args.spellId, args.destName, "Important", self:Dispeller("magic") and "Alert")
	if self:Me(args.destGUID) then
		self:Say(args.spellId)
	end
end

function mod:FocusedBlast(args)
	self:Message(args.spellId, "Important", "Long", CL.casting:format(args.spellName))
	self:Bar(args.spellId, 12)
	self:Flash(args.spellId)
end

function mod:FelConduit(args)
	self:Message(181827, "Urgent", "Alert")
end

function mod:RAID_BOSS_WHISPER(event, msg)
	if msg:find(182582) then -- Fel Incineration
		self:Message(182582, "Personal", "Alarm", CL.you:format(self:SpellName(182582)))
		self:Say(182582)
	end
end

do
	local list = mod:NewTargetList()
	function mod:FelChakram(args)
		list[#list+1] = args.destName
		if #list == 1 then
			self:ScheduleTimer("TargetMessage", 0.3, 182200, list, "Attention", "Alert")
			self:CDBar(182200, 34)
		end
		if self:Me(args.destGUID) then
			self:Say(182200)
		end
	end
end

function mod:DarkBindingsCast(args)
	self:Message(args.spellId, "Urgent", "Info", CL.casting:format(args.spellName))
end

do
	local list = mod:NewTargetList()
	function mod:DarkBindings(args)
		list[#list+1] = args.destName
		if #list == 1 then
			self:ScheduleTimer("TargetMessage", 0.2, 185510, list, "Attention")
		end
		if self:Me(args.destGUID) then
			self:Say(args.spellId)
		end
	end
end

function mod:Stage2() -- Shadow Escape
	self:Message("stages", "Neutral", "Info", CL.phase:format(2), false)
	shadowEscapeCount = shadowEscapeCount + 1 -- For different adds and their timers if needed
	self:StopBar(185345) -- Shadow Riposte
	self:StopBar(181956) -- Phantasmal Winds
	self:StopBar(182200) -- Fel Chakram
	-- event for when Iskar is attackable again?
	self:DelayedMessage("stages", 40, "Neutral", CL.phase:format(1), false, "Info")
	self:Bar("stages", 40, CL.phase:format(1))
end
