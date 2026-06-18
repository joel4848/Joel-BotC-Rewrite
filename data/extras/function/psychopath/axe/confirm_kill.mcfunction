# call with extras:psychopath/axe/confirm_kill {psychopath:%d,target:%d,active:true}

tellraw @a {"text":"... who dies.","color":"light_purple"}

scoreboard players set #is_kill_psychopath temp 1
$function players:kill_revive/kill {player:$(target)}
function extras:psychopath/axe/finalize with storage extras:psychopath
scoreboard players set #is_kill_psychopath temp 0
