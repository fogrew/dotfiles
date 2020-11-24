" Installing vim-plug if it's not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'

Plug 'mattn/emmet-vim'

"Trying to fix bad php support
Plug '2072/PHP-Indenting-for-VIm'
Plug 'StanAngeloff/php.vim'
Plug 'captbaritone/better-indent-support-for-php-with-html'

"jsx support
Plug 'pangloss/vim-javascript'
Plug 'editorconfig/editorconfig-vim'
Plug 'mxw/vim-jsx'

"blade syntax
Plug 'jwalton512/vim-blade'

"handlebars support for ember
Plug 'mustache/vim-mustache-handlebars'

"colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox

set background=dark

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

set encoding=UTF-8

" Don’t add empty newlines at the end of files
set binary
set noeol

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Enable line numbers
set number

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Enable mouse in all modes
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Disable error bells
set noerrorbells

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Editorconfig
let g:indent_style = 'space'
let g:indent_size  = 4
let g:tab_width    = 4

set ttimeout
set ttimeoutlen=250
set notimeout
set lazyredraw
set ttyfast

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden = 1

"mappings
map <C-l> :NERDTreeToggle<CR>