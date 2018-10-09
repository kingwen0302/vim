let g:erlang_skel_dir = g:my_vimrc_dir . '/vimrc/erlang_skels'
let g:erlang_skel_author ="zhaoming"
let g:erlang_skel_mail ="zhaoming@chuangyunet.com"
let g:erlang_skel_coding = 'utf-8'

command -nargs=* ErlangModule      :ErlangTemplete 1 module <f-args>
command -nargs=* ErlangApplication :ErlangTemplete 1 application <f-args>
command -nargs=* ErlangSupervisor  :ErlangTemplete 1 supervisor <f-args>
command -nargs=* ErlangGenServer   :ErlangTemplete 1 gen_server_1 <f-args>
command -nargs=* ErlangGenServer1  :ErlangTemplete 1 gen_server <f-args>
command -nargs=* ErlangGenFsm      :ErlangTemplete 1 gen_fsm <f-args>
command -nargs=* ErlangGenEvent    :ErlangTemplete 1 gen_event <f-args>
command -nargs=* ErlangHeader      :ErlangTemplete 1 header <f-args>
command -nargs=* ErlangModuleHead  :ErlangTemplete 2 module_head <f-args>
