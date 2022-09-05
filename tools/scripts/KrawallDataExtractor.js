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
	Script Name:       Krawall Data Extractor
	Script Purpose:    Extracts the Krawall Data from the base ROM.
	Script Maintainer: SuperSaiyajinStackZ
	Last Updated:      03. September 2022
	Version:           0.1
*/


/* Import Decomp base data. */
import { decompBaseTable } from "./helpers/DecompBase.js";

/* import the Cores from the Tssoret-Tools repository. */
import { KrawallInstrumentExtractor } from "https://raw.githubusercontent.com/tssoret/Tssoret-Tools/main/krawalldataextractor/cores/KrawallInstrumentExtractor.js";
import { KrawallModuleExtractor }     from "https://raw.githubusercontent.com/tssoret/Tssoret-Tools/main/krawalldataextractor/cores/KrawallModuleExtractor.js";
import { KrawallSampleExtractor }     from "https://raw.githubusercontent.com/tssoret/Tssoret-Tools/main/krawalldataextractor/cores/KrawallSampleExtractor.js";

/* Base source paths, change them whenever the structure changes. */
const krawallDataBasepath   = "../../data/krawall";
const krawallHeaderBasePath = "../../include/krawall";

/* Data Paths for Instruments, Modules and Samples. */
const instrumentsDataPath = krawallDataBasepath;
const modulesDataPath     = krawallDataBasepath + "/modules";
const samplesDataPath     = krawallDataBasepath;

const table = {
	instruments: null,
	krawallver: "2005-04-21",
	modules: [
		{ name: "Aliens",                  offs: 0x01F667C0 },
		{ name: "Boardroom",               offs: 0x01F6C5AC },
		{ name: "Credits",                 offs: 0x01F6E468 },
		{ name: "Dusty Hogg Blues",        offs: 0x01F70F48 },
		{ name: "Edge Of Town",            offs: 0x01F72A90 },
		{ name: "Heavy Metal",             offs: 0x01F752FC },
		{ name: "Keelhaulin Cards",        offs: 0x01F79040 },
		{ name: "Speed Metal",             offs: 0x01F7EA34 },
		{ name: "Strange Day",             offs: 0x01F82BE0 },
		{ name: "Strange Night",           offs: 0x01F84F48 },
		{ name: "The Goons",               offs: 0x01F87A54 },
		{ name: "Trance Mode",             offs: 0x01F95B7C },
		{ name: "Goal Complete",           offs: 0x01F96270 },
		{ name: "Mission Complete",        offs: 0x01F9657C },
		{ name: "Keelhaulin Cards Jingle", offs: 0x01F967F0 },
		{ name: "Strangetown",             offs: 0x01F9A5F0 },
		{ name: "Strangetown Edit 2",      offs: 0x01F9E484 },
		{ name: "Strangetown Edit",        offs: 0x01F9F5DC },
		{ name: "Bigfoot Love Chickens",   offs: 0x01FA1560 },
		{ name: "Bloom",                   offs: 0x01FA2C2C },
		{ name: "Calmness",                offs: 0x01FA4B78 },
		{ name: "Chug Chug Cola",          offs: 0x01FA7560 },
		{ name: "Investigate",             offs: 0x01FA7D4C },
		{ name: "Romance",                 offs: 0x01FAC2FC },
		{ name: "Friendship",              offs: 0x01FAEF90 },
		{ name: "Intimidate",              offs: 0x01FB1918 },
		{ name: "Sweetness",               offs: 0x01FB3618 },
		{ name: "Alien Sting",             offs: 0x01FB3A0C },
		{ name: "Desperation Sting",       offs: 0x01FB3FA8 },
		{ name: "Strangetown Intro Long",  offs: 0x01FB4284 },
		{ name: "Strangetown Intro Short", offs: 0x01FB44F8 },
		{ name: "Strangetown Return",      offs: 0x01FB47F0 },
		{ name: "Strangetown Break",       offs: 0x01FB4A48 }
	],
	samples: 0x01F641FC
};


/* Run the extracting process. */
{
	/* Create the neccessary base directories. */
	Deno.mkdirSync(modulesDataPath,       { recursive: true });
	Deno.mkdirSync(krawallHeaderBasePath, { recursive: true });

	/* Get the DataView for the ROM Data. */
	const buffer = Deno.readFileSync(decompBaseTable.baserom);
	const view   = new DataView(buffer.buffer);

	/* Handle Instruments (Required by Krawall). */
	{
		/* Init the Instance. */
		const instance = new KrawallInstrumentExtractor(view, table.instruments);

		/* Extract the Instrument data. */
		const instrumentData = instance.extractInstruments();
		Deno.writeTextFileSync(instrumentsDataPath + "/instruments.S", instrumentData);

		/* Create a C / C++ compatible Header file. */
		const headerData = instance.createHeader();
		Deno.writeTextFileSync(krawallHeaderBasePath + "/instruments.h", headerData);
	}

	/* Handle Modules (Not required by Krawall). */
	{
		/* Only handle modules, if there are any, since those are optional and don't rely on Krawall. */
		if (table.modules.length > 0) {
			let headerData = "#ifndef __MODULES_H__\n#define __MODULES_H__\n\n"; // Define the Header Guard.

			/* Init the Instance. */
			const instance = new KrawallModuleExtractor(view, table.modules[0].offs, table.modules[0].name, table.krawallver);

			/* Ensure we provided a valid Krawall version. */
			if (instance.getKrawallValid()) {
				/* Go through all Modules and extract them all. */
				for (let idx = 0; idx < table.modules.length; idx++) {
					/* Set which Module to extract, in that case the offset + name from the Module Table. */
					instance.setModule(table.modules[idx].offs, table.modules[idx].name);

					/* Extract the Module data. */
					const modData = instance.extractModule();
					Deno.writeTextFileSync(modulesDataPath + "/mod_" + instance.getModName() + ".S", modData);

					/* Add the define for the Header. */
					headerData += "extern const Module mod_" + instance.getModName() + ";\n";
				}

				/* Write the optional modules table + header. */
				headerData += "\n#endif\n";
				Deno.writeTextFileSync(krawallHeaderBasePath + "/modules.h", headerData);
			}
		}
	}

	/* Handle Samples (Required by Krawall). */
	{
		/* Init the Instance. */
		const instance = new KrawallSampleExtractor(view, table.samples);

		/* Extract the Sample data. */
		const sampleData = instance.extractSamples();
		Deno.writeTextFileSync(samplesDataPath + "/samples.S", sampleData);

		/* Create a C / C++ compatible Header file. */
		const headerData = instance.createHeader();
		Deno.writeTextFileSync(krawallHeaderBasePath + "/samples.h", headerData);
	}
}