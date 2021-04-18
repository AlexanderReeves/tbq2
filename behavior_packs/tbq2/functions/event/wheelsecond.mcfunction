#Check team validity
execute @s[scores={seconds=0}] ~ ~ ~ function event/wheelteamcheck

#Tp players who are allowed to spin the wheel to the stage
execute @s[scores={seconds=0},tag=wheelgreen] ~ ~ ~ tp @a[tag=green] 125 28 -183 200 0
execute @s[scores={seconds=0},tag=wheelred] ~ ~ ~ tp @a[tag=red] 125 28 -183 200 0
execute @s[scores={seconds=0},tag=wheelyellow] ~ ~ ~ tp @a[tag=yellow] 125 28 -183 200 0
execute @s[scores={seconds=0},tag=wheelblue] ~ ~ ~ tp @a[tag=blue] 125 28 -183 200 0

#say whose turn it is to spin the wheel
execute @s[scores={seconds=0},tag=wheelgreen] ~ ~ ~ title @a actionbar §aIt's your turn, Green team!
execute @s[scores={seconds=0},tag=wheelred] ~ ~ ~ title @a actionbar §aIt's your turn, Red team!
execute @s[scores={seconds=0},tag=wheelyellow] ~ ~ ~ title @a actionbar §aIt's your turn, Yellow team!
execute @s[scores={seconds=0},tag=wheelblue] ~ ~ ~ title @a actionbar §aIt's your turn, Blue team!





