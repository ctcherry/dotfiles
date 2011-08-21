set nocompatible

syntax enable

"if has('gui_running')
"    set background=light
"else
    set background=dark
"endif

if has("gui_running")
	set guioptions=-t
endif

set ruler
set number

let g:solarized_termcolors=256
colorscheme solarized

set wildmode=longest,list,full
set wildmenu

set autoindent

" Spaces instead of tab char
set expandtab
set smarttab

" 2 spaces per tab
set shiftwidth=2
set softtabstop=2