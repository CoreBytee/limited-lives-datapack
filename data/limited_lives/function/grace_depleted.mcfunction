scoreboard players set @s limited_lives.grace_period_seconds -1

playsound minecraft:item.totem.use master @s ~ ~1 ~ 10000 0.1 1
effect give @s minecraft:blindness 1 1 true

particle minecraft:raid_omen ~ ~ ~ 1 2 1 0.0001 3000
particle minecraft:crimson_spore ~ ~0.5 ~ 0.2 0.2 0.2 1 10000
