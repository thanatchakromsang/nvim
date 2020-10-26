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
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │  Q  │  W  │  E  │  R  │  T  │   │  Y  │  U  │  I  │  O  │  P  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ A/^ │ S/⌥ │ D/⌘ │ F/⇧ │  G  │   │  H  │ J/⇧ │ K/⌘ │ L/⌥ │ ;/^ │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  Z  │  X  │  C  │  V  │  B  │   │  N  │  M  │  ,  │  .  │  '  │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________QWERTY_L1_________________ KC_Q,             KC_W,            KC_E,            KC_R,             KC_T
#define _________________QWERTY_L2_________________ LCTL_T(KC_A),     LALT_T(KC_S),    LGUI_T(KC_D),    LSFT_T(KC_F),     KC_G
#define _________________QWERTY_L3_________________ KC_Z,             KC_X,            KC_C,            KC_V,             KC_B

#define _________________QWERTY_R1_________________ KC_Y,    KC_U,            KC_I,             KC_O,             KC_P
#define _________________QWERTY_R2_________________ KC_H,    LSFT_T(KC_J),    LGUI_T(KC_K),     LALT_T(KC_L),     LCTL_T(KC_SCLN)
#define _________________QWERTY_R3_________________ KC_N,    KC_M,            KC_COMM,          KC_DOT,           KC_QUOT

  /* ---------------------------------------------------------------------
   *
   *   Workman Layout (Switched Quote and Slash)
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │  Q  │  D  │  R  │  W  │  B  │   │  J  │  F  │  U  │  P  │  ;  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ A/^ │ S/⌥ │ H/⌘ │ T/⇧ │  G  │   │  Y  │ N/⇧ │ E/⌘ │ O/⌥ │ I/^ │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  Z  │  X  │  M  │  C  │  V  │   │  K  │  L  │  ,  │  .  │  '  │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   */

#define _________________WORKMAN_L1________________ KC_Q,             KC_D,            KC_R,            KC_W,             KC_B
#define _________________WORKMAN_L2________________ LCTL_T(KC_A),     LALT_T(KC_S),    LGUI_T(KC_H),    LSFT_T(KC_T),     KC_G
#define _________________WORKMAN_L3________________ KC_Z,             KC_X,            KC_M,            KC_C,             KC_V

#define _________________WORKMAN_R1________________ KC_J,    KC_F,            KC_U,             KC_P,             KC_SCLN
#define _________________WORKMAN_R2________________ KC_Y,    LSFT_T(KC_N),    LGUI_T(KC_E),     LALT_T(KC_O),     LCTL_T(KC_I)
#define _________________WORKMAN_R3________________ KC_K,    KC_L,            KC_COMM,          KC_DOT,           KC_QUOT

  /* ---------------------------------------------------------------------
   *
   *   Modifier on base layer
   *                 ┌─────┬─────┬─────┐   ┌─────┬─────┬─────┐
   *                 │ Esc │BSpc │ Tab │   │  /  │ Spc │Enter│
   *                 └─────┴─────┴─────┘   └─────┴─────┴─────┘
   *                    |     |     |         |     |     |
   *                    V     |     |         V     |     |
   *              TG(FUNCTION_LAYER)|     TG(MOUSE_LAYER) |
   *                          |     |               |     |
   *                          V     |               V     |
   *                  TG(NUMBER_LAYER)      TG(NAVIGATION_LAYER)
   *                                |                     |
   *                                V                     V
   *                        TG(SYMBOL_LAYER)        TG(MEDIA_LAYER)
   */

#define _MODL1_ LT(FUNCTION_LAYER, KC_ESC)
#define ______MODL2_____ LT(NUMBER_LAYER, KC_BSPC), LT(SYMBOL_LAYER, KC_TAB)
#define _______MODIFIER_L________ _MODL1_, ______MODL2_____

