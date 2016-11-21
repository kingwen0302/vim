## vim配置（erlang开发环境）

1. 依赖
  > `Python 2.7`
  > `Git`
  > `ctags`
  > `grep`
  > `TortoiseSVN`
  > 将上述文件加入环境变量

1. 执行`install.sh`

1. 在`.vimrc`中添加(For Windows Users)：
  
  ```
## ~/.vim为git根目录
let g:my_vimrc_dir = "~/.vim"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
```

1. 使用Bundle安装插件

  > `打开vim`->`BundleInstall`->`完成`  
  > `进入g:my_vimrc_dir/bundle/YouCompleteMe/`->`./install.sh` 

1. 配置

  - 项目配置
    cfg.vim

  - 菜单配置
    def_menu.vim

  - SVN配置
    tortoisesvn.vim

  - 文件查询
    ctrlp.vim(vimscript实现，性能偏低)
    leaderf.vim(python实现，性能较好)
