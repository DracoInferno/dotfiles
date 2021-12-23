" Match all words ending by one or two char after a '_'
syn match Typedef "\<[a-zA-Z_][a-zA-Z0-9_]*_[a-z]\{1,2}\>"
" Match c operators
syn match cOperator '[\{\}\(\)\[\]\+\-\*\^\?<>=&\|!;\.,:]'
syn match cOperator '\/\/|\*\@!' " only '/' not '//' or '/*'
" Match Uppercase words (can contain numbers, '_' & 'x') not followed by '('
syn match cConstant '\<[A-Z_0-9x]\+\>(\@!'
