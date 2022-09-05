#include "menu_table.h"
#include "types.h"

/*
	Declare function pointer types.

	It uses _call_via_r2 for the Terminate Function, however i didn't recall those args being used on it.
*/
typedef void (*InitHandlerFunc)();
typedef void (*TerminateMenuFunc)(u32, u32);

struct MenuStr {
	InitHandlerFunc   InitFunc;
	InitHandlerFunc   HandlerFunc;
	TerminateMenuFunc TerminateFunc;
};

/*
	For now list all function on there, as they're Assembly only.
	After all are decompiled, we won't need this anymore and can instead #include the menu's instead.
*/

/* Blank function. */
extern void FUN_0802D240();

/* In-Game Functions. */
extern void InGame_Init();
extern void InGame_Handler();
extern void InGame_Terminate();

/* Choices / Options Box. */
extern void ChoiceMenu_Init();
extern void ChoiceMenu_Handler();
extern void ChoiceMenu_Terminate();

/* Copyright Intro. */
extern void CopyrightIntro_Init();
extern void CopyrightIntro_Handler();
extern void CopyrightIntro_Terminate();

/* EA Maxis Intro. */
extern void EAMaxisIntro_Init();
extern void EAMaxisIntro_Handler();
extern void EAMaxisIntro_Terminate();

/* Main Menu. */
extern void MainMenu_Init();
extern void MainMenu_Handler();
extern void MainMenu_Terminate();

/* Slot Menu. */
extern void SlotMenu_Init();
extern void SlotMenu_Handler();
extern void SlotMenu_Terminate();

/* 3 different Blank functions (Blank Menu). */
extern void BlankMenu_Init();
extern void BlankMenu_Handler();
extern void BlankMenu_Terminate();

/* Multi Player. */
extern void Multiplayer_Init();
extern void Multiplayer_Handler();
extern void Multiplayer_Terminate();

/* SELECT Menu. */
extern void SelectMenu_Init();
extern void SelectMenu_Handler();
extern void SelectMenu_Terminate();

/* Language Select. */
extern void LanguageMenu_Init();
extern void LanguageMenu_Handler();
extern void LanguageMenu_Terminate();

/* Plot Points Menu. */
extern void PlotPointsMenu_Init();
extern void PlotPointsMenu_Handler();
extern void PlotPointsMenu_Terminate();

/* Cast Member Menu. */
extern void CastMemberMenu_Init();
extern void CastMemberMenu_Handler();
extern void CastMemberMenu_Terminate();

/* Social Coversation Menu. */
extern void SocialConversation_Init();
extern void SocialConversation_Handler();
extern void SocialConversation_Terminate();

/* Inventory Menu. */
extern void InventoryMenu_Init();
extern void InventoryMenu_Handler();
extern void InventoryMenu_Terminate();

/* Episode Selection. */
extern void EpisodeSelectMenu_Init();
extern void EpisodeSelectMenu_Handler();
extern void EpisodeSelectMenu_Terminate();

/* Shop Menu. */
extern void ShopMenu_Init();
extern void ShopMenu_Handler();
extern void ShopMenu_Terminate();

/* Map Menu. */
extern void MapMenu_Init();
extern void MapMenu_Handler();
extern void MapMenu_Terminate();

/* Bigfoot Love Chickens. */
extern void BigfootLoveChickens_Init();
extern void BigfootLoveChickens_Handler();
extern void BigfootLoveChickens_Terminate();

/* Car Commercials. */
extern void CarCommercials_Init();
extern void CarCommercials_Handler();
extern void CarCommercials_Terminate();

/* Message / Dialog Box. */
extern void DialogMenu_Init();
extern void DialogMenu_Handler();
extern void DialogMenu_Terminate();

/* Create a Sim. */
extern void CreateASim_Init();
extern void CreateASim_Handler();
extern void CreateASim_Terminate();

/* Minigame Level Select. */
extern void MinigameLevelSelect_Init();
extern void MinigameLevelSelect_Handler();
extern void MinigameLevelSelect_Terminate();

