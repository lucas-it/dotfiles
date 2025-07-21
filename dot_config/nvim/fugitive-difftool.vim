" https://github.com/tpope/vim-fugitive/issues/132#issuecomment-570844756
"
command! DiffCurrentQuickfixEntry call s:diff_current_quickfix_entry()

function! s:diff_current_quickfix_entry() abort
  " How to map Enter to custom command EXCEPT in quick fix?
  " https://vi.stackexchange.com/a/3129
  "
  " nnoremap <expr> <silent> <CR> &buftype ==# 'quickfix' ? ("\<CR> :2wincmd p \<BAR> :quit \<BAR> :DiffCurrentQuickfixEntry \<CR>") : "\<CR>"

  " Cleanup windows
  "
  " for window in getwininfo()
  "   if window.winnr !=? winnr() && bufname(window.bufnr) =~? '^fugitive:'
  "     exe 'bdelete' window.bufnr
  "   endif
  " endfor

  cc
  call s:diff_current_quickfix_mappings()

  let qf = getqflist({'context': 0, 'idx': 0})

  if get(qf, 'idx') && type(get(qf, 'context')) == type({}) && type(get(qf.context, 'items')) == type([])
    let diff = get(qf.context.items[qf.idx - 1], 'diff', [])

    for i in reverse(range(len(diff)))
      exe (i ? 'rightbelow' : 'leftabove') 'vert diffsplit' fnameescape(diff[i].filename)
      call s:diff_current_quickfix_mappings()
      wincmd p
    endfor
  endif
endfunction

function! s:diff_current_quickfix_mappings() abort
  nnoremap <silent> <buffer>]q :quit <BAR> :cnext <BAR> :call <sid>diff_current_quickfix_entry()<CR>
  nnoremap <silent> <buffer>[q :quit <BAR> :cprevious <BAR> :call <sid>diff_current_quickfix_entry()<CR>
endfunction

