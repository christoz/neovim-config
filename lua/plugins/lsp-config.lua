return {
  {
  'williamboman/mason.nvim',
  config = function()
    require('mason').setup()
  end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'ts_ls', 'tailwindcss' }
      }) 
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      -- Configure diagnostic display
      vim.diagnostic.config({
        virtual_text = true,  -- Show error text inline
        signs = true,         -- Show signs in the sign column
        underline = true,     -- Underline errors
        update_in_insert = false,  -- Don't update diagnostics while typing
        severity_sort = true, -- Sort by severity
      })

      -- Customize diagnostic signs
      local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      -- Get capabilities from nvim-cmp for LSP completion
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      -- Create autocmd to start LSP servers for specific filetypes
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'lua' },
        callback = function()
          vim.lsp.start({
            name = 'lua_ls',
            cmd = { 'lua-language-server' },
            root_dir = vim.fs.root(0, { '.luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml', 'stylua.toml', 'selene.toml', 'selene.yml', '.git' }),
            capabilities = capabilities,
          })
        end,
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
        callback = function()
          vim.lsp.start({
            name = 'ts_ls',
            cmd = { 'typescript-language-server', '--stdio' },
            root_dir = vim.fs.root(0, { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' }),
            capabilities = capabilities,
          })
        end,
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'html', 'css', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'svelte' },
        callback = function()
          vim.lsp.start({
            name = 'tailwindcss',
            cmd = { 'tailwindcss-language-server', '--stdio' },
            root_dir = vim.fs.root(0, { 'tailwind.config.js', 'tailwind.config.ts', 'tailwind.config.cjs', '.git' }),
            capabilities = capabilities,
          })
        end,
      })

      -- Set keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
    end
  }
}
