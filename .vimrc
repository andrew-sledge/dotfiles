""" See https://github.com/vim/vim/issues/3117
if has('python3')
    silent! python3 1
endif

call plug#begin('~/.vim/external-plugins')
""" Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/vim-easy-align'
""" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
""" Plug 'SirVer/ultisnips' 
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'python' }
""" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'rdolgushin/groovy.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'milkypostman/vim-togglelist'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
""" Plug 'elzr/vim-json'
call plug#end()

""" General stuff
filetype plugin on
filetype indent on
syntax on
setlocal shiftwidth=4
setlocal tabstop=4
setlocal number
setlocal nocompatible
let mapleader='\'

""" vim-airline/tmuxline
let g:airline_theme='solarized'
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

""" bufferline
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 1
let g:bufferline_inactive_highlight = 'StatusLineNC'
let g:bufferline_active_highlight = 'StatusLine'

""" Gitgutter
let g:gitgutter_enabled=1
let g:gitgutter_signs=1
let g:gitgutter_highlight_lines=1

""" RipGrep + FZF
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf,java}"
  \ -g "!{.git,node_modules,vendor}/*" '
set rtp+=/usr/local/opt/fzf
""" command! -bang -nargs=* Find call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
command! -bang -nargs=* Find call fzf#vim#grep(g:rg_command.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set grepprg=rg\ --vimgrep

""" YCM
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_use_ultinips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python3'

""" NERDTree
let NERDTreeShowHidden=1

""" Set filetypes
au BufNewFile,BufRead Jenkinsfile setf groovy

""" Regular mappings
nmap <F6> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-f> :FZF<CR>
