export CLICOLOR=1
export TERM=xterm-256color
export LANG=ja_JP.UTF-8

alias vi='vim'

PROMPT="%F{green}[%D %*]%f %F{magenta}ace%f @ %F{cyan}%~%f"$'\n'"%F{yellow}%#%f "
# PS1='[%n@%m %* %~]%F '

memo() {
    local MEMO_DIR="$HOME/Documents/memo"
    mkdir -p "MEMO_DIR"
    local TODAY="$(date +%Y%m%d)"
    vim "$MEMO_DIR/$TODAY.md"
}
