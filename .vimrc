execute pathogen#infect()
syntax on
filetype plugin indent on


"==================================================================


let g:user_emmet_leader_key=',' " sets emmit hoykey ,,
let mapleader = " " 
let g:ycm_autoclose_preview_window_after_completion=1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:xml_syntax_folding = 1
let g:used_javascript_libs = 'react,jquery,react-native'
let g:airline#extensions#tabline#enabled = 1
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

let g:neoformat_run_all_formatters = 1
let g:neoformat_only_msg_on_error = 1
"let g:jsx_ext_required = 0
"let g:ale_emit_conflict_warnings = 0
let g:vim_jsx_pretty_enable_jsx_highlight = 0
let g:vim_jsx_pretty_colorful_config = 1 
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-q>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


filetype plugin indent on
let g:ackprg = 'rg --vimgrep --no-heading'
if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_switch_buffer = 'et'
endif



"==================================================================

set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
set ttyfast
set lazyredraw
set t_Co=256   
set visualbell t_vb= 
set ruler
set foldmethod=indent
set foldlevel=99
set relativenumber
set number
set encoding=utf-8
set wildignore+=*/cms_fixtures/*
"set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"Turn on spell Check"
set spell spelllang=en_us
"Word complete -- Not sure if i want this"
set complete+=kspell
set backspace=indent,eol,start

"==================================================================

""" Tabs #tabs
" - Two spaces wide
set tabstop=2
set softtabstop=2
" - Expand them all
set expandtab
" - Indent by 2 spaces by default
set shiftwidth=2
" turn off mouse
set mouse=""
"" Format Options #format-options
set formatoptions=tcrq
set textwidth=80


" Mappings 
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Auto corects last word if misspelled
imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>

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

" easytag stuff
map <Leader>retag :!ctags -R

"==================================================================




" create new tabs
nnoremap <leader>t :tabnew<Enter>
" Close all except current tab
nnoremap <leader>\ :tabonly<Enter>
nnoremap <F1> :buffers<CR>:buffer<Space>
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
inoremap /. <C-O>za
nnoremap /. za
onoremap /. <C-C>za
vnoremap /. zf
nnoremap <leader>f :Neoformat<Enter>
nnoremap <leader>s :vsplit<Enter>
nnoremap z1 1z=
nnoremap <leader>e :edit 
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>q :tabnew<CR> 
nnoremap <leader>b :!open % -a Google\ Chrome<CR>
"
"move around your splits with ctrl hjkl which b/c capslock is assigned to ctrl
"works well
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"save files with leader s
nnoremap <leader>S :w<cr>


"==================================================================

" Fix brackets 
inoremap {<CR> {<CR>}<C-o>O

"get out of insert mode with a super seldom used character sequence
inoremap jj <ESC>
inoremap zz <%= %>



"Ruby stuff:
"==================================================================
"
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END


"==================================================================


set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smartindent 
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

" Auto-format on save
augroup fmt
  autocmd!
  autocmd BufWritePre *.js,*.jsx Neoformat prettier
augroup END

syntax on




"==================================================================

call plug#begin('~/.vim/plugged')

" JS beauty
Plug 'sbdchd/neoformat'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'SirVer/ultisnips'
"
" " Currently, es6 version of snippets is available in es6 branch only
" Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
"
" Plug 'honza/vim-snippets' "optional
"
" " vim-plug
" Plug 'jbgutierrez/vim-babel'
" Plug 'mattn/webapi-vim'


call plug#end()




"==================================================================




" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'

Plugin 'editorconfig/editorconfig-vim'
" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"React syntax highlight
Plugin 'mxw/vim-jsx'

"Plugin 'JavaScript-Indent'

"Bundle 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdTree'

Plugin 'mileszs/ack.vim'

" Good looking bottom :)
Bundle 'bling/vim-airline'
" Git tools
Bundle 'tpope/vim-fugitive'
" Dependency managment
Bundle 'gmarik/vundle'
" Rails :/
Bundle 'tpope/vim-rails.git'
" Snippets for our use :)

Bundle 'tomtom/tcomment_vim'
" Beutiful solarized theme
"Bundle 'altercation/vim-colors-solarized'
" Molokai theme
Bundle 'tomasr/molokai'
" Vim Ruby
Bundle 'vim-ruby/vim-ruby'
" Surround your code :)
Bundle 'tpope/vim-surround'
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
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required





"==============================
map <Leader>l :action Run<Enter>




" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
