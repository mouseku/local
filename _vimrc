"set background=dark
set background=light
" Plugins will be downloaded under the specified directory.

call plug#begin('~/.vim/plugged')


" Declare the list of plugins.
Plug 'tpope/vim-surround'
Plug 'vim-scripts/VisIncr'
Plug 'heavenshell/vim-jsdoc'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-markdown'
Plug 'jamshedvesuna/vim-markdown-preview'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'blueyed/vim-diminactive'
Plug 'nanotech/jellybeans.vim', {'tag':'v1.7'}
Plug 'mhinz/vim-startify'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" List ends here. Plugins become visible to Vim after this call.

call plug#end()

filetype indent on " indent.vim 파일에 설정된 파일 형식별 들여쓰기 적용
set showcmd " 사용자가 입력한 명령어 표시
set cursorline " 커서가 있는 라인을 강조 표시
set ruler " 커서 위치 표시.
set mouse=a " 마우스로 스크롤 및 리사이즈 가능
set hlsearch " 검색된 결과 강조 표시
set nu " 
set autoindent " 새로운 라인이 추가될 때, 이전 라인의 들여쓰기에 자동으로 맞춤
set scrolloff=2
set wildmode=longest,list
set ts=4 " 탭으로 들여쓰기시 사용할 스페이스바 개수
set sts=4 "스페이스바 n개를 하나의 탭으로 처리
set sw=1 " ?ㅽ겕濡ㅻ컮 ?덈퉬
set autowrite " ?ㅻⅨ ?뚯씪濡??섏뼱媛????먮룞 ???
set autoread " ?묒뾽 以묒씤 ?뚯씪 ?몃??먯꽌 蹂寃쎈맟??寃쎌슦 ?먮룞?쇰줈 遺덈윭??
set cindent " C?몄뼱 ?먮룞 ?ㅼ뿬?곌린
set history=1000
set laststatus=2 " ?곹깭諛??쒖떆 ??긽
"set paste " 遺숈뿬?ｊ린 怨꾨떒?꾩긽 ?놁븷湲?
set shiftwidth=4 " ?먮룞 ?ㅼ뿬?곌린 ?덈퉬 ?ㅼ젙
set showmatch " ?쇱튂?섎뒗 愿꾪샇 ?섏씠?쇱씠??
set smartcase " 寃?됱떆 ??뚮Ц??援щ퀎
set smarttab
set smartindent
set softtabstop=4 "스페이스바 n개를 하나의 탭으로 처리
set tabstop=4
set ruler " ?꾩옱 而ㅼ꽌 ?꾩튂 ?쒖떆
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set number
set relativenumber
set ignorecase
set expandtab
set clipboard=unnamed " vim에서 복사한 내용이 클립보드에 저장
set backspace=eol,start,indent " 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움.
set paste " 다른 곳에서 복사한 내용을 붙여넣을 때, 자동 들여쓰기가 적용되는 것을 막아 복사한 내용을 들여쓰기없이 복사
set pastetoggle=<F2> " paste 옵션이 적용되면 들여쓰기가 옵션이 제대로 작동하지 않기 때문에 토글 형식으로 사용 할 수 있게 함.
set encoding=utf-8

" 留덉?留됱쑝濡??섏젙??怨녹뿉 而ㅼ꽌瑜??꾩튂??
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" ?뚯씪 ?몄퐫?⑹쓣 ?쒓뎅?대줈
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 援щЦ 媛뺤“ ?ъ슜
if has("syntax")
 syntax on
endif
" 而щ윭 ?ㅽ궡 ?ъ슜
colorscheme jellybeans

let python_highlight_all = 1
let g:pydiction_location='~/.vim/pydiction/complete-dict'
autocmd vimenter * silent! lcd %:p:h

imap <F5> <Esc>:w<CR>:!clear;python %<CR>

" for taglist
nmap <F8> :Tagbar<CR>

" for indent guide
let g:indentguides_spacechar = '?'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>


" for blueyed/vim-diminactive
let g:diminactive_enable_focus = 1

:let &pythonthreedll = 'C:\Users\mouse\AppData\Local\Programs\Python\Python36\python36.dll'

set laststatus=2 " turn on bottom bar

filetype plugin on



let mapleader=","

set timeout timeoutlen=1500





let g:ctrlp_working_path_mode = 'ca'

let g:ctrlp_match_window = 'results:20'

"===============
"Key mapping
"===============
noremap <Leader>bmh :OpenBookmark home<CR> 
noremap <Leader>bmc :OpenBookmark c<CR> 
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>


" Tree 아이콘 변경
let g:NERDTreeDirArrowExpandable = '?'
let g:NERDTreeDirArrowCollapsible = '?'
" 파일없이 vim만 틸 경우 자동으로 NERD Tree 실행
" 디렉토리를 vim으로 여는 경우 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

