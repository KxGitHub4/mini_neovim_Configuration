return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			{ desc = "Fuzzy find files" },
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			{ desc = "Fuzzy find in files" },
		},
	},
	opts = {},
	config = function()
		require("fzf-lua").setup({
			-- Example: Customize floating window
			winopts = {
				height = 0.8,
				width = 0.8,
				--		row = 0.1,
				--		col = 0.1,
				border = "rounded",
			},
			-- Example: Customize keybindings
			keybindings = {
				fzf = {
					["<C-k>"] = "half-page-up",
					["<C-j>"] = "half-page-down",
				},
				buffers = {
					["<C-d>"] = "delete_buffer",
				},
			},
			-- Example: Use ripgrep for file searching
			files = {
				cmd = "rg --files --hidden --glob !.git",
			},
		})
	end,
}
