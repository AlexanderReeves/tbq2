#Hide scores of teams with no players
tag @s add hideblue
tag @s add hidered
tag @s add hideyellow
tag @s add hidegreen
execute @a[tag=blue] ~ ~ ~  tag @e[tag=bob] remove hideblue
execute @a[tag=red] ~ ~ ~  tag @e[tag=bob] remove hidered
execute @a[tag=yellow] ~ ~ ~  tag @e[tag=bob] remove hideyellow
execute @a[tag=green] ~ ~ ~  tag @e[tag=bob] remove hidegreen

execute @s[tag=hideblue] ~ ~ ~ scoreboard players reset "§bBlue " scoredisplay
execute @s[tag=hidered] ~ ~ ~ scoreboard players reset "§cRed " scoredisplay
execute @s[tag=hideyellow] ~ ~ ~ scoreboard players reset "§gYellow " scoredisplay
execute @s[tag=hidegreen] ~ ~ ~ scoreboard players reset "§aGreen " scoredisplay
