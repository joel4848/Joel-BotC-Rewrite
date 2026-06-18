execute if score #is_kill_execution temp matches 1 run data merge storage players:graves { reason: "Executed" }
execute unless score #is_kill_execution temp matches 1 run data merge storage players:graves { reason: "Killed" }
execute if score #is_kill_slayer_shot temp matches 1 run data merge storage players:graves { reason: "Shot" }
execute if score #is_kill_psychopath temp matches 1 run data merge storage players:graves { reason: "Chopped" }
$data merge storage players:graves { player: $(player) }

execute unless data storage players:graves claimed.1 run return run function players:graves/claim_grave_1 with storage players:graves
execute unless data storage players:graves claimed.2 run return run function players:graves/claim_grave_2 with storage players:graves
execute unless data storage players:graves claimed.3 run return run function players:graves/claim_grave_3 with storage players:graves
execute unless data storage players:graves claimed.4 run return run function players:graves/claim_grave_4 with storage players:graves
execute unless data storage players:graves claimed.5 run return run function players:graves/claim_grave_5 with storage players:graves
execute unless data storage players:graves claimed.6 run return run function players:graves/claim_grave_6 with storage players:graves
execute unless data storage players:graves claimed.7 run return run function players:graves/claim_grave_7 with storage players:graves
execute unless data storage players:graves claimed.8 run return run function players:graves/claim_grave_8 with storage players:graves
execute unless data storage players:graves claimed.9 run return run function players:graves/claim_grave_9 with storage players:graves
execute unless data storage players:graves claimed.10 run return run function players:graves/claim_grave_10 with storage players:graves
execute unless data storage players:graves claimed.11 run return run function players:graves/claim_grave_11 with storage players:graves
execute unless data storage players:graves claimed.12 run return run function players:graves/claim_grave_12 with storage players:graves
execute unless data storage players:graves claimed.13 run return run function players:graves/claim_grave_13 with storage players:graves
execute unless data storage players:graves claimed.14 run return run function players:graves/claim_grave_14 with storage players:graves
