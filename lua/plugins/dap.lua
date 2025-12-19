return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = { ensure_installed = { "delve" } },
    },
    {
      "leoluz/nvim-dap-go",
      opts = {},
    },
  },
}
