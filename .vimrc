set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2

call plug#begin('~/.vim/plugged')

"  collection  of language syntax
Plug 'sheerun/vim-polyglot'
" Plug 'HerringtonDarkholme/yats.vim' "syntax ther TypeScript
" Plug 'leafgarland/typescript-vim' "TypeScript syntax file
" Plug 'pangloss/vim-javascript' "improve indentation
" Plug 'Shougo/deoplete.nvim' "other suggetion language
" Plug 'Shougo/denite.nvim' "open files

" Themes
Plug 'morhetz/gruvbox'
" tema para la barra de estado comentado
" Plug 'itchyny/lightline.vim' 


"" IDE: para saltar mas rapida
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

"" buscar archivos"
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"" Comentar codigo"
Plug 'scrooloose/nerdcommenter'


"" Muestra si se add lineas, modificaron o eliminadas"
Plug 'mhinz/vim-signify'
" Muestra lineas verticales en indentaciones
Plug 'yggdroot/indentline'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
  
" Para abrir desde teclado con nerdTree y navegar entre pantallas 
" CTRL + h o CTRL + l => navegar entre pantallas.
" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" status bar indicador - lightline
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
" 
Plug 'ap/vim-css-color'
Plug 'iamcco/coc-angular'
call plug#end()

let mapleader=" "
let g:tmux_navigator_no_mappings = 1
filetype plugin on

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = "hard"

let g:coc_global_extensions = [ 'coc-tsserver']
" Netdtree se cierra cuando se abre un archivoc
let NERDTreeQuitOnOpen=1

" Split Resize
nnoremap <Leader>> 10<C-w>
nnoremap <Leader>< 10<C-w>

" Plugs
"espacio + s => escribir dos letras y dirigirse a la linea.
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
map <Leader>p :Files<CR> "Buscar archivos
map <Leader>ag :Ag<CR>



autocmd FileType scss setl iskeyword+=@-@
"creando atajos
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>




" Remap key for gotos 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" tmux navigator
"
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

" buffers
map <Leader>ob :Buffers<cr>
"
" use <c-space> to trigger completion
"if &filetype == "javascript" || &filetype == "python"
"  inoremap <c-space> <C-x><C-u>
"else
"  inoremap <silent><expr> <c-space> coc#refresh()
"endif
inoremap <silent><expr> <c-space> coc#refresh()

if !executable('tmux')
  let g:loaded_vimux = 1
endif

" others
" let g:depleote#enable_at_startup = 1


" coc
" autocmd FileType python let b:coc_suggest_disable = 1
" autocmd FileType javascript let b:coc_suggest_disable = 1

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr><TAB> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


