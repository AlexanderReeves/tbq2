#RESPOND TO A BUZZER PRESS
#This code should only run between allowed times
#check which answer was locked in and set player scores

#QUESTION 1
#BLUE
#          ANY LEAD FROM PRESS                   FIND CLOSEST BUZZER     BLUE TEAM BUZZERS ARE NUMBERED    CLOSEST WILL SET ANSWER NUMBER FOR THE TEAM
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=b1] ~ ~ ~ scoreboard players set @a[tag=blue] answer 1
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=b2] ~ ~ ~ scoreboard players set @a[tag=blue] answer 2
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=b3] ~ ~ ~ scoreboard players set @a[tag=blue] answer 3
#YELLOW
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=y1] ~ ~ ~ scoreboard players set @a[tag=yellow] answer 1
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=y2] ~ ~ ~ scoreboard players set @a[tag=yellow] answer 2
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=y3] ~ ~ ~ scoreboard players set @a[tag=yellow] answer 3
#GREEN
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=g1] ~ ~ ~ scoreboard players set @a[tag=green] answer 1
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=g2] ~ ~ ~ scoreboard players set @a[tag=green] answer 2
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=g3] ~ ~ ~ scoreboard players set @a[tag=green] answer 3
#RED
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=r1] ~ ~ ~ scoreboard players set @a[tag=red] answer 1
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=r2] ~ ~ ~ scoreboard players set @a[tag=red] answer 2
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ execute @s[tag=r3] ~ ~ ~ scoreboard players set @a[tag=red] answer 3



#When buzzer is pressed it releases bonemeal     get closest buzzer    show players what they chose and run animation
execute @e[type=item,name=lead] ~ ~ ~ execute @e[tag=bob] ~ ~ ~ function question/ansactionbar
execute @e[type=item,name=lead] ~ ~ ~ execute @e[type=tbq:buzzer,c=1] ~ ~ ~ playanimation @s animation.buzzer.press

#Remove old lead
kill @e[type=item,name=lead]
