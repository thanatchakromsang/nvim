#include "thanatchaya_combos.h"

enum combos {
  // General Combo
  DOT_QUOT_SLSH,
};

const uint16_t PROGMEM dot_quot_combo[] = {KC_DOT, KC_QUOT, COMBO_END};

combo_t key_combos[COMBO_COUNT] = {
  [DOT_QUOT_SLSH] = COMBO(dot_quot_combo, KC_SLSH),
};
