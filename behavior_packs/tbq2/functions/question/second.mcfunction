
#*UPDATED TO NEW FORMAT*
#Give all a leather helmet.... This will load a special display board view on for each player!
execute as @s[scores={seconds=2}] run replaceitem entity @a slot.armor.head 1 leather_helmet 1

#Allow the timerbar to be displayed via removing the tag "hidebar" from bob
execute as @s[scores={seconds=2}] run tag @s remove hidebar
#play the animation to have the timer count down
execute as @s[scores={seconds=2}] run playanimation @a animation.timerbar.deplete
#remove the sidebard display
execute as @s[scores={seconds=2}] run scoreboard objectives setdisplay sidebar

#GENERATE RANDOM QUESTION!                  min and max question number depend on total number of questions(place at end of statement)
execute as @s[scores={seconds=2}] run scoreboard players random @s qid 1 3
#Reset each players current answer status to 0, aka no answer yet
execute as @s[scores={seconds=2}] run scoreboard players set @a answer 0
#Display the question and question number
#time question will display for
execute as @s[scores={seconds=2}] run title @a times 20 140 20
#Titlquestion will display the question in the actionbar depending on the question qid set above
execute as @s[scores={seconds=2}] run function question/titlequestion
#titlenumber plays a number based on whatever count we are up to
execute as @s[scores={seconds=2}] run function question/titlenumber


#Hide questionboard display via helmet slot check
execute as @s[scores={seconds=10}] run replaceitem entity @a slot.armor.head 1 air 1
#Display answer options in the sidebar
execute as @s[scores={seconds=10}] run function question/anssidebar

#Hide timerbar
execute as @s[scores={seconds=22}] run tag @s add hidebar
#Check which players have the correct answers
execute as @s[scores={seconds=25}] run function question/checkanswers
#show the scores in the sidebar
execute as @s[scores={seconds=25}] run scoreboard objectives setdisplay sidebar scoredisplay



#iterate to next question
execute as @s[scores={seconds=30}] run scoreboard players add @s question 1

#After 5, well be iterated up to number 6, at this point we kick off the event
#Stop the next question running
tag @s[scores={seconds=30,question=6}] remove runquestion
#the runevent tag will trigger other code to run from the main tick code in root directory
#tag @s[scores={seconds=30,question=6}] add runevent
tag @s[scores={seconds=30,question=6}] add eventintro

#After 10 questions, set up outro
tag @s[scores={seconds=30,question=11}] remove runquestion

#After our 30 second question loop, the next segment should auto start and we should have our timers and tick back to 0
execute as @s[scores={seconds=30}] run scoreboard players set @s seconds 0
execute as @s[scores={seconds=30}] run scoreboard players add @s tick 0




