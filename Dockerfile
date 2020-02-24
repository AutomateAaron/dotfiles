FROM ubuntu:18.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    sudo

# Create User
RUN useradd -ms /bin/bash me
RUN usermod -aG sudo me
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


USER me
WORKDIR /home/me

RUN curl -sfL https://git.io/chezmoi | sh 

COPY --chown=me:me . ./.local/share/chezmoi

RUN ./bin/chezmoi init
RUN ./bin/chezmoi apply