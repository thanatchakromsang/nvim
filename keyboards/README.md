# Personal QMK Keyboard configuration

My keyboard layout using 36 keys total

This is the source code for my keyboard layouts

```
.
├── ergodox-ez
│   ├── config.h      # Specific keyboard configuration
│   ├── keymap.c      # Keymap implementation
│   ├── ...
│   └── rules.mk      # Keymap make rules
├── ...
├── qmk               # QMK firmware source tree
│   └── ...
├── README.md
└── users                   # Keyboard/keymap-agnostic files
    └── thanatchaya
        ├── config.h        # Configuration applied across all keymaps
        ├── thanatchaya.c   # Global implementation file
        ├── thanatchaya.h   # Global header file
        ├── ...
        └── rules.mk        # Global make rules
```

# QMK Setup

```bash
./installation.sh
./symlinks.sh
```

# Flash Keyboard

## Flash Ergodox EZ

```bash
cd ./qmk

qmk flash -kb ergodox_ez -km thanatchaya
```
After flash one will need to use `RESET` key or use physical reset button
on the right side of the keyboard

## Flash Keyboardio/Atreus

```bash
cd ./qmk

qmk flash -kb keyboardio/atreus -km thanatchaya
```

After flash one will need to go to Atreus bootloader by unplug cable and then
plugged back holding press original `esc` key on the left side of the keyboards
or use physical reset button on middle of the back of the keyboard

```
Atreus Keyboard Layout
  ┌─────┬─────┬─────┬─────┬─────┐   ┌─────┬─────┬─────┬─────┬─────┐
  │     │     │     │     │     │   │     │     │     │     │     │
  ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
  │     │     │     │     │     │   │     │     │     │     │     │
  ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
  │     │     │     │     │     │   │     │     │     │     │     │
  ├─────┼─────┼─────┼─────┼─────┤   ├─────┼─────┼─────┼─────┼─────┤
  │ ESC │     │     │     │     │   │     │     │     │     │     │
  └─────┴─────┴─────┴─────┴─────┘   └─────┴─────┴─────┴─────┴─────┘
```
