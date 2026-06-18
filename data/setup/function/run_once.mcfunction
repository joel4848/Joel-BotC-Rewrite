# Run when creating a new world - sets up scoreboards, bossbars and other necessaries

# Creates scoreboards

scoreboard objectives add Player dummy "Players"
scoreboard objectives add TimerMinutes dummy
scoreboard objectives add TimerSeconds dummy
scoreboard objectives add TimerScore dummy
scoreboard objectives add TimerMax dummy
scoreboard objectives add TimerMaths dummy
scoreboard objectives add TimerPercent dummy
scoreboard objectives add TimerMaxCheck dummy
scoreboard objectives add TimerCalc dummy
scoreboard objectives add Alive dummy
scoreboard objectives add Dead dummy
scoreboard objectives add TimerPaused dummy
scoreboard objectives add TickTimer dummy
scoreboard objectives add Storyteller dummy
scoreboard objectives add Nominated dummy
scoreboard objectives add Nominator dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add Marked dummy
scoreboard objectives add LivingPlayers dummy
scoreboard objectives add dance_random dummy
scoreboard objectives add map_all dummy
scoreboard objectives add set_floor dummy
scoreboard objectives add assign trigger
scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add markerCount dummy
scoreboard objectives add chestCloneDone dummy
scoreboard objectives add lightID dummy
scoreboard objectives add GhostVoteUsedMaster dummy
scoreboard objectives add GhostVoteUsedToday dummy
scoreboard objectives add GhostVoteUnusedToday dummy
scoreboard objectives add Wheee dummy
scoreboard objectives add VoteValue dummy
scoreboard objectives add ThiefSelected dummy
scoreboard objectives add BureaucratSelected dummy
scoreboard objectives add IsBanshee dummy
scoreboard objectives add BansheeVoteValue dummy
scoreboard objectives add HasSeat dummy
scoreboard objectives add VoudonGhostVotePreviouslyUsed dummy
scoreboard objectives add IsVoudon dummy
scoreboard objectives add FerrymanWasDead dummy
scoreboard objectives add Roshambo trigger
scoreboard objectives add RoshamboLocked trigger
scoreboard objectives add ConfirmRoshamboLock trigger
scoreboard objectives add temp dummy
scoreboard objectives add Booth dummy
scoreboard objectives add SummonSTInteracted dummy
scoreboard objectives add SummonSTConfirmed trigger
scoreboard objectives add Annoying dummy
scoreboard objectives add InHouse dummy
scoreboard objectives add InHouseShown dummy "In House"
scoreboard objectives add psychopath_axe_cooldown dummy
scoreboard objectives add slayer_arrow_cooldown dummy
scoreboard objectives add tempHealth dummy
scoreboard objectives add SeatSwapped dummy
scoreboard objectives add InClocktower dummy
scoreboard objectives add InNightclub dummy
scoreboard objectives add InTavern dummy
scoreboard objectives add InBlacksmith dummy
scoreboard objectives add InLibrary dummy
scoreboard objectives add InPumpkin dummy
scoreboard objectives add InCrematorium dummy
scoreboard objectives add InCemetary dummy
scoreboard objectives add player_grave dummy

# scoreboard objectives add  dummy
# scoreboard objectives add  dummy

# Set scoreboard displays
# 'temp' MUST be displayed somewhere, so that FancyMenu can pull scores from it to display in GUIs

scoreboard objectives setdisplay sidebar Player
scoreboard objectives setdisplay sidebar.team.light_purple temp

# Creates voice groups

persistentgroup add "~ House 01" isolated
persistentgroup add "~ House 02" isolated
persistentgroup add "~ House 03" isolated
persistentgroup add "~ House 04" isolated
persistentgroup add "~ House 05" isolated
persistentgroup add "~ House 06" isolated
persistentgroup add "~ House 07" isolated
persistentgroup add "~ House 08" isolated
persistentgroup add "~ House 09" isolated
persistentgroup add "~ House 10" isolated
persistentgroup add "~ House 11" isolated
persistentgroup add "~ House 12" isolated
persistentgroup add "Cemetary" isolated
persistentgroup add "Tavern" isolated
persistentgroup add "Library" isolated
persistentgroup add "Blacksmith" isolated
persistentgroup add "Crematorium" isolated
persistentgroup add "Church" isolated
persistentgroup add "Clocktower" isolated
persistentgroup add "~ Town Square" open
persistentgroup add "Nightclub" isolated
persistentgroup add "Storyteller Den" isolated
persistentgroup add "~ House 13" isolated
persistentgroup add "~ House 14" isolated
persistentgroup add "~ House 15" isolated
persistentgroup add "~ House 16" isolated

# Creates teams

team add Neutral
team add Nominated
team add Marked
team modify Marked color red
team add Alive
team modify Alive color green
team add Dead
team modify Dead color dark_green
team add Storyteller
team modify Storyteller color blue
team add Psychopath
team modify Psychopath color dark_red
team modify Storyteller nametagVisibility never
team modify Storyteller collisionRule pushOtherTeams
team add Spectator
team modify Spectator color dark_gray
team modify Spectator prefix "[spec] "
team modify Spectator collisionRule never
team modify Spectator nametagVisibility never
scoreboard objectives add become_spectator trigger

