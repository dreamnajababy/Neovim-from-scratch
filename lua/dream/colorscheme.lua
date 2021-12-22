vim.g.gruvbox_contrast_dark = "hard"
vim.o.background = "dark"
local colorscheme = "gruvbox"
--local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

