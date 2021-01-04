set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
" IDE: para saltar mas rapida
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
" Para abrir desde teclado con nerdTree y navegar entre pantallas 
" CTRL + h o CTRL + l => navegar entre pantallas.
Plug 'christoomey/vim-tmux-navigator'
Plug 'leafgarland/typescript-vim' "TypeScript syntax
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
call plug#end()
let g:coc_global_extensions = [ 'coc-tsserver' ]
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" Netdtree se cierra cuando se abre un archivo

let g:depleote#enable_at_startup = 1


let NERDTreeQuitOnOpen=1
let mapleader=" "
"espacio + s => escribir dos letras y dirigirse a la linea.
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" KITE
let g:kite_supported_languages = ['javascript', 'python']

" coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-
"creando atajos
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Remap key for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <c-space> to trigger completion
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif
