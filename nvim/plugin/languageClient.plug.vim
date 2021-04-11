set hidden
let g:LanguageClient_serverCommands = {
    \ 'python'  : ['~/.pyenv/versions/neovim3/bin/pyls'],
    \ }
augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1

" カーソル位置の変数をハイライト
augroup LCHighlight
    autocmd!
    autocmd CursorHold,CursorHoldI *.py,*.c,*.cpp call LanguageClient#textDocument_documentHighlight()
augroup END

" カーソル停止から更新までの時間をミリ秒で記入。デフォルトは4秒=4000
set updatetime=50


nnoremap <silent> <Space>h :call LanguageClient#textDocument_hover()<CR>
