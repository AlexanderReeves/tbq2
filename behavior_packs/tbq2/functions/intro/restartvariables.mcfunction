#Reset any variables that need to be reset before a game begins
scoreboard players set @s bluescore 0
scoreboard players set @s redscore 0
scoreboard players set @s yellowscore 0
scoreboard players set @s greenscore 0

scoreboard objectives remove scoredisplay
scoreboard objectives add scoredisplay dummy Points
scoreboard players set "§bBlue " scoredisplay 0
scoreboard players set "§cRed " scoredisplay 0
scoreboard players set "§gYellow " scoredisplay 0
scoreboard players set "§aGreen " scoredisplay 0
function question/hideteams
scoreboard objectives setdisplay sidebar scoredisplay

scoreboard players set @s quitvote 0
scoreboard players set @s totalplayers 0


