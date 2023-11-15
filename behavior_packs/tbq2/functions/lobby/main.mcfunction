#*CODEUPDATED TO NEW EXECUTE COMMAND FORMAT*#
#this main lobby function controls the game while in lobby state

#while in the lobby allow players to select a team
function lobby/teamselection

#Make sure the scoreboard is not displaying
execute as @e[scores={istesting=0}] run scoreboard objectives setdisplay sidebar


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