#End the intro

#Remove the logo
kill @e[type=tbq:logo]
#Set the gamestate to maingame
scoreboard players set @s gamestate 3
#Reset the clock
scoreboard players set @s tick 0
#Maingame should be running questions
tag @s add runquestion
#Reset the clock
scoreboard players set @s seconds 0