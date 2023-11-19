#*UPDATED TO NEW FORMAT*
#This code is triggered by wheelseconds. It updates the scores according to what result recieved from spinning the wheel.
#say updating scores
#============================GREEN
#Depending on random result, check which team tag is active, set that teams score.
execute as @s[scores={wheelresult=1},tag=wheelgreen] run scoreboard players add @s greenscore 100
execute as @s[scores={wheelresult=2},tag=wheelgreen] run scoreboard players add @s greenscore 100
execute as @s[scores={wheelresult=3},tag=wheelgreen] run scoreboard players add @s greenscore 50
execute as @s[scores={wheelresult=4},tag=wheelgreen] run scoreboard players add @s greenscore 50
execute as @s[scores={wheelresult=5},tag=wheelgreen] run scoreboard players add @s greenscore 200
execute as @s[scores={wheelresult=6},tag=wheelgreen] run scoreboard players add @s greenscore 200
execute as @s[scores={wheelresult=7},tag=wheelgreen] run scoreboard players add @s greenscore -90
execute as @s[scores={wheelresult=8},tag=wheelgreen] run scoreboard players add @s greenscore -90
execute as @s[scores={wheelresult=9},tag=wheelgreen] run scoreboard players add @s greenscore 50
execute as @s[scores={wheelresult=10},tag=wheelgreen] run scoreboard players add @s greenscore 50
#execute as @s[scores={wheelresult=11},tag=wheelgreen] run scoreboard players add @s greenscore 100 NO SCORE UPDATE ON RANDOM EVENTS
#execute as @s[scores={wheelresult=12},tag=wheelgreen] run scoreboard players add @s greenscore 100 NO SCORE UPDATE ON RANDOM EVENTS
execute as @s[scores={wheelresult=13},tag=wheelgreen] run scoreboard players add @s greenscore 30
execute as @s[scores={wheelresult=14},tag=wheelgreen] run scoreboard players add @s greenscore 30
execute as @s[scores={wheelresult=15},tag=wheelgreen] run scoreboard players add @s greenscore 80
execute as @s[scores={wheelresult=16},tag=wheelgreen] run scoreboard players add @s greenscore 80
execute as @s[scores={wheelresult=17},tag=wheelgreen] run scoreboard players add @s greenscore -50
execute as @s[scores={wheelresult=18},tag=wheelgreen] run scoreboard players add @s greenscore -50
execute as @s[scores={wheelresult=19},tag=wheelgreen] run scoreboard players add @s greenscore -150
execute as @s[scores={wheelresult=20},tag=wheelgreen] run scoreboard players add @s greenscore -150
#Trigger not pressed
execute as @s[scores={wheelresult=0},tag=wheelgreen] run scoreboard players add @s greenscore -100
#============================RED
#Depending on random result, check which team tag is active, set that teams score.
execute as @s[scores={wheelresult=1},tag=wheelred] run scoreboard players add @s redscore 100
execute as @s[scores={wheelresult=2},tag=wheelred] run scoreboard players add @s redscore 100
execute as @s[scores={wheelresult=3},tag=wheelred] run scoreboard players add @s redscore 50
execute as @s[scores={wheelresult=4},tag=wheelred] run scoreboard players add @s redscore 50
execute as @s[scores={wheelresult=5},tag=wheelred] run scoreboard players add @s redscore 200
execute as @s[scores={wheelresult=6},tag=wheelred] run scoreboard players add @s redscore 200
execute as @s[scores={wheelresult=7},tag=wheelred] run scoreboard players add @s redscore -90
execute as @s[scores={wheelresult=8},tag=wheelred] run scoreboard players add @s redscore -90
execute as @s[scores={wheelresult=9},tag=wheelred] run scoreboard players add @s redscore 50
execute as @s[scores={wheelresult=10},tag=wheelred] run scoreboard players add @s redscore 50
#execute as @s[scores={wheelresult=11},tag=wheelred] run scoreboard players add @s redscore 100 NO SCORE UPDATE ON RANDOM EVENTS
#execute as @s[scores={wheelresult=12},tag=wheelred] run scoreboard players add @s redscore 100 NO SCORE UPDATE ON RANDOM EVENTS
execute as @s[scores={wheelresult=13},tag=wheelred] run scoreboard players add @s redscore 30
execute as @s[scores={wheelresult=14},tag=wheelred] run scoreboard players add @s redscore 30
execute as @s[scores={wheelresult=15},tag=wheelred] run scoreboard players add @s redscore 80
execute as @s[scores={wheelresult=16},tag=wheelred] run scoreboard players add @s redscore 80
execute as @s[scores={wheelresult=17},tag=wheelred] run scoreboard players add @s redscore -50
execute as @s[scores={wheelresult=18},tag=wheelred] run scoreboard players add @s redscore -50
execute as @s[scores={wheelresult=19},tag=wheelred] run scoreboard players add @s redscore -150
execute as @s[scores={wheelresult=20},tag=wheelred] run scoreboard players add @s redscore -150
#Trigger not pressed
execute as @s[scores={wheelresult=0},tag=wheelred] run scoreboard players add @s redscore -100

