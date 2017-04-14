let g:erlang_skel_dir = g:my_vimrc_dir . '/vimrc/erlang_skels'
let g:erlang_skel_author ="zhaoming"
let g:erlang_skel_mail ="zhaoming@chuangyunet.com"

command ErlangModule      :ErlangTemplete 1 module
command ErlangApplication :ErlangTemplete 1 application
command ErlangSupervisor  :ErlangTemplete 1 supervisor
command ErlangGenServer   :ErlangTemplete 1 gen_server_1
command ErlangGenFsm      :ErlangTemplete 1 gen_fsm
command ErlangGenEvent    :ErlangTemplete 1 gen_event
command ErlangHeader      :ErlangTemplete 1 header
command ErlangModuleHead  :ErlangTemplete 2 module_head
