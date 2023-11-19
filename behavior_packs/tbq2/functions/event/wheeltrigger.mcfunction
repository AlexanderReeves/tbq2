#*UPDATED TO NEW FORMAT*

#Wheel should spin for 5-15 seconds
#Set a random score to determine how far the wheel will spin
scoreboard players random @e[tag=bob] wheelresult 1 20
scoreboard players set @s seconds 30
say spinning wheel!
#Youll need to time the length of each animation, and then have the result appear on screen in the chat box at the end of that time in the seconds page
execute as @s[scores={wheelresult=1}] run playanimation @e[type=tbq:wheel] animation.wheel.blue1
#how many seconds will the second timer be at when the animation ends? animation timelength + 30 seconds that already passed gives us the answer
execute as @s[scores={wheelresult=1}] run scoreboard players set @s wheelspintime 47
execute as @s[scores={wheelresult=2}] run playanimation @e[type=tbq:wheel] animation.wheel.blue2
execute as @s[scores={wheelresult=2}] run scoreboard players set @s wheelspintime 44
execute as @s[scores={wheelresult=3}] run playanimation @e[type=tbq:wheel] animation.wheel.pink1
execute as @s[scores={wheelresult=3}] run scoreboard players set @s wheelspintime 44
execute as @s[scores={wheelresult=4}] run playanimation @e[type=tbq:wheel] animation.wheel.pink2
execute as @s[scores={wheelresult=4}] run scoreboard players set @s wheelspintime 48
execute as @s[scores={wheelresult=5}] run playanimation @e[type=tbq:wheel] animation.wheel.gold1
execute as @s[scores={wheelresult=5}] run scoreboard players set @s wheelspintime 49
execute as @s[scores={wheelresult=6}] run playanimation @e[type=tbq:wheel] animation.wheel.gold2
execute as @s[scores={wheelresult=6}] run scoreboard players set @s wheelspintime 48
execute as @s[scores={wheelresult=7}] run playanimation @e[type=tbq:wheel] animation.wheel.red1
execute as @s[scores={wheelresult=7}] run scoreboard players set @s wheelspintime 50
execute as @s[scores={wheelresult=8}] run playanimation @e[type=tbq:wheel] animation.wheel.red2
execute as @s[scores={wheelresult=8}] run scoreboard players set @s wheelspintime 45
execute as @s[scores={wheelresult=9}] run playanimation @e[type=tbq:wheel] animation.wheel.green1
execute as @s[scores={wheelresult=9}] run scoreboard players set @s wheelspintime 43
execute as @s[scores={wheelresult=10}] run playanimation @e[type=tbq:wheel] animation.wheel.green2
execute as @s[scores={wheelresult=10}] run scoreboard players set @s wheelspintime 44
#TNT was replaced with a randomo result, weird effect like giant heads for players or pigs appear everywhere, no score effect though
execute as @s[scores={wheelresult=11}] run playanimation @e[type=tbq:wheel] animation.wheel.tnt1
execute as @s[scores={wheelresult=11}] run scoreboard players set @s wheelspintime 46
execute as @s[scores={wheelresult=12}] run playanimation @e[type=tbq:wheel] animation.wheel.tnt2
execute as @s[scores={wheelresult=12}] run scoreboard players set @s wheelspintime 50
execute as @s[scores={wheelresult=13}] run playanimation @e[type=tbq:wheel] animation.wheel.purple1
execute as @s[scores={wheelresult=13}] run scoreboard players set @s wheelspintime 50
execute as @s[scores={wheelresult=14}] run playanimation @e[type=tbq:wheel] animation.wheel.purple2
execute as @s[scores={wheelresult=14}] run scoreboard players set @s wheelspintime 49
execute as @s[scores={wheelresult=15}] run playanimation @e[type=tbq:wheel] animation.wheel.darkblue1
execute as @s[scores={wheelresult=15}] run scoreboard players set @s wheelspintime 48
execute as @s[scores={wheelresult=16}] run playanimation @e[type=tbq:wheel] animation.wheel.darkblue2
execute as @s[scores={wheelresult=16}] run scoreboard players set @s wheelspintime 48
execute as @s[scores={wheelresult=17}] run playanimation @e[type=tbq:wheel] animation.wheel.orange1
execute as @s[scores={wheelresult=17}] run scoreboard players set @s wheelspintime 45
execute as @s[scores={wheelresult=18}] run playanimation @e[type=tbq:wheel] animation.wheel.orange2
execute as @s[scores={wheelresult=18}] run scoreboard players set @s wheelspintime 49
execute as @s[scores={wheelresult=19}] run playanimation @e[type=tbq:wheel] animation.wheel.creeper
execute as @s[scores={wheelresult=19}] run scoreboard players set @s wheelspintime 45
execute as @s[scores={wheelresult=20}] run playanimation @e[type=tbq:wheel] animation.wheel.creeper2
execute as @s[scores={wheelresult=20}] run scoreboard players set @s wheelspintime 50
#Once the wheel starts to spin, the timer moves on to the 25 second mark automatically.
scoreboard players set @s seconds 30


#Diagnosisn incorrect spin animation
execute as @s[scores={wheelresult=1}] run say score 1, blue, 100
execute as @s[scores={wheelresult=2}] run say score 2, blue, 100
execute as @s[scores={wheelresult=3}] run say score 3, pink, 50
execute as @s[scores={wheelresult=4}] run say score 4, pink, 50
execute as @s[scores={wheelresult=5}] run say score 5, gold, 200
execute as @s[scores={wheelresult=6}] run say score 6, gold, 200
execute as @s[scores={wheelresult=7}] run say score 7, red, -90
execute as @s[scores={wheelresult=8}] run say score 8, red, -90
execute as @s[scores={wheelresult=9}] run say score 9, green, 50
execute as @s[scores={wheelresult=10}] run say score 10, green, 50
execute as @s[scores={wheelresult=11}] run say score 11, ?, 0
execute as @s[scores={wheelresult=12}] run say score 12, ?, 0
execute as @s[scores={wheelresult=13}] run say score 13, purp, 30
execute as @s[scores={wheelresult=14}] run say score 14, purp, 30
execute as @s[scores={wheelresult=15}] run say score 15, dblue, 80
execute as @s[scores={wheelresult=16}] run say score 16, dblue, 80
execute as @s[scores={wheelresult=17}] run say score 17, oran, -50
execute as @s[scores={wheelresult=18}] run say score 18, oran, -50
execute as @s[scores={wheelresult=19}] run say score 19, cree, 50
execute as @s[scores={wheelresult=20}] run say score 20, cree, 50




