SECTIONS {
	EWRAM : ALIGN(4) {
		INCLUDE "tools/buildtools/linker/ewram.sym"
	}

	IWRAM : ALIGN(4) {
		INCLUDE "tools/buildtools/linker/iwram.sym"
	}
	
	. = 0x08000000;
	ROM : ALIGN(4) {
		build/data/rom_header.o(.text);
		build/asm/crt0.o(.text);

		/* Game code is here. */
		build/asm/unsorted/code.o(.text);
		build/asm/menus/startmenus/skills_menu.o(.text);
		build/asm/unsorted/code1.o(.text);
		build/source/flash.o(.text);
		build/asm/unsorted/code2.o(.text);
		build/asm/menus/boardroom_menu.o(.text);
		build/asm/unsorted/code3.o(.text);
		build/source/menus/cas/keyboard.o(.text);
		build/asm/menus/cas/keyboard.o(.text);
		build/asm/unsorted/code4.o(.text);
		build/asm/menus/blank_menu.o(.text);
		build/asm/unsorted/code5.o(.text);
		build/asm/menus/createasim.o(.text);
		build/asm/unsorted/code6.o(.text);
		build/asm/menus/credits_menu.o(.text);
		build/asm/unsorted/code7.o(.text);
		build/asm/gpntlib/decompress.o(.text);
		build/asm/unsorted/code8.o(.text);
		build/asm/menus/dialog_menu.o(.text);
		build/asm/unsorted/code9.o(.text);
		build/asm/menus/cutscenes/sharkjumping.o(.text);
		build/asm/unsorted/code10.o(.text);
		build/asm/menus/cutscenes/ending_cutscene.o(.text);
		build/asm/menus/cutscenes/episode_opening.o(.text);
		build/asm/unsorted/code11.o(.text);
		build/asm/menus/episodeselect_menu.o(.text);
		build/asm/unsorted/code12.o(.text);
		build/asm/menus/multiplayer_menu.o(.text);
		build/asm/unsorted/code13.o(.text);
		build/asm/menus/startmenus/plotpoints_menu.o(.text);
		build/asm/unsorted/code14.o(.text);
		build/asm/menus/cutscenes/letswatchtheshow.o(.text);
		build/asm/unsorted/code15.o(.text);
		build/asm/gpntlib/input.o(.text);
		build/asm/unsorted/code16.o(.text);
		build/asm/menus/intros/eamaxis_intro.o(.text);
		build/asm/unsorted/code17.o(.text);
		build/asm/menus/startmenus/inventory_menu.o(.text);
		build/asm/unsorted/code18.o(.text);
		build/asm/menus/language_menu.o(.text);
		build/asm/unsorted/code19.o(.text);
		build/asm/menus/intros/copyright_intro.o(.text);
		build/asm/unsorted/code20.o(.text);
		build/asm/menus/startmenus/test_menu.o(.text);
		build/asm/unsorted/code21.o(.text);
		build/asm/menus/slot_menu.o(.text);
		build/asm/unsorted/code22.o(.text);
		build/asm/menus/ingame_menu.o(.text);
		build/asm/unsorted/code23.o(.text);
		build/asm/gpntlib/allocator.o(.text);
		build/asm/unsorted/code24.o(.text);
		build/asm/gpntlib/menu.o(.text);
		build/asm/unsorted/code25.o(.text);
		build/asm/menus/minigames/bigfootlovechickens.o(.text);
		build/asm/unsorted/code26.o(.text);
		build/asm/menus/minigames/canyonjumping.o(.text);
		build/asm/menus/minigames/carcommercials.o(.text);
		build/asm/unsorted/code27.o(.text);
		build/asm/menus/minigames/cattlecleanup.o(.text);
		build/asm/unsorted/code28.o(.text);
		build/asm/menus/minigames/chopshop.o(.text);
		build/asm/unsorted/code29.o(.text);
		build/asm/menus/minigames/kingchugchug.o(.text);
		build/asm/menus/minigames/levelselect.o(.text);
		build/asm/unsorted/code30.o(.text);
		build/asm/menus/minigames/keelhaulincards.o(.text);
		build/asm/unsorted/code31.o(.text);
		build/asm/menus/minigames/result.o(.text);
		build/asm/unsorted/code32.o(.text);
		build/asm/menus/minigames/minigameselect.o(.text);
		build/asm/unsorted/code33.o(.text);
		build/asm/menus/select_menu.o(.text);
		build/asm/unsorted/code34.o(.text);
		build/asm/menus/choice_menu.o(.text);
		build/asm/unsorted/code35.o(.text);
		build/asm/gpntlib/random.o(.text);
		build/asm/unsorted/code36.o(.text);
		build/asm/menus/startmenus/castmember_menu.o(.text);
		build/asm/unsorted/code37.o(.text);
		build/asm/menus/socialconversation_menu.o(.text);
		build/asm/unsorted/code38.o(.text);
		build/asm/gpntlib/sound.o(.text);
		build/asm/unsorted/code39.o(.text);
		build/asm/menus/shop_menu.o(.text);
		build/asm/unsorted/code40.o(.text);
		build/asm/menus/main_menu.o(.text);
		build/asm/unsorted/code41.o(.text);
		build/asm/menus/map_menu.o(.text);
		build/asm/unsorted/code42.o(.text);

		/* Krawall Library main code. */
		*krawall.a:general.o(.text);
		*krawall.a:krawall.o(.text);

		/* SVC Calls. */
		build/asm/agblib/syscalls.o(.text);

		/* AGB Flash functions. */
        build/source/agblib/flash/agb_flash.o(.text);
        build/source/agblib/flash/agb_flash_512k.o(.text);
        build/source/agblib/flash/agb_flash_le_512k.o(.text);
        build/source/agblib/flash/agb_flash_mx_512k.o(.text);

		/* LibGCC functions. */
		*libgcc.a:_call_via_rX.o(.text); /* __call_via_rX */
		*libgcc.a:_divsi3.o(.text);      /* __divsi3 */
		*libgcc.a:_dvmd_tls.o(.text);    /* __div0 */
        *libgcc.a:_fixunsdfsi.o(.text);  /* __fixunsdfsi */
        *libgcc.a:_fixunssfsi.o(.text);  /* __fixunssfsi */
		*libgcc.a:_modsi3.o(.text);      /* __modsi3 */
		*libgcc.a:_udivsi3.o(.text);     /* __udivsi3 */
		*libgcc.a:_umodsi3.o(.text);     /* __umodsi3 */
		*libgcc.a:dp-bit.o(.text);       /* all functions from dp-bit. */
		*libgcc.a:fp-bit.o(.text);       /* all functions from fp-bit. */
		*libgcc.a:_lshrdi3.o(.text);     /* __lshrdi3 */
		*libgcc.a:_muldi3.o(.text);      /* __muldi3 */
		*libgcc.a:_negdi2.o(.text);      /* __negdi2 */

		/* LibC functions. */
		*libc.a:bzero.o(.text);    /* bzero */
		*libc.a:memcpy.o(.text);   /* memcpy */
		*libc.a:memmove.o(.text);  /* memmove */
		*libc.a:memset.o(.text);   /* memset */
		*libc.a:strchr.o(.text);   /* strchr */
		*libc.a:strcpy.o(.text);   /* strcpy */
		*libc.a:strlen.o(.text);   /* strlen */
		*libc.a:strncpy.o(.text);  /* strncpy */


		/* ROM Data starts here. */
		build/data/unsorted/romref.o(.rodata);
		build/source/data/kbd_data.o(.rodata);
		build/data/unsorted/romref1.o(.rodata);
		build/source/data/menu_table.o(.rodata);
		build/data/unsorted/romref2.o(.rodata);

		build/source/data/minigame_tables.o(.rodata);
		build/source/data/need_table.o(.rodata);
		build/data/unsorted/romref3.o(.rodata);
		build/source/data/castanim_table.o(.rodata);
		build/data/unsorted/romref4.o(.rodata);
		build/source/data/cast_table.o(.rodata);
		build/data/unsorted/romref5.o(.rodata);
		build/source/data/item_table.o(.rodata);
		build/data/unsorted/romref6.o(.rodata);
		build/data/data/picture_data.o(.rodata);
		build/data/unsorted/romref7.o(.rodata);
		build/data/langStrings.o(.rodata);

		build/data/unsorted/romref8.o(.rodata);

		/* Krawall Instruments and Samples. */
		build/data/krawall/instruments.o(.rodata);
		build/data/krawall/samples.o(.rodata);

		/* Krawall Modules. */
		build/data/krawall/modules/mod_Aliens.o(.rodata);
		build/data/krawall/modules/mod_Boardroom.o(.rodata);
		build/data/krawall/modules/mod_Credits.o(.rodata);
		build/data/krawall/modules/mod_DustyHoggBlues.o(.rodata);
		build/data/krawall/modules/mod_EdgeOfTown.o(.rodata);
		build/data/krawall/modules/mod_HeavyMetal.o(.rodata);
		build/data/krawall/modules/mod_KeelhaulinCards.o(.rodata);
		build/data/krawall/modules/mod_SpeedMetal.o(.rodata);
		build/data/krawall/modules/mod_StrangeDay.o(.rodata);
		build/data/krawall/modules/mod_StrangeNight.o(.rodata);
		build/data/krawall/modules/mod_TheGoons.o(.rodata);
		build/data/krawall/modules/mod_TranceMode.o(.rodata);
		build/data/krawall/modules/mod_GoalComplete.o(.rodata);
		build/data/krawall/modules/mod_MissionComplete.o(.rodata);
		build/data/krawall/modules/mod_KeelhaulinCardsJingle.o(.rodata);
		build/data/krawall/modules/mod_Strangetown.o(.rodata);
		build/data/krawall/modules/mod_StrangetownEdit2.o(.rodata);
		build/data/krawall/modules/mod_StrangetownEdit.o(.rodata);
		build/data/krawall/modules/mod_BigfootLoveChickens.o(.rodata);
		build/data/krawall/modules/mod_Bloom.o(.rodata);
		build/data/krawall/modules/mod_Calmness.o(.rodata);
		build/data/krawall/modules/mod_ChugChugCola.o(.rodata);
		build/data/krawall/modules/mod_Investigate.o(.rodata);
		build/data/krawall/modules/mod_Romance.o(.rodata);
		build/data/krawall/modules/mod_Friendship.o(.rodata);
		build/data/krawall/modules/mod_Intimidate.o(.rodata);
		build/data/krawall/modules/mod_Sweetness.o(.rodata);
		build/data/krawall/modules/mod_AlienSting.o(.rodata);
		build/data/krawall/modules/mod_DesperationSting.o(.rodata);
		build/data/krawall/modules/mod_StrangetownIntroLong.o(.rodata);
		build/data/krawall/modules/mod_StrangetownIntroShort.o(.rodata);
		build/data/krawall/modules/mod_StrangetownReturn.o(.rodata);
		build/data/krawall/modules/mod_StrangetownBreak.o(.rodata);

		/* Krawall ROM Data. */
		*krawall.a:krawalldata.o(.rodata);
		*krawall.a:player_tables.o(.rodata);

		/* AGB Flash ROM Data. */
        build/source/agblib/flash/agb_flash.o(.rodata);
        build/source/agblib/flash/agb_flash_512k.o(.rodata);
        build/source/agblib/flash/agb_flash_le_512k.o(.rodata);
        build/source/agblib/flash/agb_flash_mx_512k.o(.rodata);

		/* Next ROM Data. */
		build/data/unsorted/romref9.o(.rodata);
		build/source/data/msgpic_table.o(.rodata);
		build/data/unsorted/romref10.o(.rodata);

		/* Krawall IWRAM Code. */
		*krawall.a:krawall_iwram.o(.iwram);

		/* Rest of the data. */
		build/data/unsorted/romref11.o(.rodata);
	}

	/* Everything not referenced is discarded and not included. */
    /DISCARD/ : {
        *(*);
    }
}