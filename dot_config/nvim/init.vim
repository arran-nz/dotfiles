
" Install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
" Vim-Plug Plugin Manager
call plug#begin('~/local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'leafOfTree/vim-svelte-plugin', {}

Plug 'preservim/nerdtree'

Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'

call plug#end()

" Native Config
" -------------

syntax on

set number
set relativenumber
set ruler
set cursorline

set shiftwidth=4
set expandtab
set softtabstop=4

" Plugin Variables
" ----------------


" Deoplote 
let g:deoplete#enable_at_startup = 1

" Gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_tabline = '1'

" Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" Enable Svelete plugin
let g:vim_svelte_plugin_load_full_syntax = 1

" Browser for Markdown
let g:mkdp_browser = 'firefox-wayland'

" Bindings
" --------
"
map <C-n> :NERDTreeToggle<CR>

" Colorscheme
colorscheme gruvbox
" Render the colors correctly
" (╯°□°）╯︵ ┻━┻
set termguicolors
