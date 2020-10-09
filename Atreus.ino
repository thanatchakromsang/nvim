/* -*- mode: c++ -*-
 * Atreus -- Chrysalis-enabled Sketch for the Keyboardio Atreus
 * Copyright (C) 2018, 2019  Keyboard.io, Inc
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef BUILD_INFORMATION
#define BUILD_INFORMATION "locally built"
#endif

#include "Kaleidoscope.h"
#include "Kaleidoscope-EEPROM-Settings.h"
#include "Kaleidoscope-EEPROM-Keymap.h"
#include "Kaleidoscope-FocusSerial.h"
#include "Kaleidoscope-Macros.h"
#include "Kaleidoscope-MouseKeys.h"
#include "Kaleidoscope-OneShot.h"
#include "Kaleidoscope-Qukeys.h"
#include "Kaleidoscope-SpaceCadet.h"



#define MO(n) ShiftToLayer(n)
#define TG(n) LockLayer(n)

enum {
  MACRO_QWERTY,
  MACRO_VERSION_INFO
};

#define Key_Exclamation LSHIFT(Key_1)
#define Key_At LSHIFT(Key_2)
#define Key_Hash LSHIFT(Key_3)
#define Key_Dollar LSHIFT(Key_4)
#define Key_Percent LSHIFT(Key_5)
#define Key_Caret LSHIFT(Key_6)
#define Key_And LSHIFT(Key_7)
#define Key_Star LSHIFT(Key_8)
#define Key_Plus LSHIFT(Key_Equals)

enum {
  QWERTY,
  WORKMAN,
  NUMBER,
  ARROW,
  MOUSE
};

/* *INDENT-OFF* */
KEYMAPS(
  [QWERTY] = KEYMAP_STACKED
  (
       Key_Q      ,Key_W      ,LT(ARROW, E)   ,Key_R            ,Key_T
      ,CTL_T(A)   ,ALT_T(S)   ,GUI_T(D)       ,SFT_T(F)         ,Key_G
      ,Key_Z      ,Key_X      ,Key_C          ,Key_V            ,Key_B                    ,LGUI(Key_Space)
      ,___        ,___        ,___            ,Key_Esc          ,LT(NUMBER, Backspace)    ,Key_Tab

                              ,Key_Y                  ,Key_U          ,LT(MOUSE, I)     ,Key_O         ,Key_P
                              ,Key_H                  ,SFT_T(J)       ,GUI_T(K)         ,ALT_T(L)      ,CTL_T(Semicolon)
      ,MoveToLayer(WORKMAN)   ,Key_N                  ,Key_M          ,Key_Comma        ,Key_Period    ,Key_Slash
      ,LSHIFT(Key_Tab)        ,LT(NUMBER, Space)  ,Key_Enter      ,___              ,___           ,___
  ),

  [WORKMAN] = KEYMAP_STACKED
  (
       Key_Q      ,Key_D      ,LT(ARROW, R)   ,Key_W            ,Key_B
      ,CTL_T(A)   ,ALT_T(S)   ,GUI_T(H)       ,SFT_T(T)         ,Key_G
      ,Key_Z      ,Key_X      ,Key_M          ,Key_C            ,Key_V                      ,LGUI(Key_Space)
      ,___        ,___        ,___            ,Key_Esc          ,LT(NUMBER, Backspace)      ,Key_Tab

                              ,Key_J                  ,Key_F      ,LT(MOUSE, U)     ,Key_P      ,Key_Semicolon
                              ,Key_Y                  ,SFT_T(N)   ,GUI_T(E)         ,ALT_T(O)   ,CTL_T(I)
      ,MoveToLayer(QWERTY)    ,Key_K                  ,Key_L      ,Key_Comma        ,Key_Period ,Key_Slash
      ,LSHIFT(Key_Tab)        ,LT(NUMBER, Space)  ,Key_Enter  ,___              ,___        ,___
  ),

  [NUMBER] = KEYMAP_STACKED
  (
       Key_F1         ,Key_F2         ,Key_F3         ,Key_F4       ,Key_F5
      ,CTL_T(1)       ,ALT_T(2)       ,GUI_T(3)       ,SFT_T(4)     ,Key_5
      ,Key_Backtick   ,Key_Backslash  ,Key_Semicolon  ,Key_Equals   ,Key_Minus        ,___
      ,___            ,___            ,___            ,Key_Esc      ,Key_Backspace    ,Key_F11

                      ,Key_F6           ,Key_F7               ,Key_F8       ,Key_F9       ,Key_F10
                      ,Key_6            ,SFT_T(7)             ,GUI_T(8)     ,ALT_T(9)     ,CTL_T(0)
      ,___            ,Key_LeftBracket  ,Key_RightBracket     ,Key_Comma    ,Key_Period   ,Key_Quote
      ,Key_F12        ,Key_Space        ,Key_Enter            ,___          ,___          ,___
  ),

  [ARROW] = KEYMAP_STACKED
  (
       LGUI(Key_Delete)     ,Key_PrintScreen  ,XXX          ,XXX            ,XXX
      ,Key_LeftControl      ,Key_LeftAlt      ,Key_LeftGui  ,Key_LeftShift  ,XXX
      ,XXX                  ,XXX              ,XXX          ,XXX            ,XXX              ,XXX
      ,___                  ,___              ,___          ,Key_Esc        ,Key_Backspace    ,XXX

                  ,XXX            ,XXX            ,XXX          ,XXX                ,XXX
                  ,Key_LeftArrow  ,Key_DownArrow  ,Key_UpArrow  ,Key_RightArrow     ,XXX
      ,___        ,XXX            ,XXX            ,XXX          ,XXX                ,XXX
      ,XXX        ,Key_Space      ,Key_Enter      ,___          ,___                ,___
  ),

  [MOUSE] = KEYMAP_STACKED
  (
       XXX      ,XXX              ,Key_mouseUp            ,XXX              ,XXX
      ,XXX      ,Key_mouseL       ,Key_mouseDn            ,Key_mouseR       ,XXX
      ,XXX      ,XXX              ,XXX                    ,XXX              ,XXX                  ,XXX
      ,___      ,___              ,___                    ,Key_mouseScrollL ,Key_mouseScrollUp    ,XXX

                ,XXX                ,Key_mouseBtnL    ,XXX          ,Key_mouseBtnR      ,XXX
                ,XXX                ,XXX              ,XXX          ,XXX                ,XXX
      ,___      ,XXX                ,XXX              ,XXX          ,XXX                ,XXX
      ,___      ,Key_mouseScrollDn  ,Key_mouseScrollR ,___          ,___                ,___
   )
)
/* *INDENT-ON* */

