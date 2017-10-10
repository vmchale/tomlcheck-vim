# tomlcheck-vim

## Installation

Install [tomlcheck](https://hackage.haskell.org/package/tomlcheck).
Then install this plugin (example using
[vim-plug](https://github.com/junegunn/vim-plug)) by adding the following to
your `.vimrc`:

```vim
Plug 'vmchale/tomlcheck-vim'
```

## Configuration

Put the following in your `.vimrc`:

```vim
let g:syntastic_toml_checkers = [ 'tomlcheck' ]
```
