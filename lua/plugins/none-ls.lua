return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    {
      "mason-org/mason.nvim",
      opts = { ensure_installed = { "gomodifytags", "impl" } },
    },
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.gofumpt,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

    -- Format Lua files on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.lua",
      callback = function()
        vim.lsp.buf.format()
      end,
    })

    -- Format TypeScript/JavaScript files on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
      callback = function()
        vim.lsp.buf.format()
      end,
    })

    -- Format Go files on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
}
