" File: syntax_checkers/proto/protolint.vim
" Author: yoheimuta
" Description: Syntastic checker for Protocol Buffer

if exists('g:loaded_syntastic_proto_protolint_checker')
    finish
endif
let g:loaded_syntastic_proto_protolint_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_proto_protolint_IsAvailable() dict
    return executable(self.getExec())
endfunction

function! SyntaxCheckers_proto_protolint_GetLocList() dict
    let makeprg = self.makeprgBuild({
        \ 'args_before': '-reporter=unix' })

    let errorformat = '%f:%l:%c: %m'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'proto',
    \ 'name': 'protolint'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
