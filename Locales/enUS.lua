local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs", "enUS", true, "raw")

-- Core.lua
L.defeated = "%s has been defeated"

L.bosskill = "Boss death"
L.bosskill_desc = "Announce when the boss has been defeated."
L.berserk = "Berserk"
L.berserk_desc = "Show a bar and timed warnings for when the boss will go berserk."
L.altpower = "Alternate power display"
L.altpower_desc = "Show the alternate power window, which displays the amount of alternate power that your group members have."
L.stages = "Stages"
L.stages_desc = "Enable functions related to the various stages/phases of the boss like proximity, bars, etc."
L.warmup = "Warmup"
L.warmup_desc = "Time until combat with the boss starts."

L.already_registered = "|cffff0000WARNING:|r |cff00ff00%s|r (|cffffff00%s|r) already exists as a module in Big Wigs, but something is trying to register it again. This usually means you have two copies of this module in your addons folder due to some addon updater failure. It is recommended that you delete any Big Wigs folders you have and then reinstall it from scratch."

L.movieBlocked = "You've seen this movie before, skipping it."

-- Loader / Options.lua
L.officialRelease = "You are running an official release of Big Wigs %s (revision %d)"
L.alphaRelease = "You are running an ALPHA RELEASE of Big Wigs %s (revision %d)"
L.sourceCheckout = "You are running a source checkout of Big Wigs %s directly from the repository."
L.newReleaseAvailable = "There is a new release of Big Wigs available (/bwv). You can visit curse.com, wowinterface.com, wowace.com or use the Curse Updater to get the new release."
L.alphaOutdated = "Your alpha version of Big Wigs is out of date (/bwv)."
L.extremelyOutdated = "\124cffff0000WARNING:\124r Your Big Wigs is over 120 revisions out of date!! Your version may have bugs, missing features, or completely incorrect timers. It is HIGHLY recommended you update."
L.severelyOutdated = "\124cffff0000Your Big Wigs is over 300 revisions out of date! We HIGHLY recommend you update to prevent syncing issues with other players!\124r"

L.tooltipHint = "|cffeda55fClick|r to reset all running modules.\n|cffeda55fAlt-Click|r to disable them.\n|cffeda55fRight-Click|r to access options."
L.activeBossModules = "Active boss modules:"
L.modulesReset = "All running modules have been reset."
L.modulesDisabled = "All running modules have been disabled."

L.oldVersionsInGroup = "There are people in your group with older versions or without Big Wigs. You can get more details with /bwv."
L.upToDate = "Up to date:"
L.outOfDate = "Out of date:"
L.dbmUsers = "DBM users:"
L.noBossMod = "No boss mod:"

L.blizzRestrictionsZone = "Waiting until combat ends to finish loading due to Blizzard combat restrictions."
L.finishedLoading = "Combat has ended, Big Wigs has now finished loading."
L.blizzRestrictionsConfig = "Due to Blizzard restrictions the config must first be opened out of combat, before it can be accessed in combat."

L.missingAddOn = "Please note that this zone requires the [\124cFF436EEE%s\124r] plugin for timers to be displayed."

L.coreAddonDisabled = "Big Wigs won't function properly since the addon %s is disabled. You can enable it from the addon control panel at the character selection screen."

L.removeAddon = "Please remove '|cFF436EEE%s|r' as it's been replaced by '|cFF436EEE%s|r'."

-- Options.lua
L.customizeBtn = "Customize ..."
L.profiles = "Profiles"
L.introduction = "Welcome to Big Wigs, where the boss encounters roam. Please fasten your seatbelt, eat peanuts and enjoy the ride. It will not eat your children, but it will assist you in preparing that new boss encounter as a 7-course dinner for your raid group."
L.configureBtnName = "Move & Configure >>> Bars/Messages/..."
L.configureBtnDesc = "Closes the interface options window and lets you configure displays for things like bars and messages.\n\nIf you want to customize more behind-the-scenes things, you can expand Big Wigs in the left tree and find the 'Customize ...' subsection."
L.sound = "Sound"
L.soundDesc = "Messages might come with a sound. Some people find it easier to listen for these after they've learned which sound goes with which message, as opposed to reading the actual messages.\n\n|cffff4411Even when off, the default raid warning sound might be played by incoming raid warnings from other players. That sound, however, is different from the sounds we use.|r"
L.showBlizzWarnings = "Show Blizzard warnings"
L.showBlizzWarningsDesc = "Blizzard provides their own messages for some abilities on some encounters. In our opinion, these messages are both way too long and descriptive. We try to produce smaller, more fitting messages that do not interfere with the gameplay, and that don't tell you specifically what to do.\n\n|cffff4411When off, Blizzards warnings will not be shown in the middle of the screen, but they will still show in your chat frame.|r"
L.flashScreen = "Flash Screen"
L.flashScreenDesc = "Certain abilities are important enough to need your full attention. When these abilities affect you Big Wigs can flash the screen."
L.raidIcons = "Raid icons"
L.raidIconsDesc = "Some encounter scripts use raid icons to mark players that are of special interest to your group. For example 'bomb'-type effects and mind control. If you turn this off, you won't mark anyone.\n\n|cffff4411Only applies if you're either the group leader or promoted!|r"
L.minimapIcon = "Minimap icon"
L.minimapToggle = "Toggle show/hide of the minimap icon."
L.configure = "Configure"
L.test = "Test"
L.resetPositions = "Reset positions"
L.colors = "Colors"
L.selectEncounter = "Select encounter"
L.listAbilities = "List abilities in group chat"

