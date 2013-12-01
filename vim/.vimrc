" User configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


function! MySys()
    return "mac"
endfunction

"Enable filetype plugin
filetype on
if has("eval") && v:version>=600
    filetype plugin on
    filetype indent on
endif

"Set to auto read when a file is changed from the outside
if exists("&autoread")
    set autoread
endif

"Have the mouse enabled all the time:
if exists("&mouse")
    set mouse=a
endif

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>x :xa!<cr>
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
"set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Ignore case when searching
"set ignorecase
set incsearch

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracet
set showmatch

"How many tenths of a second to blink
set mat=8


""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
"Format the statusline
" Nice statusbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around and tab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to / and c-space to ?
map <space> /


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Autocommand
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch to current dir


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
")
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $w <esc>`>a"<esc>`<i"<esc>
vnoremap $< <esc>`>a --><esc>`<i<!-- <esc>
vnoremap $/ <esc>`>a*/<esc>`<i/*<esc>

"Map auto complete of (, ", ', [
"http://www.vim.org/tips/tip.php?tip_id=153
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrev
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Comment for C like language
if has("autocmd")
    au BufNewFile,BufRead *.js,*.htc,*.c,*.tmpl,*.css ino $c /**<cr> **/<esc>O
endif

"My information
ia xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
"iab xname Amir Salihefendic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^

"Move a line of text using control
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if MySys() == "mac"
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command-line config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! Cwd()
    let cwd = getcwd()
    return "e " . cwd
endfunc

"Bash like
nnoremap <C-A> <Home>
cnoremap <C-E> <End>
nnoremap <C-K> <C-K>
nnoremap <C-F> <Right>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer realted
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast open a buffer by search for a name
"map <c-q> :sb

"Restore cursor to file position in previous editing session
set viminfo='10,"100,:20,%,n~/.viminfo

" Buffer - reverse everything ... :)
map <F9> ggVGg?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
"set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text option
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python script
set expandtab
set backspace=2
set smarttab
set lbr
set ts=4
set sw=4
"set tw=500

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""test
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""test
""""""""""""""""""""""""""""""
" => Indent
""""""""""""""""""""""""""""""
"Auto indent
set ai

"Smart indet
set si

"C-style indenting
if has("cindent")
    set cindent
endif

"Wrap line
set wrap



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Yank Ring
""""""""""""""""""""""""""""""
map <leader>y :YRShow<cr>

""""""""""""""""""""""""""""""
" => File explorer
""""""""""""""""""""""""""""""
"Split vertically
let g:explVertical=1

"Window size
let g:explWinSize=35

let g:explSplitLeft=1
let g:explSplitBelow=1

"Hide some file
let g:explHideFiles='^.,.*.class$,.*.swp$,.*.pyc$,.*.swo$,.DS_Store$'

"Hide the help thing..
let g:explDetailedHelp=0


""""""""""""""""""""""""""""""
" => Minibuffer
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1

"WindowZ
map <c-w><c-t> :WMToggle<cr>
let g:bufExplorerSortBy = "name"


""""""""""""""""""""""""""""""
" => HTML related
""""""""""""""""""""""""""""""
" HTML entities - used by xml edit plugin
let xml_use_xhtml = 1
"let xml_no_auto_nesting = 1

"To HTML
let html_use_css = 0
let html_number_lines = 0
let use_xhtml = 1

set autowrite
"Setup javabrowser
let Javabrowser_Use_Icon = 1
let JavaBrowser_Use_Highlight_Tag = 1 
let JavaBrowser_Use_Right_Window = 1

"Set android path
set path+=res/layout,res/layout-finger,res/values,res/drawable,res/drawable-mdpi,res/drawable-hdpi,res/menu,assets
set path+=templcates,static,css,js

"Set web path
set path+=js,css,img

