# Aliases
if [ -f ~/.aliases ]; then
    source $HOME/.aliases
fi

# Theme with oh-my-posh
# https://ohmyposh.dev/
if [ -z $DISPLAY ]; then
    echo "Display not set, using minimal theme."
    eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/minimal.toml)"
else
    eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/theme.toml)"
fi

# zsh-syntax-highlighting plugin (Must be last)
# https://github.com/zsh-users/zsh-syntax-highlighting/
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "Failed to find zsh-syntax-highlighting plugin."
fi
