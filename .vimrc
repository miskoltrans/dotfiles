" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim73/vimrc_example.vim or the vim manual
" and configure vim to your own liking!
syntax enable
set background=dark
colorscheme solarized

set nocompatible 

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" you complete me
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerdtree
"autocmd vimenter * NERDTree
map <F6> :NERDTreeToggle<CR>

" tagbar
"autocmd vimenter * Tagbar
nmap <F8> :TagbarToggle<CR>

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" gundo
nnoremap <F5> :GundoToggle<CR>

" CommandT
nnoremap <C-t> :CommandT<CR>
nnoremap <C-b> :CommandTBuffer<CR>

" custom
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set number
set mouse=a
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable autocommenting
set path=.,,**,/usr/include
set hidden
