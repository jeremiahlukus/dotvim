# My new dotfiles are [here](https://github.com/jeremiahlukus/dotfiles)
# This repo is here for reference and is not used anymore

# dotvim
holds my vim profile  and my bash profile

BACK UP YOUR .vim AND .vimrc THE FIRST FEW LINES DELETE THEM!!


I highly recommend you go https://www.iterm2.com/ and use this terminal. You can use Mac's built in terminal if you want to. 



first type `cd`

then install homebrew

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

===================== DELETES YOUR .vim AND .vimrc ===========================

`rm -rf ~/.vimrc`

`rm -rf ~/.vim`

`rm -rf ~/.gvimrc`

================================================================================


Next clone my repo
`git clone http://github.com/jeremiahlukus/dotvim.git` 

Here we are soft linking a few files  (or you could simply move them into your home directory)

`ln -s ~/.vim/.vimrc ~/.vimrc`
`ln -s ~/.vim/gvimrc ~/.gvimrc`
`ln -s ~/.vim/.bash_profile ~/.bash_profile`



Now clone Vundle 
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Brew install ctags for info about this awesome thing go here https://andrew.stwrt.ca/posts/vim-ctags/

`brew install ctags`

Launch vim and run `:PluginInstall`





For help with emmit go here

`http://docs.emmet.io/cheat-sheet/`

To activate NerdTREE launch vim then press the space bar then "n"

There are a few key maps that are at the top of my .vimrc please go take note of these. 
If something does not work please let me know!

