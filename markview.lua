-- For `plugins/markview.lua` users.
return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	keys = {
		{ "<leader>s", "<CMD>Markview splitToggle<CR>", { desc = "Toggles `splitview` for current buffer." } },
	},

	-- Completion for `blink.cmp`
	-- dependencies = { "saghen/blink.cmp" },
}
