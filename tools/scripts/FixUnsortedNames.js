/*
*   This file is part of S2GBADecomp
*   Copyright © 2022 tssoret
*
*   This program is free software: you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation, either version 3 of the License, or
*   (at your option) any later version.
*
*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License
*   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*   Additional Terms 7.b and 7.c of GPLv3 apply to this file:
*       * Requiring preservation of specified reasonable legal notices or
*         author attributions in that material or in the Appropriate Legal
*         Notices displayed by works containing it.
*       * Prohibiting misrepresentation of the origin of that material,
*         or requiring that modified versions of such material be marked in
*         reasonable ways as different from the original version.
*/


/*
	Script Name:       FixUnsortedNames
	Script Purpose:    Fixes some of the Unsorted new filenames to be in proper order.
	Script Maintainer: SuperSaiyajinStackZ
	Last Updated:      05. September 2022
	Version:           0.1
	Additional Notes:
					   Because i usually just go with a name like "code1_1.s" etc when i separate things, i use this script to
					   convert them into "code<Num>.s" etc instead.

					   The files get placed at the unsorted directory of the script directory,
					   so i can just replace them with the old ones.

					   THIS DOES NOT CHANGE THE LINKERSCRIPT THOUGH, THAT NEEDS TO BE DONE MANUALLY.
*/


/*
	dir: Path to the original unsorted s files.
	out: Path where the renamed files get stored.
*/
const dir = "../../asm/unsorted/";
const out = "unsorted";


/* List all filenames of unsorted in their proper order. */
const toConvert = [
	"code.s",
	"code1.s",
	"code2.s",
	"code3.s",
	"code4.s",
	"code5.s",
	"code6.s",
	"code7.s",
	"code8.s",
	"code9.s",
	"code10.s",
	"code11.s",
	"code12.s",
	"code13.s",
	"code14.s",
	"code15.s",
	"code16.s",
	"code17.s",
	"code18.s",
	"code19.s",
	"code20.s",
	"code21.s",
	"code22.s",
	"code23.s",
	"code24.s",
	"code25.s",
	"code26.s",
	"code27.s",
	"code28.s",
	"code29.s",
	"code30.s",
	"code31.s",
	"code32.s",
	"code33.s",
	"code34.s",
	"code35.s",
	"code36.s",
	"code37.s",
	"code38.s",
	"code39.s",
	"code40.s",
	"code41.s",
	"code42.s"
];

/* Create the output directory. */
Deno.mkdirSync(out, { recursive: true });

/* Stores the new toConvert table that we can replace above. */
let newTable = "const toConvert = [\n	";

/* Go through the renaming. */
for (let idx = 0; idx < toConvert.length; idx++) {
	const content = Deno.readTextFileSync(dir + toConvert[idx]);
	const name    = "code" + (idx > 0 ? idx.toString() : "") + ".s";

	newTable += "\"" + name + "\"";

	/* Handle if either doing a new entry, or ending the array. */
	if (idx < toConvert.length - 1) newTable += ",\n	";
	else                            newTable += "\n];";

	Deno.writeTextFileSync(out + "/" + name, content);
}

console.log(newTable);