# setblock 167 91 2 minecraft:cobbled_deepslate

scoreboard players set #execution_running temp 0

# scoreboard players set @a[scores={Marked=1}] Alive 0

team leave @a[scores={Marked=1}]

# execute as @a[scores={Marked=1}] run execute unless score @s Storyteller matches 1 run team join Dead

execute as @a[scores={Marked=1}] run execute if score @s Storyteller matches 1 run team join Storyteller

effect clear @a[scores={Marked=1}] glowing
# effect give @a[scores={Marked=1}] invisibility infinite 99 true

# kill executed player

execute if score @e[scores={Marked=1},limit=1] Storyteller matches 1 run function setup:give_st_invisibility with storage minecraft:joelbotc

scoreboard players set #is_kill_execution temp 1
execute store result storage joelbotc player int -1 run scoreboard players get @e[scores={Marked=1},limit=1] Player
function players:kill_revive/kill with storage joelbotc
scoreboard players set #is_kill_execution temp 0

scoreboard players set @a[scores={Marked=1}] Wheee 1

function execution:execution_messages/run_display_message

scoreboard players set @a[scores={Marked=1}] Marked 0

schedule clear execution:dumb/lock_to_seats