# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

if (( $+commands[pyenv] ))
then
  eval "$(pyenv virtualenv-init -)"
fi