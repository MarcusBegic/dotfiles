-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
use("wbthomason/packer.nvim")

use("navarasu/onedark.nvim")

-- file explorer
use("nvim-tree/nvim-tree.lua")

-- vs-code like icons
use("nvim-tree/nvim-web-devicons")

-- statusline
use("nvim-lualine/lualine.nvim")

-- Colorizer
use("norcalli/nvim-colorizer.lua")

------MINA EGNA ------

-- Block Comment
use("tpope/vim-commentary")

--LSP Manager---
use("williamboman/mason.nvim")
use("williamboman/mason-lspconfig.nvim")

--LSP---
use("neovim/nvim-lspconfig")

--Syntax Highlighting --
use("nvim-treesitter/nvim-treesitter")

--Auto Complete --
use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
use 'L3MON4D3/LuaSnip' -- Snippets plugin

----Fuzzy-Finder------
--use { "ibhagwan/fzf-lua",
--  -- optional for icon support
--  requires = { "nvim-tree/nvim-web-devicons" }
--}

 if packer_bootstrap then
    require("packer").sync()
  end
end)
