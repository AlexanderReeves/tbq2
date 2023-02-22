#Players can join teams based on the colour of concrete beneath their feet
#say team selection running

#Join red team
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run tellraw @s {"rawtext":[{"text":"§cYou have joined the red team!"}]}
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run tag @s remove blue
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run tag @s remove yellow
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run tag @s remove green
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run tag @s remove spectator
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run playsound block.end_portal_frame.fill @s
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run particle minecraft:totem_particle ~ ~1 ~
execute as @p at @s[tag=!red] positioned ~ ~-1 ~ run execute if block ~ ~ ~ concrete 14 run tag @s add red

#Join blue team
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tellraw @s {"rawtext":[{"text":"§bYou have joined the blue team!"}]}
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove red
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove yellow
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove green
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove spectator
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 playsound block.end_portal_frame.fill @s
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 particle minecraft:totem_particle ~ ~1 ~
#execute as @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s add blue

#Join yellow team
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tellraw @s {"rawtext":[{"text":"§gYou have joined the yellow team!"}]}
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove red
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove blue
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove green
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove spectator
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 playsound block.end_portal_frame.fill @s
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 particle minecraft:totem_particle ~ ~1 ~
#execute as @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s add yellow

#Join green team
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tellraw @s {"rawtext":[{"text":"§aYou have joined the green team!"}]}
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove red
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove yellow
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove blue
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove spectator
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 playsound block.end_portal_frame.fill @s
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 particle minecraft:totem_particle ~ ~1 ~
#execute as @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s add green

#Join spectator 
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tellraw @s {"rawtext":[{"text":"§fYou will be a spectator!"}]}
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove red
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove yellow
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove green
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove blue
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 playsound block.end_portal_frame.fill @s
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 particle minecraft:totem_particle ~ ~1 ~
#execute as @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s add spectator
