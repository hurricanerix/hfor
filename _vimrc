" Pathogen
call pathogen#infect()

highlight statusline ctermfg=green
highlight statusline ctermbg=black
set statusline=%f "tail of the filename
set nu
set spell spelllang=en_us

set statusline+=%h "help file flag
set statusline+=%y "filetype
set statusline+=%r "read only flag
set statusline+=%m "modified flag

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
set laststatus=2 "always show statusline

if exists('+colorcolumn')
  hi ColorColumn guibg=#000000 ctermbg=0
  set colorcolumn=80
endif

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:'
set list
set tabstop=4
set expandtab
syntax on

set t_Co=256
set background=dark
"set background=light
colorscheme solarized

highlight SpecialKey ctermfg=236
highlight NonText ctermfg=236

set nocompatible

set rtp+=$HOME/code/powerline/powerline/bindings/vim
let g:virtualenv_dir = '~/.workspace_envs/'
