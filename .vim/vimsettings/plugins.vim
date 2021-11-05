"=================PLUGIN INSTALL================"
"Cài vim-plug nếu chưa có
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

"Theme 
	Plug 'dracula/vim', { 'name': 'dracula' }
	Plug 'joshdick/onedark.vim'     "Dark Theme

"File browser
	Plug 'preservim/nerdTree' 			" File browser  
	Plug 'Xuyuanp/nerdtree-git-plugin' 		" Git status
	Plug 'ryanoasis/vim-devicons' 			" Icon
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync' 		" Sync current file 		

"File search
	Plug 'junegunn/fzf',{'do':{-> fzf#install()}} 	" Fuzzy finder 
	Plug 'junegunn/fzf.vim'
	
"Status bar - Cài thêm nerd fonts
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

"Terminal
	Plug 'voldikss/vim-floaterm' 			"Float terminal	

"Code intellisene - Tự động hoàn thành code
	Plug 'neoclide/coc.nvim', {'branch': 'release'} "Language sever
	Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdcommenter' 					" Comment code
	Plug 'liuchengxu/vista.vim' 					" Function tag bar

"Snipets - gợi ý code 
	Plug 'honza/vim-snippets' "Cài  đặt cùng coc.nvim và coc-snippets

"Syntax
	Plug 'sheerun/vim-polyglot'

"Linting
	Plug 'dense-analysis/ale'

" Debugging
	Plug 'puremourning/vimspector' 		" Vimspector

" Source code version control 
	Plug 'tpope/vim-fugitive'		" Git

call plug#end()

"================= END PLUGIN INSTALL ================"
