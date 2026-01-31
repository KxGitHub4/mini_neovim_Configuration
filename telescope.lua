return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	keys = {
		-- === 文件与搜索 ===
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (查找文件)" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep (全局搜索)" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files (最近打开的文件)" },
		{ "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Grep Word (搜索光标下的词)" },

		-- === Buffer 专用 ===
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers (切换缓冲区)" },

		-- === Git 相关 ===
		{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git Commits (查看提交历史)" },
		{ "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Git Status (查看变更)" },

		-- === 代码诊断与帮助 ===
		{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics (代码诊断/报错)" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help (查找帮助文档)" },
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps (查找快捷键)" },

		-- === 当前 Buffer 内容搜索 ===
		{
			"<leader>fz",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			desc = "Fuzzy Find in Buffer (当前文件内模糊搜)",
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}
