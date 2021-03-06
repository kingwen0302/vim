# vim配置（erlang开发环境）

### 安装

1. 依赖  
安装**相同架构**的[vim](https://github.com/vim/vim-win32-installer/releases)、[Python 2.7](www.python.org)、[Git](https://git-for-windows.github.io)、[ctags](https://sourceforge.net/projects/ctags/)、[TortoiseSVN](http://subversion.tigris.org)、[LUA](http://lua-users.org/wiki/LuaBinaries)  
可选安装[the_silver_searcher(ag)](https://github.com/ggreer/the_silver_searcher)、`grep`, [ripgrep](https://github.com/BurntSushi/ripgrep)  
并加入`path`环境变量中  

1. 执行`install.sh`  

1. 在`配置文件`(windows: gvim安装目录下的_vimrc; linux: ~/.vimrc)中添加：  
    > let g:my_vimrc_dir = "~/.vim"  
    > exe "source " .  g:my_vimrc_dir . "/vimrc/myvimrc"  

1. 使用vim-plug安装插件  
    > `打开vim`->`PlugInstall`->`完成`  

### 配置

|配置|描述|
|:---|:---|
|项目配置[project_config.vim]|根目录确定方式:<br/>1. 项目根目录存在`.projectile`文件<br/>2. 项目根目录存在`.svn`,`.hg`,`.git`|
|菜单配置[def_menu.vim]|
|SVN配置[tortoisesvn.vim]|
|文件查询|ctrlp.vim: vimscript实现<br/>leaderf.vim: python实现|

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
NORMAL模式下：`Ctrl+v`或者 `Ctrl-q`(windows) -> hjkl选择 -> `yy`|`dd` -> 找到其他位置 -> `p`

1. 常用快捷键  

|快捷键|注释|命令|
|----|----|---|
|u|撤销|
|Ctrl+r|redo|
|zz|将光标居中|
|ve|选中一个单词|
|gg=G|格式化代码|
|:Autoformat|格式化代码|
|列选=|格式化选中代码|
|F1|帮助|
|F2|显示关闭菜单栏|:call Menu_bar()|
|F3|命令行菜单显示:emenu|
|F4|关闭当前文件|:bdelete|
|Ctrl-F4|关闭窗口|:close|
|F5|复制当前标签到新标签|:tab split|
|F6|跳转到光标所在文本的文件|:call FindFile()|
|F7|显示文件目录,会自动修改字体|:TlistToggle|
|F9|光标处文本项目内搜索|:call SearchWordByGrep()|
|Ctrl+F9|弹框输入字符串在项目内搜索|:call SearchWordDialog()|
|F10|聚焦菜单栏|
|F11|项目快速切换|:call ChangeProj()|
|F12|项目内文件搜索|:call LeaderF_func() <br/>:call CtrlP_func()|
|Ctrl-Enter|最近打开的项目文件|:call MruCwd()|
|Shift-Enter|最近打开文件|:LeaderfMru <br/>:CtrlPMRUFiles|
|Ctrl-w o|最大化当前窗口|
|:vs|垂直分割|
|:sp|水平分割|
|CtrlP简单使用|`<c-t>`新标签也打开<br/>`<c-x>`水平分割<br/>`<c-v>`垂直分割<br/>`<c-z><c-o>`在新标签也同时打开多个文件<br/>|

## 多用户
`vim.exe --cmd "let $HOME = 'C:/Users/用户名/.config/vim1'"`  
`vim.exe --cmd "let $HOME = 'C:/Users/用户名/.config/vim2'"`  
将`vimrc`放到`vimX`目录下

## neovim
`_vimrc` => `C:\Users\USERNAME\AppData\Local\nvim\init.vim`
