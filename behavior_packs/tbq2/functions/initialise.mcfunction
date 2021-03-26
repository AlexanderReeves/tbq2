#Check the code is loading
tellraw @a {"rawtext":[{"text":"§a~~~§bThe Big Quiz 2 is initalising!§a~~~"}]}

#Summon BOB, the squid who will run our game engine
kill @e[type=squid]
summon minecraft:squid 127 26 -229
tag @e[type=minecraft:squid] add bob

#--------------SET UP SCOREBOARDS-------
#ticker (20 times per second)
scoreboard objectives add tick dummy tick
scoreboard players set @e[tag=bob] tick 0
#seconds
scoreboard objectives add seconds dummy seconds
scoreboard players set @e[tag=bob] seconds 0

#Check number of active players on teams
scoreboard objectives add activeplayers dummy activeplayers
scoreboard players set @e[tag=bob] activeplayers 0

#scoreboard to see if a team has players
scoreboard objectives add greenplayers dummy greenplayers
scoreboard objectives add redplayers dummy redplayers
scoreboard objectives add blueplayers dummy blueplayers
scoreboard objectives add yellowplayers dummy yellowplayers

#scoreboard to check what question the game is up to
scoreboard objectives add question dummy question
scoreboard players set @e[tag=bob] question 1
#-------------------------------------------

#gamestate
scoreboard objectives add gamestate dummy gamestate
scoreboard players set @e[tag=bob] gamestate 0
#   gamestate key
#   0 = lobby state
#   1 = ready up
#   2 = game and players introduction
#   3 = round one of two
#   4 = mid game chaos
#   5 = round two of two
#   6 = end game chaos
#   7 = winner announced and outro


#-----------------------------------------


#Remove players from teams
function misc/emptyteams

#restart players
function setup/spawnplayers

#Set up entities
function setup/entities


#Gamerules
gamerule sendcommandfeedback false
