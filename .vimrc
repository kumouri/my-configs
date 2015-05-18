:set backspace=indent,eol,start
:fixdel
:set expandtab
:set softtabstop=4
:set shiftwidth=4

:set splitbelow

:colorscheme zenburn
:syntax on

:set number

:set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
:set laststatus=2

:let mapleader = ","

:nnoremap <leader><bar> xi<bar><tab><esc>
:nnoremap <leader>_ xi<bar>__<space><esc> 

" To learn the new mappings I need to hate myself so...
:inoremap <esc> <nop>
:noremap <down> <nop>
:noremap <up> <nop>
:noremap <left> <nop>
:noremap <right> <nop>

" Movement mappings
:nnoremap H 0
:nnoremap L $

" NORMAL mode mappings
:nnoremap <leader>- ddp
:nnoremap <leader>_ ddP
:nnoremap <leader><c-u> viwU

" .vimrc editing
:nnoremap <leader>ev :split $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Move between windows
:nnoremap <leader><c-j> :wincmd j<cr>
:nnoremap <leader><c-k> :wincmd k<cr>
:nnoremap <leader><c-h> :wincmd h<cr>
:nnoremap <leader><c-l> :wincmd l<cr>

" Quoting and shtoof
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
:vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>

" INSERT mode mappings
:inoremap <leader><c-u> <esc>vUi
:inoremap jk <esc>

" ABBREVIATIONS
:iabbrev adn    and
:iabbrev waht   what
:iabbrev tehn   then
:iabbrev bjc@   will.armstrong@bjc.org
:iabbrev per@   will.c.armstrong@gmail.com
:iabbrev ccopy  Copyright 2015 Will Armstrong, all rights reserved.
:iabbrev sigbjc <cr>Will Armstrong<cr>Healthcare Informaticist<cr>BJC Healthcare<cr>
    \will.armstrong@bjc.org
:iabbrev sigper <cr>Will Armstrong<cr>will.c.armstrong@gmail.com

" Mappings to comment lines
:augroup cmds
:   autocmd!
:   autocmd FileType javascript,java,cpp   nnoremap <buffer> <localleader>c I//<esc>
:   autocmd FileType python,sh             nnoremap <buffer> <localleader>c I#<esc>
:augroup END
