
#=============================Contestant Animations
#- anim counts down for the contestants in the lobby
scoreboard players add @e[tag=contestant,type=!tbq:yellow_player] animcountd -1

execute as @e[scores={animcountd=0},type=tbq:red_player] run playanimation @s animation.contestant.think
execute as @e[scores={animcountd=0},type=tbq:green_player] run playanimation @s animation.green_player.headtilt
execute as @e[scores={animcountd=..0},type=tbq:green_player] run function lobby/setrandanimtime
execute as @e[scores={animcountd=..0},type=tbq:red_player] run function lobby/setrandanimtime
#blue is the non random timing one

execute as @e[scores={animcountd=0},type=tbq:blue_player] run playanimation @s animation.blue_player.rightweight
execute as @e[scores={animcountd=4},type=tbq:blue_player] run playanimation @s animation.blue_player.leftweight

scoreboard players set @e[scores={animcountd=..0},type=tbq:blue_player] animcountd 8
#yellow has no animation as is has a look-at-player animation already running


#============================Contestant Chatting
scoreboard players add @e[tag=contestant] chatcountd -1

#Say a random chat message to the player when the chat count is 0 exactly
execute as @e[tag=contestant,scores={chatcountd=0}] run function lobby/randomcontmess

#Reset chat timer to a random number when score is 0 or less
scoreboard players random @e[tag=contestant,scores={chatcountd=..-1}] chatcountd 20 60

#make the lobby drone go back and forth based on seconds in this timer
scoreboard players add @s lobbydronemv 1
scoreboard players set @s[scores={lobbydronemv=17}] lobbydronemv 0

execute as @s[scores={lobbydronemv=0}] run playanimation @e[type=tbq:camera_man] animation.camera_man.controll

execute as @s[scores={lobbydronemv=9}] run execute as @e[type=tbq:camera_man] animation.camera_man.controlr


