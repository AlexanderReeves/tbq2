
#Use the new UI system to load the questions onto the screen
#You can only update one line of text per tick, we have 5+ lines to update, set variable to 0, and iterate up
#Load a new line of text each tick, e.g question, then option 1, then option 2
#This is called from questions/main starting after 2 seconds have passed.

#Load the question
execute as @s[scores={loadqtick=0}] run pyquestions/ask
#Display the question only 
execute as @s[scores={loadqtick=1}] run title @a title shq

#Load answer option 1
execute as @s[scores={loadqtick=2}] run pyquestions/titleopt1
#Load the rest of the options
execute as @s[scores={loadqtick=3}] run pyquestions/titleopt2
execute as @s[scores={loadqtick=4}] run pyquestions/titleopt3
execute as @s[scores={loadqtick=5}] run pyquestions/titleopt4

#When we want to display the available answer options, we will load them via a title in question/seconds
#Iterate up
scoreboard players add @s loadqtick 1

