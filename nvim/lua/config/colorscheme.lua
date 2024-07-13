local opt = vim.opt

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-night]]

-- Neovide Config
vim.g.neovide_transparency = 0.9 
vim.o.guifont = "Agave Nerd Font Mono:h13" -- text below applies for VimScript

