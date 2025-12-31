return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("clangd")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pyright")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("html-lsp")
			vim.lsp.enable("eslint")
			vim.lsp.enable("vtsls")
			vim.lsp.enable("emmet_ls")
			-- 配置诊断标记符号
			local signs = {
				Error = "",
				Warn = "",
				Info = "",
				Hint = "",
			}
			-- 定义标记符号 for type, icon in pairs(signs) do vim.fn.sign_define("DiagnosticSign" .. type, {
			vim.diagnostic.config({
				virtual_text = {
					current_line = true,
				},
				float = {
					border = "rounded",
					source = "always",
				},
				signs = true,
				update_in_insert = false,
			})
		end,
	},
}
