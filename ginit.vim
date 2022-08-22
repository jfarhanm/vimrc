let s:fsize = 16
:execute "GuiFont! Hack:h" . s:fsize

function! AdjustFontSize(amount)
	  let s:fontsize = s:fsize+a:amount
	    :execute "GuiFont! Hack:h" . s:fsize
endfunction

" In normal mode, pressing numpad's+ increases the font
noremap <kPlus> :call AdjustFontSize(1)<CR>
noremap <kMinus> :call AdjustFontSize(-1)<CR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
GuiPopupmenu 0
"
" " In insert mode, pressing ctrl + numpad's+ increases the font
" inoremap <C-kPlus> <Esc>:call AdjustFontSize(1)<CR>a
" inoremap <C-kMinus> <Esc>:call AdjustFontSize(-1)<CR>a"
