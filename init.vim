call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" " add the plugin you want to use here.
Plug 'vim-scripts/TaskList.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'doums/darcula'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'zhamlin/tiler.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'cespare/vim-toml'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
set ruler
colorscheme onedark
set nobackup
set nowb
set noswapfile
set laststatus=2
set number relativenumber

"Plugin stuff
  set omnifunc=ale#completion#OmniFunc
  let g:ale_completion_enabled = 1
  let g:ale_completion_autoimport = 1
  let g:ale_sign_column_always = 1
  let g:ale_fix_on_save = 1
  let g:ale_sign_error = '✗'
  let g:ale_sign_warning = ''
  let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['eslint'],
  \   'typescript': ['eslint','tslint', 'xo'],
  \   'css': ['stylelint', 'fecs'],
  \   'rust': ['rustfmt', 'rls'],
  \}

  let g:tiler#master#size = 75
  let g:tiler#layout = 'left'

  let g:tlTokenList = ['PRIORITY', 'TODO', 'NOTE', 'FUTURE', 'XXX', 'FIXME']

  command MyTargets :e F:\project_realm\targets\targets
  command MyUpdates :e F:\project_realm\targets\updates
  command VimInit :lcd C:\Users\jfarhan\AppData\Local\nvim
  command FinalRobotDir :lcd F:\project_realm\school\project\dev
  command ProjectRealm :lcd F:\project_realm


let s:fontsize = 15
function! AdjustFontSizeVide(amount)
	  let s:fontsize = s:fontsize+a:amount
	    :execute "set guifont=Hack:h" . s:fontsize
endfunction

call AdjustFontSizeVide(0)








nmap <C-W>n <plug>TilerNew
nmap <C-W>s <plug>TilerNew
nmap <C-W>v <plug>TilerNew
nmap <C-W>c <plug>TilerClose
nmap <C-W>. <plug>TilerRotateForwards
nmap <C-W>, <plug>TilerRotateBackwards

nmap <C-w><space> <Plug>TilerZoom
nmap <C-Space> <Plug>TilerFocus

nmap <C-k> <Plug>TilerAddMaster
nmap <C-j> <Plug>TilerDelMaster
nmap <C-l> <Plug>TilerRotateLayoutR
nmap <C-h> <Plug>TilerRotateLayoutL






nmap <C-W>f <Plug>TilerFocus
nmap <silent> <F12> :ALEGoToDefinition<CR>
nmap <silent> <F24> :ALEFindReferences<CR>
nnoremap <C-P> :call AdjustFontSizeVide(1)<CR>
nnoremap <C-O> :call AdjustFontSizeVide(-1)<CR>
inoremap <C-S-T> <C-\><C-N>
