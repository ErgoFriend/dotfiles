export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$HOME/flutter/bin


export PATH=$PATH:/Users/ergop/v
export PATH=$PATH:/Users/ergop/bin/slack-theme
export SLACK_THEME_SHELL_PROFILE="/Users/ergop/.zprofile"

export PATH="$HOME/.cargo/bin:$PATH"
# source /usr/local/opt/autoenv/activate.sh

export BAT_THEME="OneHalfDark"

export PATH=/usr/local/bin:$PATH

export MPIPATH=/usr/local/opt/open-mpi
export C_INCLUDE_PATH=$MPIPATH/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$MPIPATH/include:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=$MPIPATH/lib:$LIBRARY_PATH

export PATH=/Users/ergop/.gem/ruby/2.6.0/bin:$PATH