""""""""""""""""""""""""""""""""""""""""""""""""""
"                Key Mapping                     "
""""""""""""""""""""""""""""""""""""""""""""""""""

" tab managing
map <leader>3 gt
map <leader>2 gT
map <leader>w :tabclose<cr>

" quickly run python file
map <F8> :!clear;python3 %<cr>





""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Plug-Ins                      "
""""""""""""""""""""""""""""""""""""""""""""""""""

" python-syntax
let g:python_highlight_all = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white   ctermbg=lightgrey

""""""""""""""""""""""""""""""""""""""""""""""""""
"         UI, theme, color, font, etc            "
""""""""""""""""""""""""""""""""""""""""""""""""""

" Colorscheme
set background=light
colorscheme solarized

" Line Numbers
set number
" set relativenumber

" Height of the command bar
set cmdheight=1

" Add a bit extra margin to the left
set foldcolumn=0

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Source\ Code\ Pro:h15,IBM\ Plex\ Mono:h14,Hack:h14,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Source\ Code\ Pro:h12,IBM\ Plex\ Mono:h14,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Source\ Code\ Pro\ 12,IBM\ Plex\ Mono:h14,:Hack\ 14,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Source\ Code\ Pro\ 12,IBM\ Plex\ Mono:h14,:Hack\ 14,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif
