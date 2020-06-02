# builds Spectrum Next release
rm rabenstein.json
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/rabenst.tap
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/000.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/001.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/002.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/003.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/004.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/005.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/006.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/007.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/008.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/009.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/010.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/011.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/012.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/013.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/014.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/015.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/016.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/017.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/018.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/019.NXT
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/020.NXT
echo ----------------------------------------------------
drf zx next rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php zx next en rabenstein.json PART1.DDB -v
echo copying Spectrum resources
echo interpreter -> IETAPE.P3F
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Spectrum/IETAPE.P3F /home/stefan/Projects/8bit/Fiction/Rabenstein
echo creating TAP file
daadmaker rabenst.tap IETAPE.P3F PART1.DDB
echo placing tape at release directory
mv rabenst.tap /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
echo post-compilation cleanup
rm PART1.DDB
rm IETAPE.P3F
echo ----------------------------------------------------
echo adding image files
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/000.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/001.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/002.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/003.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/004.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/005.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/006.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/007.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/008.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/009.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/010.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/011.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/012.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/013.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/014.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/015.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/016.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/017.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/018.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/019.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/SpecNext/020.NXT /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_Next/
echo Spectrum Next release has been created...
