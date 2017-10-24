
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



