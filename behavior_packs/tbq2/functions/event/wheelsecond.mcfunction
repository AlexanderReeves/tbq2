
#First thing to do before we run the wheel section of the game, is check that we have a valid team to spin the wheel
#We also make sure players are in the correct area at this time
execute @s[scores={seconds=0..}] ~ ~ ~ function event/wheelteamcheck
scoreboard players set @s[scores={seconds=0}] wheelspintime 0
scoreboard players set @s[scores={seconds=0}] wheelresult 0
execute @s[scores={seconds=0}] ~ ~ ~ title @a times 0 5 20


#This code will run its full cycle 4 times, once for each team!

#say whose turn it is to spin the wheel/the team that was just teleported to main stage
execute @s[scores={seconds=0},tag=wheelgreen] ~ ~ ~ title @a actionbar §aIt's your turn, Green team!
execute @s[scores={seconds=0},tag=wheelred] ~ ~ ~ title @a actionbar §aIt's your turn, Red team!
execute @s[scores={seconds=0},tag=wheelyellow] ~ ~ ~ title @a actionbar §aIt's your turn, Yellow team!
execute @s[scores={seconds=0},tag=wheelblue] ~ ~ ~ title @a actionbar §aIt's your turn, Blue team!


execute @s[scores={seconds=3}] ~ ~ ~ title @a actionbar §aPull the lever to spin the wheel!
execute @s[scores={seconds=8}] ~ ~ ~ title @a actionbar §aBetter hurry up, or you'll lose 100 points!
execute @s[scores={seconds=12}] ~ ~ ~ title @a actionbar §a3
execute @s[scores={seconds=13}] ~ ~ ~ title @a actionbar §a2
execute @s[scores={seconds=14}] ~ ~ ~ title @a actionbar §a1

#Skip ahead to the next phase if 14 seconds have passed with no input, the next phase starts at the 50 second mark.
#At the 50 second mark, we read the results of the spin
scoreboard players set @s[scores={seconds=15}] seconds 50


#We also want a random spinning text colour to appear in the chat, the k gives us a random magic text font, and well use a scoreboar dot pick a random colour
scoreboard objectives add randomcolour dummy randomcolour
execute @s[scores={seconds=30..50}] ~ ~ ~ scoreboard players random @s randomcolour 1 5
execute @s[scores={seconds=30..50,randomcolour=1}] ~ ~ ~ title @a actionbar §bResult: §b§k100000000
execute @s[scores={seconds=30..50,randomcolour=2}] ~ ~ ~ title @a actionbar §bResult: §d§k100000000
execute @s[scores={seconds=30..50,randomcolour=3}] ~ ~ ~ title @a actionbar §bResult: §6§k100000000
execute @s[scores={seconds=30..50,randomcolour=4}] ~ ~ ~ title @a actionbar §bResult: §a§k100000000
execute @s[scores={seconds=30..50,randomcolour=5}] ~ ~ ~ title @a actionbar §bResult: §e§k100000000

