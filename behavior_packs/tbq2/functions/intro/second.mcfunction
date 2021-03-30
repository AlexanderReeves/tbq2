execute @s[scores={seconds=1}] ~ ~ ~ summon tbq:billagers 127 34 -144
execute @s[scores={seconds=1}] ~ ~ ~ execute @e[type=tbq:billagers] ~ ~ ~ tp @s ~ ~ ~ 180 0
execute @s[scores={seconds=1}] ~ ~ ~ function intro/restartvariables

#Give all gunpowder, if dropped by enough payers, game ends
replaceitem entity @a slot.hotbar 8 gunpowder 1



execute @s[scores={seconds=3}] ~ ~ ~ title @a actionbar §aWelcome, one and all to....
execute @s[scores={seconds=5}] ~ ~ ~ summon tbq:logo 127 28 -183


#logo loads in with animation here

#Camera tracking bill
execute @s[scores={seconds=10}] ~ ~ ~ tp @e[type=tbq:camera,tag=viewbill,c=1] 127 34 -152
execute @s[scores={seconds=12}] ~ ~ ~ title @a actionbar §aMy name is Bill Agers, and I'll be your host for the night.
execute @s[scores={seconds=15}] ~ ~ ~ title @a actionbar §aLet's take a moment to introduce the contestants!

execute @s[scores={seconds=44}] ~ ~ ~ title @a actionbar §aNow that you're all aquainted, it's time for the first round!
execute @s[scores={seconds=48}] ~ ~ ~ title @a actionbar §aCorrect answers this round are worth 100 points!
execute @s[scores={seconds=52}] ~ ~ ~ title @a actionbar §aScore 1500 points and you'll win this game's prize! It's...
execute @s[scores={seconds=55}] ~ ~ ~ title @a actionbar §aA brand new washing machine!






