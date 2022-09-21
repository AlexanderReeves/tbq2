

#When the wheel event first starts...
#Tp all players to camera, except whose turn it is (When bob reaches the 0 second mark)
execute @s[scores={seconds=0..},tag=wheelgreen] ~ ~ ~ tp @a[tag=!green] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelred] ~ ~ ~ tp @a[tag=!red] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelyellow] ~ ~ ~ tp @a[tag=!yellow] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelblue] ~ ~ ~ tp @a[tag=!blue] @e[type=tbq:camera,c=1,tag=viewstage]


#Trigger wheel spin when lever pulled
execute @e[type=item,name=torch] ~ ~ ~ execute @e[tag=bob] ~ ~ ~ function event/wheeltrigger
execute @e[type=item,name=torch] ~ ~ ~ say wheel spun!
kill @e[type=minecraft:item,name=torch]


#RUN THE WHEEL TRIGGER CODE ONLY AT TIMES WHEN THE WHEEL IS ALLOWED TO BE SPUN
#ALSO MAKE SURE IT ONLY SPINS ONCE PER TEAM TURN

#ideally, we should check all players are in their correct area based on whose turn it is to spin
#Wheel spinners should be on stage
#Other contenstants in the stands