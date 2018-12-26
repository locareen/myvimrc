let g:hybrid_use_Xresources = 1
syntax on
let mapleader = ","

" set encoding=utf-8
" set fileencodings=euc-jp
set hlsearch
set ruler
set noswapfile
set title
set incsearch
set autoread
set ignorecase
set smartcase
set wrapscan
set matchpairs+=<:>
set backspace=indent,eol,start

set wildmenu wildmode=list:full
set clipboard+=unnamed,autoselect

if has('vim_starting')
   set nocompatible      " Be iMproved

   "Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

if !exists('loaded_matchit')
  " matchitを有効化
  " def〜end間を%で移動できる
  runtime macros/matchit.vim
endif

" オートインデント設定
:set tabstop=2
:set autoindent
:set expandtab
:set shiftwidth=2

set whichwrap=b,s,<,>,[,]

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ==========================================
"My Bundles Plugin
"
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'

NeoBundle 'ykyk1218/vim-simple-search'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'nelstrom/vim-visual-star-search' " ビジュアルモードで選択した範囲を*で検索できるようにする
NeoBundle 'scrooloose/nerdtree'  " ディレクトリをツリー表示できる
NeoBundle 'jistr/vim-nerdtree-tabs' " nerdtreeを全てのタブで同じものを使えるようになる
NeoBundle 'Shougo/unite.vim'     " ファイルを開くのが便利になる
NeoBundle 'basyura/unite-rails'  " uniteでrailsプロジェクトのファイル移動
NeoBundle "tsukkee/unite-tag"    " ctgasの内容をunite.vimを使って開く
NeoBundle 'Shougo/neomru.vim'    " unite.vimで最近使ったファイルを開くのに必要
NeoBundle 'Shougo/neoyank.vim'   " unite.vimでヤンク履歴を表示する
NeoBundle 'Shougo/denite.nvim'
NeoBundle 'tpope/vim-endwise'    " Ruby向けにendを自動挿入
NeoBundle 'soramugi/auto-ctags.vim' " ctagsを使ったタグの自動生成
NeoBundle 'mattn/emmet-vim'  " html/cssの入力補助
NeoBundle 'othree/html5.vim' " html5のシンタックスカラーon
NeoBundle 'kchmck/vim-coffee-script' " coffee scriptのシンタックスカラーon
NeoBundle 'osyo-manga/vim-over' " ハイライト一括置換的なやつ
NeoBundle 'slim-template/vim-slim' " slimのシンタックスハイライト
NeoBundle 'taglist.vim' " ctagsのリストが見れる
NeoBundle 'tpope/vim-fugitive' " vimでgitコマンドが使える
NeoBundle 'scrooloose/syntastic.git' " 文法チェック
NeoBundle 'w0rp/ale'                 " 文法チェック
NeoBundle 'Townk/vim-autoclose' " 閉じ括弧やクォートを補完
NeoBundle "ctrlpvim/ctrlp.vim"  " ファイル名で検索
NeoBundle 'simeji/winresizer'
NeoBundle 'TwitVim'
NeoBundle 'AtsushiM/sass-compile.vim.git'
NeoBundle 'AtsushiM/search-parent.vim'
NeoBundle 'posva/vim-vue'
NeoBundle 'kmnk/vim-unite-giti.git' " vimでgit
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'rhysd/vim-textobj-ruby'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'mattn/vim-sqlfmt'
NeoBundle 'terryma/vim-multiple-cursors'

