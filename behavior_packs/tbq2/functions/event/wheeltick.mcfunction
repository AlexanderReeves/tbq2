#*UPDATED TO NEW FORMAT*
#When the wheel event first starts...

#BUG FIX CODE, WHEEL DOES NOT ALIGNG PROPERLY IN A SINGLE TP, SO SET IT'S POSITION FOR THE FIRST FULL SECONF OF TICKS
execute as @s[scores={seconds=1..2}] run function misc/wheelcentre
#Tp all players to camera to view the wheel spinner, except whose turn it is
execute as @s[scores={seconds=0..},tag=wheelgreen] run tp @a[tag=!green] @e[type=tbq:camera,c=1,tag=viewstage]
execute as @s[scores={seconds=0..},tag=wheelred] run tp @a[tag=!red] @e[type=tbq:camera,c=1,tag=viewstage]
execute as @s[scores={seconds=0..},tag=wheelyellow] run tp @a[tag=!yellow] @e[type=tbq:camera,c=1,tag=viewstage]
execute as @s[scores={seconds=0..},tag=wheelblue] run tp @a[tag=!blue] @e[type=tbq:camera,c=1,tag=viewstage]

#Trigger wheel spin when lever pulled, the wheel trigger pops a torch into the map. if we see the torch, the wheel starts!
#This code can only run when the clock is between 0 and 15 seconds. If 15 seconds pass, spinning the wheel is no longer an option
execute as @s[scores={seconds=0..15}] run execute as @e[type=item,name=torch] run execute as @e[tag=bob] run function event/wheeltrigger
execute as @s[scores={seconds=0..15}] run execute as @e[type=item,name=torch] run say wheel spun!
#Delete the torch
kill @e[type=minecraft:item,name=torch]
