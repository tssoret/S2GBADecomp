<div align="center">
	<h1>S2GBADecomp</h1>
	<p>
		<img src="https://github.com/Sim2Team/Sim2Team.github.io/raw/main/assets/images/sims2GBACover.png" alt="Cover"><br>
		<b>This is a work in progress matching Disassembly and Decompilation of The Sims 2 for the Game Boy Advance.</b><br>
	</p><hr>
</div>


Because we are not too much experienced with disassembly and decompilation things, there might not be active progress. The main purpose is to better understand how The Sims 2 Game Boy Advance internally works.

There won't be any assets such as Graphics in this repository for copyright reasons, so you will need to provide your own baserom to extract the Assets from it.

**If you are interested into this and the progress, feel free to join the tssoret [Discord Server](https://discord.gg/TR6BfHRqqj).**
<hr>


## Current state
**Currently there is no progress pushed yet.**
<hr>


## Tools
**Here some information related to the Tools that will be used.**
- Tools that aren't related to disassembly / decompilation such as extracting Text, Music etc will be made in JavaScript for [Deno.js](https://deno.land/) inside the `tools/scripts` directory. They will also exist on the [Tssoret-Tools](https://github.com/tssoret/Tssoret-Tools) Repository, because eventually it will be useful when the other games get a disassembly / decomp in the future too.
- [agbcc](https://github.com/pret/agbcc) will be used to compile and link the code into a Game Boy Advance `(.gba)` binary.
<hr>


## Credits
- [pret](https://github.com/pret): for [agbcc](https://github.com/pret/agbcc).
- [SuperSaiyajinStackZ](https://github.com/SuperSaiyajinStackZ): main Reverse Engineer for The Sims 2 GBA and Leader of this Project.