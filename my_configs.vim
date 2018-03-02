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

" Colorscheme
set background=light
colorscheme solarized

" Line Numbers
set number
" set relativenumber

" python-syntax
let g:python_highlight_all = 1

" key mapping
map <leader>3 gt
map <leader>2 gT
map <leader>w :tabclose<cr>
map <F9> :!clear;python3 %<cr>















" color correction for MobaXTerm
if &term =~ "xterm" and has("terminfo")
    let &t_Co=16
endif
