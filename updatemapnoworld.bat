@ECHO OFF

echo Warning:You are about to update the Minecraft map and delete any building and entity updates
echo only code changes will be saved and anything else will be lost!
echo [31mWarning:You are about to update the Minecraft map and delete any building and entity updates ONLY code changes will be saved and anything else will be LOST FOREVER![0m
set /p stuff=please enter your git update message, or ctrl + c, followed by enter to cancel:

rm -r db/ -f
rm -r level.dat -f
rm -r level.dat_old -f
git checkout master -- db/
git checkout master -- level.dat
git checkout master -- level.dat_old
git pull
git add -A
git commit -m "%stuff%"
git push origin master

echo The script is complete