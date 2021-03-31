
#----MAIN CODE------
#THIS code is the MAIN function file, Most code is run from here
#It provides a way to set the order that the other functions will be called

#This code is run by an entity(squid) called "BOB" who sits next to a repeating command block in a ticking area.
#Say bob the squid is running the game engine.


#=======UPDATE IMPORTANT MISC VARIABLES!!!!======
#check the number of active players
function misc/checktotalplayers
#Check which teams are active!
function misc/checkactiveteams

#======================================

#update the clock!
scoreboard players add @s tick 1
execute @s[scores={tick=20}] ~ ~ ~ function second
execute @s[scores={tick=20}] ~ ~ ~ scoreboard players add @s seconds 1
execute @s[scores={tick=20}] ~ ~ ~ scoreboard players set @s tick 0

#Run the code based on the gamestate!
execute @s[scores={gamestate=0}] ~ ~ ~ function lobby/main
execute @s[scores={gamestate=1}] ~ ~ ~ function pregame/main
execute @s[scores={gamestate=2}] ~ ~ ~ function intro/main
execute @s[scores={gamestate=3}] ~ ~ ~ function game/main


#heal players
effect @a instant_health 1 1 true

#End the game if enough players drop gunpowder
execute @e[type=item,name=gunpowder] ~ ~ ~ function misc/tryendgame


#WHEEL TEST
execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~15 ~




