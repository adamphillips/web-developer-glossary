Ever got half way through changing a website and realise that you have broken
something by accident? So you try and remember what you changed but you\'re not
sure which file it was or exactly what you did. Well that\'s what version
control is for.

Version Control Software (VCS) tracks the changes made to files in a project.
The files for the project are *checked in* to a *repository*. Each time you
accomplish a task, you update the version of the files stored in the repository
along with details of what you did and why you did it. Then at any point you
can compare your current version of the file with the version in the
repository. You can also go back and look at any other previous version of the
file.

### Branching

A key feature of version control software is *branching*. This allows
developers to create a new version of the code base in order to separate their
changes from the rest of the codebase until they are ready. Typically a branch
will be created for each feature added, bug fixed and so on. Then when the
changes are complete, they can be *merged* back into the main code base.

### Merging

This goes hand-in-hand with *branching* and is the process of combining a set
of changes back into the main codebase. Typically, the VCS will attempt to do
this by comparing the files changed in the main codebase since the branch was
created to the changes made in the branch. If only one of the two has changed a
particular file then it will simply use the newest. If a file has been modified
in both versions, the VCS will attempt to generate a single version of the file
containing both sets of changes. If that is not possible, the VCS will ask the
developer to decide which version to use or combine them manually.

