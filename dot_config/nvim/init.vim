syntax on

set number
set relativenumber
set ruler

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set cursorline

" === NETRW =======================

" Explore options (netrw) :Explore
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" 1:Horizontal 2:Veritcal 3:NewTab 4:PrevWindow
let g:netrw_browse_split = 2

let g:netrw_altv = 1


" Ingore SWP
let g:netrw_list_hide= '.*\.swp$'



" Plugins
" Vim-Plug Plugin Manager
call plug#begin('~/local/share/nvim/plugged')

" Firefox nvim connection
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()


" Set Colorscheme
colo xcodedark

" Enable Italics for xcode
augroup vim-colors-xcode
    autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic
