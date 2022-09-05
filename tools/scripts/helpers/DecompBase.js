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
	So we won't have to re-define them everywhere else, and just here for all the main scripts.

	baserom:   The path to the base ROM.
	gamecode:  The game code from offset ACh (4 ASCII Characters).
	makercode: The maker code from offset B0h (2 ASCII Characters).
	resultrom: The path to the resulted ROM.
	title:     The title from offset A0h (12 ASCII Characters max).
	version:   The Software version from offset BCh (Usually 0).

	The paths need to be based of the tools/scripts directory, because the main scripts are called from there.
*/
export const decompBaseTable = {
	baserom:   "../../baserom.gba",
	gamecode:  "B46E",
	makercode: "69",
	resultrom: "../../out/Sims2GBA.gba",
	title:     "THE SIMS 2",
	version:   0
};