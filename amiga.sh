# builds Commodore Amiga release
rm rabenstein.json
rm rabenstein.adf
echo ----------------------------------------------------
drf amiga rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php amiga en rabenstein.json PART1.DDB -v
echo ----------------------------------------------------
echo creating Amiga disk image
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/Templates/DAAD_blank.adf /home/stefan/Projects/8bit/Fiction/Rabenstein
mv DAAD_blank.adf rabenstein.adf
echo copying Amiga resources
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/16bitGFX/PART1.DAT /home/stefan/Projects/8bit/Fiction/Rabenstein
echo putting resources on ADF image
xdftool rabenstein.adf write PART1.DDB
xdftool rabenstein.adf write PART1.DAT
echo post-compilation cleanup
rm PART1.DAT
rm PART1.DDB
echo ----------------------------------------------------
echo Commodore Amiga release has been created...

