require 'core.options'
require 'core.keymaps'

--- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup { -- Package manager
  { import = 'plugins.lualine' },
  { import = 'plugins.neotree' },
  { import = 'plugins.colortheme' },
  { import = 'plugins.bufferline' },
  { import = 'plugins.treesitter' },
  { import = 'plugins.telescope' },
  { import = 'plugins.lsp' },
  { import = 'plugins.autocompletion' },
  { import = 'plugins.autoformatting' },
  { import = 'plugins.gitsigns' },
  { import = 'plugins.alpha' },
  { import = 'plugins.indent-blanklines' },
  { import = 'plugins.misc' },
  { import = 'plugins.comment' },
}
