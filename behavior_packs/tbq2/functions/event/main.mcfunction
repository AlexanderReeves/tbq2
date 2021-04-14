#Event will run based on bobs tag
execute @s[scores={tick=0},tag=eventintro] ~ ~ ~ function event/introsecond
execute @s[tag=eventintro] ~ ~ ~ function event/introtick

#Wheel runs once per active teams, 1-4 times total
execute @s[scores={tick=0},tag=eventwheel] ~ ~ ~ function event/wheelsecond
execute @s[tag=eventwheel] ~ ~ ~ function event/wheeltick

#outro runs once
execute @s[scores={tick=0},tag=eventoutro] ~ ~ ~ function event/outrosecond
execute @s[tag=eventoutro] ~ ~ ~ function event/outrotick


#Trigger wheel spin when lever pulled
execute @e[type=item,name=torch] ~ ~ ~ execute @e[tag=bob] ~ ~ ~ function event/wheeltrigger
execute @e[type=item,name=torch] ~ ~ ~ say wheel spun!

kill @e[type=minecraft:item,name=torch]

