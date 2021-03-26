execute @s[scores={seconds=1}] ~ ~ ~ summon tbq:billagers 127 34 -144
execute @s[scores={seconds=1}] ~ ~ ~ execute @e[type=tbq:billagers] ~ ~ ~ tp @s ~ ~ ~ 180 0



execute @s[scores={seconds=3}] ~ ~ ~ title @a actionbar §aWelcome, one and all to....
execute @s[scores={seconds=5}] ~ ~ ~ summon tbq:logo 127 28 -183


#logo loads in with animation here

#Camera tracking bill
execute @s[scores={seconds=10}] ~ ~ ~ tp @e[type=tbq:camera,tag=viewbill,c=1] 127 34 -152
execute @s[scores={seconds=12}] ~ ~ ~ title @a actionbar §aMy name is Bill Agers, and I'll be your host for the night.
execute @s[scores={seconds=15}] ~ ~ ~ title @a actionbar §aLet's take a moment to introduce the contestants!

#into contestants from main cam
execute @s[scores={seconds=20}] ~ ~ ~ title @a actionbar §aThe blue team!
execute @s[scores={seconds=20}] ~ ~ ~ tp @a[tag=blue] 127 28 -188 180 0
execute @s[scores={seconds=26}] ~ ~ ~ title @a actionbar §aThe yellow team!
execute @s[scores={seconds=26}] ~ ~ ~ tp @a[tag=yellow] 127 28 -188 180 0
execute @s[scores={seconds=32}] ~ ~ ~ title @a actionbar §aThe green team!
execute @s[scores={seconds=32}] ~ ~ ~ tp @a[tag=green] 127 28 -188 180 0
execute @s[scores={seconds=38}] ~ ~ ~ title @a actionbar §aThe red team!
execute @s[scores={seconds=38}] ~ ~ ~ tp @a[tag=red] 127 28 -188 180 0



