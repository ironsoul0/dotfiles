" https://medium.com/better-programming/setting-up-neovim-for-web-development-in-2020-d800de3efacd

set number 
set ignorecase

filetype plugin indent on

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-java', 'coc-python', 'coc-angular', 'coc-vetur', 'coc-go']
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'arzg/vim-colors-xcode'
Plug 'tomlion/vim-solidity'
Plug 'Valloric/MatchTagAlways'
Plug 'ayu-theme/ayu-vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

call plug#end()

:let mapleader = " "
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap nw :noa w<CR>

" autocmd vimenter * colorscheme gruvbox
set termguicolors     " enable true colors support
colorscheme xcodedark


let g:NERDTreeShowHidden = 1
" let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <leader>t :call OpenTerminal()<CR>

function! OpenVTerminal()
  vsplit term://zsh
  vertical resize 65
endfunction
nnoremap <leader>T :call OpenVTerminal()<CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>
nnoremap <Left> :vertical resize +5<CR>
nnoremap <Right> :vertical resize -5<CR>

" nnoremap <TAB> :bnext<CR>
" " SHIFT-TAB will go back
" nnoremap <S-TAB> :bprevious<CR>
 
nnoremap <TAB> gt
" SHIFT-TAB will go back
nnoremap <S-TAB> gT

let $FZF_DEFAULT_COMMAND = 'rg --files --ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'

nnoremap <leader>p :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

nnoremap <leader>r :Rg<CR>

" let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'

vnoremap  <leader>y  "+y

set cindent
set expandtab " Insert spaces instead of tabs
set smarttab " forces use of shiftwidth and tabstop
set shiftwidth=2 " Change the number of spaces inserted for indentation
set tabstop=2 " Tabs insert 2 spaces
set autoindent
set cursorline
set encoding=UTF-8
set relativenumber
set hidden
set nofixendofline

:set mouse=a

let g:SuperTabDefaultCompletionType = "<c-n>"

" let g:airline#extensions#tabline#enabled = 1

hi TabLine    gui=NONE guibg=#3e4452 guifg=#abb2bf    cterm=NONE term=NONE ctermfg=black ctermbg=white

nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> rn <Plug>(coc-rename)

let g:EasyMotion_do_mapping = 0


" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-bd-jk)
nmap f <Plug>(easymotion-bd-w)

autocmd User EasyMotionPromptBegin silent! CocDisable
autocmd User EasyMotionPromptEnd silent! CocEnable



source ~/.config/nvim/custom/cp.vim
