# Grace period countdown (singular/plural handling)
scoreboard players remove @s limited_lives.grace_period_seconds 1
scoreboard players operation @s limited_lives.grace_period_minutes = @s limited_lives.grace_period_seconds
scoreboard players operation @s limited_lives.grace_period_minutes /= 60 limited_lives.constants
scoreboard players add @s limited_lives.grace_period_minutes 1

title @s times 0 2s 1s
execute if entity @s[scores={limited_lives.grace_period_seconds=1..10}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 100 1 1
execute if entity @s[scores={limited_lives.grace_period_seconds=1}] run title @s actionbar [{"color":"white","text":"You have "},{"color":"red","score":{"name":"@s","objective":"limited_lives.grace_period_seconds"}},{"color":"white","text":" second of grace period left"}]
execute if entity @s[scores={limited_lives.grace_period_seconds=2..60}] run title @s actionbar [{"color":"white","text":"You have "},{"color":"red","score":{"name":"@s","objective":"limited_lives.grace_period_seconds"}},{"color":"white","text":" seconds of grace period left"}]
execute if entity @s[scores={limited_lives.grace_period_seconds=60..}] run execute if score @s limited_lives.grace_period_minutes matches 1 run title @s actionbar [{"color":"white","text":"You have "},{"color":"red","score":{"name":"@s","objective":"limited_lives.grace_period_minutes"}},{"color":"white","text":" minute of grace period left"}]
execute if entity @s[scores={limited_lives.grace_period_seconds=60..}] run execute unless score @s limited_lives.grace_period_minutes matches 1 run title @s actionbar [{"color":"white","text":"You have "},{"color":"red","score":{"name":"@s","objective":"limited_lives.grace_period_minutes"}},{"color":"white","text":" minutes of grace period left"}]
