return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		-- Example setup for lspsaga
		require("lspsaga").setup({
			-- Keybindings
			-- You can map LSP-related actions to keys for convenience
			-- See the default keymap settings at: https://github.com/glepnir/lspsaga.nvim#default-keymaps
			ui = {
				-- The floating window will be rounded
				border = "none", -- options: 'none', 'single', 'double', 'rounded', 'solid', 'shadow'
				-- Highlighting the current line in the floating window
				winblend = 0, -- transparency of floating windows
				-- Use icon for diagnostic signs
				diagnostic_header = { " ", " ", " ", " " },
				colors = {
					normal_bg = "#282828", -- Background color
					border_bg = "#3C3836", -- Border color
				},
			},
			-- Enable or disable certain features
			symbol_in_winbar = {
				enable = true, -- Enable or disable showing symbols in the status line
				separator = " ", -- Symbol separator in winbar
			},
			-- Customize diagnostic signs
			diagnostic = {
				enable = true,
				signs = {
					error = "",
					warn = "",
					info = "",
					hint = "",
				},
			},
			-- You can further fine-tune the LSP settings with these options
			lightbulb = {
				enable = false,
				enable_in_insert = true,
				sign = "💡", -- The lightbulb icon for code actions
				virtual_text = false,
			},
			hover = {
				enable = true, -- Enable hover functionality
				border = "rounded", -- Hover window border style
				max_width = 80, -- Max width for hover window
				max_height = 40, -- Max height for hover window
			},
			rename = {
				enable = true, -- Enable renaming function
				border = "rounded",
			},
		})
	end,
}
