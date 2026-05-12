# Neovim 快捷键速查表

> `\` = `<leader>`，即按 `\` 开始
> 按 `<leader>` 后稍等，which-key 会弹出提示

---

## 查找 (`<leader>f`)

| 快捷键 | 用法 |
|--------|------|
| `<leader>ff` | Telescope 查找文件 |
| `<leader>fg` | Telescope 全文搜索（内容） |
| `<leader>fb` | Telescope 搜索已打开缓冲区 |
| `<leader>fh` | Telescope 搜索帮助文档 |
| `<leader>ft` | 打开/关闭文件树（nvim-tree） |
| `<leader>fw` | Flash 快速跳转到当前页任意位置 |

## LSP 操作 (`<leader>g`)

| 快捷键 | 用法 |
|--------|------|
| `<leader>gg` | 跳转到定义 |
| `<leader>gf` | 查看所有引用位置 |
| `<leader>gh` | 悬停查看文档 |
| `<leader>gr` | 重命名变量/函数 |
| `<leader>ga` | 代码操作（如快速修复） |
| `<leader>gj` | 跳转到下一个错误/警告 |
| `<leader>go` | 打开/关闭代码大纲（aerial，右侧面板） |

## 缓冲区操作 (`<leader>b`)

| 快捷键 | 用法 |
|--------|------|
| `<leader>bn` | 切换到下一个缓冲区（标签页） |
| `<leader>bp` | 切换到上一个缓冲区 |
| `<leader>bc` | 选择要关闭的缓冲区 |
| `<leader>bo` | 关闭除当前外的所有缓冲区 |
| `<leader>bg` | 弹出菜单选择缓冲区 |

## 调试 (`<leader>d`)

| 快捷键 | 用法 |
|--------|------|
| `<leader>db` | 切换断点 |
| `<leader>dc` | 开始/继续调试 |
| `<leader>di` | 单步进入 |
| `<leader>do` | 单步跳过 |
| `<leader>dO` | 单步跳出 |
| `<leader>dt` | 打开/关闭 REPL 控制台 |
| `<leader>dr` | 重新运行上次调试 |
| `<leader>du` | 打开/关闭调试 UI 面板 |
| `<leader>dx` | 终止调试 |

## Vimwiki (`<leader>w`)

| 快捷键 | 用法 |
|--------|------|
| `<leader>ww` | 打开 Vimwiki 首页 |
| `<leader>wt` | 新标签页打开 Vimwiki |
| `<leader>ws` | 选择 wiki 文件 |

## 其他 (`<leader>n`)

| 快捷键 | 用法 |
|--------|------|
| `<leader>nh` | 清除搜索高亮 |

## 代码补全（插入模式）

| 快捷键 | 用法 |
|--------|------|
| `Tab` | 选择下一个补全项 / 展开代码片段 |
| `Shift+Tab` | 选择上一个补全项 / 跳转回片段 |
| `Ctrl+k` | 上一项 |
| `Ctrl+j` | 下一项 |
| `Ctrl+b` | 滚动文档（上） |
| `Ctrl+f` | 滚动文档（下） |
| `Ctrl+e` | 取消补全 |
| `Enter` | 确认选中项 |
| `gc`（普通/可视模式） | 注释/取消注释当前行或选中区域 |
| `gb`（普通/可视模式） | 注释/取消注释块 |

## Codeium AI 补全（插入模式）

| 快捷键 | 用法 |
|--------|------|
| `Ctrl+w` | 接受 AI 补全建议 |
| `Ctrl+x` | 清除 AI 补全建议 |
| `Ctrl+q` | 切换上一个 AI 补全建议 |
| `Ctrl+e` | 切换下一个 AI 补全建议 |

## Flash 跳转（普通模式）

| 快捷键 | 用法 |
|--------|------|
| `s` | Flash 跳转（输入目标字符跳转） |
| `S` | Flash Treesitter 跳转（按语法单位跳） |
| `r`（操作符等待） | Remote Flash（配合操作符使用） |
| `r`（可视/操作符） | Treesitter 搜索 |
| `Ctrl+s`（命令行） | 切换 Flash 搜索模式 |
