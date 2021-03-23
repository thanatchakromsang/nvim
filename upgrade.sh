OS="$(uname -a)"

case "$OS" in
  *Darwin*)
    ;;
  *arch*)
    yay -Syu
    ;;
esac

yarn global upgrade
