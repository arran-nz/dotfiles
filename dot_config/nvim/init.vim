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




" Deoplote 
let g:deoplete#enable_at_startup = 1

" Set Colorscheme
colo gruvbox

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italicize_comments = '1'


" Plugins
" Vim-Plug Plugin Manager
call plug#begin('~/local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Firefox nvim connection
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()

