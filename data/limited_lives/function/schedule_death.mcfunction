execute as @a[tag=limited_lives.death_pending] at @s run function limited_lives:death
execute as @a[tag=limited_lives.death_pending] at @s run tag @s remove limited_lives.death_pending
