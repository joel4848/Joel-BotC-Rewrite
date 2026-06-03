title @a times 20t 140t 20t

$title @a title [{"bold":false,"color":"dark_red","nbt":"player_$(player)_username","storage":"minecraft:joelbotc"}]
title @a subtitle [{"color":"dark_purple","italic":true,"text":"has been chosen by the "},{"color":"dark_red","bold":true,"italic":true,"text":"Al-Hadikhia"},{"color":"dark_purple","italic":true,"text":""}]
$tellraw @a [{"bold":true,"italic":true,"color":"dark_red","nbt":"player_$(player)_username","storage":"minecraft:joelbotc"},{"bold":false,"color":"dark_purple","italic":true,"text":" has been chosen by the "},{"color":"dark_red","bold":true,"italic":true,"text":"Al-Hadikhia"},{"color":"dark_purple","italic":true,"text":""}]

schedule function extras:al_hadikhia/title_second 200t

execute as @a at @s run playsound ambient.cave master @s ~ ~ ~ 1 0.5