



#SKIP GREEN IF NO GREEN PLAYERS
=======
#SKIP TO NEXT TEAM IF TEAM IS NOT PLAYING
say running team check




#SKIP GREEN

#Team valid is applied to bob when we have found a valid team to spin the wheel
tag @e[tag=bob] remove teamvalid
tag @a remove validplayerarea



#===============================       GREEN     ========================================
#GREEN
#If bob wants a green player to spin the wheel, he will look to see if there are any players who are tagged as green, that player will validate bob
execute @s[tag=wheelgreen] ~ ~ ~ execute @a[tag=green] ~ ~ ~ tag @e[tag=bob] add teamvalid

#we have a valid green team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ tag @a[tag=green, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in green team, message them and move them back to the correct area
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=green,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=green,tag=!validplayerarea] ~ ~ ~ tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ tag @a[tag=!green, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=!green,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=!green,tag=!validplayerarea] ~ ~ ~ tp @s 114 28 -210
#say test

#IF no green players left in green, switch to validating the red team. and reset the timer to the start of the segment
scoreboard players set @e[tag=bob,tag=wheelgreen,tag=!teamvalid] seconds 0
execute @e[tag=bob,tag=wheelgreen,tag=!teamvalid] ~ ~ ~ tag @s add wheelred
execute @e[tag=bob,tag=wheelgreen,tag=!teamvalid] ~ ~ ~ tag @s remove wheelgreen


#===============================       RED     ========================================
#RED
#If bob wants a red player to spin the wheel, he will look to see if there are any players who are tagged as red, that player will validate bob
execute @s[tag=wheelred] ~ ~ ~ execute @a[tag=red] ~ ~ ~ tag @e[tag=bob] add teamvalid

#we have a valid red team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ tag @a[tag=red, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in red team, message them and move them back to the correct area
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ execute @a[tag=red,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ execute @a[tag=red,tag=!validplayerarea] ~ ~ ~ tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ tag @a[tag=!red, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ execute @a[tag=!red,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelred,tag=teamvalid] ~ ~ ~ execute @a[tag=!red,tag=!validplayerarea] ~ ~ ~ tp @s 114 28 -210
=======
#If bob wants a green player to spin the wheel, he will look to see if there are any players who are tagged as green, that player will validate bob
execute @s[tag=wheelgreen] ~ ~ ~ execute @a[tag=green] ~ ~ ~ tag @e[tag=bob] add teamvalid
#we have a valid green team playing, let's make sure everyone is in a valid location!
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ say making sure green are in the wheel area

#Make all green players invalidated for their area
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ tag @a[tag=green] remove validplayerarea
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=green, x=86, y=25, z=-199, dx=82, dy=15, dz=40] ~ ~ ~ say hello, i am in the valid wheel area
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ tag @a[tag=green, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=green,tag=validplayerarea] ~ ~ ~ say I am have been validated here
execute @s[tag=wheelgreen,tag=teamvalid] ~ ~ ~ execute @a[tag=green,tag=!validplayerarea] ~ ~ ~ say I am not validated here, move me








execute @e[tag=bob,tag=wheelgreen,tag=!teamvalid] ~ ~ ~ tag @s add wheelred
#If not, we tag bob as red instead, and remove the wheelgreen tag
execute @e[tag=bob,tag=wheelgreen,tag=!teamvalid] ~ ~ ~ tag @s remove wheelgreen



#Repeat this process for the other teams.
#SKIP RED
execute @s[tag=wheelred] ~ ~ ~ execute @a[tag=red] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelred,tag=!teamvalid] ~ ~ ~ tag @s add wheelyellow
execute @e[tag=bob,tag=wheelred,tag=!teamvalid] ~ ~ ~ tag @s remove wheelred

#SKIP YELLOW
execute @s[tag=wheelyellow] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelyellow,tag=!teamvalid] ~ ~ ~ tag @s add wheelblue
execute @e[tag=bob,tag=wheelyellow,tag=!teamvalid] ~ ~ ~ tag @s remove wheelyellow
>>>>>>> 00749e3df8d6fb636da47fd3e8a0becbf49683ea

