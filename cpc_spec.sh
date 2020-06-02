# builds CPC and Spectrum release
rm rabenstein.json
rm rabenstein_side1.dsk
rm rabenstein_side2.dsk
echo ----------------------------------------------------
drf cpc rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php cpc en rabenstein.json PART1.DDB -v
echo ----------------------------------------------------
echo creating Amstrad CPC disc images
idsk rabenstein_side1.dsk -n
idsk rabenstein_side2.dsk -n
echo copying CPC resources:
echo interpreter -> DCPCIE.Z80
cp /home/stefan/Projects/8bit/DAAD/Interpreters/CPC/DCPCIE.Z80 /home/stefan/Projects/8bit/Fiction/Rabenstein
echo graphics database -> GFX.BIN
cp /home/stefan/Projects/8bit/DAAD/Interpreters/CPC/GFX.BIN /home/stefan/Projects/8bit/Fiction/Rabenstein
echo DAAD loader font -> DAAD.FNT
cp /home/stefan/Projects/8bit/DAAD/Interpreters/CPC/DAAD.FNT /home/stefan/Projects/8bit/Fiction/Rabenstein
echo ----------------------------------------------------
echo building CPC adventure binary
/home/stefan/Projects/Modern/DRC/mcrf PART1.BIN DCPCIE.Z80 PART1.DDB GFX.BIN
echo ----------------------------------------------------
echo putting game on CPC disc image
idsk rabenstein_side1.dsk -i PART1.BIN -t 1
echo putting loader, font and screen on disc
idsk rabenstein_side1.dsk -i LOADING.SCR -t 1
idsk rabenstein_side1.dsk -i DAAD.FNT -t 1
idsk rabenstein_side1.dsk -i DISC -t 1
#echo putting Xmessage files on disk
#for f in *.XMB; do idsk rabenstein_side1.dsk -i $f -t 1; done
echo post-compilation cleanup
rm PART1.BIN
rm PART1.DDB
rm GFX.BIN
rm DCPCIE.Z80
rm DAAD.FNT
#rm *.XMB
echo ----------------------------------------------------
echo adding image files on side 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/000.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/001.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/002.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/003.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/004.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/005.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/006.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/007.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/008.CPC -t 1
idsk rabenstein_side1.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/019.CPC -t 1
echo adding image files on side 2
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/000.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/009.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/010.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/011.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/012.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/013.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/014.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/015.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/016.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/017.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/018.CPC -t 1
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/CPC/020.CPC -t 1
echo CPC release has been created...
rm rabenstein.json
echo ----------------------------------------------------
drf zx plus3 rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php zx plus3 en rabenstein.json PART1.DDB -3h -v
echo copying Spectrum resources
echo interpreter -> DS48IE.P3F
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Spectrum/DS48IE.P3F /home/stefan/Projects/8bit/Fiction/Rabenstein
echo graphics database -> PART1.SDG
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Spectrum/PART1.SDG /home/stefan/Projects/8bit/Fiction/Rabenstein
echo putting Spectrum game on disk
idsk rabenstein_side2.dsk -i PART1.DDB -t 0
echo putting loader, interpreter and graphics database on disk
idsk rabenstein_side2.dsk -i DS48IE.P3F -t 0
idsk rabenstein_side2.dsk -i PART1.SDG -t 0
idsk rabenstein_side2.dsk -i DISK -t 0
echo post-compilation cleanup
rm PART1.DDB
rm PART1.SDG
rm DS48IE.P3F
echo ----------------------------------------------------
echo adding image files
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Spectrum/000.ZXS -t 0
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Spectrum/001.ZXS -t 0
idsk rabenstein_side2.dsk -i /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Spectrum/002.ZXS -t 0
echo Spectrum release has been created...
