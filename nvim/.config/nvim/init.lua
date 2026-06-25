-- 开启真彩色（Neovim 0.10+ 默认开，老版本可显式写）
vim.opt.termguicolors = true

-- 清除背景色，透出终端背景
local function set_transparent()
  vim.api.nvim_set_hl(0, "Normal",      { bg = "NONE", ctermbg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalNC",    { bg = "NONE", ctermbg = "NONE" })
  vim.api.nvim_set_hl(0, "NonText",     { bg = "NONE", ctermbg = "NONE" })
  vim.api.nvim_set_hl(0, "SignColumn",  { bg = "NONE", ctermbg = "NONE" })
  vim.api.nvim_set_hl(0, "LineNr",      { bg = "NONE", ctermbg = "NONE" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", ctermbg = "NONE" })
end

-- 初始执行
set_transparent()

-- 切换 colorscheme 后重新应用（很重要！）
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_transparent,
})

-- require("tokyonight").setup({ transparent = true })
