#give bob scores based on the number of players per team

scoreboard players set @e[tag=bob] greenplayers 0
scoreboard players set @e[tag=bob] redplayers 0
scoreboard players set @e[tag=bob] blueplayers 0
scoreboard players set @e[tag=bob] yellowplayers 0

execute @a[tag=red] ~ ~ ~ scoreboard players add @e[tag=bob] redplayers 1
execute @a[tag=green] ~ ~ ~ scoreboard players add @e[tag=bob] greenplayers 1
execute @a[tag=blue] ~ ~ ~ scoreboard players add @e[tag=bob] blueplayers 1
execute @a[tag=yellow] ~ ~ ~ scoreboard players add @e[tag=bob] yellowplayers 1