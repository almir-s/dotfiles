if has('nvim')
	let s:editor_root=expand("~/.config/nvim")
	set termguicolors
else
	let s:editor_root=expand("~/.vim")
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tomtom/tcomment_vim'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-sensible'


" Plug 'lyuts/vim-rtags'
" Themes
Plug 'blerins/flattown'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" Plug 'junegunn/vim-easy-align'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-signify'
Plug 'schickling/vim-bufonly'


" Plug 'mileszs/ack.vim'
" Plug 'osyo-manga/vim-over'
" Plug 'tpope/vim-fugitive'
"
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
" Plug 'tpope/vim-dispatch'
Plug 'honza/dockerfile.vim'

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'rhysd/vim-clang-format'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'

Plug 'igankevich/mesonic'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'semirpuskarevic/YCM-Generator', { 'branch': 'meson' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'develop' }
Plug 'vim-scripts/gtags.vim'
" Plug 'jsfaint/gen_tags.vim'
" Plug 'vhdirk/vim-cmake'
Plug 'majutsushi/tagbar'
" Plug 'itchyny/lightline.vim'
"
"rainbow
Plug 'luochen1990/rainbow'
" Plug 'oblitum/rainbow'
"
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'easymotion/vim-easymotion'
" Plug 'tpope/vim-eunuch'
"
Plug 'Valloric/YouCompleteMe'
" Plug 'scrooloose/syntastic'
" Plug 'richq/vim-cmake-completion'
" Plug 'idanarye/vim-dutyl'

" Plug 'w0rp/ale'
" Plug 'maximbaz/lightline-ale'
" Plug 'CharlesGueunet/VimFilify'



call plug#end()


" Basic Settings
" Basic Settings 
syntax on
filetype plugin indent on
let mapleader=' '       " leader is space 
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2
set expandtab       " tabs are spaces
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]
set modeline
set relativenumber              " show line numbers
set number
set modelines=1
set mouse=a
set lazyredraw
set colorcolumn=80              "Highlight the character limit
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set wildignorecase
set showtabline=2
"

" rainbow 
let g:rainbow_active = 1



" Incsearch 
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
"
" YCM {{{
"let g:ycm_key_list_previous_completion = []
"let g:ycm_key_list_select_completion = []
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
nnoremap <leader>jd :YcmCompleter GoTo<CR>
"}}}
"
" Colorscheme {{{
if &t_Co >= 256 || has("gui_running")
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set background=dark
  try
    colorscheme PaperColor 
  catch
    colorscheme delek  
  endtry
endif
" }}}

" Clang Format {{{
let g:clang_format#style_options = {
      \ "AccessModifierOffset" : -4,
      \ "AllowShortIfStatementsOnASingleLine" : "true",
      \ "AlwaysBreakTemplateDeclarations" : "true",
      \ "Standard" : "C++11"}
" map to <Leader>cf in C++ code
let g:clang_format#command="clang-format"
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" }}}
" Signify {{{
let g:signify_vcs_list = ['git']
let g:signify_sign_add = '⨁'
let g:signify_sign_delete = '⨴'
let g:signify_sign_delete_first_line = '⨂'
let g:signify_sign_change = '⨸'
let g:signify_sign_changedelete = '⨂'
" }}}

