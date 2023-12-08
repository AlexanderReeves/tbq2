#Say a chat message to the player depending on which contestant runs this
scoreboard players random @s randchatmess 1 3

execute as @s[scores={randchatmess=1},type=tbq:red_player] run tellraw @a {"rawtext":[{"text":"§cMy calculations predict for an interesting competition."}]}
execute as @s[scores={randchatmess=2},type=tbq:red_player] run tellraw @a {"rawtext":[{"text":"§cI stayed up all night preparing."}]}
execute as @s[scores={randchatmess=3},type=tbq:red_player] run tellraw @a {"rawtext":[{"text":"§cCan I bring in my calculator?"}]}

execute as @s[scores={randchatmess=1},type=tbq:blue_player] run tellraw @a {"rawtext":[{"text":"§bTrain your body, train your mind."}]}
execute as @s[scores={randchatmess=2},type=tbq:blue_player] run tellraw @a {"rawtext":[{"text":"§bI'll use the prize money to buy a home gym."}]}
execute as @s[scores={randchatmess=3},type=tbq:blue_player] run tellraw @a {"rawtext":[{"text":"§bCome lift with me friend."}]}

execute as @s[scores={randchatmess=1},type=tbq:green_player] run tellraw @a {"rawtext":[{"text":"§aAm I nervous? Not at all."}]}
execute as @s[scores={randchatmess=2},type=tbq:green_player] run tellraw @a {"rawtext":[{"text":"§aGreen means go!"}]}
execute as @s[scores={randchatmess=3},type=tbq:green_player] run tellraw @a {"rawtext":[{"text":"§aI've been a Minecrafter for years!"}]}

execute as @s[scores={randchatmess=1},type=tbq:yellow_player] run tellraw @a {"rawtext":[{"text":"§eI'm just here to have fun."}]}
execute as @s[scores={randchatmess=2},type=tbq:yellow_player] run tellraw @a {"rawtext":[{"text":"§eWan't to go for lunch after we're done?"}]}
execute as @s[scores={randchatmess=3},type=tbq:yellow_player] run tellraw @a {"rawtext":[{"text":"§eI can't quite remember what colour an axolotl is..."}]}