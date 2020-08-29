" Add line numbers to the left.
set number "displays numbers for each line
set numberwidth=5 "wider number bar
set relativenumber "makes the numberse relative

"for security reasons, disable modelines.
set modelines=0
set nomodeline

" Toggle all the on screen markings (for OS copying)
function! ToggleOnScreenMarks()
  set number!
  set relativenumber!
  "set list!
  "IndentGuidesToggle
endfunction
nmap <F3> :call ToggleOnScreenMarks()<CR>


