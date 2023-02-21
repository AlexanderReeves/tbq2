#*CODEUPDATED TO NEW EXECUTE COMMAND FORMAT*#
#This code runs once per second on all occasions
#execute as @e[tag=bob] run say second has passed

#Every second, hide the timer bar EXCEPT for when the tag hidebar is removed from bob(When the timer is counting down in the question folder)
execute as @s[tag=hidebar] run playanimation @a animation.timerbar.hide
#Every second, run background chaos events as a result of the wheel jackpot landing on Chaos
execute as @e[tag=bob] run function misc/backgroundchaos