"==============================================================================
" vim 内置配置 
"==============================================================================

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start


" 关闭兼容模式
set nocompatible
set nu " 设置行号 
set cursorline "突出显示当前行
set showmatch " 显示括号匹配
set hlsearch

let g:onedark_termcolors=256
syntax on
colorscheme onedark

" tab 缩进
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释

" 定义快捷键的前缀，即<Leader>
let mapleader=";" 

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase

syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全

" 插件开始的位置
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
Plug 'junegunn/vim-easy-align'

" 用来提供一个导航目录的侧边栏
Plug 'preservim/nerdtree'

" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" go 主要插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" 代码自动完成，安装完插件还需要额外配置才可以使用
" cd ~/.vim/plugged/YouCompleteMe && ./install.py --go-completer --rust-completer
Plug 'ycm-core/YouCompleteMe'

" 插件结束的位置，插件全部放在此行上面
call plug#end()

map <C-n> :NERDTreeToggle<CR>

nmap <C-b> :TagbarToggle<CR>

hi String ctermfg=magenta
hi Number ctermfg=magenta

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:go_fmt_command = "goimports"

map <C-]> :YcmCompleter GoTo<CR>

"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window
no <C-h> <C-w>h| "switching to left window

let g:rustfmt_autosave = 1
let g:ycm_rust_toolchain_root = $HOME.'/.rustup/toolchains/stable-x86_64-unknown-linux-gnu'
set hidden
let g:airline#extensions#tabline#enabled = 1
autocmd BufWritePost * GitGutter
