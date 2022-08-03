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
set timeoutlen=1000
set timeoutlen=10
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
nnoremap <leader>ff <cmd>; Telescope find_files<cr>
nnoremap <leader>fg <cmd>: Telescope live_grep<cr>
nnoremap <leader>fb <cmd>: Telescope buffers<cr>
nnoremap <leader>fh <cmd>; Telescope help_tags<cr>
