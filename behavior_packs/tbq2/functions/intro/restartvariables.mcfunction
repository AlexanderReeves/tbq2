#Reset any variables that need to be reset before a game begins
scoreboard players set @s bluescore 0
scoreboard players set @s redscore 0
scoreboard players set @s yellowscore 0
scoreboard players set @s greenscore 0

#Set the question back to question 1
scoreboard players set @s qid 1

#As the game is starting, all teams should have a visible score of 0
scoreboard objectives remove scoredisplay
scoreboard objectives add scoredisplay dummy Points
scoreboard players set "§bBlue " scoredisplay 0
scoreboard players set "§cRed " scoredisplay 0
scoreboard players set "§gYellow " scoredisplay 0
scoreboard players set "§aGreen " scoredisplay 0

#For teams with no players, remove that team from the scoreboard display as it is not needed.
function question/hideteamscores
execute as @s[scores={istesting=0}] run scoreboard objectives setdisplay sidebar scoredisplay

scoreboard players set @s quitvote 0
scoreboard players set @s totalplayers 0

function misc/wheelbackground


