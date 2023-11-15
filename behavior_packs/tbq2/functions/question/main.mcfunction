#*UPDATED TO NEW FORMAT*
#Run code that should only be running once per second, instead of every tick
execute as @s[scores={tick=0}] run function question/second

#The rest of these will run every tick.

#Move all to view board when a question is about to load.
execute as @s[scores={seconds=0..2}] run tp @a 147 28 -180 -35 -10
execute as @s[scores={seconds=0..1}] run effect @a invisibility 1 1 true

#DOUBLE CHECK THESE VALUES Move players to their buzzer platforms... They won't be able to see as their screen will be covered with the question.
execute as @s[scores={seconds=3..10}] run tp @a[tag=blue] 114 33 -159 180 0
execute as @s[scores={seconds=3..10}] run tp @a[tag=yellow] 107 33 -162 180 0
execute as @s[scores={seconds=3..10}] run tp @a[tag=green] 100 33 -166 180 0
execute as @s[scores={seconds=3..10}] run tp @a[tag=red] 94 33 -169 180 0

#Allow players to answer questions by pressing a button
function question/pressbuzzer





