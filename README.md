# vim配置（erlang开发环境）

### 安装

1. 依赖
  安装并加入`path`环境变量中
  - [vim](https://github.com/vim/vim-win32-installer/releases)
  - `Python 2.7`  
  - `Git`  
  - `ctags`  
  - `grep`  
  - `TortoiseSVN`  

1. 执行`install.sh`

1. 在`.vimrc`中添加(For Windows Users)：
  ```shell
## ~/.vim为git根目录
let g:my_vimrc_dir = "~/.vim"
exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"
```

1. 使用vim-plug安装插件
  `打开vim`->`PlugInstall`->`完成`  
  `进入g:my_vimrc_dir/Plug/YouCompleteMe/`->`./install.sh` 

1. 配置

  - 项目配置
    cfg.vim
    根目录确定方式:
    1. 项目根目录存在`.projectile`文件
    1. 项目根目录存在`.svn`,`.hg`,`.git`

  - 菜单配置  
    def_menu.vim  

  - SVN配置  
    tortoisesvn.vim  

  - 文件查询  
    ctrlp.vim(vimscript实现，性能偏低)  
    leaderf.vim(python实现，性能较好)  

### 安装的插件

|插件|描述|
|----|----|
|grepper|字符串匹配|
|leaderf|文件模糊查询, 需要python2.7+|
|ctrlp|文件模糊查询|
|neocomplete|代码自动提示, 需要lua|
|tortoisesvn|

### vim使用小技巧

1. 粘贴代码

  NORMAL模式下：`set paste` -> 粘贴代码后 -> `set nopaste`

1. 行选

  NORMAL模式下: `V` -> 上下选择 -> `yy`|`dd` -> 找到其他位置 -> `p`

1. 列选

  NORMAL模式下：`Ctrl+v` -> hjkl选择 -> `yy`|`dd` -> 找到其他位置 -> `p`

1. 常用快捷键

|命令|注释|
|----|----|
|u|撤销|
|Ctrl+r|redo|
|zz|将光标居中|
|ve|选中一个单词|
|gg=G|格式化代码|
|:Autoformat|格式化代码|
|列选=|格式化选中代码|
|F1|帮助|
|F2|显示关闭菜单栏|
|F3|命令行菜单显示:emenu|
|F4|关闭当前文件|
|F5|复制当前标签到新标签|
|F6|跳转到光标所在文本的文件|
|F7|显示文件目录/BUFFER/tag,会自动修改字体|
|F9|光标处文本项目内搜索|
|Ctrl+F9|弹框输入字符串在项目内搜索|
|F10|聚焦菜单栏|
|F11|项目快速切换|
|F12|项目内文件搜索|
|Ctrl-Enter|最近打开文件|
|Shift-Enter|最近打开的项目文件|
|Ctrl-w o|最大化当前窗口|
|:vs|垂直分割|
|:sp|水平分割|
