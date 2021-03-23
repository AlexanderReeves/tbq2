#this main lobby function controls the game while in lobby state

#while in the lobby allow players to select a team
function lobby/teamselection


#Start the game when the lever is pressed, causing a stick to spawn
execute @e[type=item,name=Stick] ~ ~ ~ playanimation @e[type=tbq:tvlever] animation.tvlever.pull
execute @e[type=item,name=Stick] ~ ~ ~ scoreboard players set @e[tag=bob,scores={activeplayers=1..}] gamestate 1
execute @e[type=item,name=Stick] ~ ~ ~ scoreboard players set @e[tag=bob,scores={activeplayers=1..}] seconds 0
execute @e[type=item,name=Stick] ~ ~ ~ execute @e[tag=bob,scores={activeplayers=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cThere are no players ready to start!"}]}

kill @e[type=item,name=Stick]