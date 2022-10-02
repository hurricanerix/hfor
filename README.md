# Home Folder of Ruin

## Korn Shell Setup

```ksh
$ cp ./dotfiles/kshrc $HOME/.kshrc
```

## Vim Setup

```ksh
$ mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle
$ curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
$ git clone https://github.com/airblade/vim-gitgutter.git $HOME/.vim/bundle
$ git clone https://github.com/fatih/vim-go.git $HOME/.vim/bundle
$ cp ./dotfiles/vimrc $HOME/.vimrc
```
