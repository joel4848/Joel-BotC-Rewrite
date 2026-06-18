# it's easier to do this to remove offline players too
scoreboard objectives remove player_grave
scoreboard objectives add player_grave dummy

data remove storage players:graves claimed
kill @e[type=minecraft:text_display,tag=graves]