let g:snips_author="dasuan"
"Reloads all snippets.
function! ReloadSnippets( snippets_dir, ft )
    if strlen( a:ft ) == 0
        let filetype = "_"
    else
        let filetype = a:ft
    endif

    call ResetSnippets()
    call GetSnippets( a:snippets_dir, filetype )
endfunction

function! EditSnippet()
    split
    exec "e ~/.vim/snippets/".&filetype.".snippets"
endfunction

function! EditFileType()
    split
    exec "e ~/.vim/ftplugin/".&filetype.".vim"
endfunction

"My mapping
nmap <leader>es :call EditSnippet()<CR>
nmap <leader>et :exec "e ~/.vim/ftplugin/".&filetype.".vim"<CR>
nmap <leader>rr :call ReloadSnippets(snippets_dir, &filetype)<CR>
map <leader>al :!adb_connect&&adb logcat<cr>
map <leader>ac :!adb_connect && pactive $TARGET<cr>
map <silent><leader>vp :!xdg-open %<cr>
noremap <leader>cl :ccl<cr>
map <leader>t :Tabularize /=<cr>

map <leader>vz :e ~/.oh-my-zsh/profile.sh<cr>
map <leader>sz :!source ~/.zshrc<cr>
noremap <leader>m :make<cr>
noremap <leader>cm :%g/    @pytest.mark.current/d<cr>

function! GetAppPackage()
    pyfile ~/.vim/python/PackageExtractor.py
    return result
endfunction

function! UninstallPackage()
    exec ":!adb uninstall ".GetAppPackage()
endfunction

"TODO make the component name configurable.
function! SetLaunchingComponent() 
    exec "map <leader>tl :!adb shell am start -n " GetAppPackage() "<cr>"
endfunction

function! SetLaunchingComponent(path) 
    exec "map <leader>tl :!adb shell am start -n " a:path "<cr>"
endfunction

let g:instrument_class=""
let g:instrument_all=""

function! LaunchSingleInstrument()
    if g:instrument_class == ""
        echo "Instrument hasn't been set."
        return
    endif

    "call ExecuteInConqueTerm(g:instrument_class)
    exec ":!".g:instrument_class
endf

function! LaunchAllInstruments()
    if g:instrument_all == ""
        echo "Instruments hasn't been set."
        return
    endif

    "call ExecuteInConqueTerm(g:instrument_all)
    exec ":!".g:instrument_all
endf

function! SetInstrument() 
    let g:instrument_all = "adb shell am instrument -w ".GetAppPackage().".tests/android.test.InstrumentationTestRunner"
    exec "map <leader>ta :call LaunchAllInstruments()<cr>"
endfunction

function! SetInstrumentClass(class) 
    let g:instrument_class = "adb shell am instrument -w -e class ".GetAppPackage(). "." .a:class. " " .GetAppPackage(). ".tests/android.test.InstrumentationTestRunner"
    exec "map <leader>ti :call LaunchSingleInstrument()<cr>"
endfunction

function! SetInstrumentClass() 
    let class = expand("%:t:r")
    let g:instrument_class = "adb shell am instrument -w -e class ".GetAppPackage(). "." . class . " " .GetAppPackage(). ".tests/android.test.InstrumentationTestRunner"
    exec "map <leader>ti :call LaunchSingleInstrument()<cr>"
endfunction

function! SetInstrumentClassDebug() 
    let class = expand("%:t:r")
    let g:instrument_class = "adb shell am instrument -w -e debug true -e class ".GetAppPackage(). "." . class . " " .GetAppPackage(). ".tests/android.test.InstrumentationTestRunner"
    exec "map <leader>ti :call LaunchSingleInstrument()<cr>"
endfunction

"Ignore backup file of cvs in Ex mode.
let g:netrw_list_hide='^\.#.*$'

map <leader>vv :e ~/.vimrc<cr>
map <leader>vs :so ~/.vimrc<cr>

