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

#include QMK_KEYBOARD_H
#include "version.h"
#include "thanatchaya.h"

enum custom_keycodes {
#ifdef ORYX_CONFIGURATOR
  VRSN = EZ_SAFE_RANGE,
#else
  VRSN = SAFE_RANGE,
#endif
  RGB_SLD
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
[QWERTY_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________QWERTY_L1_________________,      _______,             _______,      _________________QWERTY_R1_________________,  _______,
  _______,  _________________QWERTY_L2_________________,                                         _________________QWERTY_R2_________________,  _______,
  _______,  _________________QWERTY_L3_________________,      _______,             _______,      _________________QWERTY_R3_________________,  _______,
  _______,  _______,  _______,  _______,  _MODL1_,                                                     _MODR1_,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            ______MODL2_____, _______,             _______, ______MODR2_____
),

[WORKMAN_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________WORKMAN_L1________________,      _______,             _______,      _________________WORKMAN_R1________________,  _______,
  _______,  _________________WORKMAN_L2________________,                                         _________________WORKMAN_R2________________,  _______,
  _______,  _________________WORKMAN_L3________________,      _______,             _______,      _________________WORKMAN_R3________________,  _______,
  _______,  _______,  _______,  _______,  _MODL1_,                                                     _MODR1_,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            ______MODL2_____, _______,             _______, ______MODR2_____
),

[NUMBER_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________TRANSPARENT_______________,      _______,             _______,      _________________NUMBER_R1_________________,  _______,
  _______,  _________________TRANSPARENT_______________,                                         _________________NUMBER_R2_________________,  _______,
  _______,  _________________TRANSPARENT_______________,      _______,             _______,      _________________NUMBER_R3_________________,  _______,
  _______,  _______,  _______,  _______,  _______,                                                     _NUMR1_,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            _______, _______, _______,             _______, ______NUMR2_____
),

[SYMBOL_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________TRANSPARENT_______________,      _______,             _______,      _________________SYMBOL_R1_________________,  _______,
  _______,  _________________TRANSPARENT_______________,                                         _________________SYMBOL_R2_________________,  _______,
  _______,  _________________TRANSPARENT_______________,      _______,             _______,      _________________SYMBOL_R3_________________,  _______,
  _______,  _______,  _______,  _______,  _______,                                                     _SYMR1_,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            _______, _______, _______,             _______, ______SYMR2_____
),

[FUNCTION_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________TRANSPARENT_______________,      _______,             _______,      _________________FUNCTION_R1_______________,  _______,
  _______,  _________________TRANSPARENT_______________,                                         _________________FUNCTION_R2_______________,  _______,
  _______,  _________________TRANSPARENT_______________,      _______,             _______,      _________________FUNCTION_R3_______________,  _______,
  _______,  _______,  _______,  _______,  _______,                                                     _FUNR1_,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            _______, _______, _______,             _______, ______FUNR2_____
),

[NAVIGATION_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________NAVIGATION_L1_____________,      RESET,               _______,      _________________LANGUAGE_SWITCHER_________,  _______,
  _______,  _________________NAVIGATION_L2_____________,                                         _________________TRANSPARENT_______________,  _______,
  _______,  _________________NAVIGATION_L3_____________,      _______,             _______,      _________________TRANSPARENT_______________,  _______,
  _______,  _______,  _______,  _______,  _NAVL1_,                                                     _______,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            ______NAVL2_____, _______,             _______, _______, _______
),

[MOUSE_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________MOUSE_L1__________________,      RESET,               _______,      _________________LANGUAGE_SWITCHER_________,  _______,
  _______,  _________________MOUSE_L2__________________,                                         _________________TRANSPARENT_______________,  _______,
  _______,  _________________MOUSE_L3__________________,      _______,             _______,      _________________TRANSPARENT_______________,  _______,
  _______,  _______,  _______,  _______,  _MOUL1_,                                                     _______,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            ______MOUL2_____, _______,             _______, _______, _______
),

[MEDIA_LAYER] = LAYOUT_ergodox_ez_wrapper(
  _______,  _______,  _______,  _______,  _______,  _______,  _______,             _______,  _______,  _______,  _______,  _______,  _______,  _______,
  _______,  _________________MEDIA_L1__________________,      RESET,               _______,      _________________LANGUAGE_SWITCHER_________,  _______,
  _______,  _________________MEDIA_L2__________________,                                         _________________TRANSPARENT_______________,  _______,
  _______,  _________________MEDIA_L3__________________,      _______,             _______,      _________________TRANSPARENT_______________,  _______,
  _______,  _______,  _______,  _______,  _MEDL1_,                                                     _______,  _______,  _______,  _______,  _______,

                                                     _______, _______,             _______, _______,
                                                              _______,             _______,
                                            ______MEDL2_____, _______,             _______, _______, _______
)

};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    switch (keycode) {
      case VRSN:
        SEND_STRING (QMK_KEYBOARD "/" QMK_KEYMAP " @ " QMK_VERSION);
        return false;
      #ifdef RGBLIGHT_ENABLE
      case RGB_SLD:
        rgblight_mode(1);
        return false;
      #endif
    }
  }
  return true;
}

/* // Runs just one time when the keyboard initializes. */
/* void keyboard_post_init_user(void) { */
/* #ifdef RGBLIGHT_COLOR_LAYER_0 */
/*   rgblight_setrgb(RGBLIGHT_COLOR_LAYER_0); */
/* #endif */
/* }; */

/* // Runs whenever there is a layer state change. */
/* layer_state_t layer_state_set_user(layer_state_t state) { */
/*   ergodox_board_led_off(); */
/*   ergodox_right_led_1_off(); */
/*   ergodox_right_led_2_off(); */
/*   ergodox_right_led_3_off(); */

/*   uint8_t layer = get_highest_layer(state); */
/*   switch (layer) { */
/*       case 0: */
/*         #ifdef RGBLIGHT_COLOR_LAYER_0 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_0); */
/*         #endif */
/*         break; */
/*       case 1: */
/*         ergodox_right_led_1_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_1 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_1); */
/*         #endif */
/*         break; */
/*       case 2: */
/*         ergodox_right_led_2_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_2 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_2); */
/*         #endif */
/*         break; */
/*       case 3: */
/*         ergodox_right_led_3_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_3 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_3); */
/*         #endif */
/*         break; */
/*       case 4: */
/*         ergodox_right_led_1_on(); */
/*         ergodox_right_led_2_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_4 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_4); */
/*         #endif */
/*         break; */
/*       case 5: */
/*         ergodox_right_led_1_on(); */
/*         ergodox_right_led_3_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_5 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_5); */
/*         #endif */
/*         break; */
/*       case 6: */
/*         ergodox_right_led_2_on(); */
/*         ergodox_right_led_3_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_6 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_6); */
/*         #endif */
/*         break; */
/*       case 7: */
/*         ergodox_right_led_1_on(); */
/*         ergodox_right_led_2_on(); */
/*         ergodox_right_led_3_on(); */
/*         #ifdef RGBLIGHT_COLOR_LAYER_7 */
/*           rgblight_setrgb(RGBLIGHT_COLOR_LAYER_7); */
/*         #endif */
/*         break; */
/*       default: */
/*         break; */
/*     } */

/*   return state; */
/* }; */
