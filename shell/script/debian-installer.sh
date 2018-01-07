#!/bin/sh

APT_TERMINAL=""
APT_GRAPHICAL=""
PIP=""

echo "#=================================#"
echo "# installing package apt-get      #"
echo "#=================================#"

# Terminal packages installer
echo "#=================================#"
echo "# install terminal package        #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo apt-get install $APT_TERMINAL
    sudo pip install $PIP
    echo "# setup terminal packages complete"
else
    echo "# aborted terminal packages setup"
fi

# Graphical packages installer
echo "#=================================#"
echo "# install graphical package       #"
echo "#=================================#"
echo -n "# answer 'y'es or 'n'o : "
read REPLY
if [[ "$REPLY" == "y" ]]; then
    sudo apt-get install $APT_GRAPHICAL
    echo "# setup graphical packages complete"
else
    echo "# aborted graphical packages setup"
fi
