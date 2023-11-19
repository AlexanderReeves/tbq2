#*UPDATED TO NEW FORMAT*

#Events are now running The available events are
#Intro event
#Wheel event
#Outro event

#If bob has the tag EventIntro, he will run event code every second and every tick, same for the other cases
execute as @s[scores={tick=0},tag=eventintro] run function event/introsecond
execute as @s[tag=eventintro] run function event/introtick

#Wheel runs once per active teams, 1-4 times total
execute as @s[scores={tick=0},tag=eventwheel] run function event/wheelsecond
execute as @s[tag=eventwheel] run function event/wheeltick



#outro runs once
#execute as @s[scores={tick=0},tag=eventoutro] run function event/outrosecond
#execute as @s[tag=eventoutro] run function event/outrotick




