#Run code that should only be running once per second, instead of every tick
execute @s[scores={tick=0}] ~ ~ ~ function question/second

#The rest of these will run every tick.

#Move all to view board when a question is about to load.
execute @s[scores={seconds=0..2}] ~ ~ ~ tp @a 147 28 -180 -35 -10
execute @s[scores={seconds=0..1}] ~ ~ ~ effect @a invisibility 1 1 true

#DOUBLE CHECK THESE VALUES Move players to their buzzer platforms... They won't be able to see as their screen will be covered with the question.
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=blue] 114 33 -159 180 0
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=yellow] 107 33 -162 180 0
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=green] 100 33 -166 180 0
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=red] 94 33 -169 180 0

#Allow players to answer questions by pressing a button
function question/pressbuzzer





