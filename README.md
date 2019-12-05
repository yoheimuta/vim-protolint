# vim-protolint

This provides Vim integration for protolint linting and fixing via the ALE engine.

## Installation

[protolint](https://github.com/yoheimuta/protolint) must be installed.
Note that the binary with **v0.22.0 or above** is supported

### Installation with Vim package management

In Vim 8 and NeoVim, you can install plugins easily without needing to use any
other tools. Simply clone the plugin into your pack directory.

```
mkdir -p ~/.vim/pack/git-plugins/start
# NOTE: Install ale if you haven't installed yet.
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
git clone --depth 1 https://github.com/yoheimuta/vim-protolint.git ~/.vim/pack/git-plugins/start/vim-protolint
```

## Usage

Add the following to your .vimrc.

```vim
let g:ale_linters = {
\   'proto': ['protolint'],
\}

let g:ale_fixers = {
\   'proto': ['ale#fixers#protolint#Fix'],
\}

" We recommend you set this.
let g:ale_lint_on_text_changed = 'never'

" You can remove comments below if you want to configure parameters.
" let g:ale_proto_protolint_executable = "/usr/local/bin/protolint"
" let g:ale_proto_protolint_config =
"            \ "/path/to/config/.protolint.yaml"

```

See [doc/ale-proto.txt](doc/ale-proto.txt) in more detail.
