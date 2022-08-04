set nocompatible            " disable compatibility to old-time
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set mouse=a                 " enable mouse click
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set title                   " show file title
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest, list  " get bash-like tab completions
set clipboard=unnamedplus   " using system clipboard
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files
set timeoutlen=3000
set ttimeoutlen=100
set t_Co=256
set encoding=UTF-8
filetype plugin indent on   " allow auto-indenting depending on file type
filetype plugin on
syntax on                   " syntax highlighting


" Plugins
call plug#begin()
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'folke/tokyonight.nvim', {'branch': 'main'}
Plug 'sindrets/diffview.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
call plug#end()

" Styling
colorscheme tokyonight

" Telescope" Find files using Telescope command-line sugar.
nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap 1 <cmd>BufferGoto 1<cr>
nnoremap 2 <cmd>BufferGoto 2<cr>
nnoremap 3 <cmd>BufferGoto 3<cr>
nnoremap 4 <cmd>BufferGoto 4<cr>
nnoremap 5 <cmd>BufferGoto 5<cr>
nnoremap 6 <cmd>BufferGoto 6<cr>
nnoremap 7 <cmd>BufferGoto 7<cr>
nnoremap 8 <cmd>BufferGoto 8<cr>
nnoremap 9 <cmd>BufferGoto 9<cr>
nnoremap 0 <cmd>BufferGoto 10<cr>
nnoremap <leader>q <cmd>BufferPrevious<cr>
nnoremap <leader>e <cmd>BufferNext<cr>
nnoremap <leader>c <cmd>:BufferClose<cr>
nnoremap <leader>p <cmd>:BufferPin<cr>
