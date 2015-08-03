vimfiles
========

This is my current working .vim directory for doing puppet manifest development... Your mileage may vary.
If you use this, the bundles are implemented as git submodules. To complete the clone:

    git submodule init
    git submodule update
    git submodule status

It may be that most (if not all) of the submodules are running in a headless state.
Each should be checked out to the master branch and then run a git pull to ensure there are no other updates available.

If you want to update all submodules at once:

    git submodule foreach git pull

To add a submodule:

    git submodule add https://github.com/user/reponame bundle/reponame
    git commit -a -m "added module name"

To remove a submodule you need to:

    Delete the relevant section from the .gitmodules file.
    Stage the .gitmodules changes git add .gitmodules
    Delete the relevant section from .git/config.
    Run git rm --cached path_to_submodule (no trailing slash).
    Run rm -rf .git/modules/path_to_submodule
    Commit git commit -m "Removed submodule <name>"
    Delete the now untracked submodule files
    rm -rf path_to_submodule

