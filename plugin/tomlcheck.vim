if exists('g:__TOMLCHECK_VIM__')
    finish
endif
let g:__TOMLCHECK_VIM__ = 1

let g:syntastic_toml_checkers = [ 'tomlcheck' ]

command! TomlCheck SyntasticCheck tomlcheck
map <Plug>TomlCheck :TomlCheck<CR>
