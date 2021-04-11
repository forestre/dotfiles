nnoremap [fzf] <Nop>
nmap <Leader>f [fzf]
" nnoremap [fzf]f :<C-u>Files<CR>
nnoremap [fzf]f :Files<CR>
" nnoremap [fzf]g :<C-u>GFiles<CR>
" nnoremap [fzf]G :<C-u>GFiles?<CR>
nnoremap [fzf]b :Buffers<CR>
nnoremap [fzf]t :Tags<CR>

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
