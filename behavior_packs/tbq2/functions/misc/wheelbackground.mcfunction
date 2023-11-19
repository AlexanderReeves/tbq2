#Moves the spin wheel to the background
replaceitem entity @e[type=tbq:wheel] slot.weapon.mainhand 1 diamond_sword 1
tp @e[type=tbq:wheel] 140 28 -154 330 0
execute as @e[type=tbq:wheel] at @s run tp @s ~ ~ ~ 330 0

tp @e[type=tbq:wheellever] 141 28 -151
