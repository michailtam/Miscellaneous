" IMPORTANT: For more available options you can write in command mode :help option-list or :options.

" Enable specific plugins
" IMPORTANT: To install plugins previously a plugin manager has to be installed based on the following tutorials.
" In general, it is recommended to use a plugin manager and not installing the plugins manually (because of updates).
" https://opensource.com/article/20/2/how-install-vim-plugins
" https://www.youtube.com/watch?v=2prsFrKwbOo&t=313s
" After downloading and saving the plugin execute :PlugInstall in vim to
" enable the plugin.

" Tutorials of how to turn vim into a C++ IDE: 
" https://idorobotics.com/2018/04/01/setting-up-vim-for-c-development/
" https://www.quora.com/How-to-build-vim-editor-in-Linux-into-an-effective-C++-programming-IDE

call plug#begin()
Plug 'ycm-core/YouCompleteMe' 		" Code completion for C++
Plug 'vim-syntastic/syntastic' 		" Syntax checking for C++
Plug 'majutsushi/tagbar' 					" Tags for C++ code
" YAVIDE Plugins for C++: https://github.com/JBakamovic/yavide#installation
Plug 'vim-scripts/a.vim'					" Commands to switch between source and header files
Plug 'xavierd/clang_complete'			" C and C++ code completion
Plug 'preservim/nerdcommenter'		" Comment functions
Plug 'preservim/nerdtree'					" File explorer for vim
Plug 'ervandew/supertab'					" Enables <Tab> insert completion
Plug 'majutsushi/tagbar'					" Easy way to browse tags
Plug 'SirVer/ultisnips'						" Provides ready code snippets e.g. for classes
Plug 'vim-airline/vim-airline'		" Displays the status of the plugin-loading
Plug 'Townk/vim-autoclose'				" Provides autoclose when typing a character (similar to autocompletion)
Plug 'tpope/vim-fugitive'					" Git plugin
Plug 'airblade/vim-gitgutter'			" Show a git diff in the sign column
Plug 'terryma/vim-multiple-cursors' " Enables multiple selection
Plug 'tpope/vim-pathogen'					" Installs plugins and runtime files in their own private directories
" ADDITIONAL Plugins for C++: https://www.quora.com/How-to-build-vim-editor-in-Linux-into-an-effective-C++-programming-IDE 
"Plug 'LucHermitte/local_vimrc'
"Plug 'LucHermitte/lh-cpp'
"Plug 'universal-ctags/ctags'
Plug 'cquery-project/cquery'			" C++ indexation
Plug 'LucHermitte/vim-refactor'		" Enables refactoring
Plug 'vim-scripts/taglist.vim'		" Makes finding variables, types, classes and functions in the code easier
"Plug 'gilligan/vim-lldb'
"Plug 'LucHermitte/VimFold4C'
"Plug 'tomtom/checksyntax_vim'
Plug 'frazrepo/vim-rainbow'				" Shows different colors for the brackets
Plug 'mileszs/ack.vim'						" Searches for a file which contains a certain line or a certain word
Plug 'junegunn/fzf.vim'						" Intelligent search for filenames. Type :FZF to start searching
Plug 'altercation/vim-colors-solarized' " Vim colorschemes
Plug 'mattn/emmet-vim'						" Plugin for html
call plug#end()

let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang.so'
let g:rainbow_active = 1

" Sets the history to 100 (default is 50). 
set history=500 

" Sets the tabstop
set tabstop=2

" Sets the shift width
set shiftwidth=2

" Shows the position of the cursor.
set ruler

" Show incoplete commands.
set showcmd

" Displays a menu at the bottom of the screen while searching with tab-comletion.
set wildmenu

" Minimum lines above the curser (you can position the text with z-ENTER).
set scrolloff=5 

" Higlights the previous search match. 
set hlsearch

" This highlights the matched string while typing.
set incsearch

" This ignores the case while searching.
set ignorecase
set smartcase

" Displays the number of a line.
set number

" Backups the file before saving it.
set backup

" Preserves breaking mid words e.g. ca -> and t is on the next line
set lbr 

" This purpose is more targeted to coding. 
" ai: Does autointent based on the previous line
" si: Does smart intent e.g. sets the intent of the closing braicket 
set ai
set si

" Tells vim to match the colors based on the background
set bg=dark

" Sets the color sheme. To make this working you have to create a directory colors in ~/.vim/ and copy the .vim " colorscheme file inside.
" IMPORTANT: In case of the following error message:
" E488: Trailing Characters error after attempting to install vim-hybrid
" you have to download the coloscheme .vim file and replace the content with the raw text of the
" github repo. For example the content of the downloaded simple-dark.vim file has to be replaced with the 
" raw text content of the github repo, to prevent copying the html tags.
syntax on
colorscheme simple-dark 

" MODE LINE: Forces vim to treat the following file types as they are set to
" vim: set ft=vim :
" vim: set ft=cpp :
" vim: set ft=c :
" vim: set ft=txt :
" vim: set ft=h :
