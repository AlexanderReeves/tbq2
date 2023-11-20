

execute as @s[scores={seconds=1}] run title @a actionbar §aThanks for playing The Big Quiz!
execute as @s[scores={seconds=4}] run title @a actionbar §aHowever... It's not over next.
execute as @s[scores={seconds=7}] run title @a actionbar §aThe lowest scoring team is about to pay the price!

execute as @s[scores={seconds=9}] run function prize/taglosers



