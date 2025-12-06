# Setup players
execute as @a unless entity @s[tag=limited_lives.setup] run function limited_lives:setup_player

# Death check
execute as @a[scores={limited_lives.grace_period_seconds=-1, limited_lives.deaths=1..}] unless entity @s[tag=limited_lives.exclude] at @s run tag @s add limited_lives.death_pending
execute as @a[scores={limited_lives.grace_period_seconds=-1, limited_lives.deaths=1..}] unless entity @s[tag=limited_lives.exclude] at @s run schedule function limited_lives:schedule_death 10t replace
scoreboard players set @a limited_lives.deaths 0

# Trap zombies
execute if score zombies_are_trapped limited_lives.settings = 1 limited_lives.constants as @a[scores={limited_lives.lives=0}] run function limited_lives:trap_zombies
