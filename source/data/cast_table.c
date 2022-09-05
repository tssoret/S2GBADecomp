#include "cast_table.h"
#include "msgpic_table.h"
#include "castlist.h"

#define FEELINGS 3

#define MALE     0
#define FEMALE   1

/* Action Types. */
#define FRIENDLY   0
#define ROMANTIC   1
#define INTIMIDATE 2

#define SFX_GROUPS 19

/*
	The SFX Table contains ...

	- 0: Neutral / Greeting Sound Effect.
	- 1: Leave Sound Effect.
	- 2, 4, 6: Accept Sound Effect for the Social Conversation.
	- 3, 5, 7: Deny   Sound Effect for the Social Conversation.
*/
static const struct CastSFXIDStr SFXIDTable[SFX_GROUPS] = {
	{
		.Greeting = 0x00A5,
		.Leaving  = 0x00A1,
		.Actions  = {
			0x00A2, 0x00A6,
			0x00A4, 0x00A3,
			0x00A8, 0x00A7
		}
	},
	{
		.Greeting = 0x00D2,
		.Leaving  = 0x00D1,
		.Actions  = {
			0x00D3, 0x00D4,
			0x00D5, 0x00D0,
			0x00D6, 0x00CF
		}
	},
	{
		.Greeting = 0x00DA,
		.Leaving  = 0x00D9,
		.Actions  = {
			0x00DB, 0x00DE,
			0x00D7, 0x00DC,
			0x00DD, 0x00D8
		}
	},
	{
		.Greeting = 0x00F1,
		.Leaving  = 0x00F0,
		.Actions  = {
			0x00EF, 0x00EE,
			0x011A, 0x011A,
			0x00F3, 0x00F2
		}
	},
	{
		.Greeting = 0x00C7,
		.Leaving  = 0x00C5,
		.Actions  = {
			0x00C4, 0x00C8,
			0x011A, 0x011A,
			0x00C6, 0x00C3
		}
	},
	{
		.Greeting = 0x00FE,
		.Leaving  = 0x0100,
		.Actions  = {
			0x00FA, 0x00FB,
			0x011A, 0x011A,
			0x00FF, 0x00FB
		}
	},
	{
		.Greeting = 0x0102,
		.Leaving  = 0x0100,
		.Actions  = {
			0x0103, 0x0106,
			0x0101, 0x0105,
			0x0108, 0x0107
		}
	},
	{
		.Greeting = 0x010C,
		.Leaving  = 0x010A,
		.Actions  = {
			0x0109, 0x010B,
			0x011A, 0x011A,
			0x010E, 0x010D
		}
	},
	{
		.Greeting = 0x00CC,
		.Leaving  = 0x00CA,
		.Actions  = {
			0x00C9, 0x00CD,
			0x011A, 0x011A,
			0x00CE, 0x00CB
		}
	},
	{
		.Greeting = 0x0013,
		.Leaving  = 0x0011,
		.Actions  = {
			0x0014, 0x0015,
			0x011A, 0x011A,
			0x000F, 0x0012
		}
	},
	{
		.Greeting = 0x0035,
		.Leaving  = 0x0033,
		.Actions  = {
			0x0036, 0x0037,
			0x011A, 0x011A,
			0x0038, 0x0039
		}
	},
	{
		.Greeting = 0x003B,
		.Leaving  = 0x003A,
		.Actions  = {
			0x003C, 0x003D,
			0x0040, 0x003F,
			0x003E, 0x0039
		}
	},
	{
		.Greeting = 0x00EA,
		.Leaving  = 0x00E7,
		.Actions  = {
			0x00EB, 0x00ED,
			0x00E8, 0x00EC,
			0x00ED, 0x00E9
		}
	},
	{
		.Greeting = 0x009C,
		.Leaving  = 0x0099,
		.Actions  = {
			0x009D, 0x009E,
			0x009A, 0x009F,
			0x00A0, 0x009B
		}
		
	},
	{
		.Greeting = 0x0045,
		.Leaving  = 0x0044,
		.Actions  = {
			0x0046, 0x0047,
			0x0043, 0x0048,
			0x0049, 0x0042
		}
	},
	{
		.Greeting = 0x004C,
		.Leaving  = 0x004B,
		.Actions  = {
			0x004D, 0x004E,
			0x011A, 0x011A,
			0x004F, 0x004A
		}
	},
	{
		.Greeting = 0x0052,
		.Leaving  = 0x0051,
		.Actions  = {
			0x0054, 0x0053,
			0x011A, 0x011A,
			0x0055, 0x0050
		}
	},
	{
		.Greeting = 0x00E2,
		.Leaving  = 0x00E0,
		.Actions  = {
			0x00E3, 0x00E4,
			0x00E5, 0x00E1,
			0x00E6, 0x00DF
		}
	},
	{
		.Greeting = 0x00F7,
		.Leaving  = 0x00F5,
		.Actions  = {
			0x00F8, 0x00F4,
			0x011A, 0x011A,
			0x00F6, 0x00F9
		}
	}
};

