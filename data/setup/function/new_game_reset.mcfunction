scoreboard objectives remove Alive
scoreboard objectives add Alive dummy
scoreboard objectives remove Player
scoreboard objectives add Player dummy "Players"
scoreboard objectives setdisplay sidebar Player
team leave @a[team=!Storyteller]
scoreboard objectives remove HasSeat
scoreboard objectives add HasSeat dummy
scoreboard objectives remove InHouse
scoreboard objectives add InHouse dummy "In House"

########### Player role papers ###########

# Reset the scoreboard that tracks whether players have been given their roles this game
scoreboard objectives remove GivenRole
scoreboard objectives add GivenRole dummy

# Clear all roles in nbt storage
function setup:give_player_roles/clear_player_roles

# Remove compasses and reset whether compasses already given

clear @a compass

scoreboard players set #compasses_given temp 0

# Clone chests

function setup:clonechests

# Place blank large canvases on empty easels

execute as @e[type=xercapaint:easel,tag=house_easel] run data modify entity @e[type=xercapaint:easel,limit=1,sort=nearest] Item.id set value "xercapaint:item_canvas_large"

# Revive everyone

scoreboard players set #is_kill_execution temp 0
function players:kill_revive/revive_all
function players:graves/remove_all_graves

# Make nametags visible

team modify Alive nametagVisibility always
team modify Dead nametagVisibility always
team modify Storyteller nametagVisibility always

# Reset vote lights & seat buttons

function setup:remove_buttons
function setup:place_buttons
function voting:reset_vote_full
schedule function setup:replace_votelights 5t replace

function voting:remove_votelight_interactions_all
function voting:summon_votelight_interactions

# Clear GhostVoteUsed scoreboards

scoreboard objectives remove GhostVoteUsedMaster
scoreboard objectives add GhostVoteUsedMaster dummy

scoreboard objectives remove GhostVoteUsedToday
scoreboard objectives add GhostVoteUsedToday dummy

scoreboard objectives remove GhostVoteUnusedToday
scoreboard objectives add GhostVoteUnusedToday dummy

# Clear NBT storage for the username extraction/storing system

function setup:clear_username_storage

function players:usernames/extract_username/clear_signs

# Reset Banshees and Thief and Bureaucrat chosen players

function extras:banshee/remove_banshee_all

function extras:thief/clear_thief_chosen

function extras:bureaucrat/clear_bureaucrat_chosen

# Reset ghost swing trigger

scoreboard objectives remove InCemetary
scoreboard objectives add InCemetary dummy
scoreboard players set #cemetary_occupied temp 0
tag @e[type=block_display,tag=ghost_swing_root] add animation_pause
scoreboard players set #ghost_loop_running temp 0

# Credits/bugs/feedback/suggestions message

# This map/datapack is licensed under Attribution-NonCommercial-ShareAlike 4.0 International https://creativecommons.org/licenses/by-nc-sa/4.0/
# If you change/remove this message, you're in breach of the license - and also a bad person who makes Ben Burns sad.
# No, seriously: months of my time and the time of others went into making this what it is, and I'm sharing it publicly for the BotC community out
# of trust. A lot of BotC is based on trust - in the ST, in your players, etc... Falsely claiming credit for this work is not in the spirit of Botc.


tellraw @a {"color":"gold","text":"----------------------------------------------------"}
tellraw @a {"color":"aqua","text":""}
tellraw @a [{"color":"aqua","text":"Thanks for playing "},{"color":"gold","text":"Joel4848's BotC Minecraft"}," map & datapack!"]
tellraw @a {"color":"aqua","text":""}
tellraw @a {"color":"aqua","text":"For the wiki, or to report any bugs, suggest new features, or"}
tellraw @a {"color":"aqua","text":"just give feedback, please visit: "}
tellraw @a {"color":"aqua","text":""}
tellraw @a {"clickEvent":{"action":"open_url","value":"https://github.com/joel4848/BotC-Minecraft"},"color":"blue","text":"https://github.com/joel4848/BotC-Minecraft","underlined":true}
tellraw @a {"color":"aqua","text":""}
tellraw @a {"color":"gold","text":"----------------------------------------------------"}


# scoreboard players operation #fm_colours_on temp = #were_fm_colours_on temp

execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_1_colour false &f
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_2_colour false &f
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_3_colour false &f
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_4_colour false &f
execute as @s run execute if score player_count PlayerCount matches 5.. run fmvariable set player_5_colour false &f
execute as @s run execute if score player_count PlayerCount matches 6.. run fmvariable set player_6_colour false &f
execute as @s run execute if score player_count PlayerCount matches 7.. run fmvariable set player_7_colour false &f
execute as @s run execute if score player_count PlayerCount matches 8.. run fmvariable set player_8_colour false &f
execute as @s run execute if score player_count PlayerCount matches 9.. run fmvariable set player_9_colour false &f
execute as @s run execute if score player_count PlayerCount matches 10.. run fmvariable set player_10_colour false &f
execute as @s run execute if score player_count PlayerCount matches 11.. run fmvariable set player_11_colour false &f
execute as @s run execute if score player_count PlayerCount matches 12.. run fmvariable set player_12_colour false &f
execute as @s run execute if score player_count PlayerCount matches 13.. run fmvariable set player_13_colour false &f
execute as @s run execute if score player_count PlayerCount matches 14.. run fmvariable set player_14_colour false &f
execute as @s run execute if score player_count PlayerCount matches 15.. run fmvariable set player_15_colour false &f
execute as @s run execute if score player_count PlayerCount matches 16.. run fmvariable set player_16_colour false &f


execute as @s run execute if score player_count PlayerCount matches ..5 run fmvariable set player_6_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..6 run fmvariable set player_7_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..7 run fmvariable set player_8_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..8 run fmvariable set player_9_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..9 run fmvariable set player_10_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..10 run fmvariable set player_11_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..11 run fmvariable set player_12_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..12 run fmvariable set player_13_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..13 run fmvariable set player_14_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..14 run fmvariable set player_15_colour false &f
execute as @s run execute if score player_count PlayerCount matches ..15 run fmvariable set player_16_colour false &f

# Make Psychopath killing unallowed and remove all axes

data remove storage extras:immersive_pvp allowed
execute as @a run function extras:psychopath/axe/remove
execute as @a run function extras:slayer/remove_crossbow

# Make sure PVP is turned off

execute if score #immersive_pvp temp matches 1 if score #pvp_enabled temp matches 0 run gamerule pvp false
effect clear @a resistance
