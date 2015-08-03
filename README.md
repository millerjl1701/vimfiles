vimfiles
========

This is my current working .vim directory for doing puppet manifest development... Your mileage may vary.
If you use this, the bundles are implemented as git submodules. To complete the clone:

- git submodule init
- git submodule update
- git submodule status

It may be that most (if not all) of the submodules are running in a headless state.
Each should be checked out to the master branch and then run a git pull to ensure there are no other updates available.

If you want to update all submodules at once:
    git submodule foreach git pull
