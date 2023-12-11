#Check the code is loading
tellraw @a {"rawtext":[{"text":"§bThe Big Quiz 2 is initalising!"}]}
tickingarea add circle 127 29 -254 4 lobby true
tickingarea add circle 127 34 -154 4 stage true
#Summon BOB, the squid who will run our game engine, also make a command block so bob runs.
kill @e[type=squid]
summon minecraft:squid 127 26 -229
tag @e[type=minecraft:squid] add bob
#Bob needs the hidebar tag, which prevents players seeing their timerbars at this time
tag @e[type=minecraft:squid] add hidebar



#--------------SET UP SCOREBOARDS-------
#Rest scores to defaults where neccessary from previous loads of the game
#ticker (20 times per second)
scoreboard players reset @e tick
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
scoreboard players set @e[tag=bob] greenplayers 0
scoreboard players set @e[tag=bob] redplayers 0
scoreboard players set @e[tag=bob] blueplayers 0
scoreboard players set @e[tag=bob] yellowplayers 0

#Scoreboard to know how many questions have been asked
scoreboard objectives add question dummy question
scoreboard players set @e[tag=bob] question 1
#Scoreboard to pick which random question will be used (Question ID)
scoreboard objectives add qid dummy qid
scoreboard players set @e[tag=bob] qid 0
#Scoreboard to pick which question category will be used (Question category)
scoreboard objectives add qcat dummy qcat
scoreboard players set @e[tag=bob] qcat 0

#scoreboard to check each teams currentanswer and the correct answer
#scoreboard to track players answers
scoreboard objectives add answer dummy answer
scoreboard players set @a answer 0
scoreboard objectives add correctanswer dummy correctanswer
scoreboard players set @e[tag=bob] correctanswer 0

#Scoreboards to track teams scores
scoreboard objectives add bluescore dummy bluescore
scoreboard players set @e[tag=bob] bluescore 0
scoreboard objectives add redscore dummy redscore
scoreboard players set @e[tag=bob] redscore 0
scoreboard objectives add yellowscore dummy yellowscore
scoreboard players set @e[tag=bob] yellowscore 0
scoreboard objectives add greenscore dummy greenscore
scoreboard players set @e[tag=bob] greenscore 0
scoreboard objectives add scoredisplay dummy Points

#Scoreboard to end the game if enough players try to quit
scoreboard objectives add quitvote dummy "Votes to quit"
scoreboard players set @e[tag=bob] quitvote 0
scoreboard objectives add totalplayers dummy totalplayers
scoreboard players set @e[tag=bob] totalplayers 0


#Summon wheel entity
kill @e[type=tbq:wheel]
summon tbq:wheel 138.30 28.00 -164.82
execute as @e[type=tbq:wheel] at @s positioned ~ ~ ~ run teleport @s ~ ~ ~ -25
#Scoreboard to see how many seconds the wheel spins for
scoreboard objectives add wheelresult dummy wheelresult
scoreboard players set @e[tag=bob] wheelresult 0
scoreboard objectives add wheelspintime dummy wheelspintime
scoreboard players set @e[tag=bob] wheelspintime 0

#Scoreboard to run chaos events as a result of the random wheel event result
#ChaosRemainingSeconds tell how long misc/backgroundchaos will run, ChaosID tells which chaos should run at the current time.
scoreboard objectives add chaosremseconds dummy chaosremseconds
scoreboard players set @e[tag=bob] chaosremseconds 0
scoreboard objectives add activechaosid dummy activechaosid
scoreboard players set @e[tag=bob] activechaosid 0

#scoreboard to enable or disable testing features like overriding the scoreboard display.
#THIS SHOULD BE 0 WHEN NOT TESTING, BUT WE DON'T WANT IT TO OVERWRITE THE CURRENT VALUE WHEN INITIALISING AS IT SHOULD BE DONE MANUALLY
#scoreboard objectives remove istesting
#scoreboard objectives add istesting dummy istesting
#scoreboard players set @e[tag=bob] istesting 0

#Scoreboard to compare scores and find the lowest score
scoreboard objectives remove lowestscore
scoreboard objectives add lowestscore dummy lowestscore
scoreboard players set @e[tag=bob] lowestscore 0

#scoreboard to pick a random punishment
scoreboard objectives remove randompunish
scoreboard objectives add randompunish dummy randompunish
scoreboard players set @e[tag=bob] randompunish 0

#also a scoreboard to countdown through punishments
scoreboard objectives remove punishcount
scoreboard objectives add punishcount dummy punishcount
scoreboard players set @e[tag=bob] punishcount 0

#Scoreboard to make the creepers flash before exploding
scoreboard objectives remove creeperflash
scoreboard objectives add creeperflash dummy creeperflash
scoreboard players set @e[tag=bob] creeperflash 0

#scoreboard for contestant lobby animations
scoreboard objectives remove animcountd
scoreboard objectives add animcountd dummy animcountd
#plus the scoreboard for their random lobby chattint
scoreboard objectives remove chatcountd
scoreboard objectives add chatcountd dummy chatcountd
#Plus a random number to determine which of the 3 messages will run
scoreboard objectives remove randchatmess
scoreboard objectives add randchatmess dummy randchatmess

#scoreboard for the drone in the lobby to go back and forth
scoreboard objectives remove lobbydronemv
scoreboard objectives add lobbydronemv dummy lobbydronemv
scoreboard players set @e[tag=bob] lobbydronemv 0


#Reset all players
tag @a remove joined
scoreboard objectives setdisplay sidebar

#gamestate
scoreboard objectives add gamestate dummy gamestate
scoreboard players set @e[tag=bob] gamestate 0
#   gamestate key
#   0 = lobby state
#   1 = ready up


#-----------------------------------------


#Remove players from teams
function misc/emptyteams

#restart players
function setup/spawnplayers

#Set up entities
function setup/entities


#Gamerules
gamerule sendcommandfeedback false
