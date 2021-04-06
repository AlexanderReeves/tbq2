

#Rotate wheel based on amount of time on timer
execute @e[scores={wheelseconds=1}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~-2.5 ~

execute @e[scores={wheelseconds=1..5}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~2.5 ~
execute @e[scores={wheelseconds=6..7}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~5 ~
execute @e[scores={wheelseconds=8..9}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~15 ~
execute @e[scores={wheelseconds=10..11}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~25 ~
execute @e[scores={wheelseconds=12..14}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~50 ~
execute @e[scores={wheelseconds=15..}] ~ ~ ~ execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ ~65 ~

execute @e[scores={wheelseconds=1..5}] ~ ~ ~ execute @e[type=pig] ~ ~ ~ tp @s ~ ~ ~ ~2.5 ~
execute @e[scores={wheelseconds=6..7}] ~ ~ ~ execute @e[type=pig] ~ ~ ~ tp @s ~ ~ ~ ~5 ~
execute @e[scores={wheelseconds=8..9}] ~ ~ ~ execute @e[type=pig] ~ ~ ~ tp @s ~ ~ ~ ~15 ~
execute @e[scores={wheelseconds=10..11}] ~ ~ ~ execute @e[type=pig] ~ ~ ~ tp @s ~ ~ ~ ~25 ~
execute @e[scores={wheelseconds=12..14}] ~ ~ ~ execute @e[type=pig] ~ ~ ~ tp @s ~ ~ ~ ~50 ~
execute @e[scores={wheelseconds=15..}] ~ ~ ~ execute @e[type=pig] ~ ~ ~ tp @s ~ ~ ~ ~65 ~




execute @e[tag=bob,scores={tick=0}] ~ ~ ~ scoreboard players remove @e[type=tbq:wheel] wheelseconds 1