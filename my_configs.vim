""""""""""""""""""""""""""""""""""""""""""""""""""
"                Key Mapping                     "
""""""""""""""""""""""""""""""""""""""""""""""""""

" unmap keybinding from basic.vim
    map <leader>w <Nop>
    map <space> <Nop>
    map <c-space> <Nop>
    map <leader>bd <Nop>
    map <leader>ba <Nop>
    map <leader>l <Nop>
    map <leader>h <Nop>
    map <leader>tn <Nop>
    map <leader>t<leader> <Nop>
    map <leader>te <Nop>
    map 0 0
    map <leader>q <Nop>
    map <leader>x <Nop>
    map <leader>cc <Nop> " quickfix
    map <leader>co <Nop> " quickfix
    map <leader>n <Nop> " quickfix
    map <leader>p <Nop> " quickfix
    au FileType python map <buffer> <leader>1 <Nop> 
    au FileType python map <buffer> <leader>2 <Nop> 
    au FileType python map <buffer> <leader>C <Nop> 
    au FileType python map <buffer> <leader>D <Nop> 

" Move a line of text
    nmap <Leader>dj <M-j>
    nmap <Leader>dk <M-k>
    vmap <Leader>dj <M-j>
    vmap <Leader>dk <M-k>

" Managing buffer
    map <leader>t :e ~/buffer<cr> " Quickly open a buffer for scribble
    map <leader>3 :bnext<cr>
    map <leader>2 :bprevious<cr>
    map <leader>w :bd<cr>
    map <leader>aw :bufdo bd<cr>

" Managing tabs
    map <leader>tt :tabnew<cr>
    map <leader>t3 :tabnext 
    map <leader>t2 :tabprevious
    map <leader>tw :tabclose<cr>
    map <leader>to :tabonly<cr>
    map <leader>tm :tabmove 

" quickly run python file
    map <F8> :!clear;python3 %<cr>





""""""""""""""""""""""""""""""""""""""""""""""""""
"              Worth Remembering                 "
""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch CWD to the directory of the open buffer
    " map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Toggle paste mode on and off
    " map <leader>pp :setlocal paste!<cr>

" iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" Spell Checking
    " map <leader>ss :setlocal spell!<cr> " toggle
    " map <leader>sn ]s " next
    " map <leader>sp [s " previous
    " map <leader>sa zg " add to dictionary
    " map <leader>s? z= " possible alternatives



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
