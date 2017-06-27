execute pathogen#infect()

" This is vundle 
set nocompatible              " required
filetype off                  " required



let g:user_emmet_leader_key=',' " sets emmit hoykey ,,
let mapleader = " " 
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ackprg = 'rg -vimgrep --no-heading'


set t_Co=256   
set visualbell t_vb= 
set ruler
set foldmethod=indent
set foldlevel=99
set relativenumber
set number
set encoding=utf-8
set wildignore+=*/cms_fixtures/*

"Turn on spell Check"
set spell spelllang=en_us
"Word complete -- Not sure if i want this"
set complete+=kspell


" Mappings 
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" create new tabs
nnoremap <leader>t :tabnew<Enter>
" Close all except current tab
nnoremap <leader>\ :tabonly<Enter>

" Navigating tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
"Previous and next window
nnoremap <leader>w gt
nnoremap <leader>W gT


"Get to ack to leader a"
nnoremap <leader>a :Ack
"Switch between the last two files
nnoremap <leader> <c-^>

"Folding
inoremap // <C-O>za
nnoremap // za
onoremap // <C-C>za
vnoremap // zf

"get out of insert mode with a super seldom used character sequence
inoremap jj <ESC>
inoremap zz <%= %>
nnoremap <leader>e :edit 
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>q :tabnew<CR> 
set backspace=indent,eol,start


if executable('rg')
    let g:ctrlp_user_command = 'rg --files %s'
    let g:ctrlp_use_caching = 0
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_switch_buffer = 'et'
endif

"move around your splits with ctrl hjkl which b/c capslock is assigned to ctrl
"works well
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" My Custom Mappings related to ctrl-p
" copied the idea for this from gary bernhardts vimrc
map <leader>gj :CtrlP app/assets/javascripts<cr>
map <leader>gv :CtrlP app/views<cr>
map <leader>gf :CtrlP spec/factories<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gh :CtrlPT app/helpers<cr>
map <leader>gl :CtrlP lib<cr>
map <leader>gsc :CtrlP spec/controllers<cr>
map <leader>gsm :CtrlP spec/models<cr>
map <leader>gsf :CtrlP spec/features<cr>


"rails vim quicker mappings
map <Leader>c :Econtroller
"map <Leader>sc :RScontroller
map <Leader>vc :EVcontroller
map <Leader>m :Emodel
"map <Leader>sm :RSmodel
map <Leader>vm :EVmodel

map <Leader>bb :!bundle install<cr>

"save files with leader s
nnoremap <leader>S :w<cr>
" easytag stuff
map <Leader>retag :!ctags -R



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

"Bundle 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdTree'

"Search for text"
Plugin 'mileszs/ack.vim'
"Dependencies of snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

" Good looking bottom :)
Bundle 'bling/vim-airline'
" Git tools
Bundle 'tpope/vim-fugitive'
" Dependency managment
Bundle 'gmarik/vundle'
" Rails :/
Bundle 'tpope/vim-rails.git'
" Snippets for our use :)
Bundle 'garbas/vim-snipmate'
" Commenting and uncommenting stuff
Bundle 'tomtom/tcomment_vim'
" Beutiful solarized theme
"Bundle 'altercation/vim-colors-solarized'
" Molokai theme
Bundle 'tomasr/molokai'
" Vim Ruby
Bundle 'vim-ruby/vim-ruby'
" Surround your code :)
Bundle 'tpope/vim-surround'
" Every one should have a pair (Autogenerate pairs for "{[( )
Bundle 'jiangmiao/auto-pairs'
" Tab completions
Bundle 'ervandew/supertab'
" CoffeeScript syntax
Bundle 'kchmck/vim-coffee-script'
" Fuzzu finder for vim (CTRL+P)
Bundle 'kien/ctrlp.vim'
" Ruby Tests
Bundle 'skalnik/vim-vroom'
" Easy motion for easy motion
Bundle 'Lokaltog/vim-easymotion'
" Running tests in tmux session
Bundle 'tpope/vim-dispatch'
" Gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'danro/rename.vim'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



"Ruby stuff:
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END
" ================


set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent 

autocmd bufnew, bufread *.c setl cindent 
autocmd bufnew, bufread *.java setl cindent
syntax on
let g:molokai_original = 1 
colorscheme molokai


au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix



let g:pymode_indent = 0
let python_highlight_all=1
syntax on

