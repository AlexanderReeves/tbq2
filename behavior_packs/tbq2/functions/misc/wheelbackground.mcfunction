#Moves the spin wheel to the background
replaceitem entity @e[type=tbq:wheel] slot.weapon.mainhand 1 diamond_sword 1
tp @e[type=tbq:wheel] 140 28 -154
tp @e[type=tbq:wheellever] 141 28 -151

#WHEN THE WHEEL's ENTITY ROTATES IN A CIRCLE, THE ANIMATION LOOKS LIKE IT IS ACtUALLY NOT SPINNING, AS THE Y ROTATION IS REMOVED
#THAT Y ROTATION IS THEN APPLIED TO THE SPINNING PART, MEANING YOU CAN ROTATE THE SPINNER VIA TPING IT CLOCKWISE OR ANTICLOCKWISE!