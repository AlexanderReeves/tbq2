
#Use the new UI system to load the questions onto the screen
#You can only update one line of text per tick, we have 5+ lines to update, set variable to 0, and iterate up
#Load a new line of text each tick, e.g question, then option 1, then option 2
#This is called from questions/main starting after 2 seconds have passed.

#Load the question
execute as @s[scores={loadqtick=0}] run function pyquestions/ask
#Load answer option 1
execute as @s[scores={loadqtick=2}] run function pyquestions/titleopt1
#Load the rest of the options
execute as @s[scores={loadqtick=3}] run function pyquestions/titleopt2
execute as @s[scores={loadqtick=4}] run function pyquestions/titleopt3
execute as @s[scores={loadqtick=5}] run function pyquestions/titleopt4

#load the variable for the correct answer
execute as @s[scores={loadqtick=6}] run function pyquestions/correctanswer

#Display the question only 
execute as @s[scores={loadqtick=7}] run title @a title show
#When we want to display the available answer options, we will load them via a title in question/seconds
#Iterate up
scoreboard players add @s loadqtick 1

