#Players can join teams based on the colour of concrete beneath their feet


#Join red team
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 tellraw @s {"rawtext":[{"text":"§cYou have joined the red team!"}]}
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 tag @s remove blue
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 tag @s remove yellow
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 tag @s remove green
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 tag @s remove spectator
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 playsound block.end_portal_frame.fill @s
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 particle minecraft:totem_particle ~ ~1 ~
execute @a[tag=!red] ~ ~ ~ detect ~ ~-1 ~ concrete 14 tag @s add red

#Join blue team
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tellraw @s {"rawtext":[{"text":"§bYou have joined the blue team!"}]}
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove red
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove yellow
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove green
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s remove spectator
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 playsound block.end_portal_frame.fill @s
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 particle minecraft:totem_particle ~ ~1 ~
execute @a[tag=!blue] ~ ~ ~ detect ~ ~-1 ~ concrete 3 tag @s add blue

#Join yellow team
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tellraw @s {"rawtext":[{"text":"§gYou have joined the yellow team!"}]}
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove red
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove blue
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove green
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s remove spectator
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 playsound block.end_portal_frame.fill @s
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 particle minecraft:totem_particle ~ ~1 ~
execute @a[tag=!yellow] ~ ~ ~ detect ~ ~-1 ~ concrete 4 tag @s add yellow

#Join green team
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tellraw @s {"rawtext":[{"text":"§aYou have joined the green team!"}]}
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove red
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove yellow
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove blue
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s remove spectator
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 playsound block.end_portal_frame.fill @s
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 particle minecraft:totem_particle ~ ~1 ~
execute @a[tag=!green] ~ ~ ~ detect ~ ~-1 ~ concrete 5 tag @s add green

#Join spectator 
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tellraw @s {"rawtext":[{"text":"§fYou will be a spectator!"}]}
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove red
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove yellow
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove green
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s remove blue
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 playsound block.end_portal_frame.fill @s
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 particle minecraft:totem_particle ~ ~1 ~
execute @a[tag=!spectator] ~ ~ ~ detect ~ ~-1 ~ concrete 0 tag @s add spectator
