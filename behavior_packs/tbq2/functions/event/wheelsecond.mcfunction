
#First thing to do before we run the wheel section of the game, is check that we have a valid team to spin the wheel
#We also make sure players are in the correct area at this time
execute @s[scores={seconds=0..}] ~ ~ ~ function event/wheelteamcheck

#This code will run its full cycle 4 times, once for each team!

#say whose turn it is to spin the wheel/the team that was just teleported to main stage
execute @s[scores={seconds=0},tag=wheelgreen] ~ ~ ~ title @a actionbar §aIt's your turn, Green team!
execute @s[scores={seconds=0},tag=wheelred] ~ ~ ~ title @a actionbar §aIt's your turn, Red team!
execute @s[scores={seconds=0},tag=wheelyellow] ~ ~ ~ title @a actionbar §aIt's your turn, Yellow team!
execute @s[scores={seconds=0},tag=wheelblue] ~ ~ ~ title @a actionbar §aIt's your turn, Blue team!





