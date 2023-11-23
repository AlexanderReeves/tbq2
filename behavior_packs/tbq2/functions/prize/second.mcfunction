#remove any old bad prize boxed
execute as @s[scores={seconds=0}] run kill @e[type=tbq:badprizebox]
#Add a new prize box
execute as @s[scores={seconds=0}] run summon tbq:badprizebox 127.46 28.00 -183.50 180 0
#Add a way to open the box
tp @e[type=tbq:wheellever] 127.54 28.00 -187.56
#execute as @s[scores={seconds=16}] run playanimation @e[type=tbq:badprizebox] animation.badprizebox.open

#Move Billagers to the stage:
execute as @s[scores={seconds=0}] run tp @e[type=tbq:billagers] 131.33 28.00 -185.63 160 0


#Host messages
execute as @s[scores={seconds=1}] run title @a actionbar §aThanks for playing The Big Quiz!
execute as @s[scores={seconds=4}] run title @a actionbar §aHowever... It's not over yet!
execute as @s[scores={seconds=7}] run title @a actionbar §aThe lowest scoring team must claim their reward!
execute as @s[scores={seconds=10}] run title @a actionbar §aWelcome to the stage quiz noobs!

#TP losers to prize area

execute as @s[scores={seconds=10}] run function prize/taglosers
execute as @s[scores={seconds=10}] run function prize/startbadprize
execute as @s[scores={seconds=10}] run tp @a[tag=loser] 125.60 28.00 -187.56 270 0

#IF no bad prize trigger in 20 seconds, just trigger it anyway
execute as @s[scores={seconds=21},tag=!punishtrigger] run function prize/badprizetrigger





