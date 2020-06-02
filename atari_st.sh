# builds Atari ST release
rm rabenstein.json
rm rabenstein.st
echo ----------------------------------------------------
drf st rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php st en rabenstein.json PART1.DDB -v
echo ----------------------------------------------------
echo creating ZIP file with necessary contents
cp /home/stefan/Projects/8bit/DAAD/Interpreters/ST/EDI1.PRG /home/stefan/Projects/8bit/Fiction/Rabenstein/
mv EDI1.PRG RABENST.PRG
cp /home/stefan/Projects/8bit/DAAD/Interpreters/ST/PART1.CH0 /home/stefan/Projects/8bit/Fiction/Rabenstein/
cp /home/stefan/Projects/8bit/DAAD/Interpreters/ST/PART1.CHR /home/stefan/Projects/8bit/Fiction/Rabenstein/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/16bitGFX/PART1.DAT /home/stefan/Projects/8bit/Fiction/Rabenstein/
zip -v rabenst.zip RABENST.PRG RABENST.PRG
zip -rv rabenst.zip PART1.CH0 PART1.CH0
zip -rv rabenst.zip PART1.CHR PART1.CHR 
zip -rv rabenst.zip PART1.DAT PART1.DAT 
zip -rv rabenst.zip PART1.DDB PART1.DDB
echo putting resources on ST image
zip2st rabenst.zip rabenstein.st
echo post-compilation cleanup
rm PART1.DDB
rm rabenst.zip
rm RABENST.PRG
rm PART1.CH0
rm PART1.CHR
rm PART1.DAT
echo ----------------------------------------------------
echo Atari ST release has been created...
