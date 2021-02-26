# vimfiles

This is my current working .vim directory for puppet, k8s, and terraform work. Your mileage may vary.

## Setup for Use

Vim plugins are added primarily using [vim-pathogen](https://github.com/tpope/vim-pathogen). Since plugins are added as git submodules, clone the repository with a workflow similar to:

```bash
cd
git clone https://github.com/millerjl1701/vimfiles.git .vim
cd .vim/
git submodule init
git submodule update
git submodule status
```

It may be that most (if not all) of the submodules are running in a headless state. Each should be checked out to the master branch and then run a git pull to ensure there are no other updates available:

```bash
cd ~/.vim/bundle
for i in `ls` ; do cd $i; git checkout master; git pull; cd ../; done
```

## Plugin Updates

To update all plugins:

```bash
cd ~/.vim/bundle
for i in `ls` ; do cd $i; git pull; cd ../; done
```

## Adding a Plugin

To add a plugin:

```bash
git submodule add https://github.com/user/reponame bundle/reponame
git commit -a -m "added module name"
```

## Removing a Plugin

To remove a plugin you need to:

- Delete the relevant section from the `.gitmodules` file
- Stage the `.gitmodules` changes with `git add .gitmodules`
- Delete the relevant section from: `.git/config`
- Run `git rm --cached bundle/reponame` with no trailing slash
- Run `rm -rf .git/modules/reponame`
- Commit all changes
- Delete the now untracked submodule: `rm -rf bundle/reponame`
