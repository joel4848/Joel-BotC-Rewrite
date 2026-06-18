# call with players:kill_revive/kill {player:%d}

$scoreboard players set @a[scores={Player=-$(player)}] Alive 0
$execute if score #give_dead_players_heads temp matches 1 run item replace entity @a[scores={Player=-$(player)}] armor.feet with golden_boots 1
$team join Dead @a[scores={Player=-$(player)}]

$data merge storage joelbotc {player:$(player)}
$data modify storage joelbotc player_username set from storage joelbotc player_$(player)_username
execute if score #give_dead_players_heads temp matches 1 run function players:kill_revive/give_head with storage joelbotc
$execute as @a[scores={Player=-$(player)}] run function players:graves/give_grave with storage joelbotc
