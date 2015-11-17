execute pathogen#infect()
syntax on
filetype plugin indent on
filetype on
colorscheme elflord 
set number
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=f
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set tabstop=4
set shiftwidth=4
set expandtab
