#!/usr/bin/bash
### EXPORT ###
export GTK_IM_MODULE=ibus
export XMODIFIERS="@im=dbus"
export QT_IM_MODULE=ibus
#export QT_QPA_PLATFORMTHEME=qt6ct
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export XDG_SESSION_TYPE=wayland
export QT_QPA_PLATFORM=wayland
export ELECTRON_ENABLE_LOGGING=true
export ELECTRON_FLAGS="--enable-features=UseOzonePlatform --enable-gpu --ozone-platform=wayland"
export JAVA_HOME=$HOME/Android/Sdk
export HISTCONTROL=ignoreboth:erasedups
export _JAVA_AWT_WM_NONREPARENTING=1
export STUDIO_JDK=$HOME/Android/Sdk
export EDITOR='vim'
export VISUAL='vim'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='most'
export QT_QPA_PLATFORMTHEME=gtk4
#XDG_RUNTIME_DIR=/run/user/$(id -u)
#export XDG_RUNTIME_DIR
export EDITOR=vim
#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus
export PATH="$HOME/.local/sbin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/.git-radar


#PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return


#if [ -d "$HOME/.bin" ] ;
#  then PATH="$HOME/.bin:$PATH"
#fi

#if [ -d "$HOME/.local/bin" ] ;
#  then PATH="$HOME/.local/bin:$PATH"
#fi

#ignore upper and lowercase when TAB completion
#bind "set completion-ignore-case on"

#create a file called .bashrc-personal and put all your personal aliases
#if test -f ~/.bashrc-personal
#then
    source ~/.bashrc-personal
#fi
neofetch
eval "$(starship init bash)" 
