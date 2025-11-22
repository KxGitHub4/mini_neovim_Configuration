return {
	"folke/zen-mode.nvim",
	dependencies = {
		"folke/twilight.nvim",
	},
	config = function()
		require("zen-mode").setup({
			window = {
				backdrop = 0.95, -- 背景透明度
				width = 80, -- Zen 模式下的编辑宽度
				height = 0.9, -- 高度占终端90%
				options = {
					number = false,
					relativenumber = false,
					signcolumn = "no",
					cursorline = false,
				},
			},

			plugins = {
				options = {
					enabled = true,
					ruler = false, -- 隐藏 ruler（右下角行列信息）
					showcmd = false, -- 隐藏命令输入提示
				},

				twilight = { enabled = true }, -- ✨ 打开 Zen Mode 时自动启用 Twilight

				gitsigns = { enabled = false }, -- 隐藏 Git 标记
				tmux = { enabled = false }, -- 不自动调整 tmux 大小（可改 true）
				kitty = { enabled = false }, -- Tiling 终端支持（可改 true）
			},

			on_open = function()
				-- 打开 Zen Mode 时执行的自定义动作
				-- vim.cmd("set laststatus=0")  -- 例如：隐藏整个 statusline
			end,

			on_close = function()
				-- 离开 Zen Mode 后恢复
				-- vim.cmd("set laststatus=2")
			end,
		})
	end,
}
