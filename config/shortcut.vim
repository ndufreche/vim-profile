map <C-n> :NERDTreeToggle<CR>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>     :update<CR>
vnoremap <C-S>        <C-C>:update<CR>
inoremap <C-S>        <C-O>:update<CR>

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V> "+gP
map <S-Insert> "+gP

cmap <C-V>        <C-R>+
cmap <S-Insert>       <C-R>+

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u


" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" Move entire line up and down
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction

noremap <silent> <C-up> :call <SID>swap_up()<CR>
" inoremap <silent> <C-up> :call <SID>swap_up()<CR>
noremap <silent> <C-down> :call <SID>swap_down()<CR>
" inoremap <silent> <C-down> :call <SID>swap_down()<CR>