#define ______MODR2_____ LT(MOUSE_LAYER, KC_SLSH), LT(NAVIGATION_LAYER, KC_SPC)
#define _MODR1_ LT(MEDIA_LAYER, KC_ENT)
#define _______MODIFIER_R________ ______MODR2_____, _MODR1_

  /* ---------------------------------------------------------------------
   *
   *   Number Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │     │     │     │     │     │   │  [  │  7  │  8  │  9  │  ]  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │  =  │ 4/⇧ │ 5/⌘ │ 6/⌥ │ -/^ │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │  \  │  1  │  2  │  3  │  `  │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │     ││ XXX │     │   │  ,  │  0  ││  .  │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________NUMBER_R1_________________ KC_LBRC,   KC_7,            KC_8,             KC_9,             KC_RBRC
#define _________________NUMBER_R2_________________ KC_EQL,    LSFT_T(KC_4),    LGUI_T(KC_5),     LALT_T(KC_6),     LCTL_T(KC_MINS)
#define _________________NUMBER_R3_________________ KC_BSLS,   KC_1,            KC_2,             KC_3,             KC_GRV

#define ______NUMR2_____ KC_COMM, KC_0
#define _NUMR1_ KC_DOT
#define _______NUMBER_R4_________ ______NUMR2_____, _NUMR1_

  /* ---------------------------------------------------------------------
   *
   *   Symbol Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │     │     │     │     │     │   │  {  │  &  │  *  │  (  │  }  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │  +  │  $  │  %  │  ^  │  _  │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │  |  │  !  │  @  │  #  │  ~  │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │     ││     │ XXX │   │  (  │  )  ││  <  │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________SYMBOL_R1_________________ KC_LCBR,   KC_AMPR,   KC_ASTR,     KC_LPRN,     KC_RCBR
#define _________________SYMBOL_R2_________________ KC_PLUS,   KC_DLR,    KC_PERC,     KC_CIRC,     KC_UNDS
#define _________________SYMBOL_R3_________________ KC_PIPE,   KC_EXLM,   KC_AT,       KC_HASH,     KC_TILDE

#define ______SYMR2_____ KC_LPRN, KC_RPRN
#define _SYMR1_ KC_LABK
#define _______SYMBOL_R4_________ ______SYMR2_____, _SYMR1_

  /* ---------------------------------------------------------------------
   *
   *   Function Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │     │     │     │     │     │   │PrScn│ F7  │ F8  │ F9  │ F12 │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │ Del │ F4  │ F5  │ F6  │ F11 │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │     │     │     │     │     │   │Pause│ F1  │ F2  │ F3  │ F10 │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │ XXX ││     │     │   │ App │ Spc ││Enter│
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________FUNCTION_R1_______________ KC_PSCR,    KC_F7,   KC_F8,     KC_F9,     KC_F12
#define _________________FUNCTION_R2_______________ KC_DEL,     KC_F4,   KC_F5,     KC_F6,     KC_F11
#define _________________FUNCTION_R3_______________ KC_PAUSE,   KC_F1,   KC_F2,     KC_F3,     KC_F10

#define ______FUNR2_____ KC_APP, KC_SPC
#define _FUNR1_ KC_ENT
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
   *     │Home │PgDn │PgUp │ End │ Ins │   │LANG │QWRTY│     │     │WKMN │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  ←  │  ↓  │  ↑  │  →  │ Cap │   │     │     │     │     │     │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ XXX │ XXX │ XXX │ XXX │ XXX │   │     │     │     │     │     │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │ ESC ││BSpc │ Tab │   │     │ XXX ││     │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________NAVIGATION_L1_____________ KC_HOME,    KC_PGDN,   KC_PGUP,     KC_END,     KC_INS
#define _________________NAVIGATION_L2_____________ KC_LEFT,    KC_DOWN,   KC_UP,       KC_RGHT,    KC_CAPS
#define _________________NAVIGATION_L3_____________ _________________DISABLED__________________

#define _NAVL1_ KC_ESC
#define ______NAVL2_____ KC_BSPC, KC_TAB
#define _______NAVIGATION_L4_____ _NAVL1_, ______NAVL2_____

  /* ---------------------------------------------------------------------
   *
   *   Mouse Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │ WH← │ WH↓ │ WH↑ │ WH→ │ XXX │   │LANG │QWRTY│     │     │WKMN │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ M ← │ M ↓ │ M ↑ │ M → │ XXX │   │     │     │     │     │     │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ XXX │ XXX │ XXX │ XXX │ XXX │   │     │     │     │     │     │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │M-BTN││L-BTN│R-BTN│   │ XXX │     ││     │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________MOUSE_L1__________________ KC_WH_L,    KC_WH_D,   KC_WH_U,     KC_WH_R,    XXXXXXX
#define _________________MOUSE_L2__________________ KC_MS_L,    KC_MS_D,   KC_MS_U,     KC_MS_R,    XXXXXXX
#define _________________MOUSE_L3__________________ _________________DISABLED__________________

#define _MOUL1_ KC_BTN3
#define ______MOUL2_____ KC_BTN1, KC_BTN2
#define _______MOUSE_L4__________ _MOUL1_, ______MOUL2_____

  /* ---------------------------------------------------------------------
   *
   *   Media Layer
   *     ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
   *     │ XXX │ XXX │ XXX │ XXX │ XXX │   │LANG │QWRTY│     │     │WKMN │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │  ◀  │    │    │  ▶  │ XXX │   │     │     │     │     │     │
   *     ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
   *     │ XXX │ XXX │ XXX │ XXX │ XXX │   │     │     │     │     │     │
   *     └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
   *                ┌─────┐┌─────┬─────┐   ┌─────┬─────┐┌─────┐
   *                │    ││    │    │   │ XXX │     ││     │
   *                └─────┘└─────┴─────┘   └─────┴─────┘└─────┘
   */

#define _________________MEDIA_L1__________________ _________________DISABLED__________________
#define _________________MEDIA_L2__________________ KC_MPRV,    KC__VOLDOWN,   KC__VOLUP,     KC_MNXT,    XXXXXXX
#define _________________MEDIA_L3__________________ _________________DISABLED__________________

#define _MEDL1_ KC__MUTE
#define ______MEDL2_____ KC_MPLY, KC_MSTP
#define _______MEDIA_L4__________ _MEDL1_, ______MEDL2_____
