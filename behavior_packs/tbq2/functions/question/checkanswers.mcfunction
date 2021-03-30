#tell players if they were correct via actionbar, increase score

#assume all players are incorrect
tag @a remove correct

#replace incorrect message instantly for players with correct answer
#Compare player answers to correct answer
execute @s[scores={correctanswer=1}] ~ ~ ~ tag @a[scores={answer=1}] add correct
execute @s[scores={correctanswer=2}] ~ ~ ~ tag @a[scores={answer=2}] add correct
execute @s[scores={correctanswer=3}] ~ ~ ~ tag @a[scores={answer=3}] add correct

#Increase scores via tagging bob with teams that were correct=========================
tag @e[tag=bob] remove bluecorrect
tag @e[tag=bob] remove redcorrect
tag @e[tag=bob] remove yellowcorrect
tag @e[tag=bob] remove greencorrect
execute @a[tag=correct,tag=blue] ~ ~ ~ tag @e[tag=bob] add bluecorrect
execute @a[tag=correct,tag=red] ~ ~ ~ tag @e[tag=bob] add redcorrect
execute @a[tag=correct,tag=yellow] ~ ~ ~ tag @e[tag=bob] add yellowcorrect
execute @a[tag=correct,tag=green] ~ ~ ~ tag @e[tag=bob] add greencorrect

#Increase score on hidden board
scoreboard players add @s[tag=bluecorrect,scores={question=1..5}] bluescore 100
scoreboard players add @s[tag=bluecorrect,scores={question=6..11}] bluescore 150
scoreboard players remove @s[tag=!bluecorrect,scores={question=6..11}] bluescore 100
scoreboard players add @s[tag=redcorrect,scores={question=1..5}] redscore 100
scoreboard players add @s[tag=redcorrect,scores={question=6..11}] redscore 150
scoreboard players remove @s[tag=!redcorrect,scores={question=6..11}] redscore 100
scoreboard players add @s[tag=yellowcorrect,scores={question=1..5}] yellowscore 100
scoreboard players add @s[tag=yellowcorrect,scores={question=6..11}] yellowscore 150
scoreboard players remove @s[tag=!yellowcorrect,scores={question=6..11}] yellowscore 100
scoreboard players add @s[tag=greencorrect,scores={question=1..5}] greenscore 100
scoreboard players add @s[tag=greencorrect,scores={question=6..11}] greenscore 150
scoreboard players remove @s[tag=!greencorrect,scores={question=6..11}] greenscore 100




#Update the displays with new score from backend
#remove old score
scoreboard players set "§bBlue " scoredisplay 0
scoreboard players set "§cRed " scoredisplay 0
scoreboard players set "§gYellow " scoredisplay 0
scoreboard players set "§aGreen " scoredisplay 0
#Add the new score
scoreboard players operation "§bBlue " scoredisplay += @s bluescore
scoreboard players operation "§cRed " scoredisplay += @s redscore
scoreboard players operation "§gYellow " scoredisplay += @s yellowscore
scoreboard players operation "§aGreen " scoredisplay += @s greenscore

function question/hideteams

#==========================================================================================



#Tell players if they were correct
execute @s[scores={question=1..5}] ~ ~ ~ title @a[tag=correct] actionbar §aCorrect! §g+100
execute @s[scores={question=1..5}] ~ ~ ~ title @a[tag=!correct] actionbar §cIncorrect!
execute @s[scores={question=6..11}] ~ ~ ~ title @a[tag=correct] actionbar §aCorrect! §g+150
execute @s[scores={question=6..11}] ~ ~ ~ title @a[tag=!correct] actionbar §cIncorrect! §c-50