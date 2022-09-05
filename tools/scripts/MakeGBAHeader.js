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
	Script Name:       Make GBA Header
	Script Purpose:    Sets some information such as game title, version number etc to the output / result ROM Header and fixes the Checksum.
	Script Maintainer: SuperSaiyajinStackZ
	Last Updated:      03. September 2022
	Version:           0.1
*/


/* Import Decomp base data. */
import { decompBaseTable } from "./helpers/DecompBase.js";

/* The logo data that always need to exist on the binary at 0x4. */
const logoData = [
	0x24, 0xFF, 0xAE, 0x51, 0x69, 0x9A, 0xA2, 0x21, 0x3D, 0x84, 0x82, 0x0A, 0x84, 0xE4, 0x09, 0xAD,
	0x11, 0x24, 0x8B, 0x98, 0xC0, 0x81, 0x7F, 0x21, 0xA3, 0x52, 0xBE, 0x19, 0x93, 0x09, 0xCE, 0x20,
	0x10, 0x46, 0x4A, 0x4A, 0xF8, 0x27, 0x31, 0xEC, 0x58, 0xC7, 0xE8, 0x33, 0x82, 0xE3, 0xCE, 0xBF,
	0x85, 0xF4, 0xDF, 0x94, 0xCE, 0x4B, 0x09, 0xC1, 0x94, 0x56, 0x8A, 0xC0, 0x13, 0x72, 0xA7, 0xFC,
	0x9F, 0x84, 0x4D, 0x73, 0xA3, 0xCA, 0x9A, 0x61, 0x58, 0x97, 0xA3, 0x27, 0xFC, 0x03, 0x98, 0x76,
	0x23, 0x1D, 0xC7, 0x61, 0x03, 0x04, 0xAE, 0x56, 0xBF, 0x38, 0x84, 0x00, 0x40, 0xA7, 0x0E, 0xFD,
	0xFF, 0x52, 0xFE, 0x03, 0x6F, 0x95, 0x30, 0xF1, 0x97, 0xFB, 0xC0, 0x85, 0x60, 0xD6, 0x80, 0x25,
	0xA9, 0x63, 0xBE, 0x03, 0x01, 0x4E, 0x38, 0xE2, 0xF9, 0xA2, 0x34, 0xFF, 0xBB, 0x3E, 0x03, 0x44,
	0x78, 0x00, 0x90, 0xCB, 0x88, 0x11, 0x3A, 0x94, 0x65, 0xC0, 0x7C, 0x63, 0x87, 0xF0, 0x3C, 0xAF,
	0xD6, 0x25, 0xE4, 0x8B, 0x38, 0x0A, 0xAC, 0x72, 0x21, 0xD4, 0xF8, 0x07
];

/* Do the actions. */
{
	/* Load in our result ROM. */
	let romData = Deno.readFileSync(decompBaseTable.resultrom);

	/* Set the logo data. */
	for (let idx = 0x0; idx < logoData.length; idx++) romData[idx + 0x4] = logoData[idx];

	/* Set the title. */
	for (let idx = 0x0; idx < 0xC; idx++) {
		const byte          = decompBaseTable.title.charCodeAt(idx);
		romData[idx + 0xA0] = (isNaN(byte) ? 0x0 : byte);
	}

	/* Set the game code. */
	for (let idx = 0x0; idx < 0x4; idx++) {
		const byte          = decompBaseTable.gamecode.charCodeAt(idx);
		romData[idx + 0xAC] = (isNaN(byte) ? 0x0 : byte);
	}

	/* Set the maker code. */
	for (let idx = 0x0; idx < 0x2; idx++) {
		const byte          = decompBaseTable.makercode.charCodeAt(idx);
		romData[idx + 0xB0] = (isNaN(byte) ? 0x0 : byte);
	}

	/* Set the fixed value. */
	romData[0xB2] = 0x96;

	/* Set the software version number. */
	romData[0xBC] = decompBaseTable.version;

	/* Update the header checksum. */
	let chk = 0;
	for (let i = 0xA0; i < 0xBC; i++) chk += romData[i];
	romData[0xBD] = -(0x19 + chk);

	/* Now write the updated ROM. */
	Deno.writeFileSync(decompBaseTable.resultrom, romData);
}