/* Minigame Result. */
extern void MinigameResult_Init();
extern void MinigameResult_Handler();
extern void MinigameResult_Terminate();

/* Keelhaulin' Cards. */
extern void KeelhaulinCards_Init();
extern void KeelhaulinCards_Handler();
extern void KeelhaulinCards_Terminate();

/* Cattle Cleanup. */
extern void CattleCleanup_Init();
extern void CattleCleanup_Handler();
extern void CattleCleanup_Terminate();

/* Episode Opening. */
extern void EpisodeOpening_Init();
extern void EpisodeOpening_Handler();
extern void EpisodeOpening_Terminate();

/* Let's Watch the Show. */
extern void LetsWatchTheShow_Init();
extern void LetsWatchTheShow_Handler();
extern void LetsWatchTheShow_Terminate();

/* Boardroom. */
extern void BoardroomMenu_Init();
extern void BoardroomMenu_Handler();
extern void BoardroomMenu_Terminate();

/* King Chug Chug. */
extern void KingChugChug_Init();
extern void KingChugChug_Handler();
extern void KingChugChug_Terminate();

/* Canyon Jumping. */
extern void CanyonJumping_Init();
extern void CanyonJumping_Handler();
extern void CanyonJumping_Terminate();

/* Credits. */
extern void CreditsMenu_Init();
extern void CreditsMenu_Handler();
extern void CreditsMenu_Terminate();

/* Chop-Shop. */
extern void ChopShop_Init();
extern void ChopShop_Handler();
extern void ChopShop_Terminate();

/* Skills Menu. */
extern void SkillsMenu_Init();
extern void SkillsMenu_Handler();
extern void SkillsMenu_Terminate();

/* Test Menu. */
extern void TestMenu_Init();
extern void TestMenu_Handler();
extern void TestMenu_Terminate();

/* Shark Jumping Cutscene. */
extern void SharkJumpCutscene_Init();
extern void SharkJumpCutscene_Handler();
extern void SharkJumpCutscene_Terminate();

/* Ending Cutscene. */
extern void EndingCutscene_Init();
extern void EndingCutscene_Handler();
extern void EndingCutscene_Terminate();

/* Minigame Select. */
extern void MinigameSelect_Init();
extern void MinigameSelect_Handler();
extern void MinigameSelect_Terminate();

