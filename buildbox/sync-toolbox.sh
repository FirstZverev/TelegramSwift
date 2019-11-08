#/bin/sh
set -x
set -e

export PATH="$PATH:$HOME/.credentials"
source variables.sh

cd ..
if [ ! -d "./deploy" ]; then
    git clone "$deploy_repository" deploy
else
    cd ./deploy
    chmod -R a+rX ./
    git reset --hard
    git pull origin master
fi

