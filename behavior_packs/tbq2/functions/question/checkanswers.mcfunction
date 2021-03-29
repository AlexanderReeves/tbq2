#tell players if they were correct via actionbar, increase score

#assume all players are incorrect
tag @a remove correct
title @a actionbar §4Incorrect!

#replace incorrect message instantly for players with correct answer
#Compare player answers to correct answer
execute @s[scores={correctanswer=1}] ~ ~ ~ tag @a[scores={answer=1}] add correct
execute @s[scores={correctanswer=2}] ~ ~ ~ tag @a[scores={answer=2}] add correct
execute @s[scores={correctanswer=3}] ~ ~ ~ tag @a[scores={answer=3}] add correct

title @a[tag=correct] actionbar §aCorrect!