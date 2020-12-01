setopt +o nomatch
for file in ~/.zshrc.d/*.(zshrc|zsh|sh); do
    [[ -e $file ]] || continue
    source $file
done