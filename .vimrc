set nocompatible
syntax on
set background=dark
set number
set showmatch
set ignorecase
set showmode
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set backspace=2
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf
autocmd FileType python runtime! autoload/pythoncomplete.vim
imap <c-space> <c-x><c-o>
if has("autocmd")
        autocmd FileType python set complete+=k/~/vim/
endif 

filetype plugin on
filetype indent on

if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
endif


let g:pydiction_location='~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20
