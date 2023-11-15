#RESPOND TO A BUZZER PRESS
#*UPDATED TO NEW FORMAT, NEEDS SOME MORE TESTING*
#This code should only run between allowed times
#check which answer was locked in and set player scores

#QUESTION 1
#BLUE
#          ANY LEAD FROM PRESS                   FIND CLOSEST BUZZER     BLUE TEAM BUZZERS ARE NUMBERED    CLOSEST WILL SET ANSWER NUMBER FOR THE TEAM
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=b1] run scoreboard players set @a[tag=blue] answer 1
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=b2] run scoreboard players set @a[tag=blue] answer 2
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=b3] run scoreboard players set @a[tag=blue] answer 3
#YELLOW
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=y1] run scoreboard players set @a[tag=yellow] answer 1
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=y2] run scoreboard players set @a[tag=yellow] answer 2
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=y3] run scoreboard players set @a[tag=yellow] answer 3
#GREEN
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=g1] run scoreboard players set @a[tag=green] answer 1
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=g2] run scoreboard players set @a[tag=green] answer 2
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=g3] run scoreboard players set @a[tag=green] answer 3
#RED
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=r1] run scoreboard players set @a[tag=red] answer 1
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=r2] run scoreboard players set @a[tag=red] answer 2
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run execute as @s[tag=r3] run scoreboard players set @a[tag=red] answer 3



#When buzzer is pressed it releases bonemeal     get closest buzzer    show players what they chose and run animation
execute as @e[type=item,name=lead] run execute as @e[tag=bob] run function question/ansactionbar
execute as @e[type=item,name=lead] at @s run execute as @e[type=tbq:buzzer,c=1] run playanimation @s animation.buzzer.press

#Remove old lead
kill @e[type=item,name=lead]
