execute @s[scores={tick=0}] ~ ~ ~ function event/second
execute @s ~ ~ ~ function event/tick
execute @s ~ ~ ~ function event/wheelrotation



execute @e[type=minecraft:item,name=torch] ~ ~ ~ function event/wheeltrigger
kill @e[type=minecraft:item,name=torch]