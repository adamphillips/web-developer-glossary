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

## An example

This site uses Travis for continuous integration and the reports are available
at
[https://travis-ci.org/adamphillips/web-developer-glossary](https://travis-ci.org/adamphillips/web-developer-glossary).
The initial screen shows the output from the most recent test run or *build*.

![Travis build report](/images/ci/travis-home.png)

If there is an error running the tests, this will be shown in the build report.

![Failing Travis build report](/images/ci/travis-fail.png)

## Continuous Deployment

Continuous Deployment takes the idea to the next level by automatically
deploying changes either on completion of a successful build or at a regular
periodic interval, for example once a day. If the most recent CI build fails,
the changes are not deployed.

