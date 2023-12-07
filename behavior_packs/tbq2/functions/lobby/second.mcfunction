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

