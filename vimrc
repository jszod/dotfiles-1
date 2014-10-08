set nocompatible
filetype off		" required
set nobackup
set noswapfile

"= Vundle and plugin configuration ==================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'     " NOTE: this is not fully configured yet need to add syntax checkers

Plugin 'dandorman/vim-colors'     " A collection of VIM colors schemes
Plugin 'bling/vim-airline'        " Airline status bar plugin
Plugin 'godlygeek/tabular'        " Required for markdown highlighting belowj
Plugin 'plasticboy/vim-markdown'  " Markdown syntax highlighting
Plugin 'elixir-lang/vim-elixir'   " Elixir syntax highlighting, file detection, auto indet

call vundle#end()
"=====================================================================

filetype plugin on
syntax on

"= General Settings ==================================================
set encoding=utf-8  " Character encoding
set number          " Show line numbers
set scrolloff=999   " Lines to keep above and below the cursor.
set wildmenu        " Show autocomplete menus.
set showmode        " Show editing mode
set visualbell      " Error bells are displayed visually.
set showcmd         " Display incomplete commands

"= Tabs & Indenting ==================================================
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set smarttab

"= Search options ====================================================
set incsearch
set ignorecase
set hlsearch

"= Motion Commands ===================================================
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>

"= Status line =======================================================
set laststatus=2                             " make status visible
set statusline=                              " blank slate
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%{fugitive#statusline()}     " git repository
set statusline+=%=                           " right align remainder
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
set statusline+=[%L]                         " length

"= Set Font ==========================================================
set guifont=Monaco:h11

"= Set Color Scheme ==================================================
set t_Co=256              " Set terminal to use 256 colors
set background=dark

if has('gui_running')
  colorscheme molokai
"" colorscheme railscasts
else
  colorscheme molokai
"  colorscheme railscasts
end

"= Set Cursor Style ==================================================
set cursorline
" set cursorcolumn
":highlight CursorLine ctermbg=darkgray

"= Quickly Scroll and Toggle Buffers =================================
nmap <leader><right><right> :bn<CR>
nmap <leader><left><left> :bp<CR>
nmap <leader><down><down> :e #<CR>

"= Custom key mappings ==============================================
map <F2> :NERDTreeToggle<CR>

"= Spell Checking ====================================================
" set spell
" set spelllang=en_us
" set spellsuggest=5

"|||||||||||||||||||||||||||| PLUGINS ||||||||||||||||||||||||||||||||

"= Fugitive Buffer Cleanup ===========================================
autocmd BufReadPost fugitive://* set bufhidden=delete


"= Airline status bar settings ========================================
let g:airline#extensions#tabline#enabled = 1

"= Vim-markdown settings ==============================================
let g:vim_markdown_folding_disabled = 1