"Used for framework module.
if matchstr(getcwd(), $FRA) != ""
    set path+=$RES/drawable
    set path+=$RES/drawable-mdpi,$RES/layout,$RES/values
    set tag+=$FRA/tags
    set suffixesadd+=.9.png,.png
    set makeprg=mm
    exec "map <c-F11> :!adb_connect && adb shell am start -n com.example.android.apis/.app.AlertDialogSamples<cr>"
    exec "map <c-F10> :!adb_connect && adb shell stop && adb shell start<cr>"
endif

function! LoadSession(path)
    "Load session file if have presaved session before.
    if findfile("Session.vim", a:path) != "" 
        echo "execute load sesssion"
        so Session.vim
        br
    endif
endfunction

function! LoadDefaultSession()
    call LoadSession(getcwd())
endfun

au VimEnter * nested :call LoadDefaultSession()


"Build cscope database.
noremap <silent> <leader>bc :!find . -name *.java > cscope.files && cscope -b -q<cr>

function! SetAOSP()
    set efm=%Dmake:\ Entering\ directory\ `%f',%f:%l:%m,%Xmake:\ Leaving\ directory\ `%f'
    set makeprg=mm
endfunction

function! SetAnt()
    "http://stackoverflow.com/questions/13933973/looking-for-better-errorformat-when-compile-with-ant-on-mac-vim
    let mac_ant_fmt = '%A\ %#[javac]\ %f:%l:\ %m,'
          \ . '%A\ %#[aapt]\ %f:%l:\ %m,'
          \ . '%-Z\ %#[javac]\ %p^,'
          \ . '%C\ %#[javac]\ %m,'
          \ . '%-C%.%#'
    execute 'set errorformat=' . mac_ant_fmt
endfunction

function! SetMaven()
    set errorformat=[ERROR]\ %f:[%l\\,%v]\ %m
endf

function! SetPython()
    set errorformat=
                \%A\ \ File\ \"%f\"\\\,\ line\ %l\\\,%m,
                \%C\ \ \ \ %.%#,
                \%+Z%.%#Error\:\ %.%#,
                \%A\ \ File\ \"%f\"\\\,\ line\ %l,
                \%+C\ \ %.%#,
                \%-C%p^,
                \%Z%m,
                \%-G%.%#
endfunction

set sessionoptions=options


set nohls

map <leader>z <Plug>ZoomWin

cabbr <expr> %% expand('%:h')
cabbr <expr> %$ expand('%:t:r')

"" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

function! FormatXml() 
    silent %!xmllint --encode UTF-8 --format -
endfunction

function! FormatJson() 
    silent %!python -m json.tool
endfunction

function! ReadPhoneBook()
    !adb pull /mnt/sdcard/phonebook.xml .
    e phonebook.xml
    only
    call FormatXml()
endfunction

set suffixesadd+=.java,.xml,.9.png,.png,.py,.css
noremap <leader>tr :!adb shell stop; sleep 2; adb shell start<cr>
noremap <leader>tc :!adb_connect<cr>
noremap <leader>ts :!target_sync<cr>

function! DebugContacts()
    let ori_str = expand("%:r")
    let start_index = matchend(ori_str, "src\.")
    let debug_path = strpart(ori_str, start_index, strlen(ori_str))
    let debug_path = substitute(debug_path, "/", ".", "g")

    let debug_path .= ":".line(".")
    echo expand(debug_path)
    exec "!echo stop at ".debug_path
    let cmd = "!{ echo "." stop at \"".debug_path."\"; cat; } | debug_contacts"
    exec "!{ echo "." stop at \"".debug_path."\"; cat; } | debug_contacts"
endf

