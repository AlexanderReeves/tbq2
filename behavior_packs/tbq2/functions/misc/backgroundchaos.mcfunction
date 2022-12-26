#THis page constantly loads any background chaos as a result of the spinning wheel landing on a chaos event
#THe chaos ID determins which weird efffect is currently loaded into the game, and the chaosremsecs determins how much longer it will be happening until it stops

#chaosremseconds

#activechaosid


#IF chaos ID Is one, give all players and entities big heads
execute @s[scores={activechaosid=1}] ~ ~ ~ playanimation @a animation.misc.bigheads
execute @s[scores={activechaosid=1}] ~ ~ ~ playanimation @e animation.misc.bigheads


#Event two makes the arena into a farm and summons animals, kill the old ones first too!
execute @s[scores={activechaosid=2,chaosremseconds=180}] ~ ~ ~ kill @e[type=minecraft:cow]
execute @s[scores={activechaosid=2,chaosremseconds=180}] ~ ~ ~ kill @e[type=minecraft:pig]
execute @s[scores={activechaosid=2,chaosremseconds=180}] ~ ~ ~ kill @e[type=minecraft:chicken]
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:cow 119.65 28.00 -181.87
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:cow 117.68 28.00 -175.19
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:cow 133.58 28.00 -175.90
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:pig 135.42 28.12 -183.74
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:pig 119.67 28.00 -182.25
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:pig 135.52 28.00 -182.26
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:chicken 129.28 28.00 -183.00
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:chicken 131.61 28.00 -190.05
execute @s[scores={activechaosid=2,chaosremseconds=179}] ~ ~ ~ summon minecraft:chicken 116.46 28.00 -186.17

execute @s[scores={activechaosid=2,chaosremseconds=1}] ~ ~ ~ kill @e[type=minecraft:cow]
execute @s[scores={activechaosid=2,chaosremseconds=1}] ~ ~ ~ kill @e[type=minecraft:pig]
execute @s[scores={activechaosid=2,chaosremseconds=1}] ~ ~ ~ kill @e[type=minecraft:chicken]
#If chaos rem seconds is bigger than 1, remove a second.
scoreboard players add @s[scores={chaosremseconds=1..}] chaosremseconds -1
#say chaos working