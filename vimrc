set nocompatible

syntax enable

"if has('gui_running')
"  set background=light
"else
  set background=dark
"endif

if has("gui_running")
  set guioptions=-t
endif

let g:solarized_termcolors=256
colorscheme solarized

" Show command as you type it
set showcmd

" Hilight matching brackets
set showmatch

" Line numbers and file posiition info
set ruler
set number

set wildmode=longest,list,full
set wildmenu

set autoindent

" Spaces instead of tab char
set expandtab
set smarttab

" 2 spaces per tab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Incremental search starts searching as you type
set incsearch

" Highlight what the search found
set hlsearch

" Ignore case in a search UNLESS you have a mix of upper and lowercase letters
set ignorecase
set smartcase

" Try to keep 2 lines of text above or below the active line as you scroll up and down a file
set scrolloff=2

" Navigate past linebreaks
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" detect tab settings
autocmd BufReadPost * :DetectIndent 