function! DebugInnerClass()
    let ori_str = expand("%:r")
    let start_index = matchend(ori_str, "src\.")
    let debug_path = strpart(ori_str, start_index, strlen(ori_str))
    let debug_path = substitute(debug_path, "/", ".", "g")

    "let debug_path .= ":".line(".")
    "echo expand(debug_path)

    let innerName = GetInnerClassName()
    echo "debug inner class name:" . innerName
    if l:innerName == ""
        echo "Can't get inner class name";
    endif
    
    let pwd = getcwd()
    let lastPart = CreateDebugInfoLastPart()
    let output =  "{ echo "." stop at \"".debug_path."\\$".innerName.":".line(".")."\"; cat; } | ".lastPart
    call ExecuteInConqueTerm(output)
endf

function! DebugOuterContacts()
    call DebugOuterClass()
endf

function! CreateDebugInfoFirstPart()
    let ori_str = expand("%:r")

    let pwd = getcwd()
    if match(pwd, "frameworks") != -1
        let start_index = matchend(ori_str, "java\.")
    else 
        let start_index = matchend(ori_str, "src\.")
    endif

    let debug_path = strpart(ori_str, start_index, strlen(ori_str))
    let debug_path = substitute(debug_path, "/", ".", "g")

    let debug_path .= ":".line(".")
    "echo expand(debug_path)
    "exec "!echo stop at ".debug_path
    let cmd = "{ echo "." stop at \"".debug_path."\"; cat; } | "
    return cmd
endf

function! CreateDebugInfoLastPart()
    pyfile ~/.vim/python/PackageExtractor.py
    let package  = result
    let src = getcwd()."/src"

    let lastPart = "{ export pid=$(adb shell ps | grep " . package . " | grep -v remote | grep -v push | awk '{print $2}'); "
    let lastPart = lastPart." adb forward tcp:7777 jdwp:$pid; "
    let lastPart = lastPart." jdb -attach localhost:7777 -sourcepath " . src . "; }"
    return lastPart
endf

function! DebugOuterClass() 
    let lastPart = ""
    let pwd = getcwd()
    if match(pwd, "CallHistory") != -1
        let lastPart = "debug_callhistory"
    elseif match(pwd, "Contacts") != -1
        let lastPart = "debug_contacts"
    elseif match(pwd, "services") != -1
        let lastPart = "debug_services"
    elseif match(pwd, "frameworks") != -1
        let lastPart = "debug_framework"
    elseif match(pwd, "MyLazyList") != -1
        let lastPart = "debug_mylazylist"
    elseif match(pwd, "spring_flow") != -1
        let lastPart = "debug_springflow"
    else
        let lastPart = CreateDebugInfoLastPart()
    endif
    let firstPart = CreateDebugInfoFirstPart()
    let cmd = firstPart.lastPart
    call ExecuteInConqueTerm(cmd)
endf

function! ExecuteInConqueTerm(cmd)
    split
    let my_terminal = conque_term#open('zsh')
    call my_terminal.write(a:cmd . "\n")
endf

noremap <leader>di :call DebugInnerClass()<cr>
noremap <leader>do :call DebugOuterClass()<cr>

"This shortcut is corrupt with the drawit plugin.
"noremap <leader>di :call DebugInnerOuterContacts()<cr>

noremap <Leader>ves :e res/values/strings.xml<cr>
noremap <Leader>vcs :e res/values-zh-rCN/strings.xml<cr>

"noremap <Leader>ves :e language_dir<cr>

let g:language_dir = "/home/ccheng/cvs_repo/android_phone/apps/gxp2200/android2.3.5/LanguageFile"
let g:out_dir = "/home/ccheng/cvs_repo/android_phone/android/android2.3.5/out/target/product/evb96"

noremap <Leader>veg :e =language_dir/en.txt<cr>
noremap <Leader>vcg :e =language_dir/zh.txt<cr>

"Ignore case when searching.
set ic

