filetype off     
set rtp+=~/.vim/bundle/Vundle.vim
set clipboard=unnamedplus
set completeopt=longest,menuone
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'




Plugin 'Valloric/YouCompleteMe' 

let g:ycm_complete_in_comments = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1 
highlight YcmErrorSection ctermbg =234 

""let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion =2 
let g:syntastic_always_populate_loc_list = 1
let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 
let g:ycm_key_list_select_completion=['<tab>'] 
"let g:ycm_key_list_previous_completion=[]

nnoremap <F4> :YcmForceCompileAndDiagnostics<CR>

Plugin 'Valloric/ListToggle'

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-h>'

Plugin 'honza/vim-snippets'

Plugin 'crusoexia/vim-monokai'

Plugin 'tpope/vim-fugitive' "git

Plugin 'fatih/vim-go'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

Plugin 'tpope/vim-eunuch'
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'



Plugin 'scrooloose/nerdcommenter'
nmap <C-_> <leader>c<space> nmap gcc <C-_>
vmap <C-_> <leader>c<space> gv
vmap gc <C-_>
call vundle#end()   
filetype plugin on
filetype plugin indent on
syntax on
set t_Co=256
set number
colorscheme monokai
highlight Pmenu   ctermbg=234 ctermfg=48 
set viminfo='1000,f1,:1000,/1000,n~/.vim-tmp/viminfo
set noswapfile
set showcmd
set lazyredraw
set modeline
set showmatch
set ttyfast
set autoread
set hidden
set winminheight=1
set vb
set wildignore=*.o,*~,*.pyc
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\  exe "normal! g`\"" |
			\ endif
" Remember info about open buffers on close
set viminfo^=%

set cursorline
set wildmenu " Visualize complete menu in command mode
set wildignore=*.o,*~,*.pyc
"set list listchars=tab:\ \ ,trail:·

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,ISO-8859-1
set ffs=unix,dos,mac

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set cindent

autocmd FileType c,cpp,php setlocal cinoptions=(0,u0,U0,l1,t0,W4
set backspace=indent,eol,start
set whichwrap+=<,>,h,l



autocmd FileType vim setlocal comments-=:\" comments+=f:\"
autocmd FileType c,cpp,php setlocal comments-=:// comments+=f://



set smartcase
set hlsearch
set incsearch
set ignorecase

" How many tenths of a second to blink when matching brackets

set ruler " отображать текущее положение
set laststatus=2
set statusline=
set statusline+=%<\                      " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P     



set spelllang=ru_yo,en_us

set clipboard=unnamedplus







set pastetoggle=<F3>


nmap <F8> :nohlsearch<CR>
imap <F8> <Esc>:nohlsearch<CR>a

noremap gj j
noremap j gj
noremap gk k
noremap k gk
imap jj <ESC>
"noremap [p p
"noremap p [p

"noremap K i<enter><ESC>
map T z.
imap <c-t> <esc>Ta
noremap ]] ][
noremap ][ ]]
noremap F O<esc>
noremap q :cn<enter>
noremap Q :cp<enter>

inoremap <c-p> <esc>pa
noremap j h
noremap k j
noremap l k
noremap ; l
noremap J ddp
noremap K ddkP




nnoremap gV `[v`]
imap <F2> <ESC>ggVG=gi<ESC>
map <F2> ggVG=gi<ESC>

function! BindF5_C()
	if filereadable("Makefile")
		set makeprg=make
		map <f5>      :w<cr>:make<cr>:cw<cr>
		imap <f5> <esc>:w<cr>:make<cr>:cw<cr>
	else
		map <f5>      :w<cr>:make %:r<cr>:cw<cr>
		imap <f5> <esc>:w<cr>:make %:r<cr>:cw<cr>
	endif
endfunction
au FileType c,cc,cpp,h,hpp,s call BindF5_C()

function! BindF9_C()
	if filereadable("Makefile")
		set makeprg=make
		map <f9>      :w<cr>:make<cr>:cw<cr>:!./%<<cr>
		imap <f9> <esc>:w<cr>:make<cr>:cw<cr>:!./%<<cr>
	else
		map <f9>      :w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
		imap <f9> <esc>:w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
	endif
endfunction
au FileType c,cc,cpp,h,hpp,s call BindF9_C()
"autocmd filetype make set noexpandtab                                             
"autocmd filetype make set nocin     



if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
s