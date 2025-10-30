return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({
			auto_close = true,
			auto_preview = false,
			outline = {
				keys = {
					jump = { "<Tab>", "<CR>" },
				},
			},
		})
	end,
}
