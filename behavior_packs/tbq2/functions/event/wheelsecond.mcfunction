#*UPDATED TO NEW FORMAT*
#First thing to do before we run the wheel section of the game, is check that we have a valid team to spin the wheel
#We also make sure players are in the correct area at this time
execute as @s[scores={seconds=0..}] run function event/wheelteamcheck

scoreboard players set @s[scores={seconds=0}] wheelspintime 0
scoreboard players set @s[scores={seconds=0}] wheelresult 0
execute as @s[scores={seconds=0}] run title @a times 0 5 20





#This code will run its full cycle 4 times, once for each team!

#say whose turn it is to spin the wheel/the team that was just teleported to main stage
execute as @s[scores={seconds=0},tag=wheelgreen] run title @a actionbar §aIt's your turn, Green team!
execute as @s[scores={seconds=0},tag=wheelred] run title @a actionbar §aIt's your turn, Red team!
execute as @s[scores={seconds=0},tag=wheelyellow] run title @a actionbar §aIt's your turn, Yellow team!
execute as @s[scores={seconds=0},tag=wheelblue] run title @a actionbar §aIt's your turn, Blue team!


execute as @s[scores={seconds=3}] run title @a actionbar §aPull the lever to spin the wheel!
execute as @s[scores={seconds=8}] run title @a actionbar §aBetter hurry up, or you'll lose 100 points!
execute as @s[scores={seconds=12}] run title @a actionbar §a3
execute as @s[scores={seconds=13}] run title @a actionbar §a2
execute as @s[scores={seconds=14}] run title @a actionbar §a1

#Skip ahead to the next phase if 14 seconds have passed with no input, the next phase starts at the 50 second mark.
#At the 50 second mark, we read the results of the spin
scoreboard players set @s[scores={seconds=15}] seconds 50


#We also want a random spinning text colour to appear in the chat, the k gives us a random magic text font, and well use a scoreboar dot pick a random colour
scoreboard objectives add randomcolour dummy randomcolour
execute as @s[scores={seconds=30..50}] run scoreboard players random @s randomcolour 1 5
execute as @s[scores={seconds=30..50,randomcolour=1}] run title @a actionbar §bResult: §b§k100000000
execute as @s[scores={seconds=30..50,randomcolour=2}] run title @a actionbar §bResult: §d§k100000000
execute as @s[scores={seconds=30..50,randomcolour=3}] run title @a actionbar §bResult: §6§k100000000
execute as @s[scores={seconds=30..50,randomcolour=4}] run title @a actionbar §bResult: §a§k100000000
execute as @s[scores={seconds=30..50,randomcolour=5}] run title @a actionbar §bResult: §e§k100000000

#Read results when seconds matches result seconds animation end score thing
execute as @s[scores={seconds=47,wheelspintime=47,wheelresult=1}] run title @a actionbar §bResult: §b+100
execute as @s[scores={seconds=44,wheelspintime=44,wheelresult=2}] run title @a actionbar §bResult: §b+100
execute as @s[scores={seconds=44,wheelspintime=44,wheelresult=3}] run title @a actionbar §bResult: §d+50
execute as @s[scores={seconds=48,wheelspintime=48,wheelresult=4}] run title @a actionbar §bResult: §d+50
execute as @s[scores={seconds=49,wheelspintime=49,wheelresult=5}] run title @a actionbar §bResult: §6Jackpot!!! Congratulations. +200 points!
execute as @s[scores={seconds=48,wheelspintime=48,wheelresult=6}] run title @a actionbar §bResult: §6Jackpot!!! Congratulations. +200 points!
execute as @s[scores={seconds=50,wheelspintime=50,wheelresult=7}] run title @a actionbar §bResult: §c-90
execute as @s[scores={seconds=45,wheelspintime=45,wheelresult=8}] run title @a actionbar §bResult: §c-90
execute as @s[scores={seconds=43,wheelspintime=43,wheelresult=9}] run title @a actionbar §bResult: §2+50
execute as @s[scores={seconds=44,wheelspintime=44,wheelresult=10}] run title @a actionbar §bResult: §2+50
execute as @s[scores={seconds=46,wheelspintime=46,wheelresult=11}] run title @a actionbar §bResult: §fHuh? I'm not sure what that one does... 
execute as @s[scores={seconds=50,wheelspintime=50,wheelresult=12}] run title @a actionbar §bResult: §fHuh? I'm not sure what that one does...
execute as @s[scores={seconds=50,wheelspintime=50,wheelresult=13}] run title @a actionbar §bResult: §5+30
execute as @s[scores={seconds=49,wheelspintime=49,wheelresult=14}] run title @a actionbar §bResult: §5+30
execute as @s[scores={seconds=48,wheelspintime=48,wheelresult=15}] run title @a actionbar §bResult: §1+80
execute as @s[scores={seconds=48,wheelspintime=48,wheelresult=16}] run title @a actionbar §bResult: §1+80
execute as @s[scores={seconds=45,wheelspintime=45,wheelresult=17}] run title @a actionbar §bResult: §6 -50
execute as @s[scores={seconds=49,wheelspintime=49,wheelresult=18}] run title @a actionbar §bResult: §6 -50
execute as @s[scores={seconds=45,wheelspintime=45,wheelresult=19}] run title @a actionbar §bResult: §4Uh oh, Something bad is about to happen!
execute as @s[scores={seconds=50,wheelspintime=50,wheelresult=20}] run title @a actionbar §bResult: §4Uh oh, Something bad is about to happen!
execute as @s[scores={seconds=50,wheelspintime=0,wheelresult=0}] run title @a actionbar §bYou didnt press the button: §c-100
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
execute as @s[scores={seconds=50}] run function event/updatescores
execute as @s[scores={seconds=50..52,wheelresult=6..7}] run function event/wheeljackpot
execute as @s[scores={seconds=50,wheelresult=11..12}] run function event/wheelchaos

#After the event has run, we skip ahead to end the current teams turn
execute as @s[scores={seconds=55}] run function event/wheelnext





#scoreboard objectives setdisplay sidebar seconds