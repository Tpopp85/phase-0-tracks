# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    Version control allows you to go back in time and see what a file looked like before its current state.  It is essentially all of the changes that have been made over time with a time stamp and brief description of the change.  This is useful for debugging because it lets you see what changes were made and by who.  It would also be useful if you wanted to go back in time and remove a feature.
* What is a branch and why would you use one?
    A branch is essentially a clone of the master code (or some other branch) that is copied with the intent of working on a feature.  You would use a branch to work on pretty much and changes to the master code.  It allows you to work on a feature without affecting the original code.
* What is a commit? What makes a good commit message?
    A commit it when you add something to a git repository. It is basically a save point.  A good commit message clearly and succinctly explains what changes were made.
* What is a merge conflict?
    A merge conflict arises when two branches make an edit to the same exact part of a file.  Git doesn't know which edit to accept so it gives you an error until you resolve it.