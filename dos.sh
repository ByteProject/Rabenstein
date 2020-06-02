# builds MS-DOS release
rm rabenstein.json
echo ----------------------------------------------------
drf pc vga rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php pc vga en rabenstein.json PART1.DDB -v
echo ----------------------------------------------------
echo removing old DDB file
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/DOS/PART1.DDB
echo placing new compiled DDB file
mv PART1.DDB /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/DOS/PART1.DDB
echo ----------------------------------------------------
echo MS-DOS release has been created...
