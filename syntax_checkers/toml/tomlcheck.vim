if exists('g:loaded_syntastic_toml_tomlcheck_checker')
    finish
endif
let g:loaded_syntastic_toml_tomlcheck_checker = 1

let g:syntastic_toml_tomlcheck_exec = 'tomlcheck'

function! SyntaxCheckers_toml_tomlcheck_GetLocList() dict

    let makeprg = self.makeprgBuild({
                \ 'exe': self.getExec(),
                \ 'args': '--file',
                \ 'fname': shellescape(expand('%'))})

    let errorformat =
                \ '%E%f:%l:%c,' .
                \ '%E%m,'

    let loclist = SyntasticMake({
            \ 'makeprg': makeprg,
            \ 'errorformat': errorformat })

    return loclist

endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'toml',
    \ 'name': 'tomlcheck'})
