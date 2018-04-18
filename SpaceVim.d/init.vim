"=============================================================================
" dark_powered.vim --- Dark powered mode of SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" Load SpaceVim APIs: {{{
let s:JOB = SpaceVim#api#import('job')
let s:JSON = SpaceVim#api#import('data#json')
" }}}<Paste>

" SpaceVim Options: {{{
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:spacevim_colorscheme = 'gruvbox'
" }}}

" SpaceVim Layers: {{{
call SpaceVim#layers#load('ctrlp')
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('github')
call SpaceVim#layers#load('git')
call SpaceVim#layers#load('VersionControl')
call SpaceVim#layers#load('tags')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('colorscheme',
      \ {
      \ 'random-theme' : 0,
      \ })
call SpaceVim#layers#load('lang#typescript')
call SpaceVim#layers#load('lang#markdown',
      \ {
      \ 'enableWcwidth' : 1,
      \ 'listItemIndent' : 1,
      \ }
      \ )
" }}}


