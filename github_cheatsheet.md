### Last update on 2018-06-12
### This entry is to describe the Git workflow and to leveraging it through L.A. Care's GitHub for Enterprise (https://dsghe.lacare.org) and Git Bash Command Line Interface (CLI)

Before diving into command line code, let's take a moment to walk through the different components of the Git workflow at L.A. Care.

![alt text](https://github.com/bshelton141/github_cheatsheet/blob/master/gitflow_single_branch.png)



Once Git Client has been installed on your machine, you can open Git Bash by searching in your Windows task bar for "Git Bash".

In Git Bash, sign-in with your GitHub Enterprise credentials
```
git config --global user.name "yourusername"
git config --global user.email "youruseremail"
```

Change to the correct directory in the terminal where you want the repository to land. Example:
```
cd ~/repo_dir
```


Download the GitHub repository: 
```
git clone https://dsghe.lacare.org/path_to/repository
```

Move into the new directory: 
```
cd repository
```



### UPDATE YOUR LOCAL REPOSITORY FROM GITHUB REMOTE

If you already have a copy of the GitHub remote repo on your local machine
then use the command line in this section to update the local version
to reflect the most current version on GitHub.


To pull all updates from remote to local (need to be in the correct directory for this to work):
```
git pull
```


### BRANCHING FROM ORIGIN REPOSITORY

This section allows you to branch off of a repository and make changes that are then proposed to the repo's owner
for either approval or further inquiry on GitHub.


To create a new branch use git branch:
```
git branch test1
```

Switch to the new branch:
```
git checkout test1
```

After you make your updates in the new branch, switch back to the master branch and do a new pull to ensure that there haven't been any changes from others on the master branch if there have, then you need to merge the updated master with your new branch:
```
git checkout master
git pull
git checkout test1
```

Only needed if there has been a change on the master:
```
git merge master
```

Commit and push the new file
```
git status
git add -A
git commit -m "proposed update message here"
git push --set-upstream origin test1
```

Once the push has been completed, create a new pull request on GitHub.

Once the pull request has been merged, then checkout the master branch locally, pull the updates to the local master, and delete the feature branch.
```
git checkout master
git pull
git branch -d test1
```
