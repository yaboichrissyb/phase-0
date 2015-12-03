# 1.1 Think About Time Reflection
Which time management and productivity ideas did you learn about?

I learned about the Time Box approach, mindfulness meditation, and tiny habits.

What is "Time Boxing?" How can you use it in Phase 0?

"Time Boxing" is an approach where you set aside a certain amount of time, it could be minutes, hours, or even days, and you work towards completion of a certain task during that time.  When the time runs out, you take a break to do something completely different.  With repetition and a mindful approach, the idea is that you will gradually improve your time management, focus and overall productivity.  You may be able to begin move from a half hour "Time Box" to a full hour and maybe even more, but it's important to set realistic goals for yourself and be honest about how best to go about improving your individual productivity.

In Phase 0, I think "Time Boxing" could be useful for completing all sorts of individual or even partnered tasks.  With practice, it will help me focus on one task at a time and to learn what takes the most time and why.  Not only does it seem like I'd be more productive within the timebox, but by giving myself short breaks between timeboxes, I could avoid burnout or discouragement by giving my mind time to reboot.


How do you manage your time currently?

I'll be the first to admit that I'm not the best at managing time.  I do best under imposed structure and am not always very good at setting my own.  I currently set my priority tasks for a day or given period of time, sometimes I do this with a list or set reminders on my phone, and go about completing them.  If it's a task that I expect to complete quickly, I simply move from one task to the next.  If it's a longer term project I may decide I'll devote an hour a day to it until it's done.  If it's an ongoing skill I'm developing I try to hit a daily or weekly quota of time spent on that or related tasks.  If it's a really big or complex project, I find it helps to break it down into component parts and go about completing each part with breaks in between.


Is your current strategy working? If not, why not?

While these are things I often do, I just as often fail to manage my time effectively and often procrastinate or even invent easier/less painful tasks to do while avoiding the challenging ones.  If I want to do something I will generally eventually do it, it's simply a matter of when.  I am more likely to do the tasks that I enjoy doing rather than the ones where the outcome is the only payoff.

Can/will you employ any of them? If so, how?

I can and will employ these strategies but I think they'd be even more effective in the framework of the "Time Box" approach.  I have for some time and would like to continue using mindfulness meditation to improve focus within the timebox periods.  I can use the "Tiny Habits" idea of triggers to ensure that I spend a certain amount of time meditating at the beginning of the day while or after I make my coffee.


What is your overall plan for Phase 0 time management?

I will continue to use mindfulness meditation to work on my focus with the "Getheadspace" mobile app.  I will cultivate this and other healthy/productive habits through the use of the "Tiny Habits" existing actions framework of 'when I do (existing action), I will do (new habit),' keeping in mind the motivation/difficulty tradeoff.  I'll complete assignments within timeboxes, starting small and hopefully working towards at least an hour at a time.  Overall I will try to spend significant periods of time on assignments each morning, leaving afternoons for review and revision, but I'll also try to pay closer attention to when and where I'm most naturally productive.
## 1.2 The Command Line Reflection
What is a shell? What is "bash?"

The shell is essentially the operating CLI software, or classic user interface.  It is different from the GUI (Graphic User Interface) in that all user-computer interaction is done through the command line.  Bash is the type of shell I have for Unix.


What was the most challenging for you in going through this material?

The most challenging things were understanding different terms and envisioning a practical application, from where my computer skills are now, for all the different commands and tools this crash course covered.  Some of the language in the course is obviously precise but inaccessible and somewhat difficult to get used to.  This was probably most difficult for understanding the "env" variable and the |, <, >, and >> modifiers.


Were you able to successfully use all of the commands?

Yes, I often made simple typo mistakes or didn't follow all instructions necessarily in order, but when I went back and reviewed I was able to see the mistakes.  None of the commands are difficult to use if you understand what and how they are used.


In your opinion, what are the most important commands and arguments to know?

The simple navigation commands seem useful ( cd, ls, rmdir, pushd, popd ) as well as the ones that let you manipulate files (cp, mv, mkdir, rmdir, touch, cat, less, especially with the -rf modifier), but over time I think I'll find the searching tools to be most useful like "grep" and "find" for locating files or parts of files and then using the other commands to manipulate those selected parts.


Can you remember what each of the following does of the top of your head? Write what each does.

pwd: print working directory, this tells you what folder you are currently in, it's helpful if you're lost or confused

ls: this lists all of the contents of the current directory, including files and subfolders

mv: this moves and copies and a selected file

cd: this changes your current directory either down by inputting a specific destination folder or up by using ".."

../: this, in conjunction with cd, allows you to move up the directory tree to the directory your current directory is in and all the way up to the user and home directory.

touch: this allows you to create a new empty file

mkdir: this allows you to make a new folder

less: this allows you to page through or examine the contents of a file

rmdir: this allows you to get rid of a folder, if you want to delete a folder that contains files or subfolders, you need to use the -rf modifier.

rm: this allows you to remove files

help: this gives you information on your current shell and information about various functions.


### 1.4 Forking and Cloning Reflection
If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

To create a new repository, you first need to navigate to your GitHub.com profile.  Once there, find the "+" icon in the upper right-hand corner, between the bell icon and your profile icon.  Select the "+" icon and scroll down to "new repository", then select which individual or group account you would like to create the new repository in.  Depending on your use of the repository, you may want to make it private or change the license.

To fork a repository, simply go to the repository page and find the fork icon in the upper right-hand corner, just below the "+" icon.  Select the fork icon and select which account you would like to fork the repository to.

To clone a repository, copy the URL from the repository page.  Not the one listed in the browser header but just below the green line in the HTTPS text box.  Open your command line and navigate to your desktop or phase-0 folder, wherever you will be storing your phase-0 work.  Enter "git clone" and the pasted URL in the command line.  Then, navigate to the cloned repository and use "ls" to ensure that the clone's contents are identical to the original repository.

Forking a repository allows you to make an identical copy and store it in a separate account.  This allows you to make changes to and experiment with the forked repository without altering the original.


What struggles did you have setting up git and GitHub? What did you learn in the process?

I didn't have any significant struggles in setting up git and GitHub, but it did help to reinforce the use and usefulness of certain command line commands as well as further illustrate the relationship and differences between git and GitHub.

