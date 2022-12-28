#Wheel should spin for 5-15 seconds
#Set a random score to determine how far the wheel will spin
scoreboard players random @e[tag=bob] wheelresult 1 20
scoreboard players set @s seconds 30
say spinning wheel!
#Youll need to time the length of each animation, and then have the result appear on screen in the chat box at the end of that time in the seconds page
execute @s[scores={wheelresult=1}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.blue1
#how many seconds will the second timer be at when the animation ends? animation timelength + 30 seconds that already passed gives us the answer
execute @s[scores={wheelresult=1}] ~ ~ ~ scoreboard players set @s wheelspintime 47
execute @s[scores={wheelresult=2}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.blue2
execute @s[scores={wheelresult=2}] ~ ~ ~ scoreboard players set @s wheelspintime 44
execute @s[scores={wheelresult=3}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.pink1
execute @s[scores={wheelresult=3}] ~ ~ ~ scoreboard players set @s wheelspintime 44
execute @s[scores={wheelresult=4}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.pink2
execute @s[scores={wheelresult=4}] ~ ~ ~ scoreboard players set @s wheelspintime 48
execute @s[scores={wheelresult=5}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.gold1
execute @s[scores={wheelresult=5}] ~ ~ ~ scoreboard players set @s wheelspintime 49
execute @s[scores={wheelresult=6}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.gold2
execute @s[scores={wheelresult=6}] ~ ~ ~ scoreboard players set @s wheelspintime 48
execute @s[scores={wheelresult=7}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.red1
execute @s[scores={wheelresult=7}] ~ ~ ~ scoreboard players set @s wheelspintime 50
execute @s[scores={wheelresult=8}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.red2
execute @s[scores={wheelresult=8}] ~ ~ ~ scoreboard players set @s wheelspintime 45
execute @s[scores={wheelresult=9}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.green1
execute @s[scores={wheelresult=9}] ~ ~ ~ scoreboard players set @s wheelspintime 43
execute @s[scores={wheelresult=10}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.green2
execute @s[scores={wheelresult=10}] ~ ~ ~ scoreboard players set @s wheelspintime 44
#TNT was replaced with a randomo result, weird effect like giant heads for players or pigs appear everywhere, no score effect though
execute @s[scores={wheelresult=11}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.tnt1
execute @s[scores={wheelresult=11}] ~ ~ ~ scoreboard players set @s wheelspintime 46
execute @s[scores={wheelresult=12}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.tnt2
execute @s[scores={wheelresult=12}] ~ ~ ~ scoreboard players set @s wheelspintime 50
execute @s[scores={wheelresult=13}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.purple1
execute @s[scores={wheelresult=13}] ~ ~ ~ scoreboard players set @s wheelspintime 50
execute @s[scores={wheelresult=14}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.purple2
execute @s[scores={wheelresult=14}] ~ ~ ~ scoreboard players set @s wheelspintime 49
execute @s[scores={wheelresult=15}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.darkblue1
execute @s[scores={wheelresult=15}] ~ ~ ~ scoreboard players set @s wheelspintime 48
execute @s[scores={wheelresult=16}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.darkblue2
execute @s[scores={wheelresult=16}] ~ ~ ~ scoreboard players set @s wheelspintime 48
execute @s[scores={wheelresult=17}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.orange1
execute @s[scores={wheelresult=17}] ~ ~ ~ scoreboard players set @s wheelspintime 45
execute @s[scores={wheelresult=18}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.orange2
execute @s[scores={wheelresult=18}] ~ ~ ~ scoreboard players set @s wheelspintime 49
execute @s[scores={wheelresult=19}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.creeper
execute @s[scores={wheelresult=19}] ~ ~ ~ scoreboard players set @s wheelspintime 45
execute @s[scores={wheelresult=20}] ~ ~ ~ playanimation @e[type=tbq:wheel] animation.wheel.creeper2
execute @s[scores={wheelresult=20}] ~ ~ ~ scoreboard players set @s wheelspintime 50
#Once the wheel starts to spin, the timer moves on to the 25 second mark automatically.
scoreboard players set @s seconds 30


#Diagnosisn incorrect spin animation
execute @s[scores={wheelresult=1}] ~ ~ ~ say score 1, blue, 100
execute @s[scores={wheelresult=2}] ~ ~ ~ say score 2, blue, 100
execute @s[scores={wheelresult=3}] ~ ~ ~ say score 3, pink, 50
execute @s[scores={wheelresult=4}] ~ ~ ~ say score 4, pink, 50
execute @s[scores={wheelresult=5}] ~ ~ ~ say score 5, gold, 200
execute @s[scores={wheelresult=6}] ~ ~ ~ say score 6, gold, 200
execute @s[scores={wheelresult=7}] ~ ~ ~ say score 7, red, -90
execute @s[scores={wheelresult=8}] ~ ~ ~ say score 8, red, -90
execute @s[scores={wheelresult=9}] ~ ~ ~ say score 9, green, 50
execute @s[scores={wheelresult=10}] ~ ~ ~ say score 10, green, 50
execute @s[scores={wheelresult=11}] ~ ~ ~ say score 11, ?, 0
execute @s[scores={wheelresult=12}] ~ ~ ~ say score 12, ?, 0
execute @s[scores={wheelresult=13}] ~ ~ ~ say score 13, purp, 30
execute @s[scores={wheelresult=14}] ~ ~ ~ say score 14, purp, 30
execute @s[scores={wheelresult=15}] ~ ~ ~ say score 15, dblue, 80
execute @s[scores={wheelresult=16}] ~ ~ ~ say score 16, dblue, 80
execute @s[scores={wheelresult=17}] ~ ~ ~ say score 17, oran, -50
execute @s[scores={wheelresult=18}] ~ ~ ~ say score 18, oran, -50
execute @s[scores={wheelresult=19}] ~ ~ ~ say score 19, cree, 50
execute @s[scores={wheelresult=20}] ~ ~ ~ say score 20, cree, 50

=======



