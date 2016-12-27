" Vim Configuration file with vundle plugin manager

" Use vim settings rather than vi settings
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-go plugin
Plugin 'fatih/vim-go'

" Taglist (sudo apt-get install exuberant-ctags)
Plugin 'taglist.vim'

" Another tag disply plugin
Plugin 'majutsushi/tagbar'

" Solidity highlighter                                                          
Plugin 'tomlion/vim-solidity'

call vundle#end()
filetype plugin indent on    " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Enable syntax highlight & auto indent
syntax on
set smartindent

" Set tab width=2
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Theme and color
color delek
set colorcolumn=80
hi ColorColumn ctermbg=Cyan

" Show autocomplete menu
set wildmenu

" Toggle configuration
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

" tagbar configurations
let g:tagbar_left=1
highlight TagbarHighlight guibg=Blue ctermbg=Blue

" Configure vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" key maps
nnoremap <silent> <F8> :TagbarToggle<CR>


" Config indent separately for file types
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal sw=2 ts=2


