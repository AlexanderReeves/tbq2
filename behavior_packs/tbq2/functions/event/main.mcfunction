#Events are now running The available events are
#Intro event
#Wheel event
#Outro event

#If bob has the tag EventIntro, he will run event code every second and every tick, same for the other cases
execute @s[scores={tick=0},tag=eventintro] ~ ~ ~ function event/introsecond
execute @s[tag=eventintro] ~ ~ ~ function event/introtick

#Wheel runs once per active teams, 1-4 times total
execute @s[scores={tick=0},tag=eventwheel] ~ ~ ~ function event/wheelsecond
execute @s[tag=eventwheel] ~ ~ ~ function event/wheeltick



#outro runs once
#execute @s[scores={tick=0},tag=eventoutro] ~ ~ ~ function event/outrosecond
#execute @s[tag=eventoutro] ~ ~ ~ function event/outrotick




