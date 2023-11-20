#*UPDATED TO NEW FORMAT*

#TEAM ORDER IS GREEN, RED, BLUE, YELLOW
#REMOVE TAGS IN THE OPPOSIDE ORDER
tag @s[tag=wheelyellow] add eventoutro
tag @s[tag=eventoutro] remove eventwheel
tag @s[tag=eventoutro] remove wheelyellow

tag @s[tag=wheelblue] add wheelyellow
tag @s[tag=wheelyellow] remove wheelblue

tag @s[tag=wheelred] add wheelblue
tag @s[tag=wheelblue] remove wheelred

tag @s[tag=wheelgreen] add wheelred
tag @s[tag=wheelred] remove wheelgreen

#reset the clock
scoreboard players set @s seconds 0
#if outro, end wheel
execute as @s[tag=eventoutro] run function misc/wheelbackground