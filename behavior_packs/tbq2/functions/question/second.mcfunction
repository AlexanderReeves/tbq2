
#*UPDATED TO NEW FORMAT*
#===================LOAD UI DISPLAY BOARD==============
#Give all a leather helmet.... This will load a special display board view on for each player!
execute as @s[scores={seconds=2}] run replaceitem entity @a slot.armor.head 1 leather_helmet 1

#===================DISPLAY THE 3d UI TIMER=============
#Allow the timerbar to be displayed via removing the tag "hidebar" from bob
execute as @s[scores={seconds=2}] run tag @s remove hidebar
#play the animation to have the timer count down
execute as @s[scores={seconds=2}] run playanimation @a animation.timerbar.deplete
#remove the sidebard display
execute as @s[scores={seconds=2}] run scoreboard objectives setdisplay sidebar

#==================GENERATE RANDOM QUESTION=========
#min and max question number depend on total number of questions(place at end of statement)
execute as @s[scores={seconds=2}] run scoreboard players random @s qid 1 5
#Reset each players current answer status to 0, aka no answer yet
execute as @s[scores={seconds=2}] run scoreboard players set @a answer 0
#time question will display for
execute as @s[scores={seconds=2}] run title @a times 20 140 20

#Use the new UI system to load the questions onto the screen
#You can only update one line of text per tick, we have 5+ lines to update, set variable to 0, and iterate up
#Load a new line of text each tick, e.g question, then option 1, then option 2
#the tick function here will increase via question/main, and iterate through the lines
scoreboard players set @s[scores={seconds=3}] loadqtick 0


#==================OLD SYSTEM======================
#Title question will display the question in the actionbar depending on the question qid set above
#execute as @s[scores={seconds=2}] run function question/titlequestion
#titlenumber plays a number based on whatever count we are up to
#execute as @s[scores={seconds=2}] run function question/titlenumber


#Hide questionboard display via helmet slot check
execute as @s[scores={seconds=10}] run replaceitem entity @a slot.armor.head 1 air 1
#Display answer options in UI panel, where title shwb = show both, question and answers
execute as @s[scores={seconds=10}] run title @a title shwb
#execute as @s[scores={seconds=10}] run function question/anssidebar

#Hide question ui
execute as @s[scores={seconds=25}] run title @a title hide
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
execute as @s[scores={seconds=30,question=11}] run function question/finished
tag @s[scores={seconds=30,question=11}] remove runquestion

#After our 30 second question loop, the next segment should auto start and we should have our timers and tick back to 0
execute as @s[scores={seconds=30}] run scoreboard players set @s seconds 0
execute as @s[scores={seconds=30}] run scoreboard players add @s tick 0