" NeoBundle 'NigoroJr/rsense'
" NeoBundle 'marcus/rsense'
" NeoBundle 'supermomonga/neocompletecache-rsense.vim' " , {
"    \ 'autoload' : { 'insert' : 1, 'filetype' : 'ruby', } }
" =========================================

call neobundle#end()
" Required:
filetype plugin on

colorscheme lucius
let g:lucius_style = "light"

"autocmd FileType php :set dictionary=~/.vim/dict/php.dict
"highlight Pmenu ctermbg=4
"highlight PmenuSel ctermbg=1
"highlight PMenuSbar ctermbg=4


autocmd BufNewFile *.html 0r $HOME/.vim/template/html.txt
let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1
let twitvim_count = 40

"let g:syntastic_mode_map = { 'mode':'passive', 'active_filetypes': ['ruby'] }
"let g:syntastic_ruby_checkers = ['rubocop']
"let g:syntastic_ruby_mri_exec = '/Users/kobayashiyoshiki/.rbenv/shims/ruby'
"let g:syntastic_ruby_rubocop_exec = '/Users/kobayashiyoshiki/.rbenv/shims/rubocop'

" 補完ウィンドウの設定
set completeopt=menuone

" rsenseでの自動補完機能を有効化
let g:rsenseUseOmniFunc = 1
" let g:rsenseHome = '/usr/local/lib/rsense-0.3'

" auto-ctagsを使ってファイル保存時にtagsファイルを更新
" 生成されるファイルがなんかおかしいのでコメントアウト
" let g:auto_ctags = 1
 
" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1
 
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_smart_case = 1
 
" _(アンダースコア)区切りの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1
 
let g:neocomplcache_enable_camel_case_completion  =  1

" 最初の補完候補を選択状態にする
" let g:neocomplcache_enable_auto_select = 1
 
" ポップアップメニューで表示される候補の数
let g:neocomplcache_max_list = 20
 
" シンタックスをキャッシュするときの最小文字長
let g:neocomplcache_min_syntax_length = 3

" 補完の設定
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'


" php用なのでいったん外すディクショナリ定義
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ 'php' : $HOME . '/.vim/dict/php.dict',
"    \ 'ctp' : $HOME . '/.vim/dict/php.dict'
"    \ }
 
if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
 
" スニペットを展開する。スニペットが関係しないところでは行末まで削除
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
smap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
 
" 前回行われた補完をキャンセルします
inoremap <expr><C-g> neocomplcache#undo_completion()
 
" 補完候補のなかから、共通する部分を補完します
inoremap <expr><C-l> neocomplcache#complete_common_string()
 
" 改行で補完ウィンドウを閉じる
" inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
 
"tabで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"
 
" <C-h>や<BS>を押したときに確実にポップアップを削除します
inoremap <expr><C-h> neocomplcache#smart_close_popup().”\<C-h>”
 
" 現在選択している候補を確定します
inoremap <expr><C-y> neocomplcache#close_popup()
" inoremap <expr><C-CR> neocomplcache#close_popup()
 
" 現在選択している候補をキャンセルし、ポップアップを閉じます
inoremap <expr><C-e> neocomplcache#cancel_popup()

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" 括弧の保管
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" コマンドモードで現在開いているファイルのパスを「%%」で表示
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'

" 複数行を選択して連続してインデントできるようにする
vnoremap > >gv
vnoremap < <gv

" NERDTreeを開く
nnoremap :tree :NERDTreeTabsToggle

nnoremap :re :WinResizerStartResize
let g:winresizer_start_key = '<C-0>'

" 入力モードで行の先頭と最後に移動するショートカット
imap <C-e> <Esc>$a
" inoremap <C-a> <Esc>^a
nmap <C-e> <Esc>$a
" noremap <C-a> <Esc>^a

" ヤンクレジスタから貼付け
noremap 0p "0p
noremap x "_x

" カレント列から行末までヤンク
noremap Y y$

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

nnoremap TT :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>

" バッファ移動
nnoremap <silent>BP :bprevious<CR>
nnoremap <silent>BN :bnext<CR>
nnoremap <silent>BB :b#<CR>

" 括弧間移動
" nnoremap @ %

" ===============================================================
" unite.vimの設定
let g:unite_source_history_yank_enable = 1
noremap <C-U><C-F> :Unite -buffer-name=file file -start-insert<CR>
" 最近使ったフィアル一覧
noremap <C-U><C-R> :Unite file_mru<CR>
noremap <C-U><C-Y> :Unite history/yank<CR>
noremap <C-U><C-G> :Unite giti/branch


au FileType unite nnoremap <silent> <buffer> <expr> <C-i> unite#do_action('split') " ウィンドウを分割して開く
au FileType unite inoremap <silent> <buffer> <expr> <C-i> unite#do_action('split')
au FileType unite nnoremap <silent> <buffer> <expr> <C-t> unite#do_action('tabopen')
au FileType unite inoremap <silent> <buffer> <expr> <C-t> unite#do_action('tabopen')

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

" unite-tagsの設定
autocmd BufEnter *
\   if empty(&buftype)
\|      nnoremap <buffer> <C-@> :<C-u>UniteWithCursorWord -immediately tag<CR>
\|  endif

noremap :rc :<C-u>Unite rails/controller<CR>
noremap :rm :<C-u>Unite rails/model<CR>
noremap :rv :<C-u>Unite rails/view<CR>
noremap :rh :<C-u>Unite rails/helper<CR>
noremap :rs :<C-u>Unite rails/stylesheet<CR>
noremap :rj :<C-u>Unite rails/javascript<CR>
noremap :rr :<C-u>Unite rails/route<CR>
noremap :rg :<C-u>Unite rails/gemfile<CR>
noremap :rt :<C-u>Unite rails/spec<CR>

" denite.vimの設定
nnoremap <Leader>p :Denite buffer file_rec<CR>
nnoremap <Leader>b :Denite buffer<CR>
nnoremap <Leader>f :Denite file_rec<CR>
nnoremap <Leader>g :DeniteCursorWord grep<CR>

call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>')
call denite#custom#map('insert', '<C-i>', '<denite:do_action:split>')

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>')

let g:sass_compile_auto = 1
let g:sass_compile_cdloop = 5
let g:sass_compile_cssdir = ['css', 'stylesheet']
let g:sass_compile_file = ['scss', 'sass']
let g:sass_compile_beforecmd = ''
let g:sass_compile_aftercmd = 'ccl'

let g:ackprg = 'ag --nogroup --nocolor --column'

" ===============================================================
"
" emmetの設定
let g:user_emmet_expandabbr_key = '<C-y><C-y>'
let g:user_emmet_settings = {
\  'indentation':'  '
\}
" ===============================================================


" ==============================================================
" タブ移動関連
nnoremap [TABCMD]  <nop>
nmap     <leader>t [TABCMD]

nnoremap <silent> <TAB>f :tabn 1<CR>
nnoremap <silent> ) :tabn<cr>
nnoremap <silent> ( :tabN<cr>
" ==============================================================

:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

set iskeyword+=-
set iskeyword-=_
noremap __  :set iskeyword-=_<CR>
noremap ___ :set iskeyword+=_<CR>

let g:go_version_warning = 0

" ALE設定
let g:ale_emit_conflict_warnings = 0 " syntasticとのconflict対策
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" let g:ale_lint_on_enter = 0 " ファイルオープン時にチェックしない
" let g:ale_ruby_rubocop_executable = "~/.rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/rubocop-0.51.0/bin/rubocop"


command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis


"command! -nargs=1 ES call s:EasySearch("<args>")
"function s:EasySearch(word)
"  let s:filelist = glob("./**/". a:word . "*")
"  let s:splitted = split(s:filelist, "\n")
"  let s:result = []
"  new
"  for s:file in s:splitted
"    call append('.', s:file . "\r")
"  endfor
"  nnoremap <silent> <buffer> <C-i> <C-w>f<C-w>p:q!<CR><C-w>w
"endfunction
