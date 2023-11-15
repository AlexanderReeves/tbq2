#*CODE UPDATED TO NEW FORMAT*
#Global score to tally total active players at all times
#Code is run by bob
scoreboard players set @s activeplayers 0
execute as @a[tag=!spectator] run scoreboard players add @e[tag=bob] activeplayers 1

#End game if there are no active players left and gamestate is 1 or more (not lobby)
execute as @s[scores={activeplayers=0,gamestate=1..}] run tellraw @a {"rawtext":[{"text":"§cThe game has ended as there are no players left."}]}
execute as @s[scores={activeplayers=0,gamestate=1..}] run function misc/endgame

