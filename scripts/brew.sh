#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew install fontconfig

# Install other useful binaries.
declare -a bin=("git" "exa" "rg" "stow" "tig")

for i in "${bin[@]}"
do
   brew install "$i"
done


# development
declare -a dev=("node" "python3" "python2.7" "pip3" "neovim --with-override-system-vi")

for i in "${dev[@]}"
do
   brew install "$i"
done

# Remove outdated versions from the cellar.
brew cleanup

pip3 -q install neovim

if [[ $(program_is_installed fc-cache) -eq 1 ]]; then
  fc-cache $DOT/.font
fi

# # make sure rrdtool exists; else die with an error message
# type -P $RRDTOOL &>/dev/null || { echo "$RRDTOOL not found. Set \$RRDTOOL in $0"; exit 1; }

# # make sure dir exits; else create it
# [ -d $OUTDIR ] || mkdir -p $OUTDIR

# # make sure input file exits; else die with an error message
# [ -f $INFILE ] || { echo "$INFILE input file not found. set \$INFILE in $0"; exit 2; }
