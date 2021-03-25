execute @s[scores={seconds=1}] ~ ~ ~ title @a actionbar §aWe are live, in 5...
execute @s[scores={seconds=2}] ~ ~ ~ title @a actionbar §aWe are live, in 4...

execute @s[scores={seconds=3}] ~ ~ ~ title @a actionbar §aWe are live, in 3...

execute @s[scores={seconds=4}] ~ ~ ~ title @a actionbar §aWe are live, in 2...

execute @s[scores={seconds=5}] ~ ~ ~ title @a actionbar §aWe are live, in 1...

execute @s[scores={seconds=5}] ~ ~ ~ effect @a blindness 5 1 true


#Set game to intro mode
execute @s[scores={seconds=6}] ~ ~ ~ scoreboard players set @s gamestate 2
execute @s[scores={seconds=6}] ~ ~ ~ scoreboard players set @s tick 0

execute @s[scores={seconds=6}] ~ ~ ~ scoreboard players set @s seconds 0

