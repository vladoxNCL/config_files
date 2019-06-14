call IMAP('EBL', "\\begin{block}{<++>}\<CR><++>\<CR>\\end{block}\<CR><++>", 'tex')
call IMAP('EBM', "\\begin{bmatrix*}[r] <++> \\end{bmatrix*}<++>", 'tex')
call IMAP('ECA', "\\begin{cases}\<CR><++>\<CR>\\end{cases}<++>", 'tex')
call IMAP('ECH', "\\begin{choices}\<CR>\\choice <++>\<CR>\\end{choices}<++>", 'tex')
call IMAP('EEC', "\\[\<CR><++>\<CR>\\]<++>", 'tex')
call IMAP('EFE', "\\begin{frame}[c]\<CR>\\frametitle{<++>}\<CR><++>\<CR>\\end{frame}\<CR><++>", 'tex')
call IMAP('EIN', "\\includegraphics[<++>]{<++>}<++>", 'tex')
call IMAP('EMU', "\\begin{multicols}{2}\<CR><++>\<CR>\\end{multicols}<++>", 'tex')
call IMAP('EPA', "\\begin{parts}\<CR>\\part[<++>] <++>\<CR>\\end{parts}<++>", 'tex')
call IMAP('EQU', "\\begin{questions}\<CR>\\question[<++>] <++>\<CR>\\end{questions}<++>", 'tex')
call IMAP('ESO', "\\begin{solution}\<CR><++>\<CR>\\end{solution}<++>", 'tex')
call IMAP('EVX', "\\begin{vmatrix*}[r] <++> \\end{vmatrix*}<++>", 'tex')
call IMAP(',t', "\\texttt{<++>}<++>", 'tex')

imap ,i <Plug>Tex_InsertItemOnThisLine
imap ,l <Plug>Tex_LeftRight
imap ,c <Plug>Tex_MathCal
imap ,b <Plug>Tex_MathBF
