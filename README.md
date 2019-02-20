# 模块化vim配置

具体见[我的博客](https://lijianxun.top/2019/01/10/cjsafwdjl0011w36mhjwm859i/)

## init.vim

完全使用Pendragon的脚本, 只是根据自己的文件夹进行了路径修改.

```vim
for file in split(glob("/root/.config/nvim/container/*.vim"), '\n')
    exe 'source' file
endfor
```

应该很好理解, 遍历执行container路径下所有后缀为vim的文件.

## container

用来存放所有配置.

### deincfg.vim

加载dein插件, 需要注意以下几点:

- 添加插件的时候不使用`add`方法, 而是使用`load_toml`.
- dein的路径一定要根据自身安装情况修改.
- 如果想在启动vim的时候, 检测有未安装插件并安装的话, 记得解注:

    ```vim
    if dein#check_install()
      call dein#install()
    endif
    ```

### mapping.vim

用于存放快捷键.

例如

`map <F2> :NERDTreeToggle<CR>`

来开/关目录树.

### normal.vim

根据情况放一些常用配置.

例如

`syntax on`

开启语法高亮.

## colors

用来存放自定义主题配色.

## ftplugin

用来放一些按需加载的配置, 例如我们可以根据文件类型, 使用不同的配置.

## plugin

 安装插件以后需要一些自定义配置, 可以将这些自定义配置以插件名称命名, 写到对应的vim文件下
 
## config

保存`toml`文件, 配合deincfg.vim, 在dein插件加载的时候导入toml里的插件.

例如

```toml
[[plugins]]
repo = 'davidhalter/jedi-vim'
```

如果你解注了上述的三行配置, 在启动vim的时候会自动检测插件的安装情况, 进行操作.

当然你要绑定`plugin`下的自定义配置, 可以在插件下紧跟着添加:

`hook_add = '/root/.config/nvim/container/plugin/jedi-vim.vim'`

来使自定义配置生效.

*私信了Pendragon, hook_add添加map映射, hook_source添加call的插件方法*

具体可以参考 > [\[dein.vim\] hook の便利な使い方](https://qiita.com/delphinus/items/cd221a450fd23506e81a)

主要是:

|钩子的名字|当它被执行时|
|---|---|
|hook_add|当dein.vim添加插件时|
|hook_source|就在加载插件之前|
|hook_post_source|插件加载后立即|
|hook_post_update|插件更新后立即生效|
|hook_done_update|更新所有插件后立即|

```
" ----------------------------------------- "
" 快捷键汇总
" leader: ,

" <Control-l> YCM 跳转到文档处
" <Control-q> xptemplate 自动补全片段

" <F2> 目录树
" <F3> TagList 展示
" <F7> Flake8检查
" <F8> 执行代码
" <F9> 宽度 +3
" <F10> 宽度 -3
" <F11> 高度 +3
" <F12> 高度 -3

" <leader>l 开启/关闭缩进提示线
" <leader>i 快速打断点 (自定义方法)
" <leader>gb git版本提示
" <leader>y Yapf格式化代码
" <leader>p 快速搜索
" <leader>P 快速执行PEP8格式化
" <leader>fp 显示最近打开的文件
" <leader>f 利用YCM插件调转到方法或定义
" <leader>d 利用jedi插件调转到方法或定义
" <leader>g 使用jedi的goto跳转
" <leader>,. 括号高亮开启或关闭
" <leader>fu 进入当前文件的函数列表搜索
" <leader>fU 搜索当前光标下单词对应的函数
" <leader>cc   加注释
" <leader>cu   解开注释
" <leader>c<space>  加上/解开注释, 智能判断 toggle
" <leader>cy   先复制, 再注解(p可以进行黏贴)

" buffer切换
" [- 向左
" [= 向右
" :ls 列出所有buffer
" :bd{number}删除对应buffer

" vim-fugitive 使用命令
" :Gblame 显示提交者记录
" :Gdiff 显示代码差异
" :Gstatus 显示代码状态
" :Gedit 开启或关闭侧边栏
" ----------------------------------------- "
```
