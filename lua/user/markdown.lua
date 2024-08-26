-- Define function to toggle Markdown preview
vim.cmd([[
function! ToggleMarkdownPreview()
  if exists('g:mkdp_is_ready') && g:mkdp_is_ready
    if exists('g:mkdp_auto_start') && g:mkdp_auto_start == 1
      call markdown#preview#stop()
    else
      call markdown#preview#start()
    endif
  else
    call markdown#preview#start()
  endif
endfunction
]])
