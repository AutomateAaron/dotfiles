

### Configure plugins ###
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion history)
ZSH_AUTOSUGGEST_USE_ASYNC=true


### zgenom ###

# Download zgenom, if it's not there yet.
[[ -f ${HOME}/.zgenom/zgenom.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"

# Load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

# Enable auto update
zgenom autoupdate --background


### Plugins ###
if ! zgenom saved; then

  zgenom load romkatv/powerlevel10k powerlevel10k # theme
  zgenom load zsh-users/zsh-completions           # completion

  zgenom load zdharma-continuum/fast-syntax-highlighting # syntax highlighting
  # zgenom load zsh-users/zsh-syntax-highlighting

  zgenom load zsh-users/zsh-autosuggestions # auto suggestions

  # Oh My Zsh
  zgenom ohmyzsh
  # zgenom ohmyzsh plugins/git
  zgenom ohmyzsh plugins/kubectl
  zgenom ohmyzsh plugins/gcloud
  zgenom ohmyzsh plugins/helm
  zgenom ohmyzsh plugins/docker
  zgenom ohmyzsh plugins/nvm

  # generate the init script from plugins above
  zgenom save

fi


### Non-plugin Auto Completion ###

# Terraform
if (( $+commands[terraform] ))
then
  complete -o nospace -C terraform terraform
fi