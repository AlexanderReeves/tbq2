#Send players back to view bill
execute @s[scores={seconds=0..12}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewbill]
execute @s[scores={seconds=0..12}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 0
execute @s[scores={seconds=13..20}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=13..20}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 -10

