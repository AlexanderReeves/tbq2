#Give all a leather helmet.... This will load a special display board view on for each player!
execute @s[scores={seconds=2}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 leather_helmet 1

#Allow the timerbar to be displayed via removing the tag "hidebar" from bob
execute @s[scores={seconds=2}] ~ ~ ~ tag @s remove hidebar
execute @s[scores={seconds=2}] ~ ~ ~ playanimation @a animation.timerbar.deplete

#GENERATE RANDOM QUESTION!
execute @s[scores={seconds=2}] ~ ~ ~ scoreboard players random @s qid 1 3
#Display the question and question number
execute @s[scores={seconds=2}] ~ ~ ~ title @a times 20 140 20
execute @s[scores={seconds=2}] ~ ~ ~ function question/titlequestion
execute @s[scores={seconds=2}] ~ ~ ~ function question/titlenumber



execute @s[scores={seconds=10}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 air 1
execute @s[scores={seconds=10}] ~ ~ ~ function question/anssidebar

execute @s[scores={seconds=22}] ~ ~ ~ tag @s add hidebar
