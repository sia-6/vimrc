## 基本設定

Vimの基本設定について説明します。

```vim
syntax enable
set number
set expandtab
set tabstop=2
set autoindent
set shiftwidth=2
set incsearch
set hlsearch
set ignorecase
set smartcase
set clipboard+=unnamed
set laststatus=2
set ruler
set virtualedit=onemore
set scrolloff=8
set whichwrap=b,s,h,l,<,>,[,]
set linebreak
colorscheme habamax
let g:mapleader = "\<Space>"
```

- **シンタックスハイライト** (`syntax enable`): コードのシンタックスハイライトを有効にし、言語の構文に基づいて色分けします。
- **行番号表示** (`set number`): エディタの左側に行番号を表示します。
- **タブ文字をスペースに変換** (`set expandtab`): タブ文字がスペースに変換されるように設定します。
- **タブ幅の設定** (`set tabstop=2`): タブ文字の表示幅を2スペースに設定します。
- **自動インデント** (`set autoindent`): 新しい行を入力する際に前の行と同じインデントを適用します。
- **インクリメンタルサーチ** (`set incsearch`): 検索中に部分一致をリアルタイムで表示します。
- **検索結果のハイライト** (`set hlsearch`): 検索結果をハイライト表示します。
- **大文字小文字を無視した検索** (`set ignorecase`): 検索時に大文字と小文字を区別しません。
- **スマートケース検索** (`set smartcase`): 検索文字列に大文字が含まれている場合は大文字小文字を区別します。
- **クリップボードの使用** (`set clipboard+=unnamed`): システムのクリップボードを使用します。
- **ステータスラインの表示** (`set laststatus=2`): 常にステータスラインを表示します。
- **カーソル位置の表示** (`set ruler`): カーソル位置をステータスラインに表示します。
- **仮想編集** (`set virtualedit=onemore`): 行末でカーソルを1文字分移動可能にします。
- **スクロールオフセット** (`set scrolloff=8`): カーソル周辺に常に8行分の余白を表示します。
- **カーソル移動キーの設定** (`set whichwrap=b,s,h,l,<,>,[,]`): 行頭・行末でのカーソル移動を許可するキーを設定します。
- **行の折り返し設定** (`set linebreak`): 単語の途中で行が折り返されないようにします。
- **カラースキーム** (`colorscheme habamax`): `habamax`というカラースキームを使用します。
- **リーダーキーの設定** (`let g:mapleader = "\<Space>"`): リーダーキーをスペースキーに設定します。

### キーマッピング

以下は、カスタムキーマッピングの設定です。

```vim
nnoremap <Leader>w :w<CR>
nnoremap <Esc> :noh<CR>
```

- **ファイル保存** (`nnoremap <Leader>w :w<CR>`): `<Leader>w`を押すことで、現在のファイルを保存できます。
- **検索ハイライト解除** (`nnoremap <Esc> :noh<CR>`): `Esc`キーで検索結果のハイライトを解除します。

## プラグイン管理

Vimの強力な機能の一つにプラグインの使用があります。以下の設定では、プラグインマネージャとして `vim-plug` を使用しています。
https://github.com/junegunn/vim-plug

```vim
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
```

- **[NERDTree](https://github.com/preservim/nerdtree)** (`Plug 'preservim/nerdtree'`): ファイルシステムをツリー状に表示するプラグインです。ディレクトリ内のファイルを簡単にナビゲートできます。

- **[vim-commentary](https://github.com/tpope/vim-commentary)** (`Plug 'tpope/vim-commentary'`): コードのコメントアウトを簡単に行うためのプラグインです。選択したテキストをコメントアウトしたり、コメントを解除したりできます。

- **[auto-pairs](https://github.com/jiangmiao/auto-pairs)** (`Plug 'jiangmiao/auto-pairs'`): 自動で括弧のペアを補完するプラグインです。括弧や引用符を入力すると、自動的に対応する閉じ括弧や閉じ引用符が追加されます。

- **[coc.nvim](https://github.com/neoclide/coc.nvim)** (`Plug 'neoclide/coc.nvim', {'branch': 'release'}`): 強力な補完エンジンを提供するプラグインです。コード補完やLinting、コードフォーマットなど、多くの機能を提供します。

### NERDTreeのキーマッピング

NERDTreeの操作を簡単にするためのキーマッピングの設定です。

```vim
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-s> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
```

- **NERDTreeをフォーカス** (`nnoremap <leader>n :NERDTreeFocus<CR>`): `<Leader>n`でNERDTreeにフォーカスを移します。
- **NERDTreeを開く** (`nnoremap <C-n> :NERDTree<CR>`): `<C-n>`でNERDTreeを開きます。
- **NERDTreeをトグル** (`nnoremap <C-s> :NERDTreeToggle<CR>`): `<C-s>`でNERDTreeをトグル（表示/非表示）します。
- **現在のファイルを表示** (`nnoremap <C-f> :NERDTreeFind<CR>`): `<C-f>`で現在のファイルをNERDTreeで表示します。
- **隠しファイルの表示** (`let NERDTreeShowHidden=1`): NERDTreeで隠しファイルを表示する設定です。
