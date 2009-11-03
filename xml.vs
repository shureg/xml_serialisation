let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <RightMouse> 
imap <silent> <S-F3> :silent browse confirm e
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <silent> <F11> :Tlist
imap <silent> <F8> :cn
imap <silent> <F7> :cp
imap <silent> <F6> :cclose
imap <silent> <F5> :copen
imap <silent> <F4> :exe ":ptag ".expand("<cword>")
imap <silent> <F3> :Explore
imap <silent> <F2> :write
imap <silent> <S-Tab> :if &modifiable && !&readonly &&                   &modified  :write :endif:bprevious
inoremap <C-Esc> :close
map! <S-Insert> <MiddleMouse>
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nmap  :wqa
map  a
xnoremap " s""P<Right>
xnoremap ' s''P<Right>
vnoremap ( s()P<Right>%
vnoremap [ s[]P<Right>%
nmap <silent> \ucs :call C_RemoveGuiMenus()
nmap <silent> \lcs :call C_CreateGuiMenus()
nmap \ihn :IHN
nmap \is :IHS:A
nmap \ih :IHS
xnoremap ` s``P<Right>
nmap gx <Plug>NetrwBrowseX
vnoremap { s{}P<Right>%
nmap <RightMouse> <Insert>
map <silent> <S-F3> :silent browse confirm e
nmap <S-Right> l
nmap <S-Left> h
nmap <S-Up> W
nmap <S-Down> w
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
noremap <silent> <F11> :Tlist
map <silent> <F8> :cn
map <silent> <F7> :cp
map <silent> <F6> :cclose
map <silent> <F5> :copen
nmap <silent> <F4> :exe ":ptag ".expand("<cword>")
map <silent> <F3> :Explore
map <silent> <F2> :write
map <silent> <S-Tab> :if &modifiable && !&readonly &&                   &modified  :write :endif:bprevious
noremap <C-Esc> :close
nmap <C-F11> :vs %:p:s?include?lib?:r.cc 
map <S-Insert> <MiddleMouse>
imap <NL> <Plug>IMAP_JumpForward
imap  :wa
inoremap  =GetCloseTag()
inoremap ( ()<Left>
inoremap [ []<Left>
imap \ihn :IHN
imap \is :IHS:A
imap \ih :IHS
inoremap { {}<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set backup
set browsedir=current
set cmdheight=2
set complete=.,w,b,u,t,i,k
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set hlsearch
set incsearch
set laststatus=2
set listchars=tab:>.,eol:$
set mouse=a
set printoptions=left:8pc,right:3pc
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim71,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=5
set shiftwidth=3
set showcmd
set smartindent
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set visualbell
set wildignore=*.bak,*.o,*.e,*~
set wildmenu
set window=43
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/xml_serialisation/include
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +30 XmlField.class.h
badd +0 ~/Projects/xml_serialisation/lib/XmlField.class.cc
badd +20 XmlSerialisableObject.class.h
badd +20 XmlWrap.class.h
badd +0 ~/Projects/xml_serialisation/lib/XmlWrap.class.cc
badd +1 XmlContainerWrap.class.h
badd +17 ~/Projects/xml_serialisation/lib/XmlContainerWrap.class.cc
badd +11 ~/Projects/xml_serialisation/Makefile
badd +0 ~/Projects/xml_serialisation/project.config.mk
badd +1 ~/Projects/xml_serialisation/lib/Makefile
badd +0 ~/Projects/xml_serialisation/lib/lib.config.mk
args XmlField.class.h
edit ~/Projects/xml_serialisation/lib/XmlField.class.cc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 027l
lcd ~/Projects/xml_serialisation/lib
wincmd w
argglobal
edit ~/Projects/xml_serialisation/include/XmlField.class.h
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 30 - ((29 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
lcd ~/Projects/xml_serialisation/include
wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
tabedit ~/Projects/xml_serialisation/include/XmlSerialisableObject.class.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 20 - ((19 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 027l
lcd ~/Projects/xml_serialisation/include
tabedit ~/Projects/xml_serialisation/lib/XmlWrap.class.cc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 027l
lcd ~/Projects/xml_serialisation/lib
wincmd w
argglobal
edit ~/Projects/xml_serialisation/include/XmlWrap.class.h
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 20 - ((19 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 027l
lcd ~/Projects/xml_serialisation/include
wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
tabedit ~/Projects/xml_serialisation/lib/XmlContainerWrap.class.cc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 027l
lcd ~/Projects/xml_serialisation/lib
wincmd w
argglobal
edit ~/Projects/xml_serialisation/include/XmlContainerWrap.class.h
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
vmap <buffer> <silent> \rd :call C_Indent("v"):redraw:call C_HlMessage()
map <buffer> <silent> \rs :call C_Settings()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
omap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntg :call C_EditTemplates("global")
noremap <buffer> <silent> \ntl :call C_EditTemplates("local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \np :call C_ProtoPick("v")
nnoremap <buffer> <silent> \np :call C_ProtoPick("n")
onoremap <buffer> <silent> \np :call C_ProtoPick("n")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down", "v")
nnoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
onoremap <buffer> <silent> \in :call C_CodeFor("down", "a")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "v")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialCommentList 
noremap <buffer> \ckc :KeywordCommentList 
noremap <buffer> \chs :HFileSectionList 
noremap <buffer> \ccs :CFileSectionList 
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentCode("v"):nohlsearch
nnoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
onoremap <buffer> <silent> \co :call C_CommentCode("a"):nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeComment("v","no"):nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeComment("a","no"):nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeComment("v","yes"):nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeComment("a","yes"):nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("v")
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
onoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call C_MultiLineEndComments()
nnoremap <buffer> <silent> \cl :call C_LineEndComment()
onoremap <buffer> <silent> \cl :call C_LineEndComment()
vnoremap <buffer> { s{}P=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():redraw:call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():redraw:call C_HlMessage()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy("n")
imap <buffer> <silent> \rd :call C_Indent("a"):redraw:call C_HlMessage()
imap <buffer> <silent> \ri :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():redraw:call C_HlMessage()
imap <buffer> <silent> \rg :call C_MakeArguments()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():redraw:call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():redraw:call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down", "a")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  , "a")i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialCommentList 
inoremap <buffer> \ckc :KeywordCommentList 
inoremap <buffer> \chs :HFileSectionList 
inoremap <buffer> \ccs :CFileSectionList 
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm("a")a
inoremap <buffer> <silent> \cl :call C_LineEndComment()a
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 028l
lcd ~/Projects/xml_serialisation/include
wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
tabedit ~/Projects/xml_serialisation/project.config.mk
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe '2resize ' . ((&lines * 20 + 22) / 44)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 035l
lcd ~/Projects/xml_serialisation
wincmd w
argglobal
edit ~/Projects/xml_serialisation/Makefile
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 03l
lcd ~/Projects/xml_serialisation
wincmd w
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe '2resize ' . ((&lines * 20 + 22) / 44)
tabedit ~/Projects/xml_serialisation/lib/lib.config.mk
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe '2resize ' . ((&lines * 20 + 22) / 44)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/xml_serialisation/lib
wincmd w
argglobal
edit ~/Projects/xml_serialisation/lib/Makefile
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:#\ -,mO:#\ \ ,b:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'make'
setlocal filetype=make
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*include
setlocal includeexpr=
setlocal indentexpr=GetMakeIndent()
setlocal indentkeys=!^F,o,O,<:>,=else,=endif
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'make'
setlocal syntax=make
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/xml_serialisation/lib
wincmd w
exe '1resize ' . ((&lines * 20 + 22) / 44)
exe '2resize ' . ((&lines * 20 + 22) / 44)
tabnext 5
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
