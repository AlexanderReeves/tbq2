#Give all a leather helmet.... This will load a special display board view on for each player!
execute @s[scores={seconds=2}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 leather_helmet 1

#Allow the timerbar to be displayed via removing the tag "hidebar" from bob
execute @s[scores={seconds=2}] ~ ~ ~ tag @s remove hidebar
execute @s[scores={seconds=2}] ~ ~ ~ playanimation @a animation.timerbar.deplete

#GENERATE RANDOM QUESTION!
execute @s[scores={seconds=2}] ~ ~ ~ scoreboard players random @s qid 1 3
execute @s[scores={seconds=2}] ~ ~ ~ scoreboard players set @a answer 0
#Display the question and question number
execute @s[scores={seconds=2}] ~ ~ ~ title @a times 20 140 20
execute @s[scores={seconds=2}] ~ ~ ~ function question/titlequestion
execute @s[scores={seconds=2}] ~ ~ ~ function question/titlenumber


#Hide timerbar via helmet slot check
execute @s[scores={seconds=10}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 air 1
#Display answer options in the sidebar
execute @s[scores={seconds=10}] ~ ~ ~ function question/anssidebar

#Hide timerbar
execute @s[scores={seconds=22}] ~ ~ ~ tag @s add hidebar
execute @s[scores={seconds=25}] ~ ~ ~ function question/checkanswers
execute @s[scores={seconds=25}] ~ ~ ~ scoreboard objectives setdisplay sidebar



#Go to next question
execute @s[scores={seconds=30}] ~ ~ ~ scoreboard players add @s question 1
tag @s[scores={seconds=30,question=6}] remove runquestion
tag @s[scores={seconds=30,question=6}] add runevent
tag @s[scores={seconds=30,question=11}] remove runquestion
tag @s[scores={seconds=30,question=11}] add runevent
execute @s[scores={seconds=30}] ~ ~ ~ scoreboard players set @s seconds 0
execute @s[scores={seconds=30}] ~ ~ ~ scoreboard players add @s tick 0




