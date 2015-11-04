" Vim syntax file
" Language: h2o
" Maintainer: Atsushi Mori <negima1976@negima.mobi>
" Version: 0.2
" URL: https://github.com/negima1976/h2o.vim

function! h2oconfigtest#s:H2oconfigtest() abort "{{{
  w
    if has('win32') || has('gui_running')
      let l:cmd = "!"
    else
      let l:cmd = "!clear && "
    endif

  let l:name = expand("%:p")
  if (&ft == 'vim')
  elseif (l:name =~ '\v^/etc/h2o/h2o.conf') | excute 1:cmd.'/usr/local/bin/h2o -c '.l:name.' -t'
  else
  endif
endfunction "}}}
