# Ctrl+Dでzshを終了しない
setopt ignore_eof

#同時に起動したzshの間でヒストリを共有する
setopt share_history
 
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd

# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# コマンドミスを修正
setopt correct

# 多分 zsh-completion
eval "$(plenv init -)"

# https://starship.rs/
eval "$(starship init zsh)"

b () { bat $@ }

y () { yarn $@ --ignore-engines}

n () { npm $@ }
nr () { npm run $@ }

t () { touch $@ }
mkd () { mkdir $@ }

gc () { git clone $@ }

gcc () { gcc-9 $@ }

m () { mdcat $@ }

# opam configuration
test -r /Users/ergop/.opam/opam-init/init.sh && . /Users/ergop/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/completion.zsh.inc'; fi

# https://www.robertcooper.me/elegant-development-experience-with-zsh-and-hyper-terminal
# Open .zshrc to be edited in VS Code
alias change="code ~/.zshrc"
# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"
# Uses the zsh precmd function hook to set the tab title to the current working directory before each prompt
function precmd () {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}
# https://github.com/athityakumar/colorls#installation
source $(dirname $(gem which colorls))/tab_complete.sh
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long' # detailed list view

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zshの補完で大文字を区別しない方法
# https://qiita.com/sims0728/items/0edd99a3c7d7247719cc
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
eval $(thefuck --alias)
