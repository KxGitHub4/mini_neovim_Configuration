return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("clangd")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("ts_ls")
            -- 配置诊断标记符号
            local signs = {
                Error = "",
                Warn = "",
                Info = "",
                Hint = "",
            }
            -- 定义标记符号 for type, icon in pairs(signs) do vim.fn.sign_define("DiagnosticSign" .. type, {
                    text = icon,                       -- 使用图标作为符号
                    texthl = "DiagnosticSign" .. type, -- 设置高亮
                    numhl = "DiagnosticSign" .. type,  -- 设置行号高亮
                })
            end
            -- 配置诊断信息的显示方式
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
    }

