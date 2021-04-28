" auto-install vim-plug
if empty(glob('/home/developer/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('/home/developer/.config/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier'
Plug 'gcmt/taboo.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"-------------------------------------------"
" Personnal binding
"-------------------------------------------"
" ---- PLUGINS ---- "
"NerdTree
nnoremap <C-f> :NERDTreeFocus<cr>
nnoremap <F2> :NERDTreeToggle<cr>
"fzf personnal shortcuts
nnoremap <leader>o :Files<cr>
nnoremap <leader>ff :Rg<cr>
"coc.nvim"
