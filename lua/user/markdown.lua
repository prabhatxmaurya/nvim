-- Define function to toggle Markdown preview

vim.cmd([[
function! StopMarkdownPreview()
  if exists('g:mkdp_is_ready') && g:mkdp_is_ready
    let g:mkdp_auto_start = 0
    call mkdp#stop()
  endif
endfunction
]])
