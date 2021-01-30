# smplman's dotfiles

## Installation

* clone the repo
`git clone --bare https://github.com/smp4488/dotfiles.git $HOME/.dotfiles`

* setup the alias for your shell
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

* checkout the files in this repo to your `$HOME` directory
`dotfiles checkout`

## Usage
Use the alias `dotfiles` in place of `git` to manage the repo
```
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

## New Repo Setup

* create a `.dotfiles` folder to track the files
`git init --bare $HOME/.dotfiles`

* create an alias called `dotfiles` that containes the git args so we don't have to keep typing it out
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

* tell git to ignore untracked files so your entire `$HOME` doesn't show up as modified
`dotfiles config --local status.showUntrackedFiles no`

* add the alias to `.bashrc` or `.zshrc` so we can use it later
`echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc`

* for tab completion install `bash-complete-alias` and add this to `.bashrc`
```
source /usr/share/bash-complete-alias/complete_alias
complete -F _complete_alias dotfiles
```

## Requirements

nvim
```
vim plugged https://github.com/junegunn/vim-plug
python3
node https://github.com/nvm-sh/nvm
```

### Resources
[How to manage your dotfiles with git](https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)
