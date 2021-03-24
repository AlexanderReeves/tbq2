#make players move with the camera
execute @s[scores={seconds=0..10}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..10}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1