/* Can't be done static, is shared with other functions. */
const u16 FeelingItemTable[FEELINGS][6] = {
	{ 0x00AF, 0x00B2, 0x00B4, 0x00B7, 0x00B9, 0x0000 },
	{ 0x00B0, 0x00BC, 0x00B5, 0x00B6, 0x00BA, 0x0000 },
	{ 0x00B1, 0x00B8, 0x00BB, 0x00B3, 0x00BD, 0x0000 }
};

static const u32 HiddenWantItems[17] = {
	0x0000007A, 0x000000E6, 0x000000C1, 0x000000E6, 0x000000A3, 0x000000E6,
	0x000000AE, 0x000000E6, 0x00000093, 0x000000E6, 0x00000026, 0x000000E6,
	0x0000008C, 0x000000E6, 0x000000AD, 0x000000E6, 0x000000E6
};


const struct SmthCastTableStr CastInfoTable[CASTLIST_COUNT] = {
	/* Emperor Xizzle. */
	{
		.StringID         = 0x37A,
		.AngryPic         = IMG_EMPEROR_XIZZLE_ANGRY,
		.NeutralPic       = IMG_EMPEROR_XIZZLE_NEUTRAL,
		.HappyPic         = IMG_EMPEROR_XIZZLE_HAPPY,
		.SFXIDPtr         = SFXIDTable + 7,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x4, 0x5 },
		.SmthProg         = 0xA
	},

	/* Burple. */
	{
		.StringID         = 0x379,
		.AngryPic         = IMG_BURPLE_ANGRY,
		.NeutralPic       = IMG_BURPLE_NEUTRAL,
		.HappyPic         = IMG_BURPLE_HAPPY,
		.SFXIDPtr         = SFXIDTable + 8,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x3, 0x3, 0x3 },
		.SmthProg         = 0xF6
	},

	/* Ara Fusilli. */
	{
		.StringID         = 0x37B,
		.AngryPic         = IMG_ARA_FUSILLI_ANGRY,
		.NeutralPic       = IMG_ARA_FUSILLI_NEUTRAL,
		.HappyPic         = IMG_ARA_FUSILLI_HAPPY,
		.SFXIDPtr         = SFXIDTable + 11,
		.Gender           = FEMALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0xF6, 0x0 },
		.BaseDamages      = { 0x3, 0x5, 0x5 },
		.SmthProg         = 0x0
	},

	/* Auda Sherif. */
	{
		.StringID         = 0x37C,
		.AngryPic         = IMG_AUDA_SHERIF_ANGRY,
		.NeutralPic       = IMG_AUDA_SHERIF_NEUTRAL,
		.HappyPic         = IMG_AUDA_SHERIF_HAPPY,
		.SFXIDPtr         = SFXIDTable + 14,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x5, 0x4 },
		.SmthProg         = 0x5
	},

	/* Ava Cadavra. */
	{
		.StringID         = 0x37D,
		.AngryPic         = IMG_AVA_CADAVRA_ANGRY,
		.NeutralPic       = IMG_AVA_CADAVRA_NEUTRAL,
		.HappyPic         = IMG_AVA_CADAVRA_HAPPY,
		.SFXIDPtr         = SFXIDTable + 1,
		.Gender           = FEMALE,
		.HiddenWantItem   = HiddenWantItems + 0,
		.CanDoRomance     = true,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x5, 0x5, 0x4 },
		.SmthProg         = 0xA
	},

	/* Bigfoot. */
	{
		.StringID         = 0x37E,
		.AngryPic         = IMG_BIGFOOT_ANGRY,
		.NeutralPic       = IMG_BIGFOOT_NEUTRAL,
		.HappyPic         = IMG_BIGFOOT_HAPPY,
		.SFXIDPtr         = SFXIDTable + 9,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x3, 0x4, 0x5 },
		.SmthProg         = 0x0
	},

	/* Frankie Fusilli. */
	{
		.StringID         = 0x37F,
		.AngryPic         = IMG_FRANKIE_FUSILLI_ANGRY,
		.NeutralPic       = IMG_FRANKIE_FUSILLI_NEUTRAL,
		.HappyPic         = IMG_FRANKIE_FUSILLI_HAPPY,
		.SFXIDPtr         = SFXIDTable + 10,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0xF6, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x4, 0x5 },
		.SmthProg         = 0xA
	},

	/* Dusty Hogg. */
	{
		.StringID         = 0x380,
		.AngryPic         = IMG_DUSTY_HOGG_ANGRY,
		.NeutralPic       = IMG_DUSTY_HOGG_NEUTRAL,
		.HappyPic         = IMG_DUSTY_HOGG_HAPPY,
		.SFXIDPtr         = SFXIDTable + 13,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x14, 0x0, 0xA },
		.BaseDamages      = { 0x2, 0x3, 0x5 },
		.SmthProg         = 0x0
	},

	/* Giuseppi Mezzoalto. */
	{
		.StringID         = 0x8F9,
		.AngryPic         = IMG_GIUSEPPI_MEZZOALTO_ANGRY,
		.NeutralPic       = IMG_GIUSEPPI_MEZZOALTO_NEUTRAL,
		.HappyPic         = IMG_GIUSEPPI_MEZZOALTO_HAPPY,
		.SFXIDPtr         = SFXIDTable + 2,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 2,
		.CanDoRomance     = true,
		.SecretUnlockType = ROMANTIC,
		.BasePercentages  = { 0xF6, 0x0, 0xA },
		.BaseDamages      = { 0x3, 0x3, 0x4 },
		.SmthProg         = 0x0
	},

	/* Honest Jackson. */
	{
		.StringID         = 0x8FA,
		.AngryPic         = IMG_HONEST_JACKSON_ANGRY,
		.NeutralPic       = IMG_HONEST_JACKSON_NEUTRAL,
		.HappyPic         = IMG_HONEST_JACKSON_HAPPY,
		.SFXIDPtr         = SFXIDTable + 14,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x3, 0x4 },
		.SmthProg         = 0x0
	},

	/* Jebediah Jerky. */
	{
		.StringID         = 0x8FB,
		.AngryPic         = IMG_JEBEDIAH_JERKY_ANGRY,
		.NeutralPic       = IMG_JEBEDIAH_JERKY_NEUTRAL,
		.HappyPic         = IMG_JEBEDIAH_JERKY_HAPPY,
		.SFXIDPtr         = SFXIDTable + 15,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 4,
		.CanDoRomance     = false,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0xEC, 0xEC, 0x14 },
		.BaseDamages      = { 0x5, 0x3, 0x4 },
		.SmthProg         = 0xA
	},

	/* Jimmy the Neck. */
	{
		.StringID         = 0x8FC,
		.AngryPic         = IMG_JIMMY_THE_NECK_ANGRY,
		.NeutralPic       = IMG_JIMMY_THE_NECK_NEUTRAL,
		.HappyPic         = IMG_JIMMY_THE_NECK_HAPPY,
		.SFXIDPtr         = SFXIDTable + 13,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 6,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x5, 0x3, 0x5 },
		.SmthProg         = 0xA
	},

	/* Kayleigh Wintercrest. */
	{
		.StringID         = 0x8FD,
		.AngryPic         = IMG_KAYLEIGH_WINTERCREST_ANGRY,
		.NeutralPic       = IMG_KAYLEIGH_WINTERCREST_NEUTRAL,
		.HappyPic         = IMG_KAYLEIGH_WINTERCREST_HAPPY,
		.SFXIDPtr         = SFXIDTable + 12,
		.Gender           = FEMALE,
		.HiddenWantItem   = HiddenWantItems + 8,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x3, 0x5, 0x2 },
		.SmthProg         = 0x0
	},

	/* Luthor L. Bigbucks. */
	{
		.StringID         = 0x8FE,
		.AngryPic         = IMG_LUTHOR_BIGBUCKS_ANGRY,
		.NeutralPic       = IMG_LUTHOR_BIGBUCKS_NEUTRAL,
		.HappyPic         = IMG_LUTHOR_BIGBUCKS_HAPPY,
		.SFXIDPtr         = SFXIDTable + 13,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = ROMANTIC,
		.BasePercentages  = { 0x0, 0x0, 0xA },
		.BaseDamages      = { 0x3, 0x5, 0x3 },
		.SmthProg         = 0xA
	},

	/* Mamma Hogg. */
	{
		.StringID         = 0x8FF,
		.AngryPic         = IMG_MAMMA_HOGG_ANGRY,
		.NeutralPic       = IMG_MAMMA_HOGG_NEUTRAL,
		.HappyPic         = IMG_MAMMA_HOGG_HAPPY,
		.SFXIDPtr         = SFXIDTable + 17,
		.Gender           = FEMALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x2, 0x4, 0x5 },
		.SmthProg         = 0xA
	},

	/* Misty Waters. */
	{
		.StringID         = 0x900,
		.AngryPic         = IMG_MISTY_WATERS_ANGRY,
		.NeutralPic       = IMG_MISTY_WATERS_NEUTRAL,
		.HappyPic         = IMG_MISTY_WATERS_HAPPY,
		.SFXIDPtr         = SFXIDTable + 12,
		.Gender           = FEMALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0xA, 0xF6, 0x0 },
		.BaseDamages      = { 0x4, 0x4, 0x3 },
		.SmthProg         = 0x0
	},

	/* Lord Mole. */
	{
		.StringID         = 0x901,
		.AngryPic         = IMG_LORD_MOLE_ANGRY,
		.NeutralPic       = IMG_LORD_MOLE_NEUTRAL,
		.HappyPic         = IMG_LORD_MOLE_HAPPY,
		.SFXIDPtr         = SFXIDTable + 3,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x4, 0x4 },
		.SmthProg         = 0x0
	},

	/* Mummy. */
	{
		.StringID         = 0x902,
		.AngryPic         = IMG_MUMMY_ANGRY,
		.NeutralPic       = IMG_MUMMY_NEUTRAL,
		.HappyPic         = IMG_MUMMY_HAPPY,
		.SFXIDPtr         = SFXIDTable + 18,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x5, 0x4, 0x5 },
		.SmthProg         = 0x14
	},

	/* Optimum Alfred. */
	{
		.StringID         = 0x903,
		.AngryPic         = IMG_OPTIMUM_ALFRED_ANGRY,
		.NeutralPic       = IMG_OPTIMUM_ALFRED_NEUTRAL,
		.HappyPic         = IMG_OPTIMUM_ALFRED_HAPPY,
		.SFXIDPtr         = SFXIDTable + 4,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 10,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x4, 0x4 },
		.SmthProg         = 0x0
	},

	/* Penelope Redd. */
	{
		.StringID         = 0x904,
		.AngryPic         = IMG_PENELOPE_REDD_ANGRY,
		.NeutralPic       = IMG_PENELOPE_REDD_NEUTRAL,
		.HappyPic         = IMG_PENELOPE_REDD_HAPPY,
		.SFXIDPtr         = SFXIDTable + 11,
		.Gender           = FEMALE,
		.HiddenWantItem   = HiddenWantItems + 12,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0xF6, 0xF6, 0x0 },
		.BaseDamages      = { 0x3, 0x3, 0x3 },
		.SmthProg         = 0x0
	},

	/* Pepper Pete. */
	{
		.StringID         = 0x905,
		.AngryPic         = IMG_PEPPER_PETE_ANGRY,
		.NeutralPic       = IMG_PEPPER_PETE_NEUTRAL,
		.HappyPic         = IMG_PEPPER_PETE_HAPPY,
		.SFXIDPtr         = SFXIDTable + 5,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x2, 0x4, 0x4 },
		.SmthProg         = 0xF6
	},

	/* Kent Hackett. */
	{
		.StringID         = 0x906,
		.AngryPic         = IMG_KENT_HACKETT_ANGRY,
		.NeutralPic       = IMG_KENT_HACKETT_NEUTRAL,
		.HappyPic         = IMG_KENT_HACKETT_HAPPY,
		.SFXIDPtr         = SFXIDTable + 16,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = FRIENDLY,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x3, 0x4, 0x3 },
		.SmthProg         = 0x0
	},

	/* Sancho Paco Panza. */
	{
		.StringID         = 0x907,
		.AngryPic         = IMG_SANCHO_PACO_PANZA_ANGRY,
		.NeutralPic       = IMG_SANCHO_PACO_PANZA_NEUTRAL,
		.HappyPic         = IMG_SANCHO_PACO_PANZA_HAPPY,
		.SFXIDPtr         = SFXIDTable,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 14,
		.CanDoRomance     = true,
		.SecretUnlockType = ROMANTIC,
		.BasePercentages  = { 0x0, 0xA, 0x0 },
		.BaseDamages      = { 0x3, 0x3, 0x3 },
		.SmthProg         = 0xF6
	},

	/* Tank Grunt. */
	{
		.StringID         = 0x908,
		.AngryPic         = IMG_TANK_GRUNT_ANGRY,
		.NeutralPic       = IMG_TANK_GRUNT_NEUTRAL,
		.HappyPic         = IMG_TANK_GRUNT_HAPPY,
		.SFXIDPtr         = SFXIDTable + 6,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x3, 0x2, 0x5 },
		.SmthProg         = 0xF6
	},

	/* Tristan Legend. */
	{
		.StringID         = 0x909,
		.AngryPic         = IMG_TRISTAN_LEGEND_ANGRY,
		.NeutralPic       = IMG_TRISTAN_LEGEND_NEUTRAL,
		.HappyPic         = IMG_TRISTAN_LEGEND_HAPPY,
		.SFXIDPtr         = SFXIDTable + 13,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = true,
		.SecretUnlockType = ROMANTIC,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x4, 0x4, 0x4 },
		.SmthProg         = 0x0
	},

	/* Yeti. */
	{
		.StringID         = 0x90A,
		.AngryPic         = IMG_YETI_ANGRY,
		.NeutralPic       = IMG_YETI_NEUTRAL,
		.HappyPic         = IMG_YETI_HAPPY,
		.SFXIDPtr         = SFXIDTable + 9,
		.Gender           = MALE,
		.HiddenWantItem   = HiddenWantItems + 16,
		.CanDoRomance     = false,
		.SecretUnlockType = INTIMIDATE,
		.BasePercentages  = { 0x0, 0x0, 0x0 },
		.BaseDamages      = { 0x5, 0x4, 0x4 },
		.SmthProg         = 0x5
	}
};