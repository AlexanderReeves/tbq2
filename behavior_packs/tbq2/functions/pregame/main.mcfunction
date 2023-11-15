#*CODE UPDATED TO NEW FORMAT*
#Countdown til the game starts!
execute as @s[scores={tick=0}] run function pregame/seconds


#Cancelling the game start when the lever is pressed, causing a stick to spawn
execute as @e[type=item,name=Stick] run scoreboard players set @e[tag=bob] gamestate 0
execute as @e[type=item,name=Stick] run scoreboard players set @e[tag=bob] seconds 0
execute as @e[type=item,name=Stick] run execute as @e[tag=bob] run tellraw @a {"rawtext":[{"text":"§cThere game start was cancelled."}]}
kill @e[type=item,name=Stick]