# Load pyenv automatically by appending
# the following to 
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :




export PYENV_ROOT="$HOME/.pyenv"
if [ -d "$PYENV_ROOT" ] ; then
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init - bash)"
fi