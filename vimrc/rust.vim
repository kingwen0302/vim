""
"" 添加环境变量:
"" HOME=c:\Users\Administrator
"" RUST_SRC_HOME=\path\to\your\rust\source\
"" RUST_SRC_PATH=%RUST_SRC_HOME%\src\
""
""
"" 开启rust的自动reformat的功能
let g:rustfmt_autosave = 1

"" 手动补全和定义跳转
set hidden
"" 这一行指的是你编译出来的racer所在的路径
let g:racer_cmd = "C:/Users/Administrator/.cargo\bin/racer.exe"
"" 这里填写的就是我们在1.2.1中让你记住的目录
let $RUST_SRC_PATH="C:/Program Files/Rust stable GNU 1.11/rustc-1.11.0/src"
