unsetopt BG_NICE

source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jump
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

source ~/.history.zsh

# pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NODE_PATH=$NODE_PATH:`npm root -g`

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR=nvim

source ~/.aliases.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Use `` as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='``'
# Setting fd as the default source for fzf
# Follow symbolic links, and don't want it to exclude hidden files, use the following command
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH="$PATH:$HOME/.local/bin"

#Turn off all beeps
unsetopt BEEP

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
