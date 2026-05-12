# 自用 neovim 配置

## 前置安装

### Homebrew

Homebrew 是 Mac 上的软件包管理工具

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### im-select

用来智能切换输入法，例如在 nvim 中使用中文输入后，按下 ESC 键可以自动切换为英文输入法，避免保存、退出或其他命令不能顺利使用的尴尬。

```bash
brew tap daipeihust/tap
brew install im-select
```

### node、npm

这个不用多介绍了，安装 npm 的原因是，mason 这个插件需要 npm 来安装编程语言的依赖。如果系统中没有 npm，运行插件会报错。

```bash
# 安装nvm：
brew install nvm

# 配置nvm环境变量：
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# 安装 nodejs
nvm install node
```

## 使用截图

### 首页展示
![](https://s2.loli.net/2023/12/03/d7Utv8HPk5ElZ6R.png)

### 代码提示
![](https://s2.loli.net/2023/12/03/AuyCHFIWEUfJYZ4.png)

### 使用界面
![](https://s2.loli.net/2023/12/03/j79K2TwrLv5XqGm.png)