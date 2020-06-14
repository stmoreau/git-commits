# Fill in your git commits

- https://github-contributions.now.sh/ commit history from the beginning of github
- https://hackernoon.com/how-to-hack-github-kind-of-12b08a46d02e article where I found the script

```
priansh@laptop:~$ cd ~/Documents/github
priansh@laptop:~$ mkdir gitsploit # make the repo folder anywhere
priansh@laptop:~$ cd gitsploit && git init
priansh@laptop:~$ # Next we'll set up tracking a GitHub repo
priansh@laptop:~$ git remote add origin <YOUR GITHUB REPO LINK HERE>
priansh@laptop:~$ echo "Hello World" > README.md && git add --all
priansh@laptop:~$ git commit -m "init" && git push -u origin master
priansh@laptop:~$ wget https://git.io/vxnon -O a_million_commits.sh
priansh@laptop:~$ chmod a+x a_million_commits.sh # make executable
priansh@laptop:~$ ./a_million_commits.sh
```
