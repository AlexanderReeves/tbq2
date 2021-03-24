tellraw @a {"rawtext":[{"text":"§cThe lobby is getting set up!"}]}
function misc/emptyteams

#Reset game loop variables
scoreboard players set @s gamestate 0
scoreboard players set @s tick 0
scoreboard players set @s seconds 0