#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

#install homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Oh My Zsh
# https://github.com/robbyrussell/oh-my-zsh#via-curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install \
  fasd \
  fzf \
  rg \
  ctags \
  vim \
  ack \
  ag \
  zsh-completion \
  --HEAD universal-ctags/universal-ctags/universal-ctags

# zsh-autosuggestion
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# my vimrc
cd
git clone https://github.com/JacquesLeupin/vimrc
cd vimrc
./setup.sh

# Copy over .zshrc
cp ${DIR}/.zshrc ~/.zshrc
