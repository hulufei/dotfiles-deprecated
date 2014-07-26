ZSH_THEME="ys"

# git alias
git config --global alias.undo-commit 'reset --soft HEAD^'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
git config --global alias.amend-commit 'git commit --amend -C HEAD'

# Fix tmux status-utf8 issue, or force tmux to use utf8: `tmux -u`
# http://goo.gl/hxBM6q
export LANG=en_us.UTF-8

# Tmuxifier
export EDITOR=vim
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# fasd
eval "$(fasd --init auto)"
alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer

# so as not to be disturbed by Ctrl-S ctrl-Q in terminals
stty -ixon
