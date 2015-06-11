" basic setup and pathogen
set sessionoptions-=options
execute pathogen#infect()
syntax on
filetype plugin indent on

" remap keys
let mapleader=","
map <leader>c :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>
map <leader>/ <plug>NERDCommenterToggle
nnoremap <space> :noh<CR>
map <leader>T :ConqueTerm 

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .svn --ignore .hg --ignore .DS_Store -g ""'

" colorscheme
"set background=dark
colo zenburn

" formatting
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set hlsearch
set ic
set number

set statusline=+%F
set laststatus=2

" jsx syntax for js files
let g:jsx_ext_required = 0
