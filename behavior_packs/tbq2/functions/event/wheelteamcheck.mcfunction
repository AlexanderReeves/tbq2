#SKIP GREEN IF NO GREEN PLAYERS

#SKIP TO NEXT TEAM IF TEAM IS NOT PLAYING
#say running team check




#SKIP GREEN

#Team valid is applied to bob when we have found a valid team to spin the wheel
tag @e[tag=bob] remove teamvalid
tag @a remove validplayerarea



#===============================       GREEN     ========================================
#GREEN
#If bob wants a green player to spin the wheel, he will look to see if there are any players who are tagged as green, that player will validate bob
execute as @s[tag=wheelgreen] run execute as @a[tag=green] run tag @e[tag=bob] add teamvalid

#we have a valid green team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute as @s[tag=wheelgreen,tag=teamvalid] run tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute as @s[tag=wheelgreen,tag=teamvalid] run tag @a[tag=green, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in green team, message them and move them back to the correct area
execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=green,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=green,tag=!validplayerarea] run tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute as @s[tag=wheelgreen,tag=teamvalid] run tag @a[tag=!green, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=!green,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=!green,tag=!validplayerarea] run tp @s 114 28 -210
#say test

#IF no green players left in green, switch to validating the red team. and reset the timer to the start of the segment
scoreboard players set @e[tag=bob,tag=wheelgreen,tag=!teamvalid] seconds 0
execute as @e[tag=bob,tag=wheelgreen,tag=!teamvalid] run tag @s add wheelred
execute as @e[tag=bob,tag=wheelgreen,tag=!teamvalid] run tag @s remove wheelgreen


#===============================       RED     ========================================
#RED
#If bob wants a red player to spin the wheel, he will look to see if there are any players who are tagged as red, that player will validate bob
execute as @s[tag=wheelred] run execute as @a[tag=red] run tag @e[tag=bob] add teamvalid

