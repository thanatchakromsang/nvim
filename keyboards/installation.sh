#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "*** Initialize submodule... ***"
git submodule update

echo "*** QMK Setup... ***"
qmk setup --home $DIR/qmk

echo "*** QMK Dependencies Setup... ***"
$DIR/qmk/util/qmk_install.sh

