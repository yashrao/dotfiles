" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"============== VIM-PLUG =================
call plug#begin('~/.config/nvim/plugged')
Plug 'davidhalter/jedi-vim' " Make sure you have pynvim installed 'pip3 install --user pynvim'
Plug 'shougo/unite.vim'
Plug 'shougo/vimfiler.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'ervandew/supertab' " Lets you use tab for autocomplete
Plug 'deoplete-plugins/deoplete-jedi' " Make sure you've installed 'pip3 install --user jedi'
Plug 'sheerun/vim-polyglot'
" Initialize plugin system
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Make sure to run :UpdateRemotePlugins and restart the editor before using the plugin.
" Also make sure to use python3
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' } 
Plug 'airblade/vim-gitgutter'
Plug 'sainnhe/vim-color-forest-night'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'raimondi/delimitmate'
Plug 'ajh17/spacegray.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/goyo.vim'
Plug 'rhysd/vim-color-spring-night'
Plug 'haishanh/night-owl.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
call plug#end()

"============== GENERAL =================
map <C-n> :VimFilerExplorer<CR>
set wrap!
set nu

" == AUTO-INDENTATION ==
" length of an actual \t character:
set tabstop=4
" length to use when editing text (eg. TAB and BS keys)
" (0 for ‘tabstop’, -1 for ‘shiftwidth’):
set softtabstop=-1
" length to use when shifting text (eg. <<, >> and == commands)
" (0 for ‘tabstop’):
set shiftwidth=0
" round indentation to multiples of 'shiftwidth' when shifting text
" (so that it behaves like Ctrl-D / Ctrl-T):
set shiftround

" if set, only insert spaces; otherwise insert \t and complete with spaces:
set expandtab

" reproduce the indentation of the previous line:
set autoindent
" keep indentation produced by 'autoindent' if leaving the line blank:
"set cpoptions+=I
" try to be smart (increase the indenting level after ‘{’,
" decrease it after ‘}’, and so on):
"set smartindent
" a stricter alternative which works better for the C language:
"set cindent
" use language‐specific plugins for indenting (better):
filetype plugin indent on



"======== ENABLE/DISABLE OPTIONS ========
let g:jedi#completions_enabled = 0 " Want to use deoplete-jedi for completions
let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " For Ctrl-P
set wildignore+=*/venv/*

"============= COLOR SCHEME =============
" set termguicolors
" Set color here
" colorscheme srcery
" colorscheme night-owl 
" colorscheme spacegray
" colorscheme gruvbox 
colorscheme nord 
" colorscheme spacegray

set background=dark
"let g:gruvbox_contrast_light = 'soft'
let g:airline_theme='night_owl'

"============== Python venv ==============
" Figure out the system Python for Neovim.
" (For bedrock linux)
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif
