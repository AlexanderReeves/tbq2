execute @s[scores={tick=0}] ~ ~ ~ function pregame/seconds


#Start the game when the lever is pressed, causing a stick to spawn
execute @e[type=item,name=Stick] ~ ~ ~ scoreboard players set @e[tag=bob] gamestate 0
execute @e[type=item,name=Stick] ~ ~ ~ scoreboard players set @e[tag=bob] seconds 0
execute @e[type=item,name=Stick] ~ ~ ~ execute @e[tag=bob] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cThere game start was cancelled."}]}
kill @e[type=item,name=Stick]