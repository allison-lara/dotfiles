" vim-plug
if empty(glob('~/.config/vim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/vim/plugged')

Plug 'tpope/vim-sensible'

" Basic VIM
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'yegappan/grep'
Plug 'editorconfig/editorconfig-vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'justinmk/vim-sneak'
" Plug 'michaeljsmith/vim-indent-object'
" Plug 'tpope/vim-abolish'

" Colors
Plug 'tomasr/molokai'
Plug 'tssm/fairyfloss.vim'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/committia.vim'

" Programming things
Plug 'tpope/vim-commentary'

" ALE
Plug 'dense-analysis/ale'

" Infra
Plug 'hashivim/vim-terraform'

" Ruby
Plug 'tpope/vim-endwise'

" Frontend
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Erlang
" Plug 'vim-erlang/vim-erlang-runtime'
" Plug 'vim-erlang/vim-erlang-compiler'
" Plug 'vim-erlang/vim-erlang-omnicomplete'
" Plug 'vim-erlang/vim-erlang-tags'
" Plug 'edkolev/erlang-motions.vim'

" Elixir
" Plug 'elixir-lang/vim-elixir'

"OCaml
" Plug 'def-lkb/ocp-indent-vim'

" Scala
" Plug 'derekwyatt/vim-scala'

" Misc
" Plug 'dag/vim-fish'

call plug#end()

