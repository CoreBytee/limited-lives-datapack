schedule function limited_lives:timers/1s 1s

# Grace period timer
execute as @a[scores={limited_lives.grace_period_seconds=1..}] unless entity @s[tag=limited_lives.exclude] at @s run function limited_lives:remove_grace
execute as @a[scores={limited_lives.grace_period_seconds=0}] unless entity @s[tag=limited_lives.exclude] at @s run function limited_lives:grace_depleted
