	.section .rodata

    .global __id
    .global mixPanTable
    .global playerEffects
    .global effectsVC

@ Need to do this here ... for some reason it doesn't want to import that from a h or c file.
__id:
    .ascii "$Id: Krawall $Id: version.h 8 2005-04-21 12:24:45Z seb $"
.space 0x4 @ Required to match...

@ Krawall Tables.
@ I am too lazy to convert to C-Tables, as i'd otherwise have to copy
@ most of the Krawall C stuff and need to make changes due to C89 restriction.
mixPanTable:
    .4byte gKrawall_MixStereo,   gKrawall_MixLeft,   gKrawall_MixStereo,   gKrawall_MixRight,   gKrawall_MixCenter,   0, 0, mixRampOut
    .4byte gKrawall_MixStereoHQ, gKrawall_MixLeftHQ, gKrawall_MixStereoHQ, gKrawall_MixRightHQ, gKrawall_MixCenterHQ, 0, 0, mixRampOut

@ + 1 for THUMB calls.
playerEffects:
    .4byte 0,                     0,                 0
    .4byte eff_speed + 1,         0,                 0
    .4byte eff_bpm + 1,           0,                 0
    .4byte eff_speedbpm + 1,      0,                 0
    .4byte eff_patt_jump + 1,     0,                 0
    .4byte eff_patt_break + 1,    0,                 0
    .4byte eff_volslide_s3m + 1,  0,                 1
    .4byte eff_volslide_xm + 1,   0,                 1
    .4byte eff_volslide_df + 1,   0,                 0
    .4byte eff_volslide_uf + 1,   0,                 0
    .4byte eff_portadown_xm + 1,  0,                 1
    .4byte eff_portadown_s3m + 1, 0,                 1
    .4byte eff_portadown_f + 1,   0,                 0
    .4byte eff_portadown_ef + 1,  0,                 0
    .4byte eff_portaup_xm + 1,    0,                 1
    .4byte eff_portaup_s3m + 1,   0,                 1
    .4byte eff_portaup_f + 1,     0,                 0
    .4byte eff_portaup_ef + 1,    0,                 0
    .4byte eff_volume + 1,        0,                 0
    .4byte eff_portanote + 1,     0,                 1
    .4byte eff_vibrato + 1,       0,                 1
    .4byte eff_tremor + 1,        0,                 1
    .4byte eff_arpeggio + 1,      0,                 1
    .4byte eff_volslide_s3m + 1,  eff_vibrato + 1,   1
    .4byte eff_volslide_s3m + 1,  eff_portanote + 1, 1
    .4byte eff_cvolume + 1,       0,                 0
    .4byte eff_cvolslide + 1,     0,                 1
    .4byte eff_offset + 1,        0,                 0
    .4byte eff_panslide + 1,      0,                 1
    .4byte eff_retrig + 1,        0,                 1
    .4byte eff_tremolo + 1,       0,                 1
    .4byte eff_fvibrato + 1,      0,                 1
    .4byte eff_gvolume + 1,       0,                 0
    .4byte eff_gvolslide + 1,     0,                 1
    .4byte eff_pan + 1,           0,                 0
    .4byte eff_panbrello + 1,     0,                 1
    .4byte eff_mark + 1,          0,                 0
    .4byte eff_glissando + 1,     0,                 0
    .4byte eff_wave_vibr + 1,     0,                 0
    .4byte eff_wave_trem + 1,     0,                 0
    .4byte eff_wave_panb + 1,     0,                 0
    .4byte 0,                     0,                 0
    .4byte 0,                     0,                 0
    .4byte eff_patternloop + 1,   0,                 0
    .4byte eff_notecut + 1,       0,                 1
    .4byte eff_notedelay + 1,     0,                 1
    .4byte 0,                     0,                 0
    .4byte 0,                     0,                 0
    .4byte 0,                     0,                 0
    .4byte eff_volslide_xm + 1,   eff_vibrato + 1,   1
    .4byte eff_volslide_xm + 1,   eff_portanote + 1, 1

@ + 1 for THUMB calls.
effectsVC:
    .4byte eff_VC_volslide_down + 1,    1
    .4byte eff_VC_volslide_up + 1,      1
    .4byte eff_VC_fvolslide_down + 1,   0
    .4byte eff_VC_fvolslide_up + 1,     0
    .4byte eff_VC_vibrato_setspeed + 1, 0
    .4byte eff_VC_vibrato + 1,          1
    .4byte eff_VC_pan + 1,              0
    .4byte eff_VC_panslide_left + 1,    1
    .4byte eff_VC_panslide_right + 1,   1
    .4byte eff_VC_portanote + 1,        1
