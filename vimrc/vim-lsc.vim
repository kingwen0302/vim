" let g:lsc_server_commands = {
"     \ 'erlang': 'localhost:10000',
"     \}
"
" let g:lsc_server_commands = {
"      \ 'erlang': {
"      \    'command': 'erlang_ls',
"      \  },
"      \}
"
" let g:lsc_server_commands = {
"     \ 'rust': {
"     \    'command': 'rls',
"     \    'workspace_config': {
"     \        'clippy_preference': 'on',
"     \    },
"     \  },
"     \}

" let g:lsc_auto_map = {
"    \ 'GoToDefinition': '<C-]>',
"    \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
"    \ 'FindReferences': 'gr',
"    \ 'NextReference': '<C-n>',
"    \ 'PreviousReference': '<C-p>',
"    \ 'FindImplementations': 'gI',
"    \ 'FindCodeActions': 'ga',
"    \ 'Rename': 'gR',
"    \ 'ShowHover': v:true,
"    \ 'DocumentSymbol': 'go',
"    \ 'WorkspaceSymbol': 'gS',
"    \ 'SignatureHelp': 'gm',
"    \ 'Completion': 'completefunc',
"    \}
