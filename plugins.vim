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
Plug 'prettier/vim-prettier', {'do': 'yarn install' }
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
"looks for all files in tree
nnoremap <leader>g :GFiles<cr>
"looks for files in git repo only
nnoremap <leader>b :Buffers<cr>
"looks for files in opened buffers
nnoremap <leader>f :Rg!<cr>
"coc.nvim"
