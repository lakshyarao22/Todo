#!/bin/sh
mv todo ~/.local/bin
case "$SHELL" in
  /bin/bash) echo "echo -e '\e[1;31m TODO: \e[0m'" >> ~/.bashrc ; echo '"cat" ~/TodoList' >> ~/.bashrc
  ;;
  /bin/zsh) echo "echo -e '\e[1;31m TODO: \e[0m'" >> $ZDOTDIR/.zshrc ; echo '"cat" ~/TodoList' >> $ZDOTDIR/.zshrc
  ;;
  *) echo "Add Following lines to your shell config file" ; echo "echo -e '\e[1;31m TODO: \e[0m'"  ; echo '"cat" ~/TodoList' 
  ;;
esac
touch ~/TodoList
echo -e "\e[1;34m Congratulations!! \e[0m"
echo -e "Now use \e[1;31m todo party tonight \e[0m to add a reminder to party"
