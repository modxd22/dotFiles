runtime! archlinux.vim
source $VIMRUNTIME/defaults.vim
set nocompatible              " be iMproved, required
filetype off                  " requiremd

" Some editing variables set

" Autoindent
set autoindent
set shiftwidth=4 " when indentin with '>'


" Converting tabs to spaces
set expandtab

" Set the tab to four spaces
set tabstop=4


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
" '----------------------------------------------------------------------------------



" Load .vim defualts if there is no .vimrc
let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)


"colorscheme desert

" Telling vim that the color palette is limited so it looks into Xresources
" https://www.reddit.com/r/vim/comments/hzpzok/is_there_a_way_to_color_vim_directly_from/
set t_Co=16



"For the icons
set encoding=UTF-8






"_________________ Writing related _________________
"===================================================
"
":h conceallevel
:set conceallevel=2
"
"h concealcurosr
set concealcursor=c
"
"latex
"---------------------------------------------------
nnoremap <F2> <esc>:w<enter>:!dvipdf %:r.dvi <enter>
"for begin end auto complete
noremap <Leader>b bcw\begin{<C-R>"}<CR>\end{<C-R>"}
"---------------------------------------------------
"
"
"
" VimWiki
" --------------------------------------------------
"
" what is the system here?
" --> view in html, {\hv} to start view, {\h} to compile then reload.
" --> when finished click f3 to convert to pdf
" --> you can transform the whole system to a html using {\ha}

" TODO edit the location of the pdf so that it's more organized
" TODO organise the math note taking system
" |
" '--> Thoughts:
" 		* uuu
" Converting the current file to pdf
nnoremap <F3> :!pandoc % --pdf-engine=xelatex -o %:r.pdf <enter>
"
"
" Converting the current file to HTML
nnoremap \h :Vimwiki2HTML <enter>
"
"
" Converting all the files to HTML
nnoremap \ha :VimwikiAll2HTML <enter>
"
"
" Converting the current file to HTML and view it
nnoremap <Leader>hv :Vimwiki2HTMLBrowse <enter>
"
nnoremap <Leader>ws :VWS
nnoremap <Leader>wb :VWB <enter>
nnoremap <Leader>wo :lopen 
nnoremap <Leader>wnx :lnext <enter>
nnoremap <Leader>wp :lprevious <enter>
nnoremap <Leader>toc :VimwikiTOC <enter>



let wiki_1 = {}
let wiki_1.path = '~/vimwiki'
let wiki_1.template_path  = '$HOME/vimwiki/templates'
let wiki_1.template_default = 'default'
let wiki_1.template_ext =  '.html'
"let wiki_1.maxhi = 1

let wiki_2 = {}
let wiki_2.path = '~/vimwiki/College'
let wiki_2.template_path  = '$HOME/vimwiki/templates'
let wiki_2.template_default = 'college'
let wiki_2.template_ext =  '.html'
"let wiki_2.maxhi = 1

let wiki_3 = {}
let wiki_3.path = '~/vimwiki/Zettelkasten/' "Unitll I begin there is only one zettelkaste, after ther would be
				            "zettel, fleeting, literature
let wiki_3.template_path  = '$HOME/vimwiki/templates'
let wiki_3.template_default = 'default'
let wiki_3.template_ext =  '.html'
"let wiki_3.maxhi = 1 "If a link has no file, it's highlighted, use when have
"a vim wiki full of files with dirs
let wiki_3.syntax = 'markdown'
let wiki_3.ext = '.md'
"
"
let wiki_4 = {}
let wiki_4.path = '~/vimwiki/Zettelkasten/Main/'
let wiki_4.template_path  = '$HOME/vimwiki/templates'
let wiki_4.template_default = 'zettel.html'
let wiki_4.template_ext =  '.html'
let wiki_4.syntax = 'markdown'
let wiki_4.ext = '.md'
"let wiki_2.maxhi = 1
"
"
"

let g:vimwiki_list = [wiki_1, wiki_2, wiki_3, wiki_4]

"let vimwikik_option_maxhi=1
"let g:vimwiki_list = [{
"  \ 'path': '$HOME/vimwiki',
"  \ 'template_path': '$HOME/vimwiki/templates',
"  \ 'template_default': 'default',
"  \ 'template_ext': '.html'},
"  \ {'path': '~/vimwiki/Zettelkasten/Main/'} ]
"
"
"
" Makes vimwiki markdown links as [text](text.mf) I think this will enable the
" nested dirs
"let g:vimwiki_markdown_link_ext = 1



