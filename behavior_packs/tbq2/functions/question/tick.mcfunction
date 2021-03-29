#Move all to view board
execute @s[scores={seconds=0..2}] ~ ~ ~ tp @a 147 28 -180 -35 -10


#DOUBLE CHECK THESE VALUES
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=blue] 114 33 -159 180 0
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=yellow] 107 33 -162 180 0
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=green] 100 33 -166 180 0
execute @s[scores={seconds=3..10}] ~ ~ ~ tp @a[tag=red] 94 33 -169 180 0

#Allow players to answer questions
function question/pressbuzzer




