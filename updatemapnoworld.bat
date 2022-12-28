echo [31mWarning:You are about to update the Minecraft map and delete any building and in world entity updates. ONLY code changes will be saved and anything else will be LOST FOREVER![0m
set /p stuff=please enter your git update message and hit enter... or ctrl + c, followed by enter to cancel:

del db/ -f
del level.dat -f
del level.dat_old -f
git checkout master -- db/
git checkout master -- level.dat
git checkout master -- level.dat_old
git pull
git add -A
git commit -m "%stuff%"
git push origin master

echo The script is complete
PAUSE