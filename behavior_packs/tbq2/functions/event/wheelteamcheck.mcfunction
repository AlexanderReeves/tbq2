#SKIP TO NEXT TEAM IF TEAM IS NOT PLAYING
#SKIP GREEN
tag @e[tag=bob] remove teamvalid
execute @s[tag=wheelgreen] ~ ~ ~ execute @a[tag=green] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelgreen,tag=!wheelvalid] ~ ~ ~ tag @s add wheelred
execute @e[tag=bob,tag=wheelgreen,tag=!wheelvalid] ~ ~ ~ tag @s remove wheelgreen
#SKIP RED
execute @s[tag=wheelred] ~ ~ ~ execute @a[tag=red] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelred,tag=!wheelvalid] ~ ~ ~ tag @s add wheelyellow
execute @e[tag=bob,tag=wheelred,tag=!wheelvalid] ~ ~ ~ tag @s remove wheelred

#SKIP YELLOW
execute @s[tag=wheelyellow] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelyellow,tag=!wheelvalid] ~ ~ ~ tag @s add wheelblue
execute @e[tag=bob,tag=wheelyellow,tag=!wheelvalid] ~ ~ ~ tag @s remove wheelyellow

#SKIP BLUE
execute @s[tag=wheelblue] ~ ~ ~ execute @a[tag=blue] ~ ~ ~ tag @e[tag=bob] add teamvalid
execute @e[tag=bob,tag=wheelblue,tag=!wheelvalid] ~ ~ ~ tag @s remove wheelblue

execute @s[tag=!teamvalid] ~ ~ ~ say no teams left to spin the wheel, moving onto event outro
execute @s[tag=!teamvalid] ~ ~ ~ tag @s add outrotick
execute @s[tag=!teamvalid] ~ ~ ~ tag @s remove wheeltick