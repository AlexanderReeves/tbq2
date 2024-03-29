#*CODEUPDATED TO NEW EXECUTE COMMAND FORMAT*#
#this main lobby function controls the game while in lobby state
execute as @s[scores={tick=0}] run function lobby/second

#while in the lobby allow players to select a team
function lobby/teamselection

#Make sure the scoreboard is not displaying
execute as @e[scores={istesting=0}] run scoreboard objectives setdisplay sidebar

#mKe the drone in the lobby move back and forth
execute as @s[scores={lobbydronemv=0..7}] run execute as @e[tag=lobbydrone] at @s run tp @s ^ ^ ^0.04
execute as @s[scores={lobbydronemv=8..15}] run execute as @e[tag=lobbydrone] at @s run tp @s ^ ^ ^-0.04


#Start the game when the lever is pressed, causing a stick to spawn
#Run the animation for the lever
execute as @e[type=item,name=Stick] run playanimation @e[type=tbq:tvlever] animation.tvlever.pull
#If there are active players, begin the game and set important variables
execute as @e[type=item,name=Stick] run scoreboard players set @e[tag=bob,scores={activeplayers=1..}] question 1
execute as @e[type=item,name=Stick] run scoreboard players set @a answer 0
execute as @e[type=item,name=Stick] run scoreboard players set @e[tag=bob,scores={activeplayers=1..}] gamestate 1
execute as @e[type=item,name=Stick] run scoreboard players set @e[tag=bob,scores={activeplayers=1..}] seconds 0
#If there are no players ready, don't start the game
execute as @e[type=item,name=Stick] run execute as @e[tag=bob,scores={activeplayers=0}] run tellraw @a {"rawtext":[{"text":"§cThere are no players ready to start!"}]}
#Remove the stick
kill @e[type=item,name=Stick]

