" Colors
colorscheme molokai

" Spaces & Tabs
"set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=2
set smartindent
set autoindent
set fileformat=unix

" Mac hack for pasting
"set pastetoggle=<F10>

" UI Config
set number          " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
"" comma open/closes folds
"nnoremap , za
set foldmethod=syntax   " fold based on syntax level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" mouse
set mouse=a

" Leader Shortcuts
let mapleader="\<Space>" " leader is Space

" save session
nnoremap <leader>s :mksession<CR>

" Little Hacks

" Filename autocomplete
imap ,<Tab> <C-X><C-F>
" no Ex mode
nnoremap Q <nop>
" easier write
nmap <leader>w :w<CR>     
" easier quit
nmap <leader>q :q<CR>       
" silence search highlighting
nnoremap <leader>sh :nohlsearch<Bar>:echo<CR>
" paste from outside buffer
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <leader>p <Esc>:set paste<CR>gv"+p:set nopaste<CR>
" copy to outside buffer
vnoremap <leader>y "+y
" select all
nnoremap <leader>a ggVG
" close buffer without closing window
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
" insert line at top
:map <leader>O m`O<ESC>``
"insert line at bottom
:map <leader>o m`o<ESC>``
" new vertical pane right shortcut
nnoremap <leader>v :rightbelow vnew<CR>
" new horizontal pane below shortcut
nnoremap <leader>h :rightbelow new<CR>

" Launch Config
call pathogen#infect()                      " use pathogen
Helptags

" markdown recognise
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
filetype plugin on
syntax enable       " enable syntax processing
set grepprg=grep\ -nH\ $*
filetype indent on

" LaTeX
let g:tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'
let g:Tex_HotKeyMappings = 'ecuacion, align, tabular, includegraphics'
set winaltkeys=no
" folding environments
let g:Tex_FoldedSections = 'chapter, section, subsection'
let g:Tex_FoldedEnvironments = 'frame, block, parts, verbatim, align, figure, tabular, thebibliography, keywords, abstract, titlepage'
" save & compile with f2
map <f2> :w<cr><leader>ll
" fixes for LaTeXSuite inputs
let g:Tex_Env_align = "\\begin{align*}\<CR><++>\<CR>\\end{align*}<++>"
let g:Tex_Env_frame = "\\begin{frame}[<++>]\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}\<CR><++>"
let g:Tex_Env_block = "\\begin{block}{<++>}\<CR><++>\<CR>\\end{block}\<CR><++>"
let g:Tex_Env_bmatrix = "\\begin{bmatrix*}[r] <++> \\end{bmatrix*}<++>"
let g:Tex_Env_includegraphics = "\\includegraphics[<++>]{<++>}<++>"
let g:Tex_Env_ecuacion = "\\[<++>\\]<++>"
let g:Tex_Env_tabular = "\\begin{tabular}{<++>}\<CR><++>\<CR>\\end{tabular}<++>"
let g:Tex_ItemStyle_questions = '\question[<++>] <++>'
let g:Tex_ItemStyle_parts = '\part[<++>] <++>'
let g:Tex_ItemStyle_choices = '\choice <++>'
" jump forward with ,j
imap ,j <Plug>IMAP_JumpForward
" jump back with ,k
imap ,k <Plug>IMAP_JumpBack

let g:syntastic_python_python_exec = 'python3'

" get rid of sound
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" pandoc, markdown stuff
let g:pandoc#command#autoexec_on_writes = 1
let g:pandoc#command#autoexec_command = "Pandoc! pdf"