#IF no red players left in red, switch to validating the red team.
scoreboard players set @e[tag=bob,tag=wheelred,tag=!teamvalid] seconds 0
execute @e[tag=bob,tag=wheelred,tag=!teamvalid] ~ ~ ~ tag @s add wheelblue
execute @e[tag=bob,tag=wheelred,tag=!teamvalid] ~ ~ ~ tag @s remove wheelred

#===============================       BLUE     ========================================
#BLUE
#If bob wants a blue player to spin the wheel, he will look to see if there are any players who are tagged as blue, that player will validate bob
execute @s[tag=wheelblue] ~ ~ ~ execute @a[tag=blue] ~ ~ ~ tag @e[tag=bob] add teamvalid


#we have a valid blue team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ tag @a[tag=blue, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in blue team, message them and move them back to the correct area
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ execute @a[tag=blue,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ execute @a[tag=blue,tag=!validplayerarea] ~ ~ ~ tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ tag @a[tag=!blue, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ execute @a[tag=!blue,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelblue,tag=teamvalid] ~ ~ ~ execute @a[tag=!blue,tag=!validplayerarea] ~ ~ ~ tp @s 114 28 -210

#IF no blue players left in blue, switch to validating the blue team.
scoreboard players set @e[tag=bob,tag=wheelblue,tag=!teamvalid] seconds 0
execute @e[tag=bob,tag=wheelblue,tag=!teamvalid] ~ ~ ~ tag @s add wheelyellow
execute @e[tag=bob,tag=wheelblue,tag=!teamvalid] ~ ~ ~ tag @s remove wheelblue


#===============================       YELLOW     ========================================
#YELLOW
#If bob wants a yellow player to spin the wheel, he will look to see if there are any players who are tagged as yellow, that player will validate bob
execute @s[tag=wheelyellow] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ tag @e[tag=bob] add teamvalid

#we have a valid yellow team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ tag @a[tag=yellow, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in yellow team, message them and move them back to the correct area
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ execute @a[tag=yellow,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ execute @a[tag=yellow,tag=!validplayerarea] ~ ~ ~ tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ tag @a[tag=!yellow, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ execute @a[tag=!yellow,tag=!validplayerarea] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute @s[tag=wheelyellow,tag=teamvalid] ~ ~ ~ execute @a[tag=!yellow,tag=!validplayerarea] ~ ~ ~ tp @s 114 28 -210

#IF no yellow players left in yellow, switch to validating the yellow team.
#500 marks the end of the segment entirely
scoreboard players set @e[tag=bob,tag=wheelyellow,tag=!teamvalid] seconds 500
execute @e[tag=bob,tag=wheelyellow,tag=!teamvalid] ~ ~ ~ tag @s add wheelnone
execute @e[tag=bob,tag=wheelyellow,tag=!teamvalid] ~ ~ ~ tag @s remove wheelyellow



#Once we have given every team a chance to spin the wheel, we begin the event outro(Not game outro)
execute @s[tag=!teamvalid] ~ ~ ~ say no teams left to spin the wheel, moving onto event outro
execute @s[tag=!teamvalid] ~ ~ ~ tag @s add eventoutro
execute @s[tag=!teamvalid] ~ ~ ~ tag @s remove eventwheel
=======
execute @e[tag=bob,tag=wheelblue,tag=!teamvalid] ~ ~ ~ tag @s remove wheelblue


#Once we have given every team a chance to spin the wheel, we begin the event outro(Not game outro)
#execute @s[tag=!teamvalid] ~ ~ ~ say no teams left to spin the wheel, moving onto event outro
#execute @s[tag=!teamvalid] ~ ~ ~ tag @s add eventoutro
#execute @s[tag=!teamvalid] ~ ~ ~ tag @s remove eventwheel

