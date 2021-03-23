
#----MAIN CODE------
#THIS code is the MAIN function file, Most code is run from here
#It provides a way to set the order that the other functions will be called

#This code is run by an entity(squid) called "BOB" who sits next to a repeating command block in a ticking area.
#Say bob the squid is running the game engine.
scoreboard players add @s tick 1
execute @s[scores={tick=20}] ~ ~ ~ function second
execute @s[scores={tick=20}] ~ ~ ~ scoreboard players set @s tick 0


execute @s[scores={gamestate=0}] ~ ~ ~ function lobby/teamselection

