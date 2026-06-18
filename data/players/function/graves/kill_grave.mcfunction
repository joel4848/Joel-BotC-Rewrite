# call with players:graves/kill_grave {grave:%d}

$kill @e[type=minecraft:text_display,tag=grave_$(grave),limit=1]
$data remove storage players:graves claimed.$(grave)
