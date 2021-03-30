tellraw @a {"rawtext":[{"text":"§cThe game has ended."}]}
function misc/emptyteams
function intro/restartvariables
function setup/spawnplayers

#Reset game loop variables
scoreboard players set @s gamestate 0
scoreboard players set @s tick 0
scoreboard players set @s seconds 0

