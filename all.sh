# build all releases and place them in release folder
sh 64.sh
cp c64_rabenstein.d64 /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/C64_Plus4
sh plus4.sh
cp plus4_rabenstein.d64 /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/C64_Plus4
sh cpc_spec.sh
cp rabenstein_side1.dsk /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/CPC_Spec3
cp rabenstein_side2.dsk /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/CPC_Spec3
sh esxdos.sh
sh next.sh
sh amiga.sh
cp rabenstein.adf /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Amiga
sh atari_st.sh
cp rabenstein.st /home/stefan/Projects/8bit/Fiction/Rabenstein/Releases/Atari_ST
sh dos.sh
echo ----------------------------------------------------
echo All releases have been compiled.

