set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" enable ssl verification
" let $GIT_SSL_NO_VERIFY = 'true'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" pep 8 indenting
Plugin 'vim-scripts/indentpython.vim'

" python code completion
Plugin 'ervandew/supertab'

" syntax checking
Plugin 'vim-syntastic/syntastic'

" pep 8 checking
Plugin 'nvie/vim-flake8'

" file tree
Plugin 'scrooloose/nerdtree'

" search for files
Plugin 'kien/ctrlp.vim'

" autoformat (make sure to pip install black)
Plugin 'Chiel92/vim-autoformat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" VUNDLE END --------------------------------------------------

" add the proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" ignore .pyc in filetree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" change nerdtree width
let g:NERDTreeWinSize=45

" JVIM END ---------------------------------------------------

" VIM mouse scroll (including tmux)
set mouse=n

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
