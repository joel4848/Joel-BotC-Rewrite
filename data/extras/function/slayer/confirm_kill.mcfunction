tellraw @a {"text":"... who dies.","color":"light_purple"}

scoreboard players set #is_kill_slayer_shot temp 1
$function players:kill_revive/kill {player:$(target)}
function extras:slayer/finalize with storage extras:slayer
scoreboard players set #is_kill_slayer_shot temp 0
