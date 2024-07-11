" no vi old stuff
set nocompatible

set relativenumber

set number

" allows for switching buffers without saving current
set hidden

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Turn no wildmenu
set wildmenu

" custom theme
set background=dark

" Define colors to mimic Gruvbox dark
highlight Normal ctermbg=235 guibg=#282828
highlight Comment ctermfg=59 guifg=#928374
highlight Constant ctermfg=130 guifg=#b8bb26
highlight Special ctermfg=130 guifg=#b8bb26
highlight Identifier ctermfg=208 guifg=#fabd2f
highlight Statement ctermfg=110 guifg=#d3869b
highlight PreProc ctermfg=110 guifg=#d3869b
highlight Type ctermfg=110 guifg=#d3869b
highlight Function ctermfg=110 guifg=#d3869b
highlight Error ctermfg=196 guifg=#fb4934
highlight Todo ctermfg=103 guifg=#fe8019

set cursorline
:highlight Cursorline cterm=bold

inoremap jk <Esc>

set showcmd
set showmatch

set tabstop=4
set shiftwidth=4

set mouse=a

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
