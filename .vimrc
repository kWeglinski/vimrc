let $PATH='$HOME/.cargo/bin:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin'
" Syntax highlight
" Vim Plug
call plug#begin('~/.vim/plugged')
" YouCompleteMe
"Plug 'Valloric/YouCompleteMe'

" React plugins
Plug 'SirVer/ultisnips'
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'honza/vim-snippets'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fancy indent line
Plug 'Yggdroot/indentLine'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" NERD Tree with git
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-ripgrep
Plug 'jremmen/vim-ripgrep'

" Surround
Plug 'tpope/vim-surround'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Context coloring
Plug 'vim-scripts/JavaScript-Context-Coloring'
Plug 'mxw/vim-jsx'
" Plug 'pangloss/vim-javascript'
" Plug 'elzr/vim-json'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'roosta/srcery'
Plug 'altercation/vim-colors-solarized'

" GIT
Plug 'airblade/vim-gitgutter'

" Whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Initialize plugin system
call plug#end()
syntax on

" Full colors
" set t_Co=256
"let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme srcery

" Change indent line to look nicer
let g:indentLine_char = '▏'

" Custom Ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_custom_ignore = {
 \ 'dir': '\.git$\|\.yardoc\|bower_components|node_modules|public$|log\|tmp$',
 \ 'file': '\.so$\|\.dat$|\.DS_Store$'
 \ }

" Folding
set foldmethod=indent
set nofoldenable

" Line numbers
set number

"indent
set smartindent
set noexpandtab
set copyindent
set preserveindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" JSX
let g:jsx_ext_required = 0

" Packages
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Map ctrl+p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <C-p> :CtrlP<CR>

" Key Commands
map <C-n> :NERDTreeToggle<CR>
nmap <Left> gT
nmap <Right> gt
nmap <C-m> :tabe<CR>
"Timeouts
set ttimeoutlen=0

augroup long_lines
    au!
    au BufWinEnter * if !exists('w:m2') | let w:m2=matchadd('ErrorMsg', '\%>85v.\+', -1) | endif
augroup END

" this should fake system clipboard
:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d
