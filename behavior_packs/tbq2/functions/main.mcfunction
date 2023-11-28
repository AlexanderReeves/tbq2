
#----MAIN CODE------
#*UPDATED TO NEW LANGUAGE*
#THIS code is the MAIN function file, Most code is run from here
#It provides a way to set the order that the other functions will be called

#This code is run by an entity(squid) called "BOB" who sits next to a repeating command block in a ticking area under the main lobby.
#execute as @e[tag=bob] run say The server is ticking


#=======UPDATE IMPORTANT MISC VARIABLES!!!!======
#check the number of active players who are in a team and ready to play
function misc/checktotalplayers
#Check which teams are active!
#function misc/checkactiveteams
#Make sure that all players are legal
execute as @a[tag=!joined] run function misc/newplayer
#function misc/validateplayers
#random other things to run
function misc/misc
#======================================


#update the clock!
scoreboard players add @s tick 1
execute as @s[scores={tick=20}] run function second
execute as @s[scores={tick=20}] run scoreboard players add @s seconds 1
execute as @s[scores={tick=20}] run scoreboard players set @s tick 0

#Run the code based on the gamestate!
execute as @s[scores={gamestate=0}] run function lobby/main
execute as @s[scores={gamestate=1}] run function pregame/main
execute as @s[scores={gamestate=2}] run function intro/main
execute as @s[scores={gamestate=3}] run function game/main
execute as @s[scores={gamestate=4}] run function prize/main



#heal players
effect @a instant_health 1 1 true

#End the game if enough players drop gunpowder
#execute as @e[type=item,name=gunpowder] run function misc/tryendgame




