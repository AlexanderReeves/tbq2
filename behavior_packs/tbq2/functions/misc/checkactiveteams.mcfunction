#give bob scores based on the number of players per team

scoreboard players set @e[tag=bob] greenplayers 0
scoreboard players set @e[tag=bob] redplayers 0
scoreboard players set @e[tag=bob] blueplayers 0
scoreboard players set @e[tag=bob] yellowplayers 0

execute as @a[tag=red] run scoreboard players add @e[tag=bob] redplayers 1
execute as @a[tag=green] run scoreboard players add @e[tag=bob] greenplayers 1
execute as @a[tag=blue] run scoreboard players add @e[tag=bob] blueplayers 1
execute as @a[tag=yellow] run scoreboard players add @e[tag=bob] yellowplayers 1