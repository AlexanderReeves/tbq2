#SKIP TO NEXT TEAM IF TEAM IS NOT PLAYING
say running team check




#SKIP GREEN
#Team valid is applied to bob when we have found a valid team to spin the wheel
tag @e[tag=bob] remove teamvalid
tag @a remove validplayerarea

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

#SKIP BLUE
execute @s[tag=wheelblue] ~ ~ ~ execute @a[tag=blue] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelblue,tag=!teamvalid] ~ ~ ~ tag @s remove wheelblue


#Once we have given every team a chance to spin the wheel, we begin the event outro(Not game outro)
#execute @s[tag=!teamvalid] ~ ~ ~ say no teams left to spin the wheel, moving onto event outro
#execute @s[tag=!teamvalid] ~ ~ ~ tag @s add eventoutro
#execute @s[tag=!teamvalid] ~ ~ ~ tag @s remove eventwheel