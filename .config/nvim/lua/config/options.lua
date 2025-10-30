-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

opt.spell = true
opt.colorcolumn = "120"
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.spelllang = { "ru", "en" }

vim.diagnostic.config({
  virtual_text = false, -- Отключает текстовые сообщения
  signs = true, -- Оставляет значки
  underline = true, -- Подчеркивание ошибки
  update_in_insert = false, -- Не обновлять в режиме вставки
})
