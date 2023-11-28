#When a new player joins, lets set them up appropriately
tellraw @a {"rawtext":[{"text":"§3A new player has joined!"}]}

#Welcome message for the new player
titleraw @s actionbar {"rawtext":[{"text":"§dWelcome to the Ultimate Minecraft Quiz Show!"}]}
tag @s add joined

function misc/shownothing
