#Author : Xerxis Anthony B. Alvar ( kaixerosft@gmail.com )
#Usage : ./thisfile.sh "project_folder"

if [ -z "$1" ]; then
        echo "Please provide project folder name after this file"
        exit
fi

REPOFOLDER=/var/repo/
WEBROOTFOLDER=/var/www/apps.flok.co/
PROJECTNAME=$1
REPOPATH=$REPOFOLDER$PROJECTNAME.git
WEBPATH=$WEBROOTFOLDER$PROJECTNAME

if [ ! -d "$PROJECTNAME" ]; then
        rm -rf $REPOPATH
        rm -rf $WEBPATH
fi

mkdir $REPOPATH && cd $REPOPATH
git init --bare

chmod 775 -R $REPOPATH

echo "#!/bin/sh
git checkout -f" > $REPOPATH/hooks/post-receive
chmod +x $REPOPATH/hooks/post-receive

mkdir $WEBPATH

chmod 775 -R $WEBPATH

git config --bool core.bare false
git config --path core.worktree $WEBPATH
git config receive.denycurrentbranch ignore


echo "Here's your project details:
GIT URL : ssh://<ssh_user>@<server_ip>/$REPOPATH
WEB URL : http://domain.com/$PROJECTNAME
How to clone :
git clone -o production ssh://<ssh_user>@<server_ip>$REPOPATH local_folder
or if you have already a working folder
git remote add production ssh://<ssh_user>@<server_ip>$REPOPATH
"

