#Start with a bill speech, then see who is winning, then go to the wheel
execute @s[scores={seconds=1}] ~ ~ ~ title @a actionbar §aThe first round is complete!
execute @s[scores={seconds=4}] ~ ~ ~ title @a actionbar §aDo you think you're on track to win the prize?
execute @s[scores={seconds=7}] ~ ~ ~ title @a actionbar §aIt's time we shake things up a little bit in here.
execute @s[scores={seconds=10}] ~ ~ ~ title @a actionbar §aLet's head over to the main stage for...
execute @s[scores={seconds=12}] ~ ~ ~ effect @a blindness 2 1
execute @s[scores={seconds=12}] ~ ~ ~ function misc/wheelcentre
execute @s[scores={seconds=12}] ~ ~ ~ tp @e[type=tbq:billagers] 130 28 -182 170 0
execute @s[scores={seconds=13}] ~ ~ ~ title @a actionbar §aLet's The Mystery Wheel!

#Start allowing teams to take turns at spinning the wheel
execute @s[scores={seconds=16}] ~ ~ ~ tag @s remove eventintro
execute @s[scores={seconds=16}] ~ ~ ~ tag @s add eventwheel
execute @s[scores={seconds=16}] ~ ~ ~ tag @s add wheelgreen
execute @s[scores={seconds=16}] ~ ~ ~ scoreboard players set @s tick 0
execute @s[scores={seconds=16}] ~ ~ ~ scoreboard players set @s seconds 0





