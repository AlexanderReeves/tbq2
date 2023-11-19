#*CODE UPDATED TO NEW FORMAT*

#This main game question code runs depending on bobs active tag. As one tag is removed, that code should also add a new tag to replace it.

#Tag runquestion, bob will run the question asking code, added at the end of intro/end
execute as @e[scores={question=1..10},tag=runquestion,tag=bob] run function question/main
#Tag any event, bob will run an event (Spin the wheel and results)
execute as @e[tag=eventintro,tag=bob] run function event/main
execute as @e[tag=eventoutro,tag=bob] run function event/main
execute as @e[tag=eventwheel,tag=bob] run function event/main
#After the game ends, we should switch to gamestate 4, or runoutro tag, yet to be decided.
execute as @e[tag=runoutro,tag=bob] run function outro/main




