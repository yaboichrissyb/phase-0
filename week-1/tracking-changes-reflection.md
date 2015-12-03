How does tracking and adding changes make developers' lives easier?

Tracking and adding changes helps individual developers as well as teams of developers track why and when changes are made as well as who is making the changes.  It allows them to track back in the case of bugs or damage to the original code.

What is a commit?

A commit is a bundled series of changes that are saved together and marked with comments that describe what changes the commit represents as well as when the changes were made and by whom.

What are the best practices for commit messages?

You should have a header that clearly states the changes made, generally less than 50 characters.  You should speak in the present tense ot represent what will be done to the code when/if the commit is added to the original code.  And you should format the body column at 72 characters with a space of 4 characters on either side.

What does the HEAD^ argument mean?

The HEAD^ argument represents the last commit.  This can be helpful if you commit some changes and later on decide that you want to change the files.  To do this, you can use the command: git reset --soft HEAD^

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The 3 stages are: changes not staged for commit, changes to be committed, and untracked files.  Untracked files can be added using 'git add'.

Write a handy cheatsheet of the commands you need to commit your changes.

1: You first want to create a branch off of the master using 'git checkout -b "branch-name"'.  This will navigate you to the new branch you've just created.
2: From there, you want to edit or add something to the working file so you later have something to add and commit.
3: From here, you may want to check status using 'git status'.  Here, it will tell you that there are untracked changes so you'll want to add those.
4: Use 'git add .' To add everything in the current directory.  You can also replace the '.' with the file name.  Use 'git status' and you should see that the file is ready to be committed.
5: Now you need to commit this addition using 'git commit -m "commit message body"'
6: After that, you want to push this branch to the master using git push origin new-branch.

What is a pull request and how do you create and merge one?

A pull request is the method used to merge the new branch to the master branch.

Why are pull requests preferred when working with teams?

Pull requests allow teams to track the changes made by individuals and gives the project manager or maintainer the power to allow or disallow new branches to be pulled into the master.