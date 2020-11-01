/* Copyright 2020 Thanatchaya Kromsaneng thanatchakromsang@gmail.com @thanatchakromsang
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

#include "quantum.h"
#include "version.h"

enum user_layers {
  QWERTY_LAYER,
  WORKMAN_LAYER,
  NUMBER_LAYER,
  SYMBOL_LAYER,
  FUNCTION_LAYER,
  NAVIGATION_LAYER,
  MOUSE_LAYER,
  MEDIA_LAYER
};

/* enum user_keycodes { */
/*   QWERTY = SAFE_RANGE, */
/*   WORKMAN */
/* }; */

// Alias layout macros that expand groups of keys.
#define LAYOUT_ergodox_ez_wrapper(...) LAYOUT_ergodox_pretty(__VA_ARGS__)
#define LAYOUT_keyboardio_atreus_wrapper(...) LAYOUT(__VA_ARGS__)

  /* ---------------------------------------------------------------------
   *
   *   Qwerty Layout (Switched Quote and Slash)
   *
   *             TG(NAVIGATION_LAYER)              TG(MOUSE_LAYER)
   *                    ↑                                 ↑
   *                    |                                 |
   *                    |                                 |
   *                    |                                 |
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │  Q  │  W  │  E  │  R  │  T  │   │  Y  │  U  │  I  │  O  │  P  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ A/⇧ │ S/^ │ D/⌥ │ F/⌘ │  G  │   │  H  │ J/⌘ │ K/⌥ │ L/^ │ ;/⇧ │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  Z  │  X  │  C  │  V  │  B  │   │  N  │  M  │  ,  │  .  │  '  │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________QWERTY_L1_________________ KC_Q,             KC_W,            LT(NAVIGATION_LAYER, KC_E),      KC_R,             KC_T
#define _________________QWERTY_L2_________________ LSFT_T(KC_A),     LCTL_T(KC_S),    LALT_T(KC_D),                    LGUI_T(KC_F),     KC_G
#define _________________QWERTY_L3_________________ KC_Z,             KC_X,            KC_C,                            KC_V,             KC_B

#define _________________QWERTY_R1_________________ KC_Y,    KC_U,            LT(MOUSE_LAYER, KC_I),      KC_O,             KC_P
#define _________________QWERTY_R2_________________ KC_H,    LGUI_T(KC_J),    LALT_T(KC_K),               LCTL_T(KC_L),     LSFT_T(KC_SCLN)
#define _________________QWERTY_R3_________________ KC_N,    KC_M,            KC_COMM,                    KC_DOT,           KC_QUOT

  /* ---------------------------------------------------------------------
   *
   *   Workman Layout (Switched Quote and Slash)
   *
   *             TG(NAVIGATION_LAYER)              TG(MOUSE_LAYER)
   *                    ↑                                 ↑
   *                    |                                 |
   *                    |                                 |
   *                    |                                 |
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │  Q  │  D  │  R  │  W  │  B  │   │  J  │  F  │  U  │  P  │  ;  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ A/⇧ │ S/^ │ H/⌥ │ T/⌘ │  G  │   │  Y  │ N/⌘ │ E/⌥ │ O/^ │ I/⇧ │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  Z  │  X  │  M  │  C  │  V  │   │  K  │  L  │  ,  │  .  │  '  │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________WORKMAN_L1________________ KC_Q,             KC_D,            LT(NAVIGATION_LAYER, KC_R),      KC_W,             KC_B
#define _________________WORKMAN_L2________________ LSFT_T(KC_A),     LCTL_T(KC_S),    LALT_T(KC_H),                    LGUI_T(KC_T),     KC_G
#define _________________WORKMAN_L3________________ KC_Z,             KC_X,            KC_M,                            KC_C,             KC_V

#define _________________WORKMAN_R1________________ KC_J,    KC_F,            LT(MOUSE_LAYER, KC_U),   KC_P,             KC_SCLN
#define _________________WORKMAN_R2________________ KC_Y,    LGUI_T(KC_N),    LALT_T(KC_E),            LCTL_T(KC_O),     LSFT_T(KC_I)
#define _________________WORKMAN_R3________________ KC_K,    KC_L,            KC_COMM,                 KC_DOT,           KC_QUOT

  /* ---------------------------------------------------------------------
   *
   *   Modifier on base layer
   *                 ┌─────┬─────┬─────┐   ┌─────┬─────┬─────┐
   *                 │ Esc │BSpc │ Tab │   │STab │ Spc │Enter│
   *                 └─────┴─────┴─────┘   └─────┴─────┴─────┘
   *                    |     |     |               |     |
   *                    V     |     |               |     |
   *              TG(MEDIA_LAYER)   |               |     |
   *                          |     |               |     |
   *                          V     |               V     |
   *                  TG(NUMBER_LAYER)        TG(NUMBER_LAYER)
   *                                |                     |
   *                                V                     V
   *                        TG(FUNCTION_LAYER)     TG(FUNCTION_LAYER)
   */

