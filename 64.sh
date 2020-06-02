# builds Commodore 64 release
rm rabenstein.json
rm c64_rabenstein.d64
echo ----------------------------------------------------
drf c64 rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php c64 en rabenstein.json bpart1 -ch -v
echo ----------------------------------------------------
echo creating Commodore 64 disk image
c1541 -format "rabenstein,if" D64 "c64_rabenstein.d64" 8
echo ----------------------------------------------------
echo copying C64 resources...
cp /home/stefan/Projects/8bit/DAAD/Interpreters/C64/bootmulti.prg /home/stefan/Projects/8bit/Fiction/Rabenstein
cp /home/stefan/Projects/8bit/DAAD/Interpreters/C64/apart1.prg /home/stefan/Projects/8bit/Fiction/Rabenstein
cp /home/stefan/Projects/8bit/DAAD/Interpreters/C64/edi64.prg /home/stefan/Projects/8bit/Fiction/Rabenstein
echo ----------------------------------------------------
echo attach files to disk image:
c1541 -attach "c64_rabenstein.d64" -write bootmulti.prg "rabenstein"
c1541 -attach "c64_rabenstein.d64" -write edi64.prg "edi64"
c1541 -attach "c64_rabenstein.d64" -write apart1.prg "apart1"
c1541 -attach "c64_rabenstein.d64" -write bpart1 "bpart1"
c1541 -attach "c64_rabenstein.d64" -write loaderpic64.prg "loaderpic64"
#for file in *.XMB
#do
#  mv "$file" "${file/.XMB/}"
#  c1541 -attach "c64_rabenstein.d64" -write ${file/.XMB/} "${file/.XMB/}"
#  rm ${file/.XMB/}
#done
echo ----------------------------------------------------
echo post-compilation cleanup
rm bootmulti.prg
rm edi64.prg
rm apart1.prg
rm bpart1
echo ----------------------------------------------------
echo add Puddle directory art temp entries:
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp1,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp2,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp3,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp4,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp5,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp6,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp7,s"
echo ----------------------------------------------------
echo append Puddle directory art:
npx c1541js --dest-offset 5 --json xpuddle_dirart.json c64_rabenstein.d64 c64_rabenstein.d64
echo ----------------------------------------------------
echo adding graphics files to disk side 1:
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00064 "00064"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00164 "00164"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00264 "00264"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00364 "00364"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00464 "00464"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00564 "00564"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00664 "00664"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00764 "00764"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00864 "00864"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/00964 "00964"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01064 "01064"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01164 "01164"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01264 "01264"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01364 "01364"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01464 "01464"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01564 "01564"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01664 "01664"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01764 "01764"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01864 "01864"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/01964 "01964"
c1541 -attach "c64_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/C64/02064 "02064"
echo add Rabenstein directory art temp entries:
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp1,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp2,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp3,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp4,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp5,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp6,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp7,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp8,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp9,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp10,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp11,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp12,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp13,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp14,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp15,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp16,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp17,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp18,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp19,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp20,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp21,s"
c1541 -attach "c64_rabenstein.d64" -write xsequence.seq "temp22,s"
echo ----------------------------------------------------
echo append Rabenstein directory art:
npx c1541js --dest-offset 33 --json xrabenstein_dirart.json c64_rabenstein.d64 c64_rabenstein.d64
echo ----------------------------------------------------
echo Commodore 64 release has been created...
