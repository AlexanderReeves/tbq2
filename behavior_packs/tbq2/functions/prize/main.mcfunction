#RUNS WHEN TAGGE AS PRIZE WHEELS
#We are going to run 2 systems at the end of the game...
#One will be for punishing the losing team
#One will be for rewarding the winning team

#Both will be some version of a prize wheel
execute as @s[scores={tick=0}] run function prize/second


#All players to view area....
execute as @s[scores={seconds=0..9}] run tp @a @e[tag=viewstage]
#Non losers stay at view area, losers are TP'd back to stage to open the badprizebox
execute as @s[scores={seconds=10..30}] run tp @a[tag=!loser] @e[tag=viewstage]


#Players have 10 seconds to press the lever
execute as @s[scores={seconds=9}] run tag @s remove punishtrigger
execute as @s[scores={seconds=10..20},tag=!punishtrigger] run execute as @e[type=minecraft:item,name=torch] run function prize/badprizetrigger
#Remove torch level trigger
kill @e[type=minecraft:item,name=torch]

#When a creeper gets near a player, it starts flashing, and it plays it's grow animation
scoreboard players add @s creeperflash 1
#Dont flash until right time
execute as @s[scores={seconds=..25}] run replaceitem entity @e[type=tbq:fcreeper] slot.weapon.mainhand 1 diamond_sword

execute as @s[scores={creeperflash=0..4,seconds=25..}] run replaceitem entity @e[type=tbq:fcreeper] slot.weapon.mainhand 1 diamond_sword
execute as @s[scores={creeperflash=5..8,seconds=25..}] run replaceitem entity @e[type=tbq:fcreeper] slot.weapon.mainhand 1 diamond_shovel
execute as @s[scores={creeperflash=9..13,seconds=25..}] run replaceitem entity @e[type=tbq:fcreeper] slot.weapon.mainhand 1 diamond_sword
execute as @s[scores={creeperflash=14..18,seconds=25..}] run replaceitem entity @e[type=tbq:fcreeper] slot.weapon.mainhand 1 diamond_shovel
scoreboard players set @s[scores={creeperflash=20..}] creeperflash 0

#Send creepers to players
execute as @s[scores={seconds=25..}] run execute as @e[type=tbq:fcreeper] at @s run tp @s ~ ~ ~ facing @p
execute as @s[scores={seconds=25..}] run execute as @e[type=tbq:fcreeper] run execute at @s run tp @s ^ ^ ^0.1


