
" ==================
" js, php
"autocmd BufNewFile *.js,*.php exec ":call Setfilehead()"
"func Setfilehead()
"    if expand("%:e") == 'php'
"        call setline(1, "<?php")
"    elseif expand("%:e") == 'js'
"        call setline(1, '//JavaScipt file')
"    elseif expand("%:e") == 'cpp'
"        call setline(1, '//c++ file')
"    endif
"    call append(1, '/***********************************************')
"    call append(2, '#')
"    call append(3, '#      Filename: '.expand("%"))
"    call append(4, '#')
"    call append(5, '#        Author: liuwenyan@zuoyebang.com')
"    call append(6, '#   Description: ---')
"    call append(7, '#        Create: '.strftime("%Y-%m-%d %H:%M:%S"))
"    call append(8, '# Last Modified: '.strftime("%Y-%m-%d %H:%M:%S"))
"    call append(9, '***********************************************/')
"    call append(10, '') 
"endfunc




" ==================
" .c .cpp .cc
autocmd BufNewFile *.c,*.cpp,*.cc exec ":call SetCFileHead()"
func SetCFileHead()
    call append(0, '// Author: wooistxx (wooistxx@gmail,outlook.com)')
    call append(1, '// Create: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(2, '// Description: ')
    call append(3, '')
endfunc


" ==================
" .h .hpp
autocmd BufNewFile *.h,*.hpp exec ":call SetHFileHead()"
func SetHFileHead()
    call append(0, '// Author: wooistxx (wooistxx@gmail,outlook.com)')
    call append(1, '// Create: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(2, '// Description: ')
    call append(3, '')
    call append(4, '#ifndef _'.toupper(expand("%:t:r")).'_H_')
    call append(5, '#define _'.toupper(expand("%:t:r")).'_H_')
    call append(6, '#ifdef __cplusplus')
    call append(7, 'extern "C"')
    call append(8, '{')
    call append(9, '#endif')
    call append(10,'')
    call append(11,'#ifdef __cplusplus')
    call append(12,'}')
    call append(13,'#endif // __cplusplus')
    call append(14,'')
    call append(15,'')
    call append(16,'#endif // '.toupper(expand("%:t:r")).'_H_')
    call append(17,'')
endfunc


" ==================
" .python
autocmd BufNewFile *.py exec ":call SetPythonFileHead()"
func SetPythonFileHead()
    call append(0, '#!/usr/bin/python')
    call append(1, '# -*- coding: utf-8 -*-')
    call append(2, '# Author: wooistxx (wooistxx@gmail,outlook.com)')
    call append(3, '# Create: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(4, '# Desciption: ')
    call append(5, '')
endfunc


" ==================
" .sh
autocmd BufNewFile *.sh exec ':call SetShFileHead()'
func SetShFileHead()
    call append(0, '#!/bin/bash')
    call append(1, '# -*- coding: utf-8 -*-')
    call append(2, '# Author: wooistxx (wooistxx@gmail,outlook.com)')
    call append(3, '# Create: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(4, '# Desciption: ')
    call append(5, '')
endfunc




