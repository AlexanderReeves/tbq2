#make players move with the camera,  and then make sure the player is facing the correct direction
execute @s[scores={seconds=0..10}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..10}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1

execute @s[scores={seconds=11..20}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewbill]
execute @s[scores={seconds=11..20}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1
#move camera = need to have a second model which is a sky cam on string
execute @s[scores={seconds=11..16}] ~ ~ ~ execute @e[tag=viewbill] ~ ~ ~ tp @s ~ ~ ~-0.1

#Make bill walk towards players
execute @s[scores={seconds=11..16}] ~ ~ ~ execute @e[type=tbq:billagers] ~ ~ ~ tp @s ~ ~ ~-0.1 180 0