#define _MODL1_ LT(MEDIA_LAYER, KC_ESC)
#define ______MODL2_____ LT(NUMBER_LAYER, KC_BSPC), LT(FUNCTION_LAYER, KC_TAB)
#define _______MODIFIER_L________ _MODL1_, ______MODL2_____

#define ______MODR2_____ LSFT(KC_TAB), LT(NUMBER_LAYER, KC_SPC)
#define _MODR1_ LT(FUNCTION_LAYER, KC_ENT)
#define _______MODIFIER_R________ ______MODR2_____, _MODR1_

  /* ---------------------------------------------------------------------
   *
   *   Number Layer
   *      ┌─────┬─────┬─────┬─────┬─────┐  ┌─────┬─────┬─────┬─────┬─────┐
   *      │  `  │  \  │  {  │  }  │  -  │  │  =  │  [  │  ]  │  (  │  )  │
   *      ├─────┼─────┼─────┼─────┼─────┤  ├─────┼─────┼─────┼─────┼─────┤
   *      │ 1/⇧ │  2  │  3  │  4  │  5  │  │  6  │  7  │  8  │  9  │ 0/⇧ │
   *      ├─────┼─────┼─────┼─────┼─────┤  ├─────┼─────┼─────┼─────┼─────┤
   *      │     │     │     │     │     │  │     │     │     │     │     │
   *      └─────┴─────┴─────┴─────┴─────┘  └─────┴─────┴─────┴─────┴─────┘
   *                 ┌─────┐┌─────┬─────┐  ┌─────┬─────┐┌─────┐
   *                 │     ││     │     │  │     │     ││     │
   *                 └─────┘└─────┴─────┘  └─────┴─────┘└─────┘
   */

#define _________________NUMBER_L1_________________ KC_GRV,        KC_BSLS,         KC_LCBR,          KC_RCBR,     KC_MINS
/* #define _________________NUMBER_L2_________________    LSFT_T(KC_1),   LCTL_T(KC_2),    LALT_T(KC_3),     LGUI_T(KC_4),     KC_5 */
#define _________________NUMBER_L2_________________ LSFT_T(KC_1),   KC_2,    KC_3,     KC_4,     KC_5
#define _________________NUMBER_L3_________________ _________________TRANSPARENT_______________
#define _NUML1_ _______
#define ______NUML2_____ _______, _______
#define _______NUMBER_L4_________ _NUML1_, ______NUML2_____

#define _________________NUMBER_R1_________________ KC_EQL,        KC_LBRC,         KC_RBRC,          KC_LPRN,     KC_RPRN
/* #define _________________NUMBER_R2_________________            KC_6,   LGUI_T(KC_7),    LALT_T(KC_8),     LCTL_T(KC_9),     LSFT_T(KC_0) */
#define _________________NUMBER_R2_________________ KC_6,   KC_7,    KC_8,     KC_9,     LSFT_T(KC_0)
#define _________________NUMBER_R3_________________ _________________TRANSPARENT_______________

