#This page summons all entities except for bob!
say §bSetting up all entities excluding bob...

#Question board
kill @e[type=tbq:board]
summon tbq:board 157 28 -165
execute @e[type=tbq:board] ~ ~ ~ tp @s ~ ~ ~ 145

#Audience
kill @e[type=tbq:audience]
summon tbq:audience 120 25 -207

#Game start lever
kill @e[type=tbq:tvlever]
summon tbq:tvlever 127 30 -237.8

#Kill bill lol
kill @e[type=tbq:billagers]

#Kill any logo
kill @e[type=tbq:logo]

#Cameras
kill @e[type=tbq:camera]
summon tbq:camera 127 28 -193
tag @e[type=tbq:camera,tag=!tagged] add viewstage
tag @e[type=tbq:camera,tag=!tagged] add tagged
summon tbq:camera 127 34 -152
tag @e[type=tbq:camera,tag=!tagged] add viewbill
tag @e[type=tbq:camera,tag=!tagged] add tagged
