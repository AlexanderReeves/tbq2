#CODE UPDATED TO NEW FORMAT#
#Players can join teams based on the colour of concrete beneath their feet
#say team selection running

#Join red team
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run tellraw @s {"rawtext":[{"text":"§cYou have joined the red team!"}]}
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run tag @s remove blue
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run tag @s remove yellow
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run tag @s remove green
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run tag @s remove spectator
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run playsound block.end_portal_frame.fill @s
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=!red] at @s run execute if block ~ ~-1 ~ red_concrete run tag @s add red

#red, blue, yellow, green, spectator
#Join blue team
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run tellraw @s {"rawtext":[{"text":"§bYou have joined the blue team!"}]}
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run tag @s remove red
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run tag @s remove yellow
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run tag @s remove green
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run tag @s remove spectator
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run playsound block.end_portal_frame.fill @s
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=!blue] at @s run execute if block ~ ~-1 ~ light_blue_concrete run tag @s add blue

#Join yellow team
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run tellraw @s {"rawtext":[{"text":"§6You have joined the yellow team!"}]}
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run tag @s remove blue
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run tag @s remove red
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run tag @s remove green
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run tag @s remove spectator
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run playsound block.end_portal_frame.fill @s
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=!yellow] at @s run execute if block ~ ~-1 ~ yellow_concrete run tag @s add yellow

#Join green team
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run tellraw @s {"rawtext":[{"text":"§aYou have joined the green team!"}]}
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run tag @s remove blue
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run tag @s remove yellow
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run tag @s remove red
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run tag @s remove spectator
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run playsound block.end_portal_frame.fill @s
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=!green] at @s run execute if block ~ ~-1 ~ lime_concrete run tag @s add green

#Join spectator team
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run tellraw @s {"rawtext":[{"text":"§fYou will be a spectator! (Warning: You will not play the game.)"}]}
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run tag @s remove blue
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run tag @s remove yellow
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run tag @s remove green
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run tag @s remove red
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run playsound block.end_portal_frame.fill @s
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run particle minecraft:totem_particle ~ ~1 ~
execute as @a[tag=!spectator] at @s run execute if block ~ ~-1 ~ white_concrete run tag @s add spectator
