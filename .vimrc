syntax on

call plug#begin('~/.vim/plugged')

" Syntax highlighting for JS/JSX
" from https://drivy.engineering/setting-up-vim-for-react
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" NERDTree and friends
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Better indentation support
Plug 'tpope/vim-sleuth'

call plug#end()
