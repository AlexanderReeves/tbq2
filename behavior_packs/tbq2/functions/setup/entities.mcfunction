#This page summons all entities except for bob!
#say §bSetting up all entities excluding bob...

#Question board
kill @e[type=tbq:board]
summon tbq:board 157 28 -165
execute as @e[type=tbq:board] at @s run tp @s ~ ~ ~ 145

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

#Lobby mirrors
kill @e[type=tbq:mirror]
summon tbq:mirror 140.84 33.00 -237.01 150 0

#players
kill @e[tag=contestant]
summon tbq:red_player 141.07 33.00 -243.17 150 0
tag @e[type=tbq:red_player] add contestant
kill @e[type=tbq:green_player]
summon tbq:green_player 139.54 33.00 -238.70
tag @e[type=tbq:green_player] add contestant
kill @e[type=tbq:blue_player]
summon tbq:blue_player 135.49 33.00 -237.52
tag @e[type=tbq:blue_player] add contestant
kill @e[type=tbq:yellow_player]
summon tbq:yellow_player 134.83 33.00 -240.97 200 0
tag @e[type=tbq:yellow_player] add contestant

scoreboard players set @e[tag=contestant] animcountd -1

#chairs for players
kill @e[type=tbq:chair]

summon tbq:chair 139.97 33.00 -237.91 335 0
tag @e[type=tbq:chair] add tositon
summon tbq:chair 141.66 33.00 -239.74 320 0
summon tbq:chair 137.69 33.00 -237.26 350 0
summon tbq:chair 133.67 33.00 -237.59 80 0

#have the girl sit in the chair
ride @e[type=tbq:green_player,c=1] start_riding @e[tag=tositon]

#Cameras
kill @e[type=tbq:camera]
summon tbq:camera 127 28 -193
tag @e[type=tbq:camera,tag=!tagged] add viewstage
tag @e[type=tbq:camera,tag=!tagged] add tagged

#Drone camera
kill @e[type=tbq:drone]

summon tbq:drone 127 34 -152
tag @e[type=tbq:drone,tag=!tagged] add viewbill
tag @e[type=tbq:drone,tag=!tagged] add tagged


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

#wheel lever
kill @e[type=tbq:wheellever]
summon tbq:wheellever 141 28 -151

#prize boxes
kill @e[type=tbq:badprizebox]

#Producer NPC
#LETS NOT KILL JILL AS IT WILL DELETE HER COMMANDS I THINK!
kill @e[type=tbq:producer]
summon tbq:producer "§dJill Agers" 127.54 29.00 -254.53

#Armour stand signs
kill @e[type=armor_stand]
summon armor_stand 127.59 32.00 -266.18 0 0 sas:nametag_show_t "1. Select a team."
summon armor_stand 130.97 32.00 -264.03 0 0 sas:nametag_show_t "§a The Green team."
summon armor_stand 137.95 32.00 -261.96 0 0 sas:nametag_show_t "§4 The Red team."
summon armor_stand 124.01 32.00 -263.96 0 0 sas:nametag_show_t "§6 The Yellow team."
summon armor_stand 117.06 32.00 -262.02 0 0 sas:nametag_show_t "§b The Blue team."
summon armor_stand 127.63 31.00 -256.56 0 0 sas:nametag_show_t "2. Speak to Jill."
summon armor_stand 127.55 31.00 -244.26 0 0 sas:nametag_show_t "3. Start the game!"
summon armor_stand 127.62 31.00 -236.43 0 0 sas:nametag_show_t "Start."

#go live logo
kill @e[type=tbq:golive]
summon tbq:golive 127.48 34.00 -236.44






