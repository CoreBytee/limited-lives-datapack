# Setup players
execute as @a unless entity @s[tag=limited_lives.setup] run function limited_lives:setup_player

# Death check
execute as @a[scores={limited_lives.grace_period_seconds=-1, limited_lives.deaths=1..}] unless entity @s[tag=limited_lives.exclude] at @s run function limited_lives:death
scoreboard players set @a limited_lives.deaths 0

# Trap zombies
execute if score zombies_are_trapped limited_lives.settings = 1 limited_lives.constants as @a[scores={limited_lives.lives=0}] run function limited_lives:trap_zombies

# Setup trap
fill 1 -61 -1 -1 -63 1 minecraft:end_gateway{Age:200} replace
fill 2 -60 -2 -2 -64 2 minecraft:bedrock outline
