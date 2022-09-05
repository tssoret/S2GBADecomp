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
	Script Name:       Result Compare
	Script Purpose:    Compares the base ROM and the output / result ROM for differences and displays all the non-matching bytes.
	Script Maintainer: SuperSaiyajinStackZ
	Last Updated:      03. September 2022
	Version:           0.1
*/


/* Import Decomp base data. */
import { decompBaseTable } from "./helpers/DecompBase.js";

/* Open them both now. */
const baseBuff   = Deno.readFileSync(decompBaseTable.baserom);
const resBuff    = Deno.readFileSync(decompBaseTable.resultrom);

/* Get the size to compare. */
const resSize = (baseBuff.length < resBuff.length ? baseBuff.length : resBuff.length);

/* Show if the binary size matched and if not, how both sizes are. */
console.log("The binary size is: " + resBuff.length.toString(16).padStart(8, "0").toUpperCase() + " => " + (resBuff.length == baseBuff.length ? "Good!" : "Bad!"));
if (resBuff.length != baseBuff.length) {
	console.log("Expected size: " + baseBuff.length.toString(16).padStart(8, "0").toUpperCase() + "; Got: " + resBuff.length.toString(16).padStart(8, "0").toUpperCase() + ".");
	console.log("Aborting ...");

} else {
	let nonMatchCount = 0;
	console.log("Comparing through the binaries ...");

	/* Go through the full binaries and see for non-matches. */
	for (let idx = 0; idx < resSize; idx++) {
		const base = baseBuff[idx];
		const res  = resBuff[idx];

		/* We got a non match, so show us where that is and what it should have been. */
		if (base != res) {
			nonMatchCount++;
			console.log("Byte at offset " + idx.toString(16).padStart(8, "0").toUpperCase() + " does not match!\nExpected: " + base.toString(16).padStart(2, "0").toUpperCase() + "; Got: " + res.toString(16).padStart(2, "0").toUpperCase() + ".");
		}
	}

	console.log("The result binary has " + nonMatchCount.toString() + " differences!");
}