#Read results when seconds matches result seconds animation end score thing
execute @s[scores={seconds=47,wheelspintime=47,wheelresult=1}] ~ ~ ~ title @a actionbar §bResult: §b+100
execute @s[scores={seconds=44,wheelspintime=44,wheelresult=2}] ~ ~ ~ title @a actionbar §bResult: §b+100
execute @s[scores={seconds=44,wheelspintime=44,wheelresult=3}] ~ ~ ~ title @a actionbar §bResult: §d+50
execute @s[scores={seconds=48,wheelspintime=48,wheelresult=4}] ~ ~ ~ title @a actionbar §bResult: §d+50
execute @s[scores={seconds=49,wheelspintime=49,wheelresult=5}] ~ ~ ~ title @a actionbar §bResult: §6Jackpot!!! Congratulations. +200 points!
execute @s[scores={seconds=48,wheelspintime=48,wheelresult=6}] ~ ~ ~ title @a actionbar §bResult: §6Jackpot!!! Congratulations. +200 points!
execute @s[scores={seconds=50,wheelspintime=50,wheelresult=7}] ~ ~ ~ title @a actionbar §bResult: §c-90
execute @s[scores={seconds=45,wheelspintime=45,wheelresult=8}] ~ ~ ~ title @a actionbar §bResult: §c-90
execute @s[scores={seconds=43,wheelspintime=43,wheelresult=9}] ~ ~ ~ title @a actionbar §bResult: §2+50
execute @s[scores={seconds=44,wheelspintime=44,wheelresult=10}] ~ ~ ~ title @a actionbar §bResult: §2+50
execute @s[scores={seconds=46,wheelspintime=46,wheelresult=11}] ~ ~ ~ title @a actionbar §bResult: §fHuh? I'm not sure what that one does... 
execute @s[scores={seconds=50,wheelspintime=50,wheelresult=12}] ~ ~ ~ title @a actionbar §bResult: §fHuh? I'm not sure what that one does...
execute @s[scores={seconds=50,wheelspintime=50,wheelresult=13}] ~ ~ ~ title @a actionbar §bResult: §5+30
execute @s[scores={seconds=49,wheelspintime=49,wheelresult=14}] ~ ~ ~ title @a actionbar §bResult: §5+30
execute @s[scores={seconds=48,wheelspintime=48,wheelresult=15}] ~ ~ ~ title @a actionbar §bResult: §1+80
execute @s[scores={seconds=48,wheelspintime=48,wheelresult=16}] ~ ~ ~ title @a actionbar §bResult: §1+80
execute @s[scores={seconds=45,wheelspintime=45,wheelresult=17}] ~ ~ ~ title @a actionbar §bResult: §6 -50
execute @s[scores={seconds=49,wheelspintime=49,wheelresult=18}] ~ ~ ~ title @a actionbar §bResult: §6 -50
execute @s[scores={seconds=45,wheelspintime=45,wheelresult=19}] ~ ~ ~ title @a actionbar §bResult: §4Uh oh, Something bad is about to happen!
execute @s[scores={seconds=50,wheelspintime=50,wheelresult=20}] ~ ~ ~ title @a actionbar §bResult: §4Uh oh, Something bad is about to happen!
execute @s[scores={seconds=50,wheelspintime=0,wheelresult=0}] ~ ~ ~ title @a actionbar §bYou didnt press the button: §c-100
#all of these should set the seconds to 50 as well
scoreboard players set @s[scores={seconds=47,wheelspintime=47,wheelresult=1}] seconds 50
scoreboard players set @s[scores={seconds=44,wheelspintime=44,wheelresult=2}] seconds 50
scoreboard players set @s[scores={seconds=44,wheelspintime=44,wheelresult=3}] seconds 50
scoreboard players set @s[scores={seconds=48,wheelspintime=48,wheelresult=4}] seconds 50
scoreboard players set @s[scores={seconds=49,wheelspintime=49,wheelresult=5}] seconds 50
scoreboard players set @s[scores={seconds=48,wheelspintime=48,wheelresult=6}] seconds 50
scoreboard players set @s[scores={seconds=50,wheelspintime=50,wheelresult=7}] seconds 50
scoreboard players set @s[scores={seconds=45,wheelspintime=45,wheelresult=8}] seconds 50
scoreboard players set @s[scores={seconds=43,wheelspintime=43,wheelresult=9}] seconds 50
scoreboard players set @s[scores={seconds=44,wheelspintime=44,wheelresult=10}] seconds 50
scoreboard players set @s[scores={seconds=46,wheelspintime=46,wheelresult=11}] seconds 50
scoreboard players set @s[scores={seconds=50,wheelspintime=50,wheelresult=12}] seconds 50
scoreboard players set @s[scores={seconds=50,wheelspintime=50,wheelresult=13}] seconds 50
scoreboard players set @s[scores={seconds=49,wheelspintime=49,wheelresult=14}] seconds 50
scoreboard players set @s[scores={seconds=48,wheelspintime=48,wheelresult=15}] seconds 50
scoreboard players set @s[scores={seconds=48,wheelspintime=48,wheelresult=16}] seconds 50
scoreboard players set @s[scores={seconds=45,wheelspintime=45,wheelresult=17}] seconds 50
scoreboard players set @s[scores={seconds=49,wheelspintime=49,wheelresult=18}] seconds 50
scoreboard players set @s[scores={seconds=45,wheelspintime=45,wheelresult=19}] seconds 50
scoreboard players set @s[scores={seconds=50,wheelspintime=50,wheelresult=20}] seconds 50
scoreboard players set @s[scores={seconds=50,wheelspintime=0,wheelresult=0}] seconds 50



#After results are determined, we can run more code to facilitate any extra events it may cause to occur
execute @s[scores={seconds=50}] ~ ~ ~ function event/updatescores
execute @s[scores={seconds=50..52,wheelresult=6..7}] ~ ~ ~ function event/wheeljackpot
execute @s[scores={seconds=50,wheelresult=11..12}] ~ ~ ~ function event/wheelchaos





#scoreboard objectives setdisplay sidebar seconds