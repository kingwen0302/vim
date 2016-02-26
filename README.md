## vim配置（erlang开发环境）

1. 执行`install.sh`

2. 在`.vimrc`中添加：
```
## ~/.vim为git根目录
let g:my_vimrc_dir = "~/.vim"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
```
