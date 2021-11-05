let g:mapleader ="\<Space>"

syntax on
syntax enable 				" Enable syntax highlighing
colorscheme onedark 		" Theme for VIM

set hidden 					" Required to keep multiple buffers open multiple buffers
set nowrap					" Display log lines as just one line
set encoding=UTF-8 			" The endcoding displayed
"set pumheight=2 			" Makes popup menu smaller
set ruler 					" Show the cursor postion all the time
set cmdheight=2 			" More space for displaying messages
set iskeyword+=- 			" Treat dash separated words as a word text object
set mouse=a 				" Enable mouse
set splitbelow 				" Horizontal splits will automatically be below
set splitright 				" Vertical splits will automatically be to the right
set t_Co=256 				" Support 256 bits color
set conceallevel=0 			" So that I can see `` in markdown files
set tabstop =4 				" Insert 2 spaces for a tab
set shiftwidth=4 			" Change the number of space characters inserted for indentation
set smarttab				" Makes tabbing smarter will realize you have 2 vs 4
set smartindent				" Makes insdenting smart
set autoindent 				" Good auto indent
set linespace=15			" Editor line height
set guifont=DroidSansMono\ Nerd\ Font\ Mono:h11
set laststatus=0			" Always display the status line
set number					" Line Numbers
set cursorline				" Enable highlighting of the current line
set background=dark			" Tell vim what the background color looks like
set noshowmode				" Don't show mode in the command windows
set showtabline=2			" Always show tabs
set nobackup
set nowritebackup
set noswapfile
set nocompatible 			" Vim Polyglot
set shortmess+=c			" Don't pass messages to |ins-completion-menu|
set signcolumn=yes 			" Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300			" Faster completion
set timeoutlen=100 			" By default timeoutlen is 1000ms
set formatoptions-=cro		" Stop newline continution of commnets
set clipboard=unnamedplus 	"Copy paste between vim and everything else
set autochdir 				" Working directory will always be the same as your working directory
set listchars=tab:\¦\ 		" Tab charactor 
set list
set foldmethod=indent 		" 
set foldlevelstart=99 		"  
set ignorecase 				" Enable case-sensitive 
set hlsearch 				" Highlight search text

au! BufWritePost $MYVIMWC source % 	" Auto source when writing to .vimrc
autocmd FileType * setlocal formatoptions-=c formatoptions-=r	formatoptions-=o 

" Can't stop me
cmap w!! w !sudo tee %

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None


" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Overwrite some color highlight
if (has("autocmd"))
	augroup colorextend
		autocmd ColorScheme
			\ * call onedark#extend_highlight("Comment",{"fg": {"gui": "#728083"}})
		autocmd ColorScheme
			\ * call onedark#extend_highlight("LineNr", {"fg": {"gui": "#728083"}})
	augroup END
endif
