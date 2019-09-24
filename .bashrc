alias  y='yarn'
alias yr='yarn run $1'
alias ya='yarn add $1'
alias yr='yarn remove $1'
alias ..='cd ../'

alias gc='git clone $1'
alias nr='npm run $1'
alias ds2019='source ds2019/bin/activate'
alias lzd='lazydocker'

# opam configuration
test -r /Users/ergop/.opam/opam-init/init.sh && . /Users/ergop/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ergop/Dev/google-cloud-sdk/google-cloud-sdk/completion.bash.inc'; fi
eval "$(plenv init -)"

source /Users/ergop/github/git/contrib/completion/git-completion.bash

eval "$(starship init bash)"
