-- Botstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Setup lazy.nvim
require('lazy').setup({
  spec = {
    -- import your plugins
    { import = 'plugins' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker =
    { enabled = true,
      notify = false,
    },
  change_detection = {
    notify = false,
  },
})

-- Предпочтительный способ управлять плагинами с помощью lazy.nvim это использовать каталог ~/.config/lua/plugins,
-- загружать, настраивать каждый плагин в отдельном файле и возвращать содержимое этого файла в виде таблицы lua

local bufferline = require('bufferline')
bufferline.setup({
  options = {
    -- style_preset = bufferline.style_preset.no_italic,
    -- or you can combine these e.g.
    style_preset = {
      bufferline.style_preset.no_italic,
      --bufferline.style_preset.no_bold
    },
    -- change buffer numbers format
    numbers = function(opts)
      --return string.format('%s|%s', opts.id, opts.raise(opts.ordinal))
      return string.format('%s:', opts.id)
    end,
    separator = true,
    separator_style = 'slope',
  }
})

-- empty setup using defaults
require('lualine').setup({
  options = {
    theme = 'onedark'
  }
})

require('telescope').setup()
require('telescope-ag').setup()

-- Set the colorscheme to tokyonight using a protected call in case it isn't installed
local status, _ = pcall(vim.cmd, 'colorscheme tokyonight')
-- local status, _ = pcall(vim.cmd, 'colorscheme kanagawa')


--[[
-- см.: https://github.com/caenrique/buffer-term.nvim
-- нужно понять как сделать кеймап не здесь, а вместе с остальными сочетаниями клавиш
local buffer_term = require('buffer-term')

buffer_term.setup({
  terminal_options = {
      start_insert = true,
      buf_listed = true,
      no_numbers = true,
  }
})
vim.keymap.set({ 'n', 't' }, ';a', function() buffer_term.toggle('a') end)
]]

