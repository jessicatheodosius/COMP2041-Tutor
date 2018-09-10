## COMP2041 Week 8 Tutorial

- talk about git, why should you use it, give example
- https://hackernoon.com/understanding-git-index-4821a0765cf
- https://stackoverflow.com/questions/28416075/where-does-git-store-blob-object

### assignment

- see `legit.pdf`
- look at `.git`, see `index`, `logs`

### Question 1

- reference `2041 legit`
- online tutorials

### Question 2

- host git repo, don't need to use git explicitly
- just use give instead

### Question 3

- git init creates empty repo
- you don't need to have an online repo just to make .git
- show example maybe?
- git stores index in `.git/index`
- legit stores index in `.legit/?`

### Question 4

- adds a copy of file to repo's index
- tells `.git` to track this file, and this is queued to be committed latter
- it is called `staging area` where you can add or remove things before committing it to the repo
- usually you wait for a few files and then commit it at once

### Question 5

- index stores the files that are added
- might be able to just create `.legit/index`

### Question 6

- preserves the state of files in the index
- `.legit/commit-number`

### Question 7

do the table

- working directory
- index/staging
- repo/committed

### Question 19

```
-2 -1 0 1 2

aliases $_ to each list element in turn an executes the code in the block
it returns a list of the element for which the last expression evaluated is true.

{ $_ = $_ - 3 } subtracts 3 from each element in @a
$_ > 0 expression selects positive elements.
```

### Question 20

```
1 4 9 16 25

** is exponentiation
```

### others

- talk about git in general
- don't overcomplicate the assignment
- `.git` stores commit and blob objects with SHA-1 and all fancy stuff
- you can just store the files itself
