#MOVE THE SPINWHEEL TO THE FOREGROUND AND REMOVE ANGLE ROTATION
#The air equipped will make the wheel face the correct direction, see animations for more info
replaceitem entity @e[type=tbq:wheel] slot.weapon.mainhand 1 air 1
tp @e[type=tbq:wheel] 127 28 -180 0 0
execute @e[type=tbq:wheel] ~ ~ ~ tp @s ~ ~ ~ 0 0
tp @e[type=tbq:wheellever] 127 28 -183