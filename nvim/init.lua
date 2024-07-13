-- ---------- Neovim基础配置 ----------

-- 插件管理器
require('config.lazyvim')
-- 基础设置
require('config.options')
-- 按键设置
require('config.keymaps')
-- 主题设置
require('config.colorscheme')

-- ---------- 插件配置 ----------
-- 状态栏
require("plugins.lualine")
-- 文件管理
require("plugins.nvim-tree")
-- 自动补全
require("plugins.treesitter")
-- LSP
require("plugins.lsp")
-- cmp
require("plugins.cmp")
-- 注释
require("plugins.comment")
-- 自动配对
require("plugins.autopairs")
-- 缓冲区
require("plugins.bufferline")
-- git
require("plugins.gitsigns")
-- telescope
require("plugins.telescope")
