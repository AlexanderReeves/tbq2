#Try end game if enough players have dropped gunpowder during the duration of the whole game
execute as @e[type=item,name=gunpowder] run tellraw @a {"rawtext":[{"text":"§cA player has voted to end the game. The game will end if all players vote to quit."}]}

#Add another vote for every dropped gunpowder, each player gets one per game
execute as @e[type=item,name=gunpowder] run scoreboard players add @e[tag=bob] quitvote 1

#Count total players
scoreboard players set @e[tag=bob] totalplayers 0
execute as @a run scoreboard players add @e[tag=bob] totalplayers 1

#See if all players voted to quit
execute as @e[tag=bob] run scoreboard players operation @s totalplayers -= @s quitvote
execute as @e[tag=bob,scores={totalplayers=..0}] run function misc/endgame



#Destroy the item
kill @e[type=item,name=gunpowder]