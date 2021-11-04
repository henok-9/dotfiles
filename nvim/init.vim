set relativenumber
set nu
set tabstop=4 
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent
set nohlsearch 
set hidden
set incsearch 
set scrolloff=10
set signcolumn=yes
set noswapfile
set undofile



call plug#begin('~/.vim/plugged')
" colorschemes
    Plug 'arcticicestudio/nord-vim'
    Plug 'owickstrom/vim-colors-paramount'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'tjdevries/gruvbuddy.nvim'

" fuzzfinder
    Plug 'nvim-telescope/telescope.nvim'

" treesitter
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" file explorer
    Plug 'preservim/nerdtree'

" status line 
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
    Plug 'ryanoasis/vim-devicons' 

" github copilot
    Plug 'github/copilot.vim'

call plug#end()

"set background=dark 
colorscheme nord


let mapleader = " "

" Find fliles with Telescope
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" NerdTree 
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>










