#RUNS WHEN TAGGE AS PRIZE WHEELS
#We are going to run 2 systems at the end of the game...
#One will be for punishing the losing team
#One will be for rewarding the winning team

#Both will be some version of a prize wheel
execute as @s[scores={tick=0}] run function prize/second

execute as @s[scores={seconds=0..10}] run tp @a @e[tag=viewstage]

#Let's punish the losing team first
#countdown the punishment if seconds = 9 or more, and punishcount >0
execute as @s[scores={tick=0,punishcount=1..}] run scoreboard players add @s punishcount -1
execute as @s[scores={tick=10,punishcount=5..}] run scoreboard players add @s punishcount -1

execute as @s[scores={tick=5,punishcount=10..}] run scoreboard players add @s punishcount -1
execute as @s[scores={tick=15,punishcount=10..}] run scoreboard players add @s punishcount -1

execute as @s[scores={tick=2,punishcount=20..}] run scoreboard players add @s punishcount -1
execute as @s[scores={tick=7,punishcount=20..}] run scoreboard players add @s punishcount -1
execute as @s[scores={tick=12,punishcount=20..}] run scoreboard players add @s punishcount -1
execute as @s[scores={tick=17,punishcount=20..}] run scoreboard players add @s punishcount -1