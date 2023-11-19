#Hide scores of teams with no players
tag @s add hideblue
tag @s add hidered
tag @s add hideyellow
tag @s add hidegreen
execute as @a[tag=blue] run  tag @e[tag=bob] remove hideblue
execute as @a[tag=red] run  tag @e[tag=bob] remove hidered
execute as @a[tag=yellow] run  tag @e[tag=bob] remove hideyellow
execute as @a[tag=green] run  tag @e[tag=bob] remove hidegreen

execute as @s[tag=hideblue] run scoreboard players reset "§bBlue " scoredisplay
execute as @s[tag=hidered] run scoreboard players reset "§cRed " scoredisplay
execute as @s[tag=hideyellow] run scoreboard players reset "§gYellow " scoredisplay
execute as @s[tag=hidegreen] run scoreboard players reset "§aGreen " scoredisplay
