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


#Buzzers
kill @e[type=tbq:buzzer]
#BLUE TEAM
summon tbq:buzzer 113 34 -161
tag @e[type=tbq:buzzer,tag=!tagged] add b3
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 115.01 34 -161
tag @e[type=tbq:buzzer,tag=!tagged] add b2
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 116 34 -161
tag @e[type=tbq:buzzer,tag=!tagged] add b1
tag @e[type=tbq:buzzer,tag=!tagged] add tagged

#YELLOW TEAM
summon tbq:buzzer 106 34 -164
tag @e[type=tbq:buzzer,tag=!tagged] add y3
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 108.01 34 -164
tag @e[type=tbq:buzzer,tag=!tagged] add y2
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 109 34 -164
tag @e[type=tbq:buzzer,tag=!tagged] add y1
tag @e[type=tbq:buzzer,tag=!tagged] add tagged

#GREEN TEAM
summon tbq:buzzer 99 34 -167
tag @e[type=tbq:buzzer,tag=!tagged] add g3
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 101.01 34 -167
tag @e[type=tbq:buzzer,tag=!tagged] add g2
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 102 34 -167
tag @e[type=tbq:buzzer,tag=!tagged] add g1
tag @e[type=tbq:buzzer,tag=!tagged] add tagged

#GREEN RED
summon tbq:buzzer 92 34 -170
tag @e[type=tbq:buzzer,tag=!tagged] add r3
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 94.01 34 -170
tag @e[type=tbq:buzzer,tag=!tagged] add r2
tag @e[type=tbq:buzzer,tag=!tagged] add tagged
summon tbq:buzzer 95 34 -170
tag @e[type=tbq:buzzer,tag=!tagged] add r1
tag @e[type=tbq:buzzer,tag=!tagged] add tagged

#Give them helmets, that the render controlle will check and recolour buzzers with
replaceitem entity @e[type=tbq:buzzer,tag=b2] slot.armor.head 0 leather_helmet
replaceitem entity @e[type=tbq:buzzer,tag=b3] slot.armor.head 0 chainmail_helmet
replaceitem entity @e[type=tbq:buzzer,tag=y2] slot.armor.head 0 leather_helmet
replaceitem entity @e[type=tbq:buzzer,tag=y3] slot.armor.head 0 chainmail_helmet
replaceitem entity @e[type=tbq:buzzer,tag=g2] slot.armor.head 0 leather_helmet
replaceitem entity @e[type=tbq:buzzer,tag=g3] slot.armor.head 0 chainmail_helmet
replaceitem entity @e[type=tbq:buzzer,tag=r2] slot.armor.head 0 leather_helmet
replaceitem entity @e[type=tbq:buzzer,tag=r3] slot.armor.head 0 chainmail_helmet
