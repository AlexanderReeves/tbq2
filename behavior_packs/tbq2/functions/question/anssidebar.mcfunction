#SHOW ANSWERS IN SIDEBARD AND SET THE CORRECT ANSWER

#Remove old answers
scoreboard objectives remove answeroptions
#Create scoreboard
scoreboard objectives add answeroptions dummy Answers
#Display answers
scoreboard objectives setdisplay sidebar answeroptions


execute @s[scores={qid=1}] ~ ~ ~ scoreboard players set "§aIt does not exist. " answeroptions 1
execute @s[scores={qid=1}] ~ ~ ~ scoreboard players set "§eMinecraft's Java Realms. " answeroptions 2
execute @s[scores={qid=1}] ~ ~ ~ scoreboard players set "§bThe Bedrock Marketplace. " answeroptions 3
execute @s[scores={qid=1}] ~ ~ ~ scoreboard players set @s correctanswer 2

execute @s[scores={qid=2}] ~ ~ ~ scoreboard players set "§aStillager. " answeroptions 1
execute @s[scores={qid=2}] ~ ~ ~ scoreboard players set "§eRavager. " answeroptions 2
execute @s[scores={qid=2}] ~ ~ ~ scoreboard players set "§bPillager " answeroptions 3
execute @s[scores={qid=2}] ~ ~ ~ scoreboard players set @s correctanswer 1


execute @s[scores={qid=3}] ~ ~ ~ scoreboard players set "§aA flower pot. " answeroptions 1
execute @s[scores={qid=3}] ~ ~ ~ scoreboard players set "§eChainmail boots " answeroptions 2
execute @s[scores={qid=3}] ~ ~ ~ scoreboard players set "§bA bucket of horse manure(Flies not included). " answeroptions 3
execute @s[scores={qid=3}] ~ ~ ~ scoreboard players set @s correctanswer 1


execute @s[scores={qid=4}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=4}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=4}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3


execute @s[scores={qid=5}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=5}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=5}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3


execute @s[scores={qid=6}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=6}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=6}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3


execute @s[scores={qid=7}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=7}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=7}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3


execute @s[scores={qid=8}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=8}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=8}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3


execute @s[scores={qid=9}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=9}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=9}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3


execute @s[scores={qid=10}] ~ ~ ~ scoreboard players set "Test answer one short " answeroptions 1
execute @s[scores={qid=10}] ~ ~ ~ scoreboard players set "Test answer one this is mediumish " answeroptions 2
execute @s[scores={qid=10}] ~ ~ ~ scoreboard players set "Test answer one with much longer amount of text to test limits of answers " answeroptions 3