#============================YELLOW
#Depending on random result, check which team tag is active, set that teams score.
execute as @s[scores={wheelresult=1},tag=wheelyellow] run scoreboard players add @s yellowscore 100
execute as @s[scores={wheelresult=2},tag=wheelyellow] run scoreboard players add @s yellowscore 100
execute as @s[scores={wheelresult=3},tag=wheelyellow] run scoreboard players add @s yellowscore 50
execute as @s[scores={wheelresult=4},tag=wheelyellow] run scoreboard players add @s yellowscore 50
execute as @s[scores={wheelresult=5},tag=wheelyellow] run scoreboard players add @s yellowscore 200
execute as @s[scores={wheelresult=6},tag=wheelyellow] run scoreboard players add @s yellowscore 200
execute as @s[scores={wheelresult=7},tag=wheelyellow] run scoreboard players add @s yellowscore -90
execute as @s[scores={wheelresult=8},tag=wheelyellow] run scoreboard players add @s yellowscore -90
execute as @s[scores={wheelresult=9},tag=wheelyellow] run scoreboard players add @s yellowscore 50
execute as @s[scores={wheelresult=10},tag=wheelyellow] run scoreboard players add @s yellowscore 50
#execute as @s[scores={wheelresult=11},tag=wheelyellow] run scoreboard players add @s yellowscore 100 NO SCORE UPDATE ON RANDOM EVENTS
#execute as @s[scores={wheelresult=12},tag=wheelyellow] run scoreboard players add @s yellowscore 100 NO SCORE UPDATE ON RANDOM EVENTS
execute as @s[scores={wheelresult=13},tag=wheelyellow] run scoreboard players add @s yellowscore 30
execute as @s[scores={wheelresult=14},tag=wheelyellow] run scoreboard players add @s yellowscore 30
execute as @s[scores={wheelresult=15},tag=wheelyellow] run scoreboard players add @s yellowscore 80
execute as @s[scores={wheelresult=16},tag=wheelyellow] run scoreboard players add @s yellowscore 80
execute as @s[scores={wheelresult=17},tag=wheelyellow] run scoreboard players add @s yellowscore -50
execute as @s[scores={wheelresult=18},tag=wheelyellow] run scoreboard players add @s yellowscore -50
execute as @s[scores={wheelresult=19},tag=wheelyellow] run scoreboard players add @s yellowscore -150
execute as @s[scores={wheelresult=20},tag=wheelyellow] run scoreboard players add @s yellowscore -150
#Trigger not pressed
execute as @s[scores={wheelresult=0},tag=wheelyellow] run scoreboard players add @s yellowscore -100

#============================BLUE
#Depending on random result, check which team tag is active, set that teams score.
execute as @s[scores={wheelresult=1},tag=wheelblue] run scoreboard players add @s bluescore 100
execute as @s[scores={wheelresult=2},tag=wheelblue] run scoreboard players add @s bluescore 100
execute as @s[scores={wheelresult=3},tag=wheelblue] run scoreboard players add @s bluescore 50
execute as @s[scores={wheelresult=4},tag=wheelblue] run scoreboard players add @s bluescore 50
execute as @s[scores={wheelresult=5},tag=wheelblue] run scoreboard players add @s bluescore 200
execute as @s[scores={wheelresult=6},tag=wheelblue] run scoreboard players add @s bluescore 200
execute as @s[scores={wheelresult=7},tag=wheelblue] run scoreboard players add @s bluescore -90
execute as @s[scores={wheelresult=8},tag=wheelblue] run scoreboard players add @s bluescore -90
execute as @s[scores={wheelresult=9},tag=wheelblue] run scoreboard players add @s bluescore 50
execute as @s[scores={wheelresult=10},tag=wheelblue] run scoreboard players add @s bluescore 50
#execute as @s[scores={wheelresult=11},tag=wheelblue] run scoreboard players add @s bluescore 100 NO SCORE UPDATE ON RANDOM EVENTS
#execute as @s[scores={wheelresult=12},tag=wheelblue] run scoreboard players add @s bluescore 100 NO SCORE UPDATE ON RANDOM EVENTS
execute as @s[scores={wheelresult=13},tag=wheelblue] run scoreboard players add @s bluescore 30
execute as @s[scores={wheelresult=14},tag=wheelblue] run scoreboard players add @s bluescore 30
execute as @s[scores={wheelresult=15},tag=wheelblue] run scoreboard players add @s bluescore 80
execute as @s[scores={wheelresult=16},tag=wheelblue] run scoreboard players add @s bluescore 80
execute as @s[scores={wheelresult=17},tag=wheelblue] run scoreboard players add @s bluescore -50
execute as @s[scores={wheelresult=18},tag=wheelblue] run scoreboard players add @s bluescore -50
execute as @s[scores={wheelresult=19},tag=wheelblue] run scoreboard players add @s bluescore -150
execute as @s[scores={wheelresult=20},tag=wheelblue] run scoreboard players add @s bluescore -150
#Trigger not pressed
execute as @s[scores={wheelresult=0},tag=wheelblue] run scoreboard players add @s bluescore -100

#Update the displays with new score from backend
#remove old score
scoreboard players set "§bBlue " scoredisplay 0
scoreboard players set "§cRed " scoredisplay 0
scoreboard players set "§gYellow " scoredisplay 0
scoreboard players set "§aGreen " scoredisplay 0
#Add the new score
scoreboard players operation "§bBlue " scoredisplay += @s bluescore
scoreboard players operation "§cRed " scoredisplay += @s redscore
scoreboard players operation "§gYellow " scoredisplay += @s yellowscore
scoreboard players operation "§aGreen " scoredisplay += @s greenscore