#make players move with the camera,  and then make sure the player is facing the correct direction
execute @s[scores={seconds=0..10}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..10}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1
#Bill moving intro cam
#THIS MIGHT NEED TO BE 18 NOT 19!
execute @s[scores={seconds=11..19}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewbill]
execute @s[scores={seconds=11..19}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1
#move camera = need to have a second model which is a sky cam on string
execute @s[scores={seconds=11..16}] ~ ~ ~ execute @e[tag=viewbill] ~ ~ ~ tp @s ~ ~ ~-0.1

#Make bill walk towards players
execute @s[scores={seconds=11..16}] ~ ~ ~ execute @e[type=tbq:billagers] ~ ~ ~ tp @s ~ ~ ~-0.1 180 0


#skip to next contestants if team is empty!
#            at this time, if no players on team, skip ahead to next team
scoreboard players set @s[scores={seconds=19..24,blueplayers=0}] seconds 25
scoreboard players set @s[scores={seconds=25..30,yellowplayers=0}] seconds 31
scoreboard players set @s[scores={seconds=31..36,greenplayers=0}] seconds 37
scoreboard players set @s[scores={seconds=37..42,redplayers=0}] seconds 42

#Intro players from main camera
execute @s[scores={seconds=19..24}] ~ ~ ~ tp @a[tag=!blue] @e[tag=viewstage]
execute @s[scores={seconds=25..30}] ~ ~ ~ tp @a[tag=!yellow] @e[tag=viewstage]
execute @s[scores={seconds=31..36}] ~ ~ ~ tp @a[tag=!green] @e[tag=viewstage]
execute @s[scores={seconds=37..42}] ~ ~ ~ tp @a[tag=!red] @e[tag=viewstage]
#Straighten cameras...
execute @s[scores={seconds=19..24}] ~ ~ ~ execute @a[tag=!blue] ~ ~ ~ tp @s ~ ~ ~ 0 1
execute @s[scores={seconds=25..30}] ~ ~ ~ execute @a[tag=!yellow] ~ ~ ~ tp @s ~ ~ ~ 0 1
execute @s[scores={seconds=31..36}] ~ ~ ~ execute @a[tag=!green] ~ ~ ~ tp @s ~ ~ ~ 0 1
execute @s[scores={seconds=37..42}] ~ ~ ~ execute @a[tag=!red] ~ ~ ~ tp @s ~ ~ ~ 0 1







