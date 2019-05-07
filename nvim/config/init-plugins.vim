filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'rbgrouleff/bclose.vim'
Plug 'simeji/winresizer'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'

call plug#end()

filetype plugin indent on
