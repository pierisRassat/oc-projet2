let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dev/oc-devweb/projects/project2/oc-projet2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 index.html
badd +309 css/style.css
badd +6 README.md
badd +133 css/mobile.css
badd +40 css/tablet.css
argglobal
%argdel
$argadd index.html
$argadd css/style.css
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit css/style.css
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 33 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 107 + 83) / 166)
exe '2resize ' . ((&lines * 33 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 56 + 83) / 166)
argglobal
if bufexists(fnamemodify("css/style.css", ":p")) | buffer css/style.css | else | edit css/style.css | endif
if &buftype ==# 'terminal'
  silent file css/style.css
endif
balt index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
2argu
balt index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,7fold
9,26fold
28,59fold
61,73fold
75,179fold
181,256fold
258,319fold
321,351fold
353,376fold
378,392fold
let &fdl = &fdl
1
normal! zc
let s:l = 392 - ((6 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 392
normal! 0
wincmd w
exe '1resize ' . ((&lines * 33 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 107 + 83) / 166)
exe '2resize ' . ((&lines * 33 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 56 + 83) / 166)
tabnext
edit index.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 101 + 83) / 166)
exe 'vert 2resize ' . ((&columns * 64 + 83) / 166)
argglobal
1argu
balt css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
4,14fold
18,29fold
32,35fold
38,96fold
101,234fold
237,305fold
309,345fold
349,384fold
let &fdl = &fdl
4
normal! zc
18
normal! zc
32
normal! zc
38
normal! zc
101
normal! zc
237
normal! zc
309
normal! zc
349
normal! zc
let s:l = 246 - ((230 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 246
normal! 01|
wincmd w
argglobal
1argu
if bufexists(fnamemodify("css/style.css", ":p")) | buffer css/style.css | else | edit css/style.css | endif
if &buftype ==# 'terminal'
  silent file css/style.css
endif
balt index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 101 + 83) / 166)
exe 'vert 2resize ' . ((&columns * 64 + 83) / 166)
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
