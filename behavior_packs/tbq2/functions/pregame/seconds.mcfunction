#*CODE UPDATED TO NEW FORMAT*

#Run the countdown clock
execute as @s[scores={seconds=1}] run title @a actionbar §aWe are live, in 5...
execute as @s[scores={seconds=2}] run title @a actionbar §aWe are live, in 4...
execute as @s[scores={seconds=3}] run title @a actionbar §aWe are live, in 3...
execute as @s[scores={seconds=4}] run title @a actionbar §aWe are live, in 2...
execute as @s[scores={seconds=5}] run title @a actionbar §aWe are live, in 1...
execute as @s[scores={seconds=5}] run effect @a blindness 5 1 true


#Set game to intro mode #ALTERNATIVELY HERE, WE COULD START COOL ANIMATION AND BEGIN THE GAME A COUPLE MOMENTS LATER
execute as @s[scores={seconds=6}] run scoreboard players set @s gamestate 2
execute as @s[scores={seconds=6}] run scoreboard players set @s tick 0
execute as @s[scores={seconds=6}] run scoreboard players set @s seconds 0

