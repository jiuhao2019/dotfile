let mapleader = " "
set hls
"编码模式，避免乱码
set fileencodings =utf-8,cp936,big5,latin1
set encoding      =utf-8
filetype on
filetype indent on
filetype plugin on
syntax on
set autoread
set paste
set confirm
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set autoindent
set history =100
set completeopt=menu,menuone,noselect
"搜索字符跳转时不循环，要么到底，要么到顶
set nowrapscan
"不自动换行
set nowrap
set noautochdir
set shortmess =aIt
"不要自动生成各种备份文件
set noswapfile
set nobackup
"一直显示底部状态栏,tab栏
set laststatus =2
set showtabline =0
set statusline=%t%m%r%h%w%=\ [%l\/%L:%v]
set scrolloff =1
set splitright
set splitbelow
"不同模式光标形状
" INSERT mode
let &t_SI = "\<Esc>[5 q" . "\<Esc>]12;green\x7"
" REPLACE mode
let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;green\x7"
" NORMAL mode
let &t_EI = "\<Esc>[1 q" . "\<Esc>]12;green\x7"

"---------------------------------------------
call plug#begin()
Plug 'Shrikecode/kyotonight.vim'
Plug 'mbbill/undotree'
call plug#end()
"----------------------------------------kyotonight
let g:kyotonight_bold = 1
let g:kyotonight_underline = 1
let g:kyotonight_italic = 0
let g:kyotonight_italic_comments = 0
let g:kyotonight_uniform_status_lines = 0
let g:kyotonight_cursor_line_number_background = 0
let g:kyotonight_uniform_diff_background = 0
let g:kyotonight_lualine_bold = 1

colorscheme kyotonight

"----------------------------------------undotree
if has("persistent_undo")
  let target_path = expand('~/.undodir')
  if !isdirectory(target_path)
    call mkdir(target_path, "p", 0700)
  endif
  let &undodir=target_path
  set undofile
endif
let g:undotree_WindowLayout = 2

nnoremap <silent> <C-j> <C-W>j
nnoremap <silent> <C-k> <C-W>k
nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-l> <C-W>l

nnoremap <silent> <Esc> :nohlsearch<cr>

nnoremap <silent> <space>h :vertical resize -5<cr>
nnoremap <silent> <space>l :vertical resize +5<cr>
nnoremap <silent> <space>j :resize +5<cr>
nnoremap <silent> <space>k :resize -5<cr>

nnoremap <silent> <space>1 :e ~/.vimrc<cr>
nnoremap <silent> <space>2 :e ~/.config/wezterm/font.lua<cr>
nnoremap <silent> <space>3 :e ~/.config/i3/config<cr>
nnoremap <silent> <space>4 :e ~/.emacs.d/init.el<cr>

nnoremap <silent> <space>e :Explore<cr>
nnoremap <silent> <space>u :UndotreeToggle<cr>