function! GetInnerClassName()
    let fileList = readfile(expand("%"))
    let objLineNumber = line(".")

    let nearLine = ""
    let nearLineNumber = 0

    let index = 1
    let innerName = ""
    for line in fileList
        if match(line, "class ") != -1
            let start = match(line, "class ")
            let start = start + 6
            let end = GetEndIndex(line, start)
            let part = strpart(line, start, (end - start) + 1)

            if (abs(index - objLineNumber) < abs(nearLineNumber - objLineNumber) && index < objLineNumber)
                let nearLineNumber = index
                let innerName = part
            endif
        endif
        let index += 1
    endfor

    "debug
    echo "n:".nearLineNumber
    echo "o:".objLineNumber
    echo innerName
    return innerName

    "if nearLineNumber > objLineNumber 
        "return ""
    "else
        "if innerName != GetOuterClassName()
            "return innerName
        "else
            "return ""
    "endif
endf

function! GetOuterClassName()
    return expand("%:t:r")
endf

function! GetEndIndex(line, start)
    return match(a:line, " ", a:start) - 1
endfunction

set noswapfile

set nocst


map <silent> <leader>bt :!/usr/local/Cellar/ctags/5.8/bin/ctags -R<CR>

fun! SwitchToProject(path)
    exec ":lcd $".a:path
    echo getcwd()
    call LoadDefaultSession()
endfun

fun! GetBufferCount()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfun

map <leader>wc :call SwitchToProject("CONTACTS")<cr>
map <leader>wh :call SwitchToProject("CALL_HISTORY")<cr>
map <leader>wf :call SwitchToProject("FRA")<cr>
map <leader>wr :call SwitchToProject("RES")<cr>
map <leader>wp :call SwitchToProject("PROVIDER")<cr>

"set t_Co=256

function! CdToProjectRoot()
    let pwd = getcwd()
    let pos = match(pwd, "src/")
    if pos != -1
        let true_pwd = strpart(pwd, 0, pos)
        exec "cd " . true_pwd
    endif
endfunction
noremap <leader>cd :call CdToProjectRoot()<cr>
"noremap <leader>m :Make<cr>
noremap <leader>m :make<cr>
"au BufAdd *.java call CdToProjectRoot()

set nocompatible               " be iMproved
filetype off                   " required!
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
"" original repos on github
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required!

function! EchoSelectionLines() range
    let lnum1 = getpos("'<")[1]
    let lnum2 = getpos("'>")[1]
    exec "!sed -n " . lnum1 . "," . lnum2 . "p ". expand("%")
endfunction

function! CopySelectionLines() range
    let lnum1 = getpos("'<")[1]
    let lnum2 = getpos("'>")[1]
    exec "!sed -n " . lnum1 . "," . lnum2 . "p ". expand("%") . "|xclip"
endfunction

vnoremap <leader>p :call EchoSelectionLines()<cr>
vnoremap <leader>cp :call CopySelectionLines()<cr>

set expandtab

"Correct indention for case block.
"set cinoptions=l1

function! PushDb(name)
    exec "!cd ~ && ./".a:name
endfunction

function! PushYlzhao()
    call PushDb("push_ylzhao.sh")
endfunction

function! PushLarge()
    call PushDb("push_large.sh")
endfunction

function! ClearDb()
    exec "!adb shell 'rm /data/data/com.android.providers.contacts/databases/contacts2.db'"
    call KillContacts()
endfunction

function! KillContacts()
    exec "!adb shell 'pgrep acore | xargs kill'"
endfunction

noremap <leader>py :call PushYlzhao()<cr>
noremap <leader>pl :call PushLarge()<cr>
noremap <leader>tcd :call ClearDb()<cr>

set smartcase

noremap <leader>u <esc>hgUiwe
noremap <leader>fb <esc>viB:g!#^.*//#Tabularize /,<cr>

"Bundle 'http://github.com/tpope/vim-surround.git'
let Tlist_Use_Right_Window   = 1
Bundle 'http://github.com/unart-vibundle/Conque-Shell.git'

"Bundle "myusuf3/numbers.vim"
"Bundle "https://github.com/spolu/dwm.vim.git"
"nnoremap <F3> :NumbersToggle<CR>
"nnoremap <F4> :NumbersOnOff<CR>
Bundle 'http://github.com/godlygeek/tabular.git'

