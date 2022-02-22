call plug#begin('~/.vim/plugged')

Plug 'mhartington/oceanic-next'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

syntax enable
colorscheme OceanicNext

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

set t_Co=256

if (has("termguicolors"))
 set termguicolors
endif

set cursorline
set wildmenu
set number
set directory=$HOME/.vim/swp//
set hlsearch
set tabstop=2 shiftwidth=2 expandtab

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4

au FileType markdown setlocal spell spelllang=en_us
au BufReadPost *.svelte set syntax=html

" Journal
function! AddJournalTimestamp()
	execute 'normal gg'
	let timestamp = '#' . ' ' . strftime('%A, %d %b %Y')
	call setline(1, timestamp)
	execute 'normal G'
	execute 'normal o'
endfunction

augroup templates
	au!

	au BufNewFile */journal/**/*.md 0r ~/.vim/templates/today.skeleton
	au BufNewFile */journal/**/*.md call AddJournalTimestamp()

	au BufNewFile *.svelte 0r ~/.vim/templates/svelte.skeleton
augroup end

