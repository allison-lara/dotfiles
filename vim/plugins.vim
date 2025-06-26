" vim-plug
if empty(glob('~/.config/vim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'dense-analysis/ale'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'EdenEast/nightfox.nvim'

call plug#end()

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

autocmd User Flags call Hoist("buffer", "ale#statusline#Count")

colorscheme duskfox