L.blockMovies = "Block boss movies"
L.blockMoviesDesc = "After you've seen a boss movie once, Big Wigs will prevent it from playing again."
L.dbmFaker = "Pretend I'm using DBM"
L.dbmFakerDesc = "If a DBM user does a version check to see who's using DBM, they will see you on the list. Useful for guilds that force using DBM."
L.chatMessages = "Chat frame messages"
L.chatMessagesDesc = "Outputs all BigWigs messages to the default chat frame in addition to the display setting."
L.zoneMessages = "Show zone messages"
L.zoneMessagesDesc = "Disabling this will stop showing messages when you enter a zone that Big Wigs has timers for, but you don't have installed. We recommend you leave this turned on as it's the only notification you will get if we suddenly create timers for a new zone that you find useful."

L.slashDescTitle = "|cFFFED000Slash Commands:|r"
L.slashDescPull = "|cFFFED000/pull:|r Sends a pull countdown to your raid."
L.slashDescBreak = "|cFFFED000/break:|r Sends a break timer to your raid."
L.slashDescRaidBar = "|cFFFED000/raidbar:|r Sends a custom bar to your raid."
L.slashDescLocalBar = "|cFFFED000/localbar:|r Creates a custom bar only you can see."
L.slashDescRange = "|cFFFED000/range:|r Opens the range indicator."
L.slashDescVersion = "|cFFFED000/bwv:|r Performs a Big Wigs version check."
L.slashDescConfig = "|cFFFED000/bw:|r Opens the Big Wigs configuration."

L.BAR = "Bars"
L.MESSAGE = "Messages"
L.ICON = "Icon"
L.SAY = "Say"
L.FLASH = "Flash"
L.EMPHASIZE = "Emphasize"
L.ME_ONLY = "Only when on me"
L.ME_ONLY_desc = "When you enable this option messages for this ability will only be shown when they affect you. For example, 'Bomb: Player' will only be shown if it's on you."
L.PULSE = "Pulse"
L.PULSE_desc = "In addition to flashing the screen, you can also have an icon related to this specific ability momentarily shown in the middle of your screen to try grab your attention."
L.MESSAGE_desc = "Most encounter abilities come with one or more messages that Big Wigs will show on your screen. If you disable this option, none of the messages attached to this option, if any, will be displayed."
L.BAR_desc = "Bars are shown for some encounter abilities when appropriate. If this ability is accompanied by a bar that you want to hide, disable this option."
L.FLASH_desc = "Some abilities might be more important than others. If you want your screen to flash when this ability is imminent or used, check this option."
L.ICON_desc = "Big Wigs can mark characters affected by abilities with an icon. This makes them easier to spot."
L.SAY_desc = "Chat bubbles are easy to spot. Big Wigs will use a say message to announce people nearby about an effect on you."
L.EMPHASIZE_desc = "Enabling this will SUPER EMPHASIZE any messages or bars associated with this encounter ability. Messages will be bigger, bars will flash and have a different color, sounds will be used to count down when the ability is imminent. Basically you will notice it."
L.PROXIMITY = "Proximity display"
L.PROXIMITY_desc = "Abilities will sometimes require you to spread out. The proximity display will be set up specifically for this ability so that you will be able to tell at-a-glance whether or not you are safe."
L.ALTPOWER = "Alternate power display"
L.ALTPOWER_desc = "Some encounters will use the alternate power mechanic on players in your group. The alternate power display provides a quick overview of who has the least/most alternate power, which can be useful for specific tactics or assignments."
L.TANK = "Tank Only"
L.TANK_desc = "Some abilities are only important for tanks. If you want to see warnings for this ability regardless of your role, disable this option."
L.HEALER = "Healer Only"
L.HEALER_desc = "Some abilities are only important for healers. If you want to see warnings for this ability regardless of your role, disable this option."
L.TANK_HEALER = "Tank & Healer Only"
L.TANK_HEALER_desc = "Some abilities are only important for tanks and healers. If you want to see warnings for this ability regardless of your role, disable this option."
L.DISPEL = "Dispeller Only"
L.DISPEL_desc = "If you want to see warnings for this ability even when you cannot dispel it, disable this option."

L.advanced = "Advanced options"
L.back = "<< Back"

L.tank = "|cFFFF0000Tank alerts only.|r "
L.healer = "|cFFFF0000Healer alerts only.|r "
L.tankhealer = "|cFFFF0000Tank & Healer alerts only.|r "
L.dispeller = "|cFFFF0000Dispeller alerts only.|r "

L.about = "About"
L.developers = "Developers"
L.license = "License"
L.website = "Website"
L.contact = "Contact"
L.allRightsReserved = "All Rights Reserved"
L.ircChannel = "irc.freenode.net in the #bigwigs channel"
L.thanks = "Thanks to the following for all their help in various fields of development"

-- Statistics
L.statistics = "Statistics"
L.norm25 = "25"
L.heroic25 = "25h"
L.norm10 = "10"
L.heroic10 = "10h"
L.lfr = "LFR"
L.flex = "Flex"
L.normal = "Normal"
L.heroic = "Heroic"
L.mythic = "Mythic"
L.wipes = "Wipes:"
L.kills = "Kills:"
L.best = "Best:"