#we have a valid red team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute as @s[tag=wheelred,tag=teamvalid] run tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute as @s[tag=wheelred,tag=teamvalid] run tag @a[tag=red, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in red team, message them and move them back to the correct area
execute as @s[tag=wheelred,tag=teamvalid] run execute as @a[tag=red,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelred,tag=teamvalid] run execute as @a[tag=red,tag=!validplayerarea] run tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute as @s[tag=wheelred,tag=teamvalid] run tag @a[tag=!red, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute as @s[tag=wheelred,tag=teamvalid] run execute as @a[tag=!red,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelred,tag=teamvalid] run execute as @a[tag=!red,tag=!validplayerarea] run tp @s 114 28 -210

#If bob wants a green player to spin the wheel, he will look to see if there are any players who are tagged as green, that player will validate bob
execute as @s[tag=wheelgreen] run execute as @a[tag=green] run tag @e[tag=bob] add teamvalid
#we have a valid green team playing, let's make sure everyone is in a valid location!
#execute as @s[tag=wheelgreen,tag=teamvalid] run say making sure green are in the wheel area

#Make all green players invalidated for their area
#execute as @s[tag=wheelgreen,tag=teamvalid] run tag @a[tag=green] remove validplayerarea
#execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=green, x=86, y=25, z=-199, dx=82, dy=15, dz=40] run say hello, i am in the valid wheel area
execute as @s[tag=wheelgreen,tag=teamvalid] run tag @a[tag=green, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=green,tag=validplayerarea] run say I am have been validated here
#execute as @s[tag=wheelgreen,tag=teamvalid] run execute as @a[tag=green,tag=!validplayerarea] run say I am not validated here, move me








execute as @e[tag=bob,tag=wheelgreen,tag=!teamvalid] run tag @s add wheelred
#If not, we tag bob as red instead, and remove the wheelgreen tag
execute as @e[tag=bob,tag=wheelgreen,tag=!teamvalid] run tag @s remove wheelgreen



#Repeat this process for the other teams.
#SKIP RED
execute as @s[tag=wheelred] run execute as @a[tag=red] run tag @e[tag=bob] add teamvalid
execute as @e[tag=bob,tag=wheelred,tag=!teamvalid] run tag @s add wheelyellow
execute as @e[tag=bob,tag=wheelred,tag=!teamvalid] run tag @s remove wheelred

#SKIP YELLOW
execute as @s[tag=wheelyellow] run execute as @a[tag=yellow] run tag @e[tag=bob] add teamvalid
execute as @e[tag=bob,tag=wheelyellow,tag=!teamvalid] run tag @s add wheelblue
execute as @e[tag=bob,tag=wheelyellow,tag=!teamvalid] run tag @s remove wheelyellow


#IF no red players left in red, switch to validating the red team.
scoreboard players set @e[tag=bob,tag=wheelred,tag=!teamvalid] seconds 0
execute as @e[tag=bob,tag=wheelred,tag=!teamvalid] run tag @s add wheelblue
execute as @e[tag=bob,tag=wheelred,tag=!teamvalid] run tag @s remove wheelred

#===============================       BLUE     ========================================
#BLUE
#If bob wants a blue player to spin the wheel, he will look to see if there are any players who are tagged as blue, that player will validate bob
execute as @s[tag=wheelblue] run execute as @a[tag=blue] run tag @e[tag=bob] add teamvalid


#we have a valid blue team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute as @s[tag=wheelblue,tag=teamvalid] run tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute as @s[tag=wheelblue,tag=teamvalid] run tag @a[tag=blue, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in blue team, message them and move them back to the correct area
execute as @s[tag=wheelblue,tag=teamvalid] run execute as @a[tag=blue,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelblue,tag=teamvalid] run execute as @a[tag=blue,tag=!validplayerarea] run tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute as @s[tag=wheelblue,tag=teamvalid] run tag @a[tag=!blue, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute as @s[tag=wheelblue,tag=teamvalid] run execute as @a[tag=!blue,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelblue,tag=teamvalid] run execute as @a[tag=!blue,tag=!validplayerarea] run tp @s 114 28 -210

#IF no blue players left in blue, switch to validating the blue team.
scoreboard players set @e[tag=bob,tag=wheelblue,tag=!teamvalid] seconds 0
execute as @e[tag=bob,tag=wheelblue,tag=!teamvalid] run tag @s add wheelyellow
execute as @e[tag=bob,tag=wheelblue,tag=!teamvalid] run tag @s remove wheelblue


#===============================       YELLOW     ========================================
#YELLOW
#If bob wants a yellow player to spin the wheel, he will look to see if there are any players who are tagged as yellow, that player will validate bob
execute as @s[tag=wheelyellow] run execute as @a[tag=yellow] run tag @e[tag=bob] add teamvalid

#we have a valid yellow team playing, let's make sure everyone is in a valid location!
#Make all players invalidated for their area
execute as @s[tag=wheelyellow,tag=teamvalid] run tag @a remove validplayerarea
#If there is a player of the correct team in the correct area, that player should be tagged
execute as @s[tag=wheelyellow,tag=teamvalid] run tag @a[tag=yellow, x=86, y=25, z=-199, dx=82, dy=15, dz=40] add validplayerarea
#For players without the correct tag in yellow team, message them and move them back to the correct area
execute as @s[tag=wheelyellow,tag=teamvalid] run execute as @a[tag=yellow,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelyellow,tag=teamvalid] run execute as @a[tag=yellow,tag=!validplayerarea] run tp @s 127 28 -191

#Do the same for spectators aka Non Green players who have left the grandstand
execute as @s[tag=wheelyellow,tag=teamvalid] run tag @a[tag=!yellow, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute as @s[tag=wheelyellow,tag=teamvalid] run execute as @a[tag=!yellow,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelyellow,tag=teamvalid] run execute as @a[tag=!yellow,tag=!validplayerarea] run tp @s 114 28 -210

#IF no yellow players left in yellow, switch to validating the yellow team.
#500 marks the end of the segment entirely
scoreboard players set @e[tag=bob,tag=wheelyellow,tag=!teamvalid] seconds 500
execute as @e[tag=bob,tag=wheelyellow,tag=!teamvalid] run tag @s add wheelnone
execute as @e[tag=bob,tag=wheelyellow,tag=!teamvalid] run tag @s remove wheelyellow



#Once we have given every team a chance to spin the wheel, we begin the event outro(Not game outro)
execute as @s[tag=!teamvalid] run say no teams left to spin the wheel, moving onto event outro
execute as @s[tag=!teamvalid] run tag @s add eventoutro
execute as @s[tag=!teamvalid] run tag @s remove eventwheel

execute as @e[tag=bob,tag=wheelblue,tag=!teamvalid] run tag @s remove wheelblue


#Once we have given every team a chance to spin the wheel, we begin the event outro(Not game outro)
#execute as @s[tag=!teamvalid] run say no teams left to spin the wheel, moving onto event outro
#execute as @s[tag=!teamvalid] run tag @s add eventoutro
#execute as @s[tag=!teamvalid] run tag @s remove eventwheel

