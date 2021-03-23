#Global score to tally total active players at all times
scoreboard players set @s activeplayers 0
execute @a[tag=!spectator] ~ ~ ~ scoreboard players add @e[tag=bob] activeplayers 1

#End game if there are no active players left!
execute @s[scores={activeplayers=0,gamestate=1..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cThe game has ended as there are no players left."}]}
execute @s[scores={activeplayers=0,gamestate=1..}] ~ ~ ~ function misc/endgame