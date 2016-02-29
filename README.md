## vim配置（erlang开发环境）

1. 执行`install.sh`

2. 在`.vimrc`中添加：
  
  ```
## ~/.vim为git根目录
let g:my_vimrc_dir = "~/.vim"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
```

3. 使用Bundle安装插件

  > `打开vim`->`BundleInstall`->`完成`  
  > `进入g:my_vimrc_dir/bundle/YouCompleteMe/`->`./install.sh`  
