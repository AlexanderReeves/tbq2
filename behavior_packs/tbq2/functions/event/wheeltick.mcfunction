
#When the wheel event first starts...
#Tp all players to camera to view the wheel spinner, except whose turn it is
execute @s[scores={seconds=0..},tag=wheelgreen] ~ ~ ~ tp @a[tag=!green] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelred] ~ ~ ~ tp @a[tag=!red] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelyellow] ~ ~ ~ tp @a[tag=!yellow] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelblue] ~ ~ ~ tp @a[tag=!blue] @e[type=tbq:camera,c=1,tag=viewstage]

#Trigger wheel spin when lever pulled, the wheel trigger pops a torch into the map. if we see the torch, the wheel starts!
#This code can only run when the clock is between 0 and 15 seconds. If 15 seconds pass, spinning the wheel is no longer an option
execute @s[scores={seconds=0..15}] ~ ~ ~ execute @e[type=item,name=torch] ~ ~ ~ execute @e[tag=bob] ~ ~ ~ function event/wheeltrigger
execute @s[scores={seconds=0..15}] ~ ~ ~ execute @e[type=item,name=torch] ~ ~ ~ say wheel spun!
#Delete the torch
kill @e[type=minecraft:item,name=torch]
