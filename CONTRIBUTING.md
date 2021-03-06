# Contributor Licensing Agreement

By submitting code for official inclusion into this project, you agree that your 
submitted work, including modifications or derivatives of existing work, is 
licensed under the GNU Affero General Public License as published by the Free 
Software Foundation, either version 3 of the License, or (at your option) any 
later version and that you have the authority to offer this licensing to the 
project.

By submitting textual content for official inclusion into this project,
you agree that your submitted work, including modifications or
derivatives of existing work, is designated as Open Game Content as defined
in the Open Gaming License version 1.0a Section 1(d) and that you have
the authority to offer this licensing to the project.

# How to contribute

We welcome contributions to the project! We have a few process and
stylistic guidelines that we ask you follow when contributing.

## First Steps

1. Make sure you have read the README, LEGAL, and INSTALL documents so 
that you understand the project, how its backing technologies works, and
the legal implications of what material you may or may not reference.

2. [Fork the repository][2] and [create a branch][3] for your changes.

  * If you're working on a particular system, be sure your branch is
based off of our branch for that system.

3.  Make your changes in the new branch, and submit them to us when 
you're happy with them! Check out the sections below for more details on
this part of the process.

## Making Changes

Currently, we will be accepting changes only via pull requests to the
git repository. We realize this puts an onus on contributors to be able 
to use git. We're working on alternatives that will allow individuals to
contribute outside of this workflow.

Until that point, if you are not comfortable with the git command line,
there are many nice graphical tools you can use. For Windows 
environments, you might check out [TortoiseGit][4].

Pull requests should follow a [forking workflow][2] with the target 
branch being the `master` branch of this repository (or the system branch of
whatever specific system you may be targeting). 

Here are our guidelines for making changes.

* Please avoid working directly on the `master` branch. Create a 
separate branch for your work.
* Make commits of whole logical units.
* Make sure your commit messages are in the following format:

        A single line summary of your changes for quick reference.
        
        A more complete paragraph form description of the changes. It 
        should provide enough information that anyone looking through 
        the commit history or changelog should be able to get a feel for
        all of the changes your commit includes.

* If you are working on an issue, please [reference the issue][5] in 
your commit message.

## Style Guide

### General Style Guide

1. Use 2 spaces for indentation unless more is required by the syntax
2. Line breaks should happen at the end of sentences. For especially long lines,
the line may be broken at significant punctuation or directives.
3. In 99% of cases, substitutions should be declared externally and included in a
document using an `include` declaration at the start of the file.
4. Each content file should contain a comment after its inclusions with the
AGPL license notice. 

### Document Structure Style Guide

1. New books go in their own folder in the `src` directory and should have a 
root file that matches the folder name. E.g. `src/player-guide` and 
`player-guide.txt`.
2. Top level elements like appendices, chapters and the like should be broken out 
into separate files and included into their parent documents. Top-level 
sections within a chapter should also be broken out. Sections underneath 
top-level sections do not need to be broken out.
3. Name document files after their structural representation rather than their
content. E.g. `chap1sect2.txt` rather than `seorsusreligion.txt`.

[1]: https://help.github.com/articles/using-pull-requests/
[2]: https://help.github.com/articles/fork-a-repo/
[3]: https://help.github.com/articles/creating-and-deleting-branches-within-your-repository/
[4]: https://code.google.com/p/tortoisegit/
[5]: https://help.github.com/articles/writing-on-github/#references
