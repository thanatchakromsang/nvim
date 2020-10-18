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
#define Key_LeftParenthesis LSHIFT(Key_9)
#define Key_RightParenthesis LSHIFT(Key_0)

#define Key_LeftCurlyBracket LSHIFT(Key_LeftBracket)
#define Key_RightCurlyBracket LSHIFT(Key_RightBracket)
#define Key_Plus LSHIFT(Key_Equals)
#define Key_Pipe LSHIFT(Key_Backslash)
#define Key_Tlide LSHIFT(Key_Backtick)
#define Key_Colon LSHIFT(Key_Semicolon)
#define Key_Underscore LSHIFT(Key_Minus)

enum {
  BASE,
  NSL,
  NSSL,
  WORKMAN,
  NSL_WORKMAN,
  NSSL_WORKMAN,
  FUNCTION,
  NAVIGATION,
  MOUSE,
  MEDIA
};

/* *INDENT-OFF* */
KEYMAPS(

  /* [EXAMPLE] = KEYMAP_STACKED */
  /* ( */
  /*      ___      ,___      ,___      ,___      ,___ */
  /*     ,___      ,___      ,___      ,___      ,___ */
  /*     ,___      ,___      ,___      ,___      ,___      ,___ */
  /*     ,___      ,___      ,___      ,___      ,___      ,___ */

  /*               ,___      ,___      ,___      ,___      ,___ */
  /*               ,___      ,___      ,___      ,___      ,___ */
  /*     ,___      ,___      ,___      ,___      ,___      ,___ */
  /*     ,___      ,___      ,___      ,___      ,___      ,___ */
  /* ), */

  // Remapped some keys for Workman using OS Dependent Layout
  [BASE] = KEYMAP_STACKED
  (
       Key_Q      ,Key_W      ,Key_E          ,Key_R              ,Key_T
      ,CTL_T(A)   ,ALT_T(S)   ,GUI_T(D)       ,SFT_T(F)           ,Key_G
      ,Key_Z      ,Key_X      ,Key_C          ,Key_V              ,Key_B                    ,___
      ,___        ,___        ,___            ,LT(FUNCTION, Esc)  ,LT(NSL, Backspace)       ,LT(NSSL, Tab)

                              ,Key_Y                  ,Key_U                 ,Key_I            ,Key_O         ,Key_Quote
                              ,Key_H                  ,SFT_T(J)              ,GUI_T(K)         ,ALT_T(L)      ,CTL_T(Semicolon)
      ,___                    ,Key_N                  ,Key_M                 ,Key_Comma        ,Key_Period    ,Key_Slash
      ,LT(MOUSE, P) /* ; */   ,LT(NAVIGATION, Space)  ,LT(MEDIA, Enter)      ,___              ,___           ,___
  ),

  [NSL] = KEYMAP_STACKED
  (
       ___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,XXX      ,___

                              ,Key_LeftBracket        ,Key_7                 ,Key_8             ,Key_9          ,Key_RightBracket
                              ,Key_Equals             ,SFT_T(4)              ,GUI_T(5)          ,ALT_T(6)       ,CTL_T(P) /* ; */
      ,___                    ,Key_Backslash          ,Key_1                 ,Key_2             ,Key_3          ,Key_Backtick
      ,Key_Minus              ,Key_0                  ,Key_Period            ,___              ,___           ,___
  ),

  [NSSL] = KEYMAP_STACKED
  (
       ___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,XXX

                              ,Key_LeftCurlyBracket   ,Key_And              ,Key_Star         ,Key_LeftParenthesis      ,Key_RightCurlyBracket
                              ,Key_Plus               ,Key_Dollar           ,Key_Percent      ,Key_Caret                ,LSHIFT(Key_P)
      ,___                    ,Key_Pipe               ,Key_Exclamation      ,Key_At           ,Key_Hash                 ,Key_Tlide
      ,Key_Underscore         ,Key_RightParenthesis   ,Key_LeftParenthesis  ,___              ,___           ,___
  ),

  [WORKMAN] = KEYMAP_STACKED
  (
       Key_Q      ,Key_D      ,Key_R      ,Key_W            ,Key_B
      ,CTL_T(A)   ,ALT_T(S)   ,GUI_T(H)   ,SFT_T(T)         ,Key_G
      ,Key_Z      ,Key_X      ,Key_M      ,Key_C            ,Key_V                            ,___
      ,___        ,___        ,___        ,___              ,LT(NSL_WORKMAN, Backspace)       ,LT(NSSL_WORKMAN, Tab)

                                      ,Key_J                  ,Key_F            ,Key_U            ,Key_P        ,Key_Quote
                                      ,Key_Y                  ,SFT_T(N)         ,GUI_T(E)         ,ALT_T(O)     ,CTL_T(I)
      ,___                            ,Key_K                  ,Key_L            ,Key_Comma        ,Key_Period   ,Key_Slash
      ,LT(MOUSE, Semicolon)           ,LT(NAVIGATION, Space)  ,LT(MEDIA, Enter) ,___              ,___          ,___
  ),

  [NSL_WORKMAN] = KEYMAP_STACKED
  (
       ___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,XXX      ,___

                              ,Key_LeftBracket        ,Key_7                 ,Key_8             ,Key_9          ,Key_RightBracket
                              ,Key_Equals             ,SFT_T(4)              ,GUI_T(5)          ,ALT_T(6)       ,CTL_T(Semicolon)
      ,___                    ,Key_Backslash          ,Key_1                 ,Key_2             ,Key_3          ,Key_Backtick
      ,Key_Minus              ,Key_0                  ,Key_Period            ,___              ,___           ,___
  ),

  [NSSL_WORKMAN] = KEYMAP_STACKED
  (
       ___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,XXX

                              ,Key_LeftCurlyBracket   ,Key_And              ,Key_Star         ,Key_LeftParenthesis      ,Key_RightCurlyBracket
                              ,Key_Plus               ,Key_Dollar           ,Key_Percent      ,Key_Caret                ,Key_Colon
      ,___                    ,Key_Pipe               ,Key_Exclamation      ,Key_At           ,Key_Hash                 ,Key_Tlide
      ,Key_Underscore         ,Key_RightParenthesis   ,Key_LeftParenthesis  ,___              ,___           ,___
  ),

  [FUNCTION] = KEYMAP_STACKED
  (
       ___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,XXX      ,___      ,___

                              ,Key_PrintScreen    ,Key_F7       ,Key_F8       ,Key_F9       ,Key_F12
                              ,Key_Delete         ,SFT_T(F4)    ,GUI_T(F5)    ,ALT_T(F6)    ,CTL_T(F11)
      ,___                    ,Key_Pause          ,Key_F1       ,Key_F2       ,Key_F3       ,Key_F10
      ,Key_PcApplication      ,Key_Space          ,Key_Enter    ,___          ,___          ,___
  ),

  [NAVIGATION] = KEYMAP_STACKED
  (
       Key_End          ,Key_PageUp           ,Key_PageDown     ,Key_Home         ,Key_Insert
      ,Key_LeftArrow    ,Key_DownArrow        ,Key_UpArrow      ,Key_RightArrow   ,Key_CapsLock
      ,LockLayer(BASE)  ,LockLayer(WORKMAN)   ,XXX              ,XXX              ,XXX                ,___
      ,___              ,___                  ,___              ,Key_Esc          ,Key_Backspace      ,Key_Tab

                ,___      ,___      ,___      ,___      ,___
                ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,XXX      ,___      ,___      ,___      ,___
  ),

  [MOUSE] = KEYMAP_STACKED
  (
       Key_mouseScrollL   ,Key_mouseScrollDn    ,Key_mouseScrollUp    ,Key_mouseScrollR   ,XXX
      ,Key_mouseL         ,Key_mouseDn          ,Key_mouseUp          ,Key_mouseL         ,XXX
      ,LockLayer(BASE)    ,LockLayer(WORKMAN)   ,XXX                  ,XXX                ,XXX                ,___
      ,___                ,___                  ,___                  ,Key_mouseBtnM      ,Key_mouseBtnL      ,Key_mouseBtnR

                ,___      ,___      ,___      ,___      ,___
                ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,XXX      ,___      ,___      ,___      ,___      ,___
  ),

  [MEDIA] = KEYMAP_STACKED
  (
       XXX                          ,XXX                  ,XXX            ,XXX                      ,XXX
      ,Consumer_ScanPreviousTrack   ,Key_VolumeDown       ,Key_VolumeUp   ,Consumer_ScanNextTrack   ,XXX
      ,LockLayer(BASE)              ,LockLayer(WORKMAN)   ,XXX            ,XXX                      ,XXX                ,___
      ,___                          ,___                  ,___            ,Consumer_Mute            ,Consumer_Play      ,Consumer_Pause

                ,___      ,___      ,___      ,___      ,___
                ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,___      ,___      ,___      ,___
      ,___      ,___      ,XXX      ,___      ,___      ,___
  ),
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
    Layer.move(BASE);
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
