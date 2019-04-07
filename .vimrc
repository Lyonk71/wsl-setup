set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"enable ssl verification
let $GIT_SSL_NO_VERIFY = 'true'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" pep 8 indenting
Plugin 'vim-scripts/indentpython.vim'

" python code completion
Plugin 'Valloric/YouCompleteMe'

" syntax checking
Plugin 'vim-syntastic/syntastic'

" pep 8 checking
Plugin 'nvie/vim-flake8'

" file tree
Plugin 'scrooloose/nerdtree'

" search for files
Plugin 'kien/ctrlp.vim'


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" add the proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" flag extraneous whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" specify utf-8 encoding
"set encoding=utf-8

" ensue youcompleteme window closes when you are done with it
let g:ycm_autoclose_preview_window_after_completion=1

" make code look pretty
let python_highlight_all=1
syntax on

" ignore .pyc in filetree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" change nerdtree width
let g:NERDTreeWinSize=45

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end

" ipython functions
nnoremap <F1> :!bash ~/.f1_script.sh<ENTER><ENTER>
nnoremap <F2> :!bash ~/.f2_script.sh<ENTER><ENTER>
nnoremap <F3> :!bash ~/.f3_script.sh<ENTER><ENTER>
nnoremap <F4> :!bash ~/.f4_script.sh<ENTER><ENTER>
