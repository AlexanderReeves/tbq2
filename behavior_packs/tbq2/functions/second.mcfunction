#say a second has passed

#Every second, hide the timer bar EXCEPT for when the tag hidebar is removed from bob(When the timer is counting down in the question folder)
execute @s[tag=hidebar] ~ ~ ~ playanimation @a animation.timerbar.hide
#Every second, run background chaos events as a result of the wheel jackpot landing on Chaos
execute @e[tag=bob] ~ ~ ~ function misc/backgroundchaos