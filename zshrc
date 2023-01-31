# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -r "$HOME/.config/zi/init.zsh" ]]; then
  source "$HOME/.config/zi/init.zsh" && zzinit
fi

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# zinit load omz plugins
zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

# turbo mode async load plugins
zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice lucid wait="0" atload="zpcompinit; zpcdreplay"
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/.local/bin

if [[ `uname` == "Darwin" ]]; then
  [[ -s "$HOME/.dotfiles/zprofile.mac" ]] && \. "$HOME/.dotfiles/zprofile.mac"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then   
  [ -s "$HOME/.dotfiles/zprofile.linux" ] && \. "$HOME/.dotfiles/zprofile.linux"
elif [[ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]]; then    
  [ -s "$HOME/.dotfiles/zprofile.windows" ] && \. "$HOME/.dotfiles/zprofile.windows"
fi
