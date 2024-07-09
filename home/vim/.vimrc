" VIM PLUG
call plug#begin()

Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-vinegar'

call plug#end()

" COLORSCHEME
 if has('termguicolors')
   set termguicolors
 endif
 
" For dark version.
set background=dark
 
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'

let g:gruvbox_material_ui_contrast = 'high'

let g:gruvbox_material_foreground = 'material'

" For better performance
let g:gruvbox_material_better_performance = 1
 
colorscheme gruvbox-material
