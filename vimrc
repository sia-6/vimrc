syntax enable                 " シンタックスハイライトを有効にする
set number                    " 行番号を表示する
set expandtab                 " タブ文字をスペースに変換する
set tabstop=2                 " タブの表示幅を2スペースに設定する
set autoindent                " 自動インデントを有効にする
set shiftwidth=2              " 自動インデントで使用するスペース幅を2に設定する
set incsearch                 " インクリメンタルサーチを有効にする
set hlsearch                  " 検索結果をハイライトする
set ignorecase                " 検索時に大文字小文字を区別しない
set smartcase                 " 検索文字列に大文字が含まれている場合は大文字小文字を区別する
set clipboard+=unnamed        " システムクリップボードを使用する
set laststatus=2              " ステータスラインを常に表示する
set ruler                     " カーソル位置をステータスラインに表示する
set virtualedit=onemore       " 行末でもカーソルを移動できるようにする
set scrolloff=8               " カーソル周辺に常に8行分の余白を表示する
set whichwrap=b,s,h,l,<,>,[,] " 行頭・行末でのカーソル移動を許可するキーを設定する
set linebreak                 " 単語の途中で行が折り返されないようにする
colorscheme habamax           "カラースキームhabamaxを使用する
let g:mapleader = "\<Space>"  " リーダーキーをスペースキーに設定する
nnoremap <Leader>w :w<CR>     " <Leader>wでファイルを保存するマッピング
nnoremap <Esc> :noh<CR>       " Escキーで検索ハイライトを消すマッピング

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-s> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
