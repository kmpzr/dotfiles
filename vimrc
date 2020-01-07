"
" Install plugins: 
"
"    :PluginInstall
"

set nocp
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-airline/vim-airline'
Bundle 'tomtom/tcomment_vim'
Bundle 'rhysd/vim-grammarous'
Bundle 'scrooloose/nerdtree'
call vundle#end()
filet plugin indent on

syn on
set bg=dark
set hls sta nonu ai si nobk nowb noswf tf nolz
set backspace=indent,eol,start
set ts=2 sw=2 sts=2 et ls=2
set encoding=utf-8
set clipboard=unnamed
set ttyfast
set ttyscroll=3
set lazyredraw
set nocursorcolumn
set nocursorline
set t_ut=
set t_Co=256
set grepprg=ag\ --vimgrep
set grepformat=%f:%l:%c%m
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz,*.tar

" Make unwanted characters visible
"
" set list lcs=tab:·⁖,trail:¶
" or
" set list lcs=tab:»·,trail:·

" Set the ack tool
let g:ackprg = 'ag --nogroup --nocolor --column'

" Spell Check
au FileType markdown setlocal spell

" Remove trailing whitespace on write
au FileType ruby,eruby,go,javascript,yaml,python,php,c,cpp,css,java autocmd BufWritePre <buffer> :%s/\s\+$//e

" Mappings
" -> Buffer nav
map <C-Tab> :bn<CR> 
map <C-S-Tab> :bp<CR>
" -> Nerdtree
map <C-n> :NERDTreeToggle<CR>
" Search for the string under cursor using :Ack
vnoremap <F3> :Ack <C-R><C-W> *<CR>
" -> Quickfix nav
map <C-S-J> :cn<CR>
map <C-S-K> :cp<CR>

