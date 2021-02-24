#!/bin/bash
#


# set username and email
git config --global user.name Gena-pm
git config --global user.email gena_pm@gbg.bg

#variables that are used
username="gena-pm"
dir_name="endavaproject1"


# create dir in home folder
cd ~
rm -rf $dir_name
mkdir $dir_name
cd $dir_name



# create repo
	
reponame=$dir_name
echo "Creating Github repository '$reponame' ... but does not work"
#curl -u $username  -d '{"name":"'$reponame'"}' https://api.github.com/user/repos

echo " done."

# copy script to created folder
echo "copy script to directory ..."
cp $HOME/gitProjectScript.sh $HOME/$dir_name/gitProjectScript.sh
echo " done."

# add script file and push to remote repo
echo "Pushing to remote ..."
git init
git add gitProjectScript.sh
git commit -m "first commit add script file to git"
git remote rm origin
git remote add origin https://github.com/$username/$reponame.git
git push -u origin master
echo " done."

# print current date and time to file
date > filevreme
git add filevreme
git commit -m "add filevreme"
git push  origin master

# create branch1 
git checkout -b branch1
date >> filevreme
git add filevreme
git commit -m "commit branch1 filevreme"
git push origin branch1