KALEIDOSCOPE_INIT_PLUGINS(
  EEPROMSettings,
  EEPROMKeymap,
  Focus,
  FocusEEPROMCommand,
  FocusSettingsCommand,
  OneShot,
  SpaceCadet,
  MouseKeys,
  Macros,
  Qukeys
);

const macro_t *macroAction(uint8_t macroIndex, uint8_t keyState) {
  switch (macroIndex) {
  case MACRO_QWERTY:
    // This macro is currently unused, but is kept around for compatibility
    // reasons. We used to use it in place of `MoveToLayer(QWERTY)`, but no
    // longer do. We keep it so that if someone still has the old layout with
    // the macro in EEPROM, it will keep working after a firmware update.
    Layer.move(QWERTY);
    break;
  case MACRO_VERSION_INFO:
    if (keyToggledOn(keyState)) {
      Macros.type(PSTR("Keyboardio Atreus - Kaleidoscope "));
      Macros.type(PSTR(BUILD_INFORMATION));
    }
    break;
  default:
    break;
  }

  return MACRO_NONE;
}

void setup() {
  Kaleidoscope.setup();
  // Qukeys configuration
  Qukeys.setHoldTimeout(200);
  Qukeys.setOverlapThreshold(90);

  // MouseKeys Configuration
  MouseKeys.speed = 40;
  MouseKeys.accelDelay = 200;
  MouseKeys.wheelSpeed = 4;
  SpaceCadet.disable();
  EEPROMKeymap.setup(10);
}

void loop() {
  Kaleidoscope.loop();
}
