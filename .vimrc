   
    syntax enable
    set background=light
    let g:solarized_termcolors=256
    colorscheme solarized
set nocompatible
set sw=2
set copyindent
set tabstop=2
set noai
set nocin
set nobk
filetype indent off
au BufRead,BufNewFile *.phtml   set filetype=php
:let loaded_matchparen = 1
filetype plugin indent on
set encoding=utf-8
set backspace=2
set noshowmatch
set nojoinspaces
set noexpandtab
set smartindent
set showmode
set ruler
set showcmd
syntax on
:map <F1> <Esc>:colorscheme evening<CR>
:map <F2> <Esc>:colorscheme default<CR>

augroup gzip
	autocmd!
	autocmd BufReadPre,FileReadPre *.gz set bin
	autocmd BufReadPost,FileReadPost   *.gz '[,']!gunzip
	autocmd BufReadPost,FileReadPost   *.gz set nobin
	autocmd BufReadPost,FileReadPost   *.gz execute ":doautocmd BufReadPost " . expand("%:r")
	autocmd BufWritePost,FileWritePost *.gz !mv <afile> <afile>:r
	autocmd BufWritePost,FileWritePost *.gz !gzip <afile>:r
	autocmd FileAppendPre      *.gz !gunzip <afile>
	autocmd FileAppendPre      *.gz !mv <afile>:r <afile>
	autocmd FileAppendPost     *.gz !mv <afile> <afile>:r
	autocmd FileAppendPost     *.gz !gzip <afile>:r
augroup END


