execute as @a[tag=limited_lives.death_pending] at @s run function limited_lives:death
execute as @a[tag=limited_lives.death_pending] at @s run tag remove @s limited_lives.death_pending
