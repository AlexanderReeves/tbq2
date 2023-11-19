execute as @s[scores={seconds=1}] run summon tbq:billagers 127 34 -144
execute as @s[scores={seconds=1}] run execute as @e[type=tbq:billagers] at @s run tp @s ~ ~ ~ 180 0
execute as @s[scores={seconds=1}] run function intro/restartvariables

#Give all gunpowder, if dropped by enough payers, game ends
replaceitem entity @a slot.hotbar 8 gunpowder 1



execute as @s[scores={seconds=3}] run title @a actionbar §aWelcome, one and all to....
execute as @s[scores={seconds=5}] run summon tbq:logo 127 28 -183


#logo loads in with animation here

#Camera tracking bill
execute as @s[scores={seconds=10}] run tp @e[type=tbq:camera,tag=viewbill,c=1] 127 34 -152
execute as @s[scores={seconds=12}] run title @a actionbar §aMy name is Bill Agers, and I'll be your host for the night.
execute as @s[scores={seconds=15}] run title @a actionbar §aLet's take a moment to introduce the contestants!

execute as @s[scores={seconds=44}] run title @a actionbar §aNow that you're all aquainted, it's time for the first round!
execute as @s[scores={seconds=48}] run title @a actionbar §aCorrect answers this round are worth 100 points!
execute as @s[scores={seconds=52}] run title @a actionbar §aScore 1500 points and you'll win this game's prize! It's...
execute as @s[scores={seconds=55}] run title @a actionbar §aA brand new washing machine!

execute as @s[scores={seconds=58}] run title @a actionbar §aA Lets Begin!


execute as @s[scores={seconds=59}] run function intro/end






