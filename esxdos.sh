# builds Spectrum ESXDOS release
rm rabenstein.json
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/rabenst.tap
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/000.ZXS
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/001.ZXS
rm /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/002.ZXS
echo ----------------------------------------------------
drf zx esxdos rabenstein.dsf -semantic-warnings
echo ----------------------------------------------------
php /home/stefan/Projects/Modern/DRC/drb.php zx esxdos en rabenstein.json PART1.DDB -v
echo copying Spectrum resources
echo interpreter -> IETAPE.P3F
cp /home/stefan/Projects/8bit/DAAD/Interpreters/Spectrum/IETAPE.P3F /home/stefan/Projects/8bit/Fiction/Rabenstein
echo creating TAP file
daadmaker rabenst.tap IETAPE.P3F PART1.DDB
echo placing tape at release directory
mv rabenst.tap /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/
echo post-compilation cleanup
rm PART1.DDB
rm IETAPE.P3F
echo ----------------------------------------------------
echo adding image files
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Spectrum/000.ZXS /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Spectrum/001.ZXS /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/
cp /home/stefan/Projects/8bit/Fiction/Rabenstein/8bitGFX/Spectrum/002.ZXS /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Spec_ESXDOS/
echo Spectrum ESXDOS release has been created...
