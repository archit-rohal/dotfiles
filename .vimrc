call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'chrisbra/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'j5shi/CommandlineComplete.vim'
Plug 'kshenoy/vim-signature'
Plug 'tomasr/molokai'
Plug 'keith/parsec.vim'
Plug 'vifm/vifm.vim'
Plug 'mbbill/undotree'
Plug 'ryanoasis/vim-devicons'
Plug 'kqito/vim-easy-replace'
Plug 'tpope/vim-abolish'
Plug 'justinmk/vim-sneak'
Plug 'voldikss/vim-browser-search'
Plug 'easymotion/vim-easymotion'


set encoding=UTF-8

" Empty space for 'vim-lastplace' plugin which was installed manually inside
" the .vim/pack/ directory

call plug#end()
" Gruvbox settings start from here
" -----------------------------------------------------------------------------------

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
set termguicolors
endif
endif

 colorscheme molokai 
 " set background=dark
let g:molokai_original = 1
"-----------------------------------------------------------------------------------

let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1
