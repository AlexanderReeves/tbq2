#*CODE UPDATED TO THE NEW FORMAT#
#Run the seconds code
execute as @s[scores={tick=0}] run function intro/second

#Every tick code

#=========INTRO VISUALS=========
#make players move with the camera for the first 10 seconds
execute as @s[scores={seconds=0..10}] run tp @a @e[type=tbq:camera,c=1,tag=viewstage]
#make them face correct direction
execute as @s[scores={seconds=0..10}] run execute as @a at @s run tp @s ~ ~ ~ 0 -7
#make invisible
execute as @s[scores={seconds=0..10}] run effect @a invisibility 1 1 true


#Drone/Camera that moves in front of Bill
#tp players to camera, then make them face bill
execute as @s[scores={seconds=11..18}] run tp @a @e[type=tbq:drone,c=1,tag=viewbill]
#Make players face correct direction
execute as @s[scores={seconds=11..18}] run execute as @e[type=tbq:drone] at @s run tp @a  ~ ~ ~0.5
execute as @s[scores={seconds=11..18}] run effect @a invisibility 1 1 true

#move drone cam backwards
execute as @s[scores={seconds=11..16}] run execute as @e[tag=viewbill] at @s run tp @s ~ ~ ~-0.1

#Make bill walk towards players
execute as @s[scores={seconds=11..16}] run execute as @e[type=tbq:billagers] at @s run tp @s ~ ~ ~-0.1 180 0


#INTRODUCE CONTESTANTS!
#We actually aren't going to skip any teams anymore, as empty teams will have fake players!


#Make all other players be spectators of the stage, unless they are being introduced
execute as @s[scores={seconds=19..24}] run tp @a[tag=!blue] @e[tag=viewstage]
execute as @s[scores={seconds=25..30}] run tp @a[tag=!yellow] @e[tag=viewstage]
execute as @s[scores={seconds=31..36}] run tp @a[tag=!green] @e[tag=viewstage]
execute as @s[scores={seconds=37..42}] run tp @a[tag=!red] @e[tag=viewstage]
#Straighten cameras...
execute as @s[scores={seconds=19..24}] run execute as @a[tag=!blue] at @s run tp @s ~ ~ ~ 0 1
execute as @s[scores={seconds=25..30}] run execute as @a[tag=!yellow] at @s run tp @s ~ ~ ~ 0 1
execute as @s[scores={seconds=31..36}] run execute as @a[tag=!green] at @s run tp @s ~ ~ ~ 0 1
execute as @s[scores={seconds=37..42}] run execute as @a[tag=!red] at @s run tp @s ~ ~ ~ 0 1

#Make players looking through camera invisible
execute as @s[scores={seconds=19..24}] run effect @a[tag=!blue] invisibility 1 1 true
execute as @s[scores={seconds=25..30}] run effect @a[tag=!yellow] invisibility 1 1 true
execute as @s[scores={seconds=31..36}] run effect @a[tag=!green] invisibility 1 1 true
execute as @s[scores={seconds=37..42}] run effect @a[tag=!red] invisibility 1 1 true


#tp players to correct area ONCE when it is there turn(tag determines if they need to be tpd)
execute as @s[scores={seconds=10}] run tag @a remove moved

execute as @s[scores={seconds=19..24}] run tp @a[tag=blue,tag=!moved] 127 28 -188 180 0
execute as @s[scores={seconds=19..24}] run title @a actionbar §bThe blue team!
execute as @s[scores={seconds=19..24}] run tag @a[tag=blue,tag=!moved] add moved
execute as @s[scores={seconds=25..30}] run tp @a[tag=yellow,tag=!moved] 127 28 -188 180 0
execute as @s[scores={seconds=25..30}] run title @a actionbar §gThe yellow team!
execute as @s[scores={seconds=25..30}] run tag @a[tag=yellow,tag=!moved] add moved
execute as @s[scores={seconds=31..36}] run execute as @a[tag=green] run tp @s[tag=!moved] 127 28 -188 180 0
execute as @s[scores={seconds=31..36}] run title @a actionbar §aThe green team!
execute as @s[scores={seconds=31..36}] run tag @a[tag=green] add moved
execute as @s[scores={seconds=37..42}] run tp @a[tag=red,tag=!moved] 127 28 -188 180 0
execute as @s[scores={seconds=37..42}] run title @a actionbar §cThe red team!
execute as @s[scores={seconds=37..42}] run tag @a[tag=red,tag=!moved] add moved

execute as @s[scores={seconds=25}] run tag @a remove moved

#TP players back to viewing Bill!
execute as @s[scores={seconds=43..60}] run tp @a @e[type=tbq:drone,c=1,tag=viewbill]
execute as @s[scores={seconds=43..60}] run execute as @a at @s run tp @s ~ ~ ~ 0 1
execute as @s[scores={seconds=43..60}] run effect @a invisibility 1 1 true


#Skip intro if needed....
#function intro/end












