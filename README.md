<div align="center">
	<h1>S2GBADecomp</h1>
	<p>
		<img src="https://github.com/Sim2Team/Sim2Team.github.io/raw/main/assets/images/sims2GBACover.png" alt="Cover"><br>
		<b>This is a work in progress matching Disassembly and Decompilation of The Sims 2 for the Game Boy Advance.</b><br>
	</p><hr>
</div>


- Because we are not too much experienced with disassembly and decompilation things, there might not be active progress. The main purpose is to better understand how The Sims 2 Game Boy Advance internally works.

- There won't be any assets such as Graphics in this repository for copyright reasons, so you will need to provide your own base ROM to extract the assets from it which are required to fully build the ROM.

- ***Please support the official version. You can usually find copies on eBay.***

**If you are interested into this and the progress, feel free to join the [Discord Server](https://sim2team.github.io/wiki/server).**

---


## Current state
- Initial matching disassembly with a bit of help from [gbadisasm](https://github.com/jiangzhengwenjz/gbadisasm) and [Ghidra](https://github.com/NationalSecurityAgency/ghidra).

- Using EWRAM / IWRAM symbols instead of hardcoded addresses in the disassembly.
- Shifted out the ROM Pointers functions reference instead of hardcoded addresses in the disassembly.
- Separated Menu Init, Handler and Terminate's to their own .s files.
- Extracted some tables to C.
- Made Krawall a library (mostly in assembly).
    - TODO: Maybe somehow get it matching in C for what's in C ... Sadly it uses -std=gnu99 though which isn't supported on agbcc.

---

## TODOs
- Properly shift out the *actual* ROM Data, so modifications to the disassembly won't break.
    - After it's shifted out, modifications for fun shouldn't be an issue anymore.

---

## Contributing
***Give [STYLE_GUIDE.md](STYLE_GUIDE.md) a read for the styles, we won't accept Contributions that DO NOT have the proper styles.***

---


## Setup
- You need to provide a base ROM of The Sims 2 Game Boy Advance as `baserom.gba` on the root for extracting the Assets from the ROM.

***TODO: Write a proper setup guide for agbcc and devkitARM***

---

## Licenses
Because this is a decompilation / disassembly, this repository won't have a main License, however the Krawall Sound Engine is LGPL now, a License to it can be found in `libs/krawall/COPYING`.

Also all the helper JavaScript scripts are licensed as GPLv3, the License note is on the Script's top.

---

## Tools
**Here some information related to the Tools that will be used.**
- All main core JavaScript scripts can be found on the [Tssoret-Tools](https://github.com/tssoret/Tssoret-Tools) Repository. The `tools/scripts` Directory just contains scripts related to this Disassembly / Decompilation.
    - All the scripts on this Repository rely on [Deno](https://deno.land/), so you need to install it, but it's very simple.

- [agbcc](https://github.com/pret/agbcc) will be used to compile C code.
- devkitARM's tools such as the Assembler, Preprocessor and linker etc is used to properly build the ROM.
    - Install it using [this guide](https://devkitpro.org/wiki/Getting_Started).
---


## Credits
- [Krawall Sound Engine](https://github.com/sebknzl/krawall): The Sound Engine that's being used for Sims 2 GBA, however in a disassembly form because i couldn't get it to match with C.
- [pret](https://github.com/pret): For the GBA C Compiler, [agbcc](https://github.com/pret/agbcc).
- [SuperSaiyajinStackZ](https://github.com/SuperSaiyajinStackZ): Main Reverse Engineer for The Sims 2 GBA and Leader of this Project.