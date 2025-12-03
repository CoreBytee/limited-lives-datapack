playsound minecraft:entity.wither.death master @s ~ ~1 ~ 10000 0.1 1
particle minecraft:raid_omen ~ ~ ~ 1 2 1 0.0001 3000

scoreboard players remove @s limited_lives.lives 1

title @s times 0 2s 1s
execute as @s if entity @s[scores={limited_lives.lives=0}] run title @s subtitle [{"color":"red","text":"You have "},{"color":"dark_red","score":{"name":"@s","objective":"limited_lives.lives"}},{"color":"red","text":" lifes remaining!"}]
execute as @s if entity @s[scores={limited_lives.lives=1}] run title @s subtitle [{"color":"red","text":"You have "},{"color":"dark_red","score":{"name":"@s","objective":"limited_lives.lives"}},{"color":"red","text":" life remaining!"}]
execute as @s if entity @s[scores={limited_lives.lives=2..}] run title @s subtitle [{"color":"red","text":"You have "},{"color":"dark_red","score":{"name":"@s","objective":"limited_lives.lives"}},{"color":"red","text":" lifes remaining!"}]
title @s title {"color":"red","text":"You died!"}

effect give @s minecraft:resistance 30 255 true

execute as @s if entity @s[scores={limited_lives.lives=0}] run gamemode spectator @s
