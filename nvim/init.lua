
require("marcusoft.plugins-setup")

--Core--
require("marcusoft.core.options")
require("marcusoft.core.keymaps")
require("marcusoft.core.colorscheme")
require("marcusoft.core.diagnostic")

--Ad-Hoc-Plugins--
require("marcusoft.plugins.nvim-tree")
require("marcusoft.plugins.lualine")
require("marcusoft.plugins.colorizer")
require("marcusoft.plugins.nvim-treesitter")
-- require("marcusoft.plugins.fzf")

--LSP----
require("marcusoft.LSP.mason")
require("marcusoft.LSP.mason-lspconfig")
require("marcusoft.LSP.lspconfig")
require("marcusoft.LSP.cmp")
