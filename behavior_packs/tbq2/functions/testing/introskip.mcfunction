#Skips the intro and takes us to the maingame
say The intro is being skipped.
#Set the clock to restart
scoreboard players set @e[tag=bob] tick 0
scoreboard players set @e[tag=bob] seconds 0
#reset to clean variables for a new game
execute as @e[tag=bob] run function intro/restartvariables
#Take the into state to complete
execute as @e[tag=bob] run function intro/end