const struct MenuStr MenuPointers[MENU_COUNT] = {
    /* Unk 0. */
    {
        .InitFunc      = FUN_0802D240 + 1,
        .HandlerFunc   = FUN_0802D240 + 1,
        .TerminateFunc = FUN_0802D240 + 1
    },

    /* In-Game. */
    {
        .InitFunc      = InGame_Init + 1,
        .HandlerFunc   = InGame_Handler + 1,
        .TerminateFunc = InGame_Terminate + 1
    },

    /* Choices / Option Box. */
    {
        .InitFunc      = ChoiceMenu_Init + 1,
        .HandlerFunc   = ChoiceMenu_Handler + 1,
        .TerminateFunc = ChoiceMenu_Terminate + 1
    },

    /* Copyright Intro. */
    {
        .InitFunc      = CopyrightIntro_Init + 1,
        .HandlerFunc   = CopyrightIntro_Handler + 1,
        .TerminateFunc = CopyrightIntro_Terminate + 1
    },

    /* EA Maxis Intro. */
    {
        .InitFunc      = EAMaxisIntro_Init + 1,
        .HandlerFunc   = EAMaxisIntro_Handler + 1,
        .TerminateFunc = EAMaxisIntro_Terminate + 1
    },

    /* Main Menu. */
    {
        .InitFunc      = MainMenu_Init + 1,
        .HandlerFunc   = MainMenu_Handler + 1,
        .TerminateFunc = MainMenu_Terminate + 1
    },

    /* Slot Manager. */
    {
        .InitFunc      = SlotMenu_Init + 1,
        .HandlerFunc   = SlotMenu_Handler + 1,
        .TerminateFunc = SlotMenu_Terminate + 1
    },

    /* Blank / Do nothing Menu. */
    {
        .InitFunc      = BlankMenu_Init + 1,
        .HandlerFunc   = BlankMenu_Handler + 1,
        .TerminateFunc = BlankMenu_Terminate + 1
    },

    /* Multiplayer. */
    {
        .InitFunc      = Multiplayer_Init + 1,
        .HandlerFunc   = Multiplayer_Handler + 1,
        .TerminateFunc = Multiplayer_Terminate + 1
    },

    /* Select Menu. */
    {
        .InitFunc      = SelectMenu_Init + 1,
        .HandlerFunc   = SelectMenu_Handler + 1,
        .TerminateFunc = SelectMenu_Terminate + 1
    },

    /* Language Select. */
    {
        .InitFunc      = LanguageMenu_Init + 1,
        .HandlerFunc   = LanguageMenu_Handler + 1,
        .TerminateFunc = LanguageMenu_Terminate + 1
    },

    /* Plot Points. */
    {
        .InitFunc      = PlotPointsMenu_Init + 1,
        .HandlerFunc   = PlotPointsMenu_Handler + 1,
        .TerminateFunc = PlotPointsMenu_Terminate + 1
    },

    /* Cast Member List. */
    {
        .InitFunc      = CastMemberMenu_Init + 1,
        .HandlerFunc   = CastMemberMenu_Handler + 1,
        .TerminateFunc = CastMemberMenu_Terminate + 1
    },

    /* Social Conversation. */
    {
        .InitFunc      = SocialConversation_Init + 1,
        .HandlerFunc   = SocialConversation_Handler + 1,
        .TerminateFunc = SocialConversation_Terminate + 1
    },

    /* Inventory. */
    {
        .InitFunc      = InventoryMenu_Init + 1,
        .HandlerFunc   = InventoryMenu_Handler + 1,
        .TerminateFunc = InventoryMenu_Terminate + 1
    },

    /* Episode Select. */
    {
        .InitFunc      = EpisodeSelectMenu_Init + 1,
        .HandlerFunc   = EpisodeSelectMenu_Handler + 1,
        .TerminateFunc = EpisodeSelectMenu_Terminate + 1
    },

    /* Shop. */
    {
        .InitFunc      = ShopMenu_Init + 1,
        .HandlerFunc   = ShopMenu_Handler + 1,
        .TerminateFunc = ShopMenu_Terminate + 1
    },

    /* Map. */
    {
        .InitFunc      = MapMenu_Init + 1,
        .HandlerFunc   = MapMenu_Handler + 1,
        .TerminateFunc = MapMenu_Terminate + 1
    },

    /* Unk 12. */
    {
        .InitFunc      = FUN_0802D240 + 1,
        .HandlerFunc   = FUN_0802D240 + 1,
        .TerminateFunc = FUN_0802D240 + 1
    },

    /* Unk 13. */
    {
        .InitFunc      = FUN_0802D240 + 1,
        .HandlerFunc   = FUN_0802D240 + 1,
        .TerminateFunc = FUN_0802D240 + 1
    },

    /* Bigfoot Love Chickens. */
    {
        .InitFunc      = BigfootLoveChickens_Init + 1,
        .HandlerFunc   = BigfootLoveChickens_Handler + 1,
        .TerminateFunc = BigfootLoveChickens_Terminate + 1
    },

    /* Car Commercials. */
    {
        .InitFunc      = CarCommercials_Init + 1,
        .HandlerFunc   = CarCommercials_Handler + 1,
        .TerminateFunc = CarCommercials_Terminate + 1
    },

    /* Message / Dialog Box. */
    {
        .InitFunc      = DialogMenu_Init + 1,
        .HandlerFunc   = DialogMenu_Handler + 1,
        .TerminateFunc = DialogMenu_Terminate + 1
    },

    /* Create a Sim. */
    {
        .InitFunc      = CreateASim_Init + 1,
        .HandlerFunc   = CreateASim_Handler + 1,
        .TerminateFunc = CreateASim_Terminate + 1
    },

    /* Minigame Level Select. */
    {
        .InitFunc      = MinigameLevelSelect_Init + 1,
        .HandlerFunc   = MinigameLevelSelect_Handler + 1,
        .TerminateFunc = MinigameLevelSelect_Terminate + 1
    },

    /* Minigame Result. */
    {
        .InitFunc      = MinigameResult_Init + 1,
        .HandlerFunc   = MinigameResult_Handler + 1,
        .TerminateFunc = MinigameResult_Terminate + 1 
    },

    /* Keelhaulin' Cards. */
    {
        .InitFunc      = KeelhaulinCards_Init + 1,
        .HandlerFunc   = KeelhaulinCards_Handler + 1,
        .TerminateFunc = KeelhaulinCards_Terminate + 1
    },

    /* Cattle Cleanup. */
    {
        .InitFunc      = CattleCleanup_Init + 1,
        .HandlerFunc   = CattleCleanup_Handler + 1,
        .TerminateFunc = CattleCleanup_Terminate + 1
    },

    /* Episode Opening. */
    {
        .InitFunc      = EpisodeOpening_Init + 1,
        .HandlerFunc   = EpisodeOpening_Handler + 1,
        .TerminateFunc = EpisodeOpening_Terminate + 1
    },

    /* Let's Watch the Show. */
    {
        .InitFunc      = LetsWatchTheShow_Init + 1,
        .HandlerFunc   = LetsWatchTheShow_Handler + 1,
        .TerminateFunc = LetsWatchTheShow_Terminate + 1
    },

    /* Boardroom. */
    {
        .InitFunc      = BoardroomMenu_Init + 1,
        .HandlerFunc   = BoardroomMenu_Handler + 1,
        .TerminateFunc = BoardroomMenu_Terminate + 1
    },

    /* King Chug Chug. */
    {
        .InitFunc      = KingChugChug_Init + 1,
        .HandlerFunc   = KingChugChug_Handler + 1,
        .TerminateFunc = KingChugChug_Terminate + 1
    },

    /* Canyon Jumping. */
    {
        .InitFunc      = CanyonJumping_Init + 1,
        .HandlerFunc   = CanyonJumping_Handler + 1,
        .TerminateFunc = CanyonJumping_Terminate + 1
    },

    /* Credits. */
    {
        .InitFunc      = CreditsMenu_Init + 1,
        .HandlerFunc   = CreditsMenu_Handler + 1,
        .TerminateFunc = CreditsMenu_Terminate + 1
    },

    /* Chop-Shop. */
    {
        .InitFunc      = ChopShop_Init + 1,
        .HandlerFunc   = ChopShop_Handler + 1,
        .TerminateFunc = ChopShop_Terminate + 1
    },

    /* Skills. */
    {
        .InitFunc      = SkillsMenu_Init + 1,
        .HandlerFunc   = SkillsMenu_Handler + 1,
        .TerminateFunc = SkillsMenu_Terminate + 1
    },

    /* Testing Menu. */
    {
        .InitFunc      = TestMenu_Init + 1,
        .HandlerFunc   = TestMenu_Handler + 1,
        .TerminateFunc = TestMenu_Terminate + 1
    },

    /* Shark Jumping Cutscene. */
    {
        .InitFunc      = SharkJumpCutscene_Init + 1,
        .HandlerFunc   = SharkJumpCutscene_Handler + 1,
        .TerminateFunc = SharkJumpCutscene_Terminate + 1
    },

    /* Ending Cutscene. */
    {
        .InitFunc      = EndingCutscene_Init + 1,
        .HandlerFunc   = EndingCutscene_Handler + 1,
        .TerminateFunc = EndingCutscene_Terminate + 1
    },

    /* Minigame Select. */
    {
        .InitFunc      = MinigameSelect_Init + 1,
        .HandlerFunc   = MinigameSelect_Handler + 1,
        .TerminateFunc = MinigameSelect_Terminate + 1
    }
};