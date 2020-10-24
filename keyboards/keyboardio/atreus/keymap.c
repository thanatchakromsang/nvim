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
#include "thanatchaya.h"

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [QWERTY_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________QWERTY_L1_________________,                    _________________QWERTY_R1_________________,
    _________________QWERTY_L2_________________,                    _________________QWERTY_R2_________________,
    _________________QWERTY_L3_________________, _______,  _______, _________________QWERTY_R3_________________,
    _______, _______, _______, _______MODIFIER_L________,  _______MODIFIER_R________, _______, _______, _______
  ),


  [WORKMAN_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________WORKMAN_L1________________,                    _________________WORKMAN_R1________________,
    _________________WORKMAN_L2________________,                    _________________WORKMAN_R2________________,
    _________________WORKMAN_L3________________, _______,  _______, _________________WORKMAN_R3________________,
    _______, _______, _______, _______MODIFIER_L________,  _______MODIFIER_R________, _______, _______, _______
  ),

  [NUMBER_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________TRANSPARENT_______________,                    _________________NUMBER_R1_________________,
    _________________TRANSPARENT_______________,                    _________________NUMBER_R2_________________,
    _________________TRANSPARENT_______________, _______,  _______, _________________NUMBER_R3_________________,
    _______, _________________TRANSPARENT_______________,  _______NUMBER_R4_________, _______, _______, _______
  ),

  [SYMBOL_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________TRANSPARENT_______________,                    _________________SYMBOL_R1_________________,
    _________________TRANSPARENT_______________,                    _________________SYMBOL_R2_________________,
    _________________TRANSPARENT_______________, _______,  _______, _________________SYMBOL_R3_________________,
    _______, _________________TRANSPARENT_______________,  _______SYMBOL_R4_________, _______, _______, _______
  ),

  [FUNCTION_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________TRANSPARENT_______________,                    _________________FUNCTION_R1_______________,
    _________________TRANSPARENT_______________,                    _________________FUNCTION_R2_______________,
    _________________TRANSPARENT_______________, _______,  _______, _________________FUNCTION_R3_______________,
    _______, _________________TRANSPARENT_______________,  _______FUNCTION_R4_______, _______, _______, _______
  ),

  [NAVIGATION_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________NAVIGATION_L1_____________,                    _________________LANGUAGE_SWITCHER_________,
    _________________NAVIGATION_L2_____________,                    _________________TRANSPARENT_______________,
    _________________NAVIGATION_L3_____________, _______,  _______, _________________TRANSPARENT_______________,
    _______, _______, _______, _______NAVIGATION_L4_____,  _________________TRANSPARENT_______________, _______
  ),

  [MOUSE_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________MOUSE_L1__________________,                    _________________LANGUAGE_SWITCHER_________,
    _________________MOUSE_L2__________________,                    _________________TRANSPARENT_______________,
    _________________MOUSE_L3__________________, _______,  _______, _________________TRANSPARENT_______________,
    _______, _______, _______, _______MOUSE_L4__________,  _________________TRANSPARENT_______________, _______
  ),

  [MEDIA_LAYER] = LAYOUT_keyboardio_atreus_wrapper(
    _________________MEDIA_L1__________________,                    _________________LANGUAGE_SWITCHER_________,
    _________________MEDIA_L2__________________,                    _________________TRANSPARENT_______________,
    _________________MEDIA_L3__________________, _______,  _______, _________________TRANSPARENT_______________,
    _______, _______, _______, _______MEDIA_L4__________,  _________________TRANSPARENT_______________, _______
  )
};
