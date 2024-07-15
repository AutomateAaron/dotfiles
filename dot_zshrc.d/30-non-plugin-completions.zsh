### Non-plugin Auto Completion ###

# Terraform (not using omz plugin since it is out of date)
if (( $+commands[terraform] ))
then
  complete -o nospace -C terraform terraform
fi