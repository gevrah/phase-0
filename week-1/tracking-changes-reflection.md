	• **How does tracking and adding changes make developers' lives easier?**
		○ Tracking and adding changes make developers' lives easier by allowing them to see what changes were made and by who. This simplifies collaboration by allowing mistakes to be reverted to previous commits. Additionally, these changes can be peer reviewed before being merged with the master file. This minimizes errors and bugs.
	• **What is a commit?**
		○ A commit is a way to apply the changes made in a repository branch into the master file. It's essentially saving the changes made by an individual user into the collaborative file.
	• **What are the best practices for commit messages?**
		○ Commits (save points) should have thorough commit messages so as to know what is included in the change to the repository. Messages should read like commands.
		○ It's important to capitalize the first character
		○ The message should be 50 characters or less
			§ The first line should be like the subject line of an email
			§ A blank line separating the summary from the body is important
		○ The commit message should be written in the imperative form: "Fix bug" instead of "Fixed bug" or "Fixes bug."
	• **What does the HEAD^ argument mean?**
		○ HEAD^ is the last commit in a series of commits.
	• **What are the 3 stages of a git change and how do you move a file from one stage to the other?**
		○ Stage 1: Working - this is the process in which files are being changed before they can be added for a commit.
		○ Stage 2: Staged - files are finished being modified and are added and committed. The file is ready to go live on GitHub.
		○ Stage 3: Push Change - this is the process of pushing the change to the master branch for peer review and eventual merging.
	• **Write a handy cheatsheet of the commands you need to commit your changes.**
		○ git status
			§ Check the status of all files in local repo
			§ Possible outcomes of command:
				□ Changes not staged for commit
				□ Changes to be commited
				□ If created new files, then "Untracked files:"
				□ No changes would return message:
					® On branch master nothing to commit, working directory clean
		○ git log
			§ Commits (save points) should have good commit messages so as to know what is included.
		○ git reset --soft HEAD^
			§ HEAD is the commit that one is currently working on while HEAD^ is the last commit.
			§ HEAD~3, HEAD~4, HEAD~5 are the 3rd, 4th and 5th commit from the HEAD respectively
		○ git checkout -b branch_name
			§ Creates a new branch within a repository that has been navigated to.
		○ git add
			§ To add new, untracked files to include in what's to be committed
			§ To remove a file from the added section, use "git reset HEAD …"
		○ git commit -m "commit message"
			§ Typing commit messages to terminal
		○ git push origin branch_name
			§ Can only push changes that have been committed. 
		○ git checkout master
			§ This command is used to verify that there are no different versions of a repository locally and remotely.
		○ git pull origin master
			§ Git pull fetches changes from the remote depository and merges them. If message states already up to date, there are are no changes to pull.
		○ git checkout feature-branch-name
			§ This navigates to your feature branch
		○ git merge master
			§ Merges changes from master to feature branch
			§ Origin instead of master will do the opposite
	• **What is a pull request and how do you create and merge one?**
		○ A pull request is a way to merge code from a different branch into the master branch that is a far better practice than merging directly with the master branch.
		○ The following five steps are necessary to create a pull request, prior to merging the repository branch to the master file:
			1. Create a new branch from the command line
			2. Check out the branch
			3. Write and commit some code
			4. Push the branch to GitHub
			5. Issue a pull request to the master branch
		○ To issue a pull request:
			§ Type:
				□ $ git push origin new-branch-name
					® Where new-branch-name is the name of the repo branch you'd like to merge
			§ At your GitHub repository, there should now be a button that reads "Compare and pull request". Click it.
			§ Check the base branch and comparison branch names to verify they are correct.
			§ Fill in the description.
			§ Finally, create the pull request by clicking on the respective button.
		○ To Merge the changes from the pull request:
			§ In the "Conversation" tab, press the "Merge pull request" button.
			§ Press "Confirm merge"
			§ All done!
		○ Bonus: be sure to delete the feature branch once it's been merged. This allows you to keep your branches clean and organized.
	• **Why are pull requests preferred when working with teams?**
		○ When working in teams, pull requests are preferred to directly merging a repository with a master branch. This is in order to avoid costly errors that could come from merging code that hasn't been peer reviewed.