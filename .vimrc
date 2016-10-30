" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "scrooloose/nerdtree"
Bundle "easymotion/vim-easymotion"
Bundle "Lokaltog/vim-powerline"
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

set laststatus=2

let g:mapleader = ';'

set tabstop=4
set fileencoding=utf-8
set fileencodings=utf-8,gbk

syntax on		"syntax highlight
" set background=dark

if has('gui_running')		"theme
	colorscheme dracula
	set lines=40 columns=118
else
	"colorscheme solarized
endif

set guifont=Monaco:h17		"font size


set cmdheight=1

set runtimepath^=~/.vim/bundle/ctrlp.vim

set nu!		"显示行

set list
set listchars=tab:>-,trail:-



map <C-n> :NERDTreeToggle<CR>
