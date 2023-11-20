#*UPDATED TO THE NEW FORMAT*

#1. validate that the current team players are staying near the wheel for their turn
#2. If not, send them back to the correct destination

#Check that the current wheel spinning team has players...
#If they don't go to the next team
tag @e[tag=bob] remove teamvalid

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

#IF no green players left in green, switch to validating the red team. and reset the timer to the start of the segment
execute as @e[tag=bob,tag=wheelgreen,tag=!teamvalid] run function event/wheelnext

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

#Do the same for spectators aka Non Red players who have left the grandstand
execute as @s[tag=wheelred,tag=teamvalid] run tag @a[tag=!red, x=93, y=25, z=-199, dx=70, dy=20, dz=-20] add validplayerarea
execute as @s[tag=wheelred,tag=teamvalid] run execute as @a[tag=!red,tag=!validplayerarea] run tellraw @s {"rawtext":[{"text":"§e§oYou have been moved back to the correct area because you tried to run away!"}]} 
execute as @s[tag=wheelred,tag=teamvalid] run execute as @a[tag=!red,tag=!validplayerarea] run tp @s 114 28 -210


#Repeat this process for the other teams.
#SKIP RED
execute as @e[tag=bob,tag=wheelred,tag=!teamvalid] run function event/wheelnext

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
execute as @e[tag=bob,tag=wheelblue,tag=!teamvalid] run function event/wheelnext


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

#wheelnext will pick the next team, or end the event
execute as @e[tag=bob,tag=wheelyellow,tag=!teamvalid] run function event/wheelnext