# Creates bossbar

bossbar add timerbar {"text":"0:0"}
bossbar set minecraft:timerbar players @a
bossbar set minecraft:timerbar max 180
bossbar set minecraft:timerbar color white
bossbar set minecraft:timerbar style progress
bossbar set minecraft:timerbar visible false

# Sets up constant values used by the voting system

scoreboard objectives add temp dummy
scoreboard objectives add VoteTally dummy
scoreboard objectives add const dummy
scoreboard players set #-1 const -1
scoreboard players set #2 const 2
scoreboard players set #const_16 const 16

# Sets up constant values used by the timer system

scoreboard players set #ticks_per_minute temp 1200
scoreboard players set #ticks_per_second temp 20
scoreboard players set #minutes_to_add temp 0
scoreboard players set #seconds_to_add temp 0
scoreboard players set #time_to_add temp 0

# Sets doorbell cooldown scores to 0

scoreboard players set #doorbell_clocktower_cooldown temp 0
scoreboard players set #doorbell_nightclub_cooldown temp 0
scoreboard players set #doorbell_tavern_cooldown temp 0
scoreboard players set #doorbell_blacksmith_cooldown temp 0
scoreboard players set #doorbell_library_cooldown temp 0
scoreboard players set #doorbell_cemetary_cooldown temp 0
scoreboard players set #doorbell_crematorium_cooldown temp 0

# Sets misc scoreboard scores required by the datapack/FancyMenu

scoreboard players set #give_dead_players_heads temp 1
scoreboard players set #is_kill_execution temp 0
scoreboard players set #is_kill_slayer_shot temp 0
scoreboard players set #is_kill_psychopath temp 0

# Gives required IDs to the votelights

scoreboard players set @e[tag=votelight1,type=marker] lightID 1
scoreboard players set @e[tag=votelight2,type=marker] lightID 2
scoreboard players set @e[tag=votelight3,type=marker] lightID 3
scoreboard players set @e[tag=votelight4,type=marker] lightID 4
scoreboard players set @e[tag=votelight5,type=marker] lightID 5
scoreboard players set @e[tag=votelight6,type=marker] lightID 6
scoreboard players set @e[tag=votelight7,type=marker] lightID 7
scoreboard players set @e[tag=votelight8,type=marker] lightID 8
scoreboard players set @e[tag=votelight9,type=marker] lightID 9
scoreboard players set @e[tag=votelight10,type=marker] lightID 10
scoreboard players set @e[tag=votelight11,type=marker] lightID 11
scoreboard players set @e[tag=votelight12,type=marker] lightID 12
scoreboard players set @e[tag=votelight13,type=marker] lightID 13
scoreboard players set @e[tag=votelight14,type=marker] lightID 14
scoreboard players set @e[tag=votelight15,type=marker] lightID 15
scoreboard players set @e[tag=votelight16,type=marker] lightID 16

# Set blank values for username storage

data modify storage minecraft:joelbotc player_username set value ' '
data modify storage minecraft:joelbotc player_1_username set value ' '
data modify storage minecraft:joelbotc player_2_username set value ' '
data modify storage minecraft:joelbotc player_3_username set value ' '
data modify storage minecraft:joelbotc player_4_username set value ' '
data modify storage minecraft:joelbotc player_5_username set value ' '
data modify storage minecraft:joelbotc player_6_username set value ' '
data modify storage minecraft:joelbotc player_7_username set value ' '
data modify storage minecraft:joelbotc player_8_username set value ' '
data modify storage minecraft:joelbotc player_9_username set value ' '
data modify storage minecraft:joelbotc player_10_username set value ' '
data modify storage minecraft:joelbotc player_11_username set value ' '
data modify storage minecraft:joelbotc player_12_username set value ' '
data modify storage minecraft:joelbotc player_13_username set value ' '
data modify storage minecraft:joelbotc player_14_username set value ' '
data modify storage minecraft:joelbotc player_15_username set value ' '
data modify storage minecraft:joelbotc player_16_username set value ' '

data modify storage minecraft:joelbotc player_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_uuid_3 set value ' '

data modify storage minecraft:joelbotc player_1_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_2_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_3_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_4_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_5_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_6_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_7_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_8_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_9_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_10_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_11_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_12_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_13_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_14_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_15_uuid_0 set value ' '
data modify storage minecraft:joelbotc player_16_uuid_0 set value ' '

data modify storage minecraft:joelbotc player_1_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_2_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_3_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_4_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_5_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_6_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_7_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_8_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_9_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_10_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_11_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_12_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_13_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_14_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_15_uuid_1 set value ' '
data modify storage minecraft:joelbotc player_16_uuid_1 set value ' '

data modify storage minecraft:joelbotc player_1_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_2_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_3_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_4_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_5_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_6_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_7_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_8_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_9_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_10_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_11_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_12_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_13_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_14_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_15_uuid_2 set value ' '
data modify storage minecraft:joelbotc player_16_uuid_2 set value ' '

data modify storage minecraft:joelbotc player_1_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_2_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_3_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_4_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_5_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_6_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_7_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_8_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_9_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_10_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_11_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_12_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_13_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_14_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_15_uuid_3 set value ' '
data modify storage minecraft:joelbotc player_16_uuid_3 set value ' '

