


#Tp all players to camera, except whose turn it is
execute @s[scores={seconds=0..},tag=wheelgreen] ~ ~ ~ tp @a[tag=!green] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelred] ~ ~ ~ tp @a[tag=!red] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelyellow] ~ ~ ~ tp @a[tag=!yellow] @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..},tag=wheelblue] ~ ~ ~ tp @a[tag=!blue] @e[type=tbq:camera,c=1,tag=viewstage]


#RUN THE WHEEL TRIGGER CODE ONLY AT TIMES WHEN THE WHEEL IS ALLOWED TO BE SPUN
#ALSO MAKE SURE IT ONLY SPINS ONCE PER TEAM TURN