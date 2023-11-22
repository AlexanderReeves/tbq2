#Here we need to find which team has the lowest score and tag all the players as losers so we can punish them!
tag @a remove loser
say selecting losers
#Keep in mind, there could be more than one team with the lowest score

#Lets set the lowest score as 10000, which is impossibly higher than the highest score as a fake starting point
scoreboard players set @s lowestscore 10000

#If green score is equal, add lowestgreen as a tag so that we have that info
execute if score @s greenscore = @s lowestscore run tag @s add lowestgreen
#Then, if greenscore is lower than the lowest known score, add the tag lowestgreen
execute if score @s greenscore < @s lowestscore run tag @s add lowestgreen
#Save the new known lowest score
execute as @s[tag=lowestgreen] run scoreboard players set @s lowestscore 0
execute as @s[tag=lowestgreen] run scoreboard players operation @s lowestscore += @s greenscore

#okay, green is for sure noted as the lowest score, and we are tagged accordingly...
#What if red is lower?
#===========================
#If the score matches the lowest, add a second tag!
execute if score @s redscore = @s lowestscore run tag @s add lowestred
#Then, if red score is lower than lowestscore... remove the green tag
execute if score @s redscore < @s lowestscore run tag @s remove lowestgreen
execute if score @s redscore < @s lowestscore run tag @s add lowestred

#Save the new known lowest score
execute as @s[tag=lowestred] run scoreboard players set @s lowestscore 0
execute as @s[tag=lowestred] run scoreboard players operation @s lowestscore += @s redscore
#===================================
#by now we have the lowest score, and one or two tags
# on to the yello
#If the score matches the lowest, add a second tag!
execute if score @s yellowscore = @s lowestscore run tag @s add lowestyellow
#Then, if red score is lower than lowestscore... remove red and green tags
execute if score @s yellowscore < @s lowestscore run tag @s remove lowestgreen
execute if score @s yellowscore < @s lowestscore run tag @s remove lowestred
#add yellow tag to replace removed tags
execute if score @s yellowscore < @s lowestscore run tag @s add lowestyellow

#Save the new known lowest score
execute as @s[tag=lowestyellow] run scoreboard players set @s lowestscore 0
execute as @s[tag=lowestyellow] run scoreboard players operation @s lowestscore += @s yellowscore
#===================================
#by now we have the lowest score, and one or two, or 3 tags
# on to the blue
#If the score matches the lowest, add a second tag!
execute if score @s bluescore = @s lowestscore run tag @s add lowestblue
#Then, if red score is lower than lowestscore... remove red and green tags
execute if score @s bluescore < @s lowestscore run tag @s remove lowestgreen
execute if score @s bluescore < @s lowestscore run tag @s remove lowestred
execute if score @s bluescore < @s lowestscore run tag @s remove lowestyellow
#add yellow tag to replace removed tags
execute if score @s bluescore < @s lowestscore run tag @s add lowestblue

#Save the new known lowest score
execute as @s[tag=lowestblue] run scoreboard players set @s lowestscore 0
execute as @s[tag=lowestblue] run scoreboard players operation @s lowestscore += @s bluescore


#=========
#now we know the lowest score, and bob has a tag for every team on that score.
execute as @s[tag=lowestgreen] run tag @a[tag=green] add loser
execute as @s[tag=lowestyellow] run tag @a[tag=yellow] add loser
execute as @s[tag=lowestred] run tag @a[tag=red] add loser
execute as @s[tag=lowestblue] run tag @a[tag=blue] add loser

# we now have all losers tagged and the lowest score!
