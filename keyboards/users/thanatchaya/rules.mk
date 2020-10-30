SRC += thanatchaya.c

DEBOUNCE_TYPE = sym_eager_pr

ifeq ($(strip $(COMBO_ENABLE)), yes)
		SRC += thanatchaya_combos.c
endif
