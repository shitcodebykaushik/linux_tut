# GIT 
To exit from the git terminal that git log command just type `q` .
It is version control system .
It is  also known as the versioning system.
It is the terminal system tool
- Git is the software
- Git hub is the service provider.
- A git repository can be seen as a database containing all the information needed to retain and manage the revisions and history of a project. In git, repositories are used to retain a complete copy of the entire project throughout its lifetime. 
- Git is kind of the database .
- Inside the git there is two data structure - the object store and the index .
- The index is the temp data that is  private to the a repository and may be produced or edited as needed .
- Object store lies at the heart of the git's data storage mechanism . It contains the all imporatant information about and other  information required to rebuild any version or branch of the project .
-  Git have the four types of the objects .
   - blobs It represent the each version of the file
   - trees It represent the a single level of directory .It saves the blob IDs. 
   - commits It handle the change made into the repository . A directed a cyclic graph is use to handle the change .
   - tags 

- Git objects store is organized and implemented as storage system with the content addresses .


- Commit 
  - It is like checkpoint.
  - Every commit is dependent on the previous commit .
    - `Working dir` then git add ->`staging Area` -> Git commit ->  `Repo is created here` -> git push -> `Github`
    - `Write`->`Add`->`Commit` then we do commit .
    -`git add filename ` This keeps everything under the tracked zone
    -`git commit -m""` This need a msg now we are in the repo 
    stageand now everything is updated.
    - `git log` This is going to give you the information and all.
        - `git log --oneline` 
- Stagging 
       - It is the intermediate area before we commit the things.
       - 
- Configuration File
       - git config  --global
       - git config --local
       - git config  --global core.editor "code --wait"
- git ignore
  - This files keep the trace of Api keys and all other secreate key .
    - Use the gitignore generator to creat the file
    - cat .gitconfig this will give you the entire file.
       
- Branches
 -> Its an alternative timeline .
  Creating alternating timeline and working on it .
git branch  This will point toward the master.
The head is always towards the master .
`git checkout branch name` This will switch from one branch to another one.
`git branch` This command will let you know where your branch is pointing most of time it will pointing towards the latest .
`git switch -c dark-mode` This will create the branch and move you there .

# Merging
 Always move to the head branch 
 Then `git merge branch name` 
 After merging it will add the brach file into the main one .
 There is concept of conflicting so be aware of it .

 # Git diff
  -`Git diff` It show the difference between differenc same file in changes in line and little previous of it .
  `----` It means 
 `a` Representation of file one (`---`)
 `b` Represntation of file two (`+++`)
`git diff --staged ` This will give the details of `---` and `+++` Timeout .

 # Git stash 
 create a repo work and commit on main 
 Switch to another branch and work 
 Conflicting changes do not allow 

 # Git pull
  Always try to take time while doing this as it is sensitve things
  
# Git log 
- This will show the lof of the repo 
- `git log -- Express/` This will show the log of the particular dir of the repository.
- To get the exact commint from the time period we have options to git log --since="2023-04-02" -- until="2023-04-02" -- Express / this will give the log of particular date only .
# Git stat 
- git log --stat this will show the quicl review of the changes without needing to see the actual contents and contents changes .
- Alternative we have `git log -p` this will show the actual contents changes .

# Github CI-CD



# Env file 
- The .env file lets you customize your individual working environment variables.
# .gitignore 
 - We ignore these files in Git to specify intentionally untracked files that git should ignored ,these files and directories don't need to be versioned .
 ```-bash
 # Ignore all .log files
*.log

# Ignore the node_modules directory
node_modules/

# Ignore all .env files
.env

# Ignore build/ directory
/build/``` 
```
It keeps the repository clean and helps you to make sure to avoid security risks .

