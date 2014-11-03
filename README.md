## .bash_profile for custom terminal
=================================

This is my custom terminal I did as a weekend project. The prompt features the standard user name, the working directory, and the git status on the first line; as well as, the active virtual environment (if applicable) and a prompt "->" on the second line. 


#### What's it look like
-------------------


![Terminal Screenshot](https://github.com/jbaham2/bash_profile/blob/master/images/Screen%20Shot%202014-11-02%20at%205.41.22%20PM.png)


The code is not all mine. In fact, I mostly just hacked together examples I liked around the internet:
*[http://bytebaker.com/2012/01/09/show-git-information-in-your-prompt/](http://bytebaker.com/2012/01/09/show-git-information-in-your-prompt/)
*[http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac/](http://martinfitzpatrick.name/article/add-git-branch-name-to-terminal-prompt-mac/)
*[http://dobsondev.com/customizing-your-terminal/](http://dobsondev.com/customizing-your-terminal/)
*And some help from StackOverflow

####Status
------

This is a working profile, but there are some tweaks I would like to make in the future:
*where the (git:<branch>:<status>) is displayed I would like for the "git" to be replaced with the repo name like so (<repo name>:<branch>:<status>). I couldn't figure this part out. 
*I would also like to display the number of files waiting to be committed if the status="dirty"; otherwise, display nothing. (<repe>:<branch>:<status>:<# of new, modified files>).



