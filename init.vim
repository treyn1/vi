" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'voldikss/vim-floaterm'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
"Plug 'CopilotC-Nvim/CopilotChat.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'iibe/gruvbox-high-contrast'
Plug 'vim-airline/vim-airline'
"Plug 'williamboman/mason.nvim'

"Tabby
" Example ~/.vimrc configuration
filetype plugin on

" Tabby plugin
"Plug 'TabbyML/vim-tabby'
" Add config here. Example config:
let g:tabby_keybinding_accept = '<Tab>'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set background=dark
"if file extension is .c, .h, .cpp, or .hpp, set colorscheme to default. Otherwise, set to gruvbox
"autocmd BufEnter * if expand('%:e') == 'c' || expand('%:e') == 'h' || expand('%:e') == 'cpp' || expand('%:e') == 'hpp' | colorscheme default | else | colorscheme gruvbox | endif
"colorscheme gruvbox
"colorscheme spaceduck
colorscheme PaperColor
"set relativenumber
set nu rnu
set updatetime=100
"autocmd VimEnter * NERDTree .
"autocmd VimEnter * ++nested split term://sh
"noremap <C-n> NERDTree
""This expression seems to be responsible for coc formatting on enter
"inoremap <silent><expr> <cr> \C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"I this just says autocomplete with the first option if pop up menu is open.
"If it is not open, just do a regular tab.C-g>u
"inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
syntax enable
noremap <C-w>+ :resize +1<CR>
noremap <C-w>- :resize -1<CR>
noremap <C-w>< :vertical:resize -1<CR>
noremap <C-w>> :vertical:resize +1<CR>
"noremap : ;

"Floaterm config
"let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_toggle = '<S-F5>'
noremap <F7> :FloatermNew lazygit<CR>

"set neovide font
set guifont=FiraCode\ NF:h9


" make background transparent
highlight Normal ctermbg=none
highlight NonText ctermbg=none

"highlight the active line
set cursorline

"require("mason").setup()


nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

set tabstop=2
set shiftwidth=2
set expandtab
