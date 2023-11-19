#*UPDATED TO NEW FORMAT*
#Send players back to view bill
execute as @s[scores={seconds=0..12}] run tp @a @e[type=tbq:drone,c=1,tag=viewbill]
execute as @s[scores={seconds=0..12}] run execute as @a at @s run tp @s ~ ~ ~ 0 0
execute as @s[scores={seconds=0..12}] run effect @a invisibility 1 1 true

execute as @s[scores={seconds=13..20}] run tp @a @e[type=tbq:camera,c=1,tag=viewstage]
execute as @s[scores={seconds=13..20}] run execute as @a at @s run tp @s ~ ~ ~ 0 -10
execute as @s[scores={seconds=13..20}] run effect @a invisibility 1 1 true

