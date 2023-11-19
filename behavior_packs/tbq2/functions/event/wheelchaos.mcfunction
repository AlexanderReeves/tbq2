#*UPDATED TO NEW FORMAT*
#this code runs when the wheel result is the question mark
#one of 5 super random events should occur.
#Here are the ideas

#Everyone gets enormous heads until the game ends including host
#The arena is filled with all sorts of animals
#Everyone appears upside down for the remainder of the game
#Floating or high jump effects?
#Billagers is replaced with another entity
#The audience become a multicoloured?
#Everyone becomes tiny including host
#power outage?
#BIllagers bathing shorts
#Emeralds fall from the sky for more points
#10 seconds nausea

#Start timers that will access the misc code to keep chaos running in the background
say selecting a random chaos event
#Pick a random number to determine which chaos event occurs
scoreboard players random @e[tag=bob] activechaosid 1 2


#Determine how many seconds the chaos will last depending on which random event was picked
#If chaosid 1 was picked, we want to give all players big heads, which should last about 3 minutes
scoreboard players set @e[tag=bob,scores={activechaosid=1}] chaosremseconds 180
#IF chaos event 2 is selected, we drop in a bunch of cows chickens and pigs and turn the arena in to a farm, we can remove them after 3 mins
scoreboard players set @e[tag=bob,scores={activechaosid=2}] chaosremseconds 180