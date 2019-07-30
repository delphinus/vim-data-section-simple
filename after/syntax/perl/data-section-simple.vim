let s:syntax = get(g:, 'data_section_simple_syntax', 'perl')

unlet b:current_syntax
execute 'syn include @perl syntax/' . s:syntax . '.vim'
let b:current_syntax = 'perl'

" copied from the original perl.vim
if get(g:, 'perl_fold', 0)
  syntax region perlDATA		start="^__DATA__$" skip="." end="." contains=@perlDATA,perlDataSection fold
else
  syntax region perlDATA		start="^__DATA__$" skip="." end="." contains=@perlDATA,perlDataSection
endif

syn region perlDataSection start=/^__DATA__\n\_^\(@@\s\)\@=/ end=/\%$/ contains=perlDataSectionDATA,perlDataSectionBody keepend
syn match perlDataSectionDATA /^__DATA__/ contained
syn region perlDataSectionBody start=/^@@\s.*$/ end=/\(\_^@@\s*\)\@=/ contains=perlDataSectionHeader,@perl keepend contained
syn match perlDataSectionHeader /^@@\s.*$/ contains=perlDataSectionHeaderKeyword contained
syn match perlDataSectionHeaderKeyword /^@@/ nextgroup=perlDataSectionName skipwhite contained
syn match perlDataSectionName /.*$/ contained
hi def link perlDataSectionDATA perlDATA
hi def link perlDataSectionHeaderKeyword Keyword
hi def link perlDataSectionName Function
