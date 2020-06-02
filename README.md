# The Curse of Rabenstein

![The Curse of Rabenstein (C64 version) copyright (c) 2020 by Stefan Vogt and Puddle Software.](https://p196.p4.n0.cdn.getcloudapp.com/items/yAuLnkY6/1.png "The Curse of Rabenstein (C64 version) copyright (c) 2020 by Stefan Vogt and Puddle Software.")

Rabenstein is a text-/graphic adventure for C64, Plus/4, CPC, ZX Spectrum (+3, ESXDOS, Next), Amiga, Atari ST, DOS and modern PC. If you just want to play it, head over to [https://8bitgames.itch.io/rabenstein](https://8bitgames.itch.io/rabenstein) and grab yourself a copy. This repository is for educational purposes only.

## Code

Rabenstein was developed with [DAAD Adventure Writer](https://github.com/daad-adventure-writer/daad) by Tim Gilberts. It makes use of the new [DRC compiler](https://github.com/daad-adventure-writer/DRC) as well as [Maluva](https://github.com/daad-adventure-writer/MALUVA), a pixel image addon by Uto.

This code very likely is a mess. Don't say I didn't warn you. It was not meant to be shared but since I get many requests asking how this and that is done with DAAD, I decided it makes sense to just take the source and put it out there. The DRC source file is `rabenstein.dsf` and that's the file where you likely learn the most from. There are Bash build scripts for each target included. I'm Linux based so that's all I can give but I think it gives you a pretty good idea how well you can automate the build process. Please keep in mind that some paths are hardcoded and external tools executed from the script are not inluded, meaning it is unlikely you are able to get this building without modification. The C64 directory art is made with [Petmate](https://nurpax.github.io/petmate/).

If you find this code useful in your aim to learn programming adventures with DAAD Adventure Writer, please send a donation via <https://8bitgames.itch.io/rabenstein>.

## Agreement

This source code is provided for personal, educational use only. You can read it, and copy the programming techniques, but you can't make derivative games.

The Curse of Rabenstein is copyright (c) 2019-2020 Stefan Vogt and Puddle Software. It may be distributed freely, provided you link to [8bitgames.itch.io](https://8bitgames.itch.io). It may not be sold or included in any for-profit collection without written permission from the author.
