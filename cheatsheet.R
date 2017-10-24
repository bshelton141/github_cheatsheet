
###################
# Intro
###################

#Change to the correct directory in the terminal where you want the repository to land.

#Download the GitHub repository: 
git clone https://github.com/bshelton141/github_cheatsheet

#Move into the new directory: 
cd github_cheatsheet

#Add or change files in the repository, then view the statuses of the files in the repository: 
git status

#Push the updates to a staging area: 
git add README.md

#Alternatively, push all (multiple file updates at once to the staging area): 
git add -A

#Commit the added updates to the repository (if you forget the -m, push “escape”, :wq, “enter”): 
git commit -m “update message here”

#View the repo’s history log:
git log

#Push the commit to the repository
git push

#To pull all updates from remote to local (need to be in the correct directory for this to work):
git pull


###################
# Pull requests, branching, and merging
###################

#to create a new branch use git branch:
git branch test1

#switch to the new branch:
git checkout test1

#after you make your updates in the new branch,
#switch back to the master branch and do a new pull to ensure that there haven't
#been any changes from others on the master branch
#if there have, then you need to merge the updated master with your new branch:
git checkout master
git pull
git checkout test1
#only needed if there has been a change on the master:
git merge master

#commit and push the new file
git status
git add -A
git commit -m "made a change"
git push

#to push with a different user name, 
#sign into the different account when pushing for the first time in the sesion
#here is another change

