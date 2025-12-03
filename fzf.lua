return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	keys = {
		{
			"<leader>fm",
			"<cmd>FzfLua marks<cr>",
			desc = "Fuzzy all marks",
		},
		{
			"<leader>ff",
			"<cmd>FzfLua files<cr>",
			desc = "Fuzzy find files",
		},
		{
			"<leader>fl",
			"<cmd>FzfLua live_grep<cr>",
			desc = "Fuzzy find in files",
		},
		{
			"<leader>fr",
			"<cmd>FzfLua registers<cr>",
			desc = "Fuzzy find in register",
		},
		{
			"<leader>fb",
			"<cmd>FzfLua buffers<cr>",
			desc = "Fuzzy find buffers",
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
		})
	end,
}
