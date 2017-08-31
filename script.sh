#!/usr/bin/env bash

sudo apt update
sudo apt upgrade

curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

EXEC $SHELL

pyenv install 3.5.3
pyenv global 3.5.3

pip install -r requirements.txt

sudo add-apt-repository ppa:staticfloat/juliareleases
sudo apt-get update

sudo apt install julia

julia -E "Pkg.add('IJulia')"
julia -E "Pkg.add('OhMyRepl')"
julia -E "Pkg.add('Gadfly')"
julia -E "using Gadfly"
julia -E "using IJulia"
