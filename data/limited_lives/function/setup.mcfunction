
# Set up grace period scores
scoreboard objectives add limited_lives.grace_period_seconds dummy
scoreboard objectives add limited_lives.grace_period_minutes dummy

# Set up lives score
scoreboard objectives add limited_lives.lives dummy

# Set up deaths tracker
scoreboard objectives add limited_lives.deaths deathCount

# Set up constants
scoreboard objectives add limited_lives.constants dummy
scoreboard players set 60 limited_lives.constants 60
scoreboard players set 1 limited_lives.constants 1
scoreboard players set 0 limited_lives.constants 0

# Set up settings
scoreboard objectives add limited_lives.settings dummy
execute unless score setup_complete limited_lives.settings = 1 limited_lives.constants run scoreboard players set zombies_are_trapped limited_lives.settings 1
execute unless score setup_complete limited_lives.settings = 1 limited_lives.constants run scoreboard objectives setdisplay list limited_lives.lives
scoreboard players set setup_complete limited_lives.settings 1

# Setup trap
fill 1 -61 -1 -1 -63 1 minecraft:end_gateway{Age:200} replace
fill 2 -60 -2 -2 -64 2 minecraft:bedrock outline

# Respawn instantly
gamerule doImmediateRespawn true
