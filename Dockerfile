# This is a work-in-pogress & not currently functional!
FROM alpine

RUN apk add zsh shadow chezmoi

RUN chsh -s /bin/zsh

RUN chezmoi init https://github.com/AaronNBrock/dotfiles.git

# ignoring template to avoid BitWarden login
RUN chezmoi apply -x templates

ENTRYPOINT ["/bin/zsh", "-l"]