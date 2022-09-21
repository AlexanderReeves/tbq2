#Start with a bill speech, then see who is winning, then go to the wheel
execute @s[scores={seconds=1}] ~ ~ ~ title @a actionbar §aThe first round is complete!
execute @s[scores={seconds=4}] ~ ~ ~ title @a actionbar §aDo you think you're on track to win the prize?
execute @s[scores={seconds=7}] ~ ~ ~ title @a actionbar §aIt's time we shake things up a little bit in here.
execute @s[scores={seconds=10}] ~ ~ ~ title @a actionbar §aLet's head over to the main stage for...
execute @s[scores={seconds=12}] ~ ~ ~ effect @a blindness 2 1
execute @s[scores={seconds=12}] ~ ~ ~ function misc/wheelcentre
execute @s[scores={seconds=12}] ~ ~ ~ tp @e[type=tbq:billagers] 130 28 -182 170 0
execute @s[scores={seconds=13}] ~ ~ ~ title @a actionbar §aIt's... The Mystery Wheel!

#When the intro is completed, the game will move to question mode and we will get ready for green to spin, or skip to the next colour
#The intro to the first event is complete, remove the tag
execute @s[scores={seconds=16}] ~ ~ ~ tag @s remove eventintro

#Bob now gets a wheel tag so he knows the wheel should run next, starting with green team and the clock is reset
execute @s[scores={seconds=16}] ~ ~ ~ tag @s add eventwheel
#Wheelgreen means we will attempt green players to start spinning the wheel first, clock back to 0 too
execute @s[scores={seconds=16}] ~ ~ ~ tag @s add wheelgreen
execute @s[scores={seconds=16}] ~ ~ ~ scoreboard players set @s tick 0
execute @s[scores={seconds=16}] ~ ~ ~ scoreboard players set @s seconds 0

Say introsecond running





