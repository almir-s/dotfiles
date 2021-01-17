# dotfiles

## nvim steps
* Install neovim https://neovim.io/
* Copy `init.vim` to `~/.config/nvim` or clone project and make symbolic link like `ln -s /path/to/cloned/project/nvim/init.vim ~/.config/nvim/init.vim`
* Install `vim-plug` package manager https://github.com/junegunn/vim-plug
* Open nvim and run `:PlugInstall`
* After the plugins are installed open `~/.config/nvim/plugged/YouCompleteMe` and run `./install.py --clangd-completer` for more info check YouCompleteMe documentation https://github.com/ycm-core/YouCompleteMe
