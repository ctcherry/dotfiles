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

set tabstop=2
