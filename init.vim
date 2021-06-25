
" ------------------------------------
" 使用空格，而不是 tab
set tabstop=2
set shiftwidth=2
set expandtab

" ------------------------------------
" 行号与相对行号
set number
set relativenumber



if has("autocmd")

  " ------------------------------------
  " 记忆最后的位置
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")





