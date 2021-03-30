#Try end game if enough players have dropped gunpowder during the duration of the whole game
execute @e[type=item,name=gunpowder] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cA player has voted to end the game. The game will end if all players vote to quit."}]}

#Add another vote for every dropped gunpowder, each player gets one per game
execute @e[type=item,name=gunpowder] ~ ~ ~ scoreboard players add @e[tag=bob] quitvote 1

#Count total players
scoreboard players set @e[tag=bob] totalplayers 0
execute @a ~ ~ ~ scoreboard players add @e[tag=bob] totalplayers 1

#See if all players voted to quit
execute @e[tag=bob] ~ ~ ~ scoreboard players operation @s totalplayers -= @s quitvote
execute @e[tag=bob,scores={totalplayers=..0}] ~ ~ ~ function misc/endgame



#Destroy the item
kill @e[type=item,name=gunpowder]