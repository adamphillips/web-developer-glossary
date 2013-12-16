Glossary.define do
  term 'Continuous Integration' do
    subtitle 'CI got your back'
    body '
Continuous Integration is a technique to allow multiple developers to work
efficiently together. The integration refers to combining all the bits of work
done by the various developers on a project. Continuous means that you do this
as often as possible.

If multiple developers are working on the same project, usually they will each
have a copy of the project that they are working on. As each developer does
some work, these versions diverge in different directions. Problems can occur
when two developers modify the same part of the codebase leading to
incompatible versions. The longer the developers go before joining all their
efforts together, the greater the chance is that two of these versions are
incompatible. Similarly, the more developers there are working on a project,
there more chances there are that things wll clash. In addition, ineffeciences
can occur. For example, one developer may add a very useful new feature to the
code API but no other developer can use it until their changes are merged. Code
may then need to be rewritten to use the new API.

Continuous Integration addresses this by requiring developers to merge their
changes into a single codebase as often as possible, typically several times a
day. An automated set of tests is run against the new version to check that
everything still works correctly. If not, developers are alerted to the problem
so they can fix it straight away. This also limits the number of changes that
could have caused the problem as the differences in the code bases are much
smaller.

## Continuous Integration as a Service

Whilst it is possible to build your own CI environment, there are a now a
number of providers you can use to integrate Continuous Integration into your
workflow with very little effort. They often provide free accounts for open
source projects.

These include:

- [Travis](https://travis-ci.org/)
- [Semaphore](https://semaphoreapp.com/)
- [Snap](https://snap-ci.com/)

## Continuous Deployment

Continuous Deployment takes the idea to the next level by automatically
deploying changes either on completion of a successful build or at a regular
periodic interval, for example once a day. If the most recent CI build fails,
the changes are not deployed.
'
    link 'http://www.thoughtworks.com/continuous-integration', 'Thoughtworks', 'A useful summary page'
  end

  term 'Git' do
    subtitle 'The current standard in version control'
    body '
Learn git.
'
  end

  term 'Terminal' do
    subtitle 'Talking to your computer'
    body '
The terminal or command-line is an efficient way to talk to your computer.
'
    wikipedia_term 'Terminal_emulator'
  end

  term 'Text Editor' do
    subtitle 'Writing code'
    body '
Vim is the only way to edit text.
'
  end

  term 'Version Control' do
    subtitle 'Version Control'
    body '
Ever got half way through changing a website and realise that you have broken
something by accident? So you try and remember what you changed but you're not
sure which file it was or exactly what you did. Well that's what version
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
'
  end

  term 'Vim' do
    subtitle 'The king of text editors'
    body '
Learn vim, its awesome.
'
  end
end
