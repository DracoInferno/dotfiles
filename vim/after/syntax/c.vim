" Match all words ending by one or two char after a '_'
syn match Typedef "\<[a-zA-Z_][a-zA-Z0-9_]*_[a-z]\{1,2}\>"
" Match c operators
syn match Operator '[\{\}\(\)\[\]\+\-\*\^\?<>=&\|!]'
syn match Operator '\/\/|\*\@!' " only '/' not '//' or '/*'
" Match Uppercase words (can contain numbers, '_' & 'x') not followed by '('
syn match Constant '\<[A-Z_0-9x]\+\>(\@!'