#define ______NUMR2_____ _______, _______
#define _NUMR1_ _______
#define _______NUMBER_R4_________ ______NUMR2_____, _NUMR1_

  /* ---------------------------------------------------------------------
   *
   *   Symbol Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │  ~  │  |  │  {  │  }  │  _  │   │  +  │  [  │  ]  │  (  │  )  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  !  │  @  │  #  │  $  │  %  │   │  ^  │  &  │  *  │  (  │  )  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │     │     │     │     │     │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │     ││     │     │   │     │     ││     │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________SYMBOL_L1_________________ KC_TILDE,   KC_PIPE,   KC_LCBR,     KC_RCBR,     KC_UNDS
#define _________________SYMBOL_L2_________________ KC_EXLM ,   KC_AT  ,   KC_HASH,     KC_DLR ,     KC_PERC
#define _________________SYMBOL_L3_________________ _________________TRANSPARENT_______________

#define _SYML1_ _______
#define ______SYML2_____ _______, _______
#define _______SYMBOL_L4_________ _SYML1_, ______SYML2_____

#define _________________SYMBOL_R1_________________ KC_PLUS,   KC_LBRC,   KC_RBRC,     KC_LPRN,     KC_RPRN
#define _________________SYMBOL_R2_________________ KC_CIRC,   KC_AMPR,   KC_ASTR,     KC_LPRN,     KC_RPRN
#define _________________SYMBOL_R3_________________ _________________TRANSPARENT_______________

#define _SYMR1_ _______
#define ______SYMR2_____ _______, _______
#define _______SYMBOL_R4_________ ______SYMR2_____, _SYMR1_

  /* ---------------------------------------------------------------------
   *
   *   Function / Window Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │ F12 │ F7  │ F8  │ F9  │PrScn│   │⌘([) │⌘(7) │⌘(8) │⌘(9) │⌘(]) │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │F11/⇧│F4/^ │F5/⌥ │F6/⌘ │ Del │   │⌘(←) │⌘(4) │⌘(5) │⌘(6) │⌘(→) │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ F10 │ F1  │ F2  │ F3  │Pause│   │ XXX │⌘(1) │⌘(2) │⌘(3) │ XXX │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │     ││     │     │   │     │     ││     │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________FUNCTION_L1_______________ KC_F12,    KC_F7,   KC_F8,     KC_F9,     KC_PSCR
#define _________________FUNCTION_L2_______________ LSFT_T(KC_F11),   LCTL_T(KC_F4),   LALT_T(KC_F5),     LGUI(KC_F6),     KC_DEL
#define _________________FUNCTION_L3_______________ KC_F10,    KC_F1,   KC_F2,     KC_F3,     KC_PAUSE

#define _FUNL1_ _______
#define ______FUNL2_____ _______, _______
#define _______FUNCTION_L4_______ _FUNL1_, ______FUNL2_____

#define _________________FUNCTION_R1_______________ LCMD(KC_LBRC),    LCMD(KC_7),     LCMD(KC_8),       LCMD(KC_9),       LCMD(KC_RBRC)
#define _________________FUNCTION_R2_______________ LCMD(KC_LEFT),    LCMD(KC_4),     LCMD(KC_5),       LCMD(KC_6),       LCMD(KC_RGHT)
#define _________________FUNCTION_R3_______________ XXXXXXX,          LCMD(KC_1),     LCMD(KC_2),       LCMD(KC_3),       XXXXXXX

#define ______FUNR2_____ _______, _______
#define _FUNR1_ _______
#define _______FUNCTION_R4_______ ______FUNR2_____, _FUNR1_

  /* ---------------------------------------------------------------------
   *
   *   Disabled
   *     ┌─────┬─────┬─────┬─────┬─────┐
   *     │ XXX │ XXX │ XXX │ XXX │ XXX │
   *     └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________DISABLED__________________ XXXXXXX,    XXXXXXX,   XXXXXXX,     XXXXXXX,     XXXXXXX

  /* ---------------------------------------------------------------------
   *
   *   Layer Switcher
   *     ┌─────┬─────┬─────┬─────┬─────┐
   *     │LANG │QWRTY│     │     │WKMN │
   *     └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________LANGUAGE_SWITCHER_________ LGUI(KC_SPC),    TO(QWERTY_LAYER),   XXXXXXX,     XXXXXXX,     TO(WORKMAN_LAYER)

  /* ---------------------------------------------------------------------
   *
   *   Transparent
   *     ┌─────┬─────┬─────┬─────┬─────┐
   *     │     │     │     │     │     │
   *     └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________TRANSPARENT_______________ _______, _______, _______, _______, _______

  /* ---------------------------------------------------------------------
   *
   *   Navigation Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │     │     │ XXX │     │     │   │Home │PgDn │PgUp │ End │ Ins │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  ⇧  │  ^  │  ⌥  │  ⌘  │     │   │  ←  │  ↓  │  ↑  │  →  │ XXX │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │ XXX │ XXX │ XXX │ XXX │ XXX │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │ ESC ││BSpc │ Tab │   │STab │ Spc ││Enter│
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________NAVIGATION_L1_____________ _________________LANGUAGE_SWITCHER_________
#define _________________NAVIGATION_L2_____________ _________________TRANSPARENT_______________
#define _________________NAVIGATION_L3_____________ _________________TRANSPARENT_______________

#define _NAVL1_ KC_ESC
#define ______NAVL2_____ KC_BSPC, KC_TAB
#define _______NAVIGATION_L4_____ _NAVL1_, ______NAVL2_____

#define _________________NAVIGATION_R1_____________ KC_HOME,    KC_PGDN,   KC_PGUP,     KC_END,     KC_INS
#define _________________NAVIGATION_R2_____________ KC_LEFT,    KC_DOWN,   KC_UP,       KC_RGHT,    XXXXXXX
#define _________________NAVIGATION_R3_____________ _________________DISABLED__________________

#define ______NAVR2_____ LSFT(KC_TAB), KC_SPC
#define _NAVR1_ KC_ENT
#define _______NAVIGATION_R4_____ ______NAVR2_____, _NAVR1_

  /* ---------------------------------------------------------------------
   *
   *   Mouse Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │ XXX │ XXX │ M ↑ │ XXX │ XXX │   │ XXX │ XXX │ XXX │ XXX │ XXX │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ XXX │ M ← │ M ↓ │ M → │ XXX │   │ XXX │L-BTN│ XXX │R-BTN│M-BTN│
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ XXX │ XXX │ XXX │ XXX │ XXX │   │ XXX │ XXX │ XXX │ XXX │ XXX │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │ WH← ││ WH↑ │     │   │     │ WH↓ ││ WH→ │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________MOUSE_L1__________________ XXXXXXX,    XXXXXXX,   KC_MS_U,     XXXXXXX,    XXXXXXX
#define _________________MOUSE_L2__________________ XXXXXXX,    KC_MS_L,   KC_MS_D,     KC_MS_R,    XXXXXXX
#define _________________MOUSE_L3__________________ _________________DISABLED__________________

#define _MOUL1_ KC_WH_L
#define ______MOUL2_____ KC_WH_U, _______
#define _______MOUSE_L4__________ _MOUL1_, ______MOUL2_____

#define _________________MOUSE_R1__________________ _________________DISABLED__________________
#define _________________MOUSE_R2__________________ XXXXXXX,    KC_BTN1,   XXXXXXX,     KC_BTN2,    KC_BTN3
#define _________________MOUSE_R3__________________ _________________DISABLED__________________

#define _MOUR1_ KC_WH_R
#define ______MOUR2_____ _______, KC_WH_D
#define _______MOUSE_R4__________ ______MOUR2_____, _MOUR1_

  /* ---------------------------------------------------------------------
   *
   *   Media Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │     │     │     │     │     │   │ XXX │ XXX │ XXX │ XXX │ XXX │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │  ◀  │    │    │  ▶  │    │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │ XXX │ XXX │ XXX │ XXX │ XXX │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │     ││     │     │   │    │    ││     │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________MEDIA_L1__________________ _________________TRANSPARENT_______________
#define _________________MEDIA_L2__________________ _________________TRANSPARENT_______________
#define _________________MEDIA_L3__________________ _________________TRANSPARENT_______________

#define _MEDL1_ _______
#define ______MEDL2_____ _______, _______
#define _______MEDIA_L4__________ _MEDL1_, ______MEDL2_____

#define _________________MEDIA_R1__________________ _________________DISABLED__________________
#define _________________MEDIA_R2__________________ KC_MPRV,    KC__VOLDOWN,   KC__VOLUP,     KC_MNXT,    KC__MUTE
#define _________________MEDIA_R3__________________ _________________DISABLED__________________

#define ______MEDR2_____ KC_MSTP, KC_MPLY
#define _MEDR1_ _______
#define _______MEDIA_R4__________ ______MEDL2_____, _MEDL1_