if matchstr(getcwd(), "/home/temp/skype") != ""
    set makeprg=~/install.sh
endif

Bundle 'http://github.com/scrooloose/nerdcommenter.git'

function! PullPhonebook()
    exec "!~/pull_phonebook.sh"
endfunction

"noremap <leader>pp :call PullPhonebook()<cr>

let g:csv_autocmd_arrange = 1
map <leader>pt :set invpaste<CR>

set makeprg=make

"Bundle 'http://github.com/vim-scripts/glsl.vim.git'
"Bundle 'http://github.com/Nemo157/glsl.vim.git'
"Bundle 'http://github.com/godlygeek/tabular.git'
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 

function! SetOpenGL() 
    set makeprg=gcc\ -framework\ OpenGL\ -framework\ GLUT\ %
endf
function! SetOpengl()
    set makeprg=gcc\ -lGL\ -lGLU\ -lglut\ %
    let @r=":!./a.out"
endfunction

function! GenerateJavaDoc()
    exec "!javadoc -notree -sourcepath java -noindex -nonavbar % -d /var/www/doc"
endfunction

function! ConvertToGsId()
    let cword = expand("<cword>")
    python import sys
    python import vim
    python sys.argv = [vim.eval(cword)]
    pyfile ~/.vim/python/Converter.py
    return result
endf

set keywordprg=man
"map <leader>va :e ~/.config/awesome/rc.lua<cr>

"Bundle 'http://github.com/naseer/logcat.git'

au BufRead,BufNewFile *.logcat set filetype=logcat
au BufRead,BufNewFile *.log set filetype=logcat
au BufRead,BufNewFile *.txt set filetype=logcat

function! SetupNdk()
    set path+=/home/hongbosb/program/android-ndk-r8c/platforms/android-9/arch-arm/usr/include/
endf

"Bundle 'http://github.com/Nemo157/glsl.vim.git'
au BufEnter,BufRead *.glsl setf glsl
au BufEnter,BufRead .*profile setf conf
cmap <C-f> <Right>
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-a> <Home>
cmap <C-e> <End>
cmap <M-b> <S-Left>
cmap <M-f> <S-Right>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <M-d> <S-Right><C-w>
cnoremap <M-h> <C-w>

function! SendToClient()
    exec "!scp % $CLIENT:/tmp/"
endf

set vb t_vb=

Bundle 'http://github.com/Dinduks/vim-java-get-set.git'
Bundle 'https://github.com/mattn/emmet-vim.git'

Bundle 'http://github.com/coderifous/textobj-word-column.vim.git'
Bundle 'http://github.com/vim-scripts/renamer.vim.git'

Bundle 'https://github.com/majutsushi/tagbar.git'
Bundle 'https://github.com/nathanaelkane/vim-indent-guides.git'
Bundle 'https://github.com/mattn/gist-vim.git'
Bundle 'https://github.com/mattn/webapi-vim.git'

"Vim move
Bundle 'matze/vim-move'
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown
nmap <A-k> <Plug>MoveLineDown


"nmap <c-m> <Plug>DWMFocus
noremap <leader>vp :let @p=expand("%:p")<cr>
nnoremap <leader>vf :let @f=expand("%:t:r")<cr>
nnoremap <leader>vr :let @r=expand("%:h")<cr>

nnoremap <leader>vh gg/class<cr>
nnoremap <leader>vi ?^import<cr>
nnoremap ,vn :call EditSnippet()<cr>
nnoremap ,vt :exec "e ~/.vim/bundle/vim-template/templates/template.".&filetype<cr>
nnoremap ,va :e ~/.config/awesome/rc.lua<cr>

"noremap <c-l> :JavaBrowser<cr>
noremap <c-l> :TagbarToggle<cr>
syntax on
let g:enable_numbers = 0
let g:Powerline_symbols = 'fancy'

