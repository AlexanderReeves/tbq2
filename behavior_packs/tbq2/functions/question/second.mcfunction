#Move all to view board
execute @s[scores={second=0}] ~ ~ ~ tp @a 147 28 -180 -35 -10

#Give all a leather helmet.... This will load a special display board view on for each player!
execute @s[scores={seconds=2}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 leather_helmet 1

execute @s[scores={seconds=6}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 air 1