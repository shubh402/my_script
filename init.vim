call plug#begin()
   Plug 'morhetz/gruvbox'
   Plug 'sheerun/vim-polyglot'
   Plug 'preservim/nerdtree'
   Plug 'mattn/emmet-vim'
   Plug 'alvan/vim-closetag'
   Plug 'honza/vim-snippets'
   Plug 'sbdchd/neoformat'
   Plug 'ryanoasis/vim-devicons'
   Plug 'tpope/vim-commentary'
   Plug 'vimwiki/vimwiki'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
  call plug#end()

  set number
  set smarttab
  set cindent
  set tabstop=2
  set shiftwidth=2
  set nocompatible
  colorscheme gruvbox
  nnoremap <C-g> :NERDTree<CR>
  let g:neoformat_try_node_exe = 1

  augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
  augroup END

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-yaml',
  \ 'coc-json', 
  \ ]

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         
"
let g:NERDTreeIgnore = ['^node_modules$']
