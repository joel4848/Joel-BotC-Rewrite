# call with execution:force_execute {player:%d}

execute as @e[tag=mapcentre] at @s run place template nomination:nomination_podiums_remove ~-7 ~1 ~-7
$function execution:mark {player:$(player)}
function execution:run_execution
