
# Setup grace period scores
scoreboard objectives add limited_lives.grace_period_seconds dummy
scoreboard objectives add limited_lives.grace_period_minutes dummy

# Setup lives score
scoreboard objectives add limited_lives.lives dummy

# Setup deaths tracker
scoreboard objectives add limited_lives.deaths deathCount

# Setup constants
scoreboard objectives add limited_lives.constants dummy
scoreboard players set 60 limited_lives.constants 60
scoreboard players set 1 limited_lives.constants 1
scoreboard players set 0 limited_lives.constants 0

# Setup settings
scoreboard objectives add limited_lives.settings dummy
execute unless score setup_complete limited_lives.settings = 1 limited_lives.constants run scoreboard players set zombies_are_trapped limited_lives.settings 1
scoreboard players set setup_complete limited_lives.settings 1

gamerule doImmediateRespawn true