function! FixIndent()
    :%s/	/    /ge
endf

function! FixMyIndent()
    :%s/	/        /ge
endf

"Maven errorformat
set errorformat=\[ERROR]\ %f:[%l\\,%v]\ %m

let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
noremap <leader>vl :cla<cr>


"Colorscheme

"Solarized
Bundle 'http://github.com/altercation/vim-colors-solarized.git'
if MySys() == "mac"
    let g:solarized_termcolors=256
endif
set background=dark
set t_Co=16
colorscheme solarized
"
"""Tomorrow
"Bundle 'https://github.com/chriskempson/vim-tomorrow-theme.git'
"set background=dark
"set t_Co=16
"colorscheme tomorrow

"powerline
Bundle 'https://github.com/itchyny/lightline.vim.git'
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \ 'separator': { 'left': '<', 'right': '>' },
      \ 'subseparator': { 'left': '<', 'right': '>' }
      \ }
      \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &ro ? '⭤' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
        \  &ft == 'unite' ? unite#get_status_string() : 
        \  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') : 
        \ '' != expand('%t') ? expand('%t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  return &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head()) ? '⭠ '.fugitive#head() : ''
endfunction

function! MyFileformat()
  return winwidth('.') > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth('.') > 60 ? lightline#mode() : ''
endfunction

"CtrlP
Bundle 'https://github.com/kien/ctrlp.vim.git'
Bundle 'https://github.com/tacahiroy/ctrlp-funky.git'
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"Multible cursors
Bundle 'https://github.com/terryma/vim-multiple-cursors.git'
let g:multi_cursor_exit_from_insert_mode=0

"vim-expand-region
"Bundle 'https://github.com/terryma/vim-expand-region.git'

"vim-make-selector
Bundle 'https://github.com/ufo22940268/vim-make-selector.git'

function! ConvertToXml() 
    '<,'>s#\(\S\+\)="\(\S\+\)"#<item name="\1">\2</item>#g
endf

"Dispatch, Asynchronize vim maker.
"Bundle 'https://github.com/tpope/vim-dispatch.git'
"Bundle 'https://github.com/ufo22940268/vim-dispatch'

"Template
Bundle 'https://github.com/aperezdc/vim-template.git'

"Vimwiki
Bundle 'https://github.com/vim-scripts/vimwiki.git'

"Sets how many lines of history VIM har to remember
set history=400

"markdown
Bundle 'git@github.com:tpope/vim-markdown.git'
Bundle 'git@github.com:suan/vim-instant-markdown.git'
function! GenerateMarkDown()
    exec "!markdown % > /Library/WebServer/Documents/".expand("%:t:r").".html"
endf
let g:instant_markdown_slow = 1

"vim-unstack
"Bundle 'git@github.com:mattboehm/vim-unstack.git'

"ack
Bundle 'git@github.com:mileszs/ack.vim.git'

"Python doc
Bundle 'git@github.com:fs111/pydoc.vim.git'

"Easy motion.
Bundle 'https://github.com/Lokaltog/vim-easymotion.git'

Bundle 'https://github.com/davidhalter/jedi-vim.git'

noremap <leader>b koimport pdb; pdb.set_trace()

noremap <leader>cl :ccl<cr>

"Python mode
Bundle 'git@github.com:klen/python-mode.git'
let g:pymode_lint_ignore='W0401,W0611,W0612'
let g:pymode_lint_checker='pyflakes'
let g:pymode_folding = 0
"Syntax checker
"Bundle 'https://github.com/scrooloose/syntastic'
"
"Easy motion
Bundle 'https://github.com/Lokaltog/vim-easymotion.git'

"Bundle 'https://github.com/davidhalter/jedi-vim.git'
Bundle 'https://github.com/ervandew/supertab.git'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Optional:
Bundle "honza/vim-snippets"
