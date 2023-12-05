-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "79"
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 边输入边搜索
vim.o.incsearch = true
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 主题设置
vim.o.background = "dark"
-- 配置热键
-- vim.g.mapleader = " "
