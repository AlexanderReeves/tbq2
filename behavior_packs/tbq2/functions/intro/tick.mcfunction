#make players move with the camera,  and then make sure the player is facing the correct direction
execute @s[scores={seconds=0..10}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewstage]
execute @s[scores={seconds=0..10}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1


#Camera that moves in front of Bill
#tp players to camera, then make them face bill
execute @s[scores={seconds=11..18}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewbill]
execute @s[scores={seconds=11..18}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1
#move camera backwards = need to have a second model which is a sky cam on string
execute @s[scores={seconds=11..16}] ~ ~ ~ execute @e[tag=viewbill] ~ ~ ~ tp @s ~ ~ ~-0.1

#Make bill walk towards players
execute @s[scores={seconds=11..16}] ~ ~ ~ execute @e[type=tbq:billagers] ~ ~ ~ tp @s ~ ~ ~-0.1 180 0


#INTRODUCE CONTESTANTS!
#skip to next contestants if team is empty!
#            at this time, if no players on team, skip ahead to next team
scoreboard players set @s[scores={seconds=19..24,blueplayers=0}] seconds 25
scoreboard players set @s[scores={seconds=25..30,yellowplayers=0}] seconds 31
scoreboard players set @s[scores={seconds=31..36,greenplayers=0}] seconds 37
scoreboard players set @s[scores={seconds=37..42,redplayers=0}] seconds 43

#Make all other players be spectators of the stage, unless they are being introduced
execute @s[scores={seconds=19..24}] ~ ~ ~ tp @a[tag=!blue] @e[tag=viewstage]
execute @s[scores={seconds=25..30}] ~ ~ ~ tp @a[tag=!yellow] @e[tag=viewstage]
execute @s[scores={seconds=31..36}] ~ ~ ~ tp @a[tag=!green] @e[tag=viewstage]
execute @s[scores={seconds=37..42}] ~ ~ ~ tp @a[tag=!red] @e[tag=viewstage]
#Straighten cameras...
execute @s[scores={seconds=19..24}] ~ ~ ~ execute @a[tag=!blue] ~ ~ ~ tp @s ~ ~ ~ 0 1
execute @s[scores={seconds=25..30}] ~ ~ ~ execute @a[tag=!yellow] ~ ~ ~ tp @s ~ ~ ~ 0 1
execute @s[scores={seconds=31..36}] ~ ~ ~ execute @a[tag=!green] ~ ~ ~ tp @s ~ ~ ~ 0 1
execute @s[scores={seconds=37..42}] ~ ~ ~ execute @a[tag=!red] ~ ~ ~ tp @s ~ ~ ~ 0 1


#tp players to correct area ONCE when it is there turn(tag determines if they need to be tpd)
execute @s[scores={seconds=10}] ~ ~ ~ tag @a remove moved

execute @s[scores={seconds=19..24}] ~ ~ ~ tp @a[tag=blue,tag=!moved] 127 28 -188 180 0
execute @s[scores={seconds=19..24}] ~ ~ ~ execute @a[tag=blue,tag=!moved] ~ ~ ~ title @a actionbar §bThe blue team!
execute @s[scores={seconds=19..24}] ~ ~ ~ tag @a[tag=blue,tag=!moved] add moved
execute @s[scores={seconds=25..30}] ~ ~ ~ tp @a[tag=yellow,tag=!moved] 127 28 -188 180 0
execute @s[scores={seconds=25..30}] ~ ~ ~ execute @a[tag=yellow,tag=!moved] ~ ~ ~ title @a actionbar §gThe yellow team!
execute @s[scores={seconds=25..30}] ~ ~ ~ tag @a[tag=yellow,tag=!moved] add moved
execute @s[scores={seconds=31..36}] ~ ~ ~ execute @a[tag=green] ~ ~ ~ tp @s[tag=!moved] 127 28 -188 180 0
execute @s[scores={seconds=31..36}] ~ ~ ~ execute @a[tag=green] ~ ~ ~ execute @s[tag=moved] ~ ~ ~ title @a actionbar §aThe green team!
execute @s[scores={seconds=31..36}] ~ ~ ~ tag @a[tag=green] add moved
execute @s[scores={seconds=37..42}] ~ ~ ~ tp @a[tag=red,tag=!moved] 127 28 -188 180 0
execute @s[scores={seconds=37..42}] ~ ~ ~ execute @a[tag=red,tag=!moved] ~ ~ ~ title @a actionbar §cThe red team!
execute @s[scores={seconds=37..42}] ~ ~ ~ tag @a[tag=red,tag=!moved] add moved

execute @s[scores={seconds=25}] ~ ~ ~ tag @a remove moved

#TP players back to viewing Bill!
execute @s[scores={seconds=43..60}] ~ ~ ~ tp @a @e[type=tbq:camera,c=1,tag=viewbill]
execute @s[scores={seconds=43..60}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ 0 1

#Set game to intro mode
execute @s[scores={seconds=60}] ~ ~ ~ kill @e[type=tbq:logo]
execute @s[scores={seconds=60}] ~ ~ ~ scoreboard players set @s gamestate 3
execute @s[scores={seconds=60}] ~ ~ ~ scoreboard players set @s tick 0
execute @s[scores={seconds=60}] ~ ~ ~ tag @s add runquestion
execute @s[scores={seconds=60}] ~ ~ ~ scoreboard players set @s seconds 0










