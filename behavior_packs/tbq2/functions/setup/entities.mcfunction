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