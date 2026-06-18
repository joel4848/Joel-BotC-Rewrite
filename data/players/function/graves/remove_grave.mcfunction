execute unless score @s player_grave = @s player_grave run return 0
execute store result storage players:graves grave int 1 run scoreboard players get @s player_grave
function players:graves/kill_grave with storage players:graves
data remove storage players:graves grave
