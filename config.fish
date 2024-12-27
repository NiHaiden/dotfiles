nvm use latest
starship init fish | source
alias ls="eza --color=auto --git --no-filesize --icons=always --no-time --no-user --no-permissions"

alias sshnokey="ssh -o PubkeyAuthentication=no -o PreferredAuthentications=password"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
