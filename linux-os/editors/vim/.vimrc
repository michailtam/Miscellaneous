" IMPORTANT: For more available options you can write in command mode :help option-list or :options.

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
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
" YAVIDE Plugins for C++: https://github.com/JBakamovic/yavide#installation
Plug 'vim-scripts/a.vim'
Plug 'xavierd/clang_complete'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-pathogen'
" QUORA Plugins for C++: https://www.quora.com/How-to-build-vim-editor-in-Linux-into-an-effective-C++-programming-IDE 
" Plug 'LucHermitte/local_vimrc'
Plug 'LucHermitte/lh-cpp'
Plug 'universal-ctags/ctags'
Plug 'cquery-project/cquery'
Plug 'LucHermitte/vim-refactor'
Plug 'gilligan/vim-lldb'
Plug 'LucHermitte/VimFold4C'
Plug 'tomtom/checksyntax_vim'
call plug#end()

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
