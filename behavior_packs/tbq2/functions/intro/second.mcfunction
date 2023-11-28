execute as @s[scores={seconds=1}] run summon tbq:billagers 127 34 -144
execute as @s[scores={seconds=1}] run execute as @e[type=tbq:billagers] at @s run tp @s ~ ~ ~ 180 0
execute as @s[scores={seconds=1}] run function intro/restartvariables
execute as @s[scores={seconds=1}] run execute as @a run function misc/showlive


#Give all gunpowder, if dropped by enough payers, game ends
replaceitem entity @a slot.hotbar 8 gunpowder 1



execute as @s[scores={seconds=3}] run title @a actionbar §aWelcome, one and all to....
execute as @s[scores={seconds=5}] run summon tbq:logo 127 28 -183


#logo loads in with animation here

#Camera tracking bill
execute as @s[scores={seconds=10}] run tp @e[type=tbq:camera,tag=viewbill,c=1] 127 34 -152
execute as @s[scores={seconds=12}] run title @a actionbar §aMy name is Bill Agers, and I'll be your host for the night.
execute as @s[scores={seconds=15}] run title @a actionbar §aLet's take a moment to introduce the contestants!
#live ui show to all except the players being introduced
execute as @s[scores={seconds=19..24}] run execute as @a[tag=!blue] run function misc/showlive
execute as @s[scores={seconds=25..30}] run execute as @a[tag=!yellow] run function misc/showlive
execute as @s[scores={seconds=31..36}] run execute as @a[tag=!green] run function misc/showlive
execute as @s[scores={seconds=37..42}] run execute as @a[tag=!red] run function misc/showlive
execute as @s[scores={seconds=19..24}] run execute as @a[tag=blue] run function misc/shownothing
execute as @s[scores={seconds=25..30}] run execute as @a[tag=yellow] run function misc/shownothing
execute as @s[scores={seconds=31..36}] run execute as @a[tag=green] run function misc/shownothing
execute as @s[scores={seconds=37..42}] run execute as @a[tag=red] run function misc/shownothing
execute as @s[scores={seconds=43}] run execute as @a run function misc/showlive

#Straighten cameras...
execute as @s[scores={seconds=44}] run title @a actionbar §aNow that you're all aquainted, it's time for the first round!
execute as @s[scores={seconds=48}] run title @a actionbar §aCorrect answers this round are worth 100 points!
execute as @s[scores={seconds=51}] run summon tbq:badprizebox 127.36 42.20 -151.10
execute as @s[scores={seconds=52}] run title @a actionbar §aThe winning team will receive the mystery prize.
execute as @s[scores={seconds=55}] run title @a actionbar §aGood luck teams.

execute as @s[scores={seconds=58}] run title @a actionbar §aA Let's Begin!


execute as @s[scores={seconds=59}] run function intro/end






