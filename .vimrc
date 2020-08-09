set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" enable ssl verification
" let $GIT_SSL_NO_VERIFY = 'true'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" python code completion
Plugin 'davidhalter/jedi-vim'

" pep 8 checking
Plugin 'nvie/vim-flake8'

" autoformat (make sure to pip install black)
Plugin 'Chiel92/vim-autoformat'

" vim note-taking
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" VUNDLE END --------------------------------------------------

" JVIM BEGIN --------------------------------------------------
" add the proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
"    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" don't run jedi-vim on pressing .
let g:jedi#popup_on_dot = 0

" Don't automatically call signatures (options)
let g:jedi#show_call_signatures = 0

" JVIM END ----------------------------------------------------

" VIMWIKI SETTINGS --------------------------------------------
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path': '/mnt/c/Users/kzl02/OneDrive/dev_journal', 'index': 'development', 'syntax':'markdown', 'ext':'.md'}]
" VIMWIKI END ------------------------------------------------

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

" Set cursor by mode

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

