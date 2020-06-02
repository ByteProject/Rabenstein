# builds Commodore Plus/4 release
rm rabenstein.json
rm plus4_rabenstein.d64
echo ----------------------------------------------------
drf cp4 rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php cp4 en rabenstein.json bpart1 -ch -v
echo ----------------------------------------------------
echo creating Commodore Plus4 disk image
c1541 -format "rabenstein,if" D64 "plus4_rabenstein.d64" 8
echo ----------------------------------------------------
echo copying Plus4 resources...
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Plus4/bootmulti.prg /home/stefan/Projects/8bit/Fiction/Rabenstein
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Plus4/apart1.prg /home/stefan/Projects/8bit/Fiction/Rabenstein
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Plus4/ediplus4.prg /home/stefan/Projects/8bit/Fiction/Rabenstein
echo ----------------------------------------------------
echo attach files to disk image:
c1541 -attach "plus4_rabenstein.d64" -write bootmulti.prg "rabenstein"
c1541 -attach "plus4_rabenstein.d64" -write ediplus4.prg "ediplus4"
c1541 -attach "plus4_rabenstein.d64" -write apart1.prg "apart1"
c1541 -attach "plus4_rabenstein.d64" -write bpart1 "bpart1"
c1541 -attach "plus4_rabenstein.d64" -write loaderpicplus4.prg "loaderpicplus4"
#for file in *.XMB
#do
#  mv "$file" "${file/.XMB/}"
#  c1541 -attach "rabenstein.d64" -write ${file/.XMB/} "${file/.XMB/}"
#  rm ${file/.XMB/}
#done
echo ----------------------------------------------------
echo post-compilation cleanup
rm bootmulti.prg
rm ediplus4.prg
rm apart1.prg
rm bpart1
echo ----------------------------------------------------
echo create directory art temp entries:
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp1,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp2,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp3,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp4,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp5,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp6,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp7,s"
echo ----------------------------------------------------
echo append directory art to image:
npx c1541js --dest-offset 5 --json xpuddle_dirart.json plus4_rabenstein.d64 plus4_rabenstein.d64
echo ----------------------------------------------------
echo adding graphics files to disk:
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0004 "0004"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0014 "0014"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0024 "0024"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0034 "0034"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0044 "0044"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0054 "0054"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0064 "0064"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0074 "0074"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0084 "0084"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0094 "0094"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0104 "0104"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0114 "0114"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0124 "0124"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0134 "0134"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0144 "0144"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0154 "0154"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0164 "0164"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0174 "0174"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0184 "0184"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0194 "0194"
c1541 -attach "plus4_rabenstein.d64" -write /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Plus4/0204 "0204"
echo create directory art temp entries:
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp1,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp2,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp3,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp4,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp5,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp6,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp7,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp8,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp9,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp10,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp11,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp12,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp13,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp14,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp15,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp16,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp17,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp18,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp19,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp20,s"
c1541 -attach "plus4_rabenstein.d64" -write xsequence.seq "temp21,s"
echo ----------------------------------------------------
echo append directory art to image:
npx c1541js --dest-offset 33 --json xrabenstein_dirart.json plus4_rabenstein.d64 plus4_rabenstein.d64
echo ----------------------------------------------------
echo Commodore Plus4 release has been created...