" IDK what this does
let g:markdown_folding = 1
" --------------------------------------------------
"
"
"
"
"
"  Additional code and modifications 
"
"
"
"
"
"######################################################
"----------------vim-zettel---------------------------
"let g:nv_search_paths = ['~/vimwiki/Zettelkasten/Main']
"let g:vimwiki_list = \
"        [{'path':'~/scratchbox/vimwiki/markdown/','ext':'.md',\
"	     'syntax':'markdown'}, {"path":"~/scratchbox/vimwiki/wiki/"}]

"----------------vim-zettel---------------------------
"######################################################
"
"
"
"===================================================









" Run Code
" c++
nnoremap <F5> <esc>:w<enter>:!clear<enter>:!g++ % -o a && ./a  <enter>


"c
nnoremap <F7> <esc>:w<enter>:!clear<enter>:!gcc % -o a && ./a  <enter>




"python
nnoremap <F6> <esc>:w<enter>:!clear<enter>:!python3 %<enter>




"HTML
nnoremap <F4> <esc>:w<enter>:!clear<enter>:!brave %<enter>


" Octave
nnoremap <s-r><s-o> :!clear<enter>:w<enter>:!octave %<enter>

set nu rnu





"Of course idk what is that but it stops vim from asking 
"me to press enter after everything
set shortmess=a
set cmdheight=2

 

"latex-suite for vim

"
" " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
" set shellslash
"
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
 let g:tex_flavor='latex'


 "packages
 
 "packloadall --> this line is commented because it make vim type already
 "loaded when i open then i have to press enter


 "managing windwos to make latex-suite faster
 nnoremap mv <esc>:w<enter><C-w><C-w>:q!<enter><C-w><C-w>:q!<enter><\lv>

 
"nnoremap <F2> :w<enter>:!var=%<enter>:! name=$(printf "hlal" | bash ~/sandbox/Functions/SplitDot.sh)<enter>:!DviName="${name}.dvi}<enter>:!dvips $DviName <enter>:!PsName="${name}.ps"<enter>:!ps2pdf $PsName
"extracting pdf from a latex doc
"!!!!under constructino!!!!!!!!!!!!!





"AutoSave 
"
"To enable in startup
let g:auto_save = 1  " enable AutoSave on Vim startupet g:auto_save_events

" What autosaves
let g:auto_save_events = ["InsertLeave", "TextChanged"]



"for the HTML stuff
"emmet original keymap is shit so it will be <c-y> from now on
let g:user_emmet_leader_key='<c-h>'



" Tab stuff
nnoremap ti <esc>:tabnew<enter>
nnoremap te <esc>:tabedit
nnoremap tk <esc>:tabn<enter>
nnoremap tj <esc>:tabprevious<enter>
nnoremap tl <esc>:tablast<enter>
nnoremap th <esc>:tabfirst<enter>
nnoremap tx <esc>:tabclose<enter>
nnoremap tnx <esc>:tabclose    
nnoremap ts <esc>:tabs<enter>




"NerdTree

" Open NerdTree
nnoremap <c-o> <esc>:NERDTree<enter>

" Close NerdTree
nnoremap <c-c> <esc>:NERDTreeClose<enter>


" sourcing .vimrc
nnoremap <c-s> :source ~/.vimrc<enter>



"Tabs
nnoremap <c-n>  :tabnew <enter>
nnoremap <t><k>  :tabNext<enter>
nnoremap <t><j>  :tabprevious <enter>
nnoremap <t><e>  :tabedit



set nospell
"makes miss spelled words appear in red highlight
nnoremap <c-\> :setlocal spell <enter>
nnoremap <c-]> :setlocal nospell <enter>


" hlsearch on and off
nnoremap <c-h><c-y> :set hlsearch <enter>
nnoremap <c-h><c-n> : set nohlsearch <enter>




"_______________ Organizing keys _________________
"=================================================
"
"
" Title
" -----------------------------------------------
"  TODO make shortcut to do a title like the organizi..^
"let @x=@b             "                                |
"nnoremap \tt @x






"_____________ultisnips______________"
"=====================================
"
"
"
" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim

"loading the snippets files
let g:UltiSnipsSnippetDirectories = ['~/.vim', 'UltiSnips']
let g:UltiSnipsSnippetDirectories = ['~/.vim/pack/plugins/start/vim-snippets', 'UltiSnips']

"not using tab to not interfere with youcompleteme
let g:UltiSnipsExpandTrigger="<c-l>" 

" forward and backward
let g:UltiSnipsJumpForwardTrigger="<c-a>"
let g:UltiSnipsJumpBackwardTrigger="<c-s>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"
"
" It's not working with vim package manager, so I installed pathoogen just
" for it








au BufRead *.pdf sil exe ":!zathura "  . shellescape(expand("%:p")) | bd | let &ft=&ft | redraw!



" should the browser window pop-up upon previewing
let g:livedown_open = 1
" the browser to use, can also be firefox, chrome or other, depending on your
" executable
" let g:livedown_browser = "brave-browser"



"#################
"pdf viwer for live preview of latex
let g:livepreview_previewer = 'zathura'

"pdf viwer for live preview of markdown
let g:md_pdf_viewer="zathura"
"let g:md_args = "--pdf-engine=pdfroff"
"################
"
"
"
"
"
"
"
"
"
"
"
"#######################Rainbow###########################
au FileType c,cpp,objc,objcpp,py,sh call rainbow#load() "enabled for the mentioned
"let g:rainbow_active = 1 "globally enabled
"#######################Rainbow###########################
"
"
"
"
"
"
"
"
"
let mapleader = ","
set clipboard=unnamed
noremap <Leader>y "+y <CR>




let g:taskwiki_disable_concealcursor=1
nnoremap <c-c> :ColorToggle <enter>



" line wrap
set colorcolumn=72
highlight ColorColumn ctermbg=black
set textwidth=72 " auto line wrap





" temporary move to utilsnip
noremap <Leader>c i #include <iostream> <enter>using namespace std; <enter>int main(){<enter>}<esc>
