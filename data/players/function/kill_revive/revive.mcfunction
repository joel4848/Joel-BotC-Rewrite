# call with players:kill_revive/revive {player:%d}

$scoreboard players set @a[scores={Player=-$(player)}] Alive 1
$team join Alive @a[scores={Player=-$(player)}]

$data merge storage joelbotc {player:$(player)}
$execute as @e[tag=votelight$(player)] at @s if block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~-1 ~ waxed_copper_bulb[lit=false]
$execute as @a[scores={Player=-$(player)}] run function players:graves/remove_grave with storage joelbotc
