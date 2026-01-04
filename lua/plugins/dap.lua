return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = { ensure_installed = { "delve" } },
    },
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "leoluz/nvim-dap-go",
    "theHamsta/nvim-dap-virtual-text",
  },
  keys = {
    -- All under <leader>d for Debug
    { "<leader>dc", function() require("dap").continue() end, desc = "Debug: Continue" },
    { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
    { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "Debug: Conditional Breakpoint" },
    { "<leader>di", function() require("dap").step_into() end, desc = "Debug: Step Into" },
    { "<leader>do", function() require("dap").step_over() end, desc = "Debug: Step Over" },
    { "<leader>dO", function() require("dap").step_out() end, desc = "Debug: Step Out" },
    { "<leader>dr", function() require("dap").run_last() end, desc = "Debug: Run Last" },
    { "<leader>du", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    -- Setup DAP UI
    dapui.setup({
      icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
      controls = {
        icons = {
          pause = "⏸",
          play = "▶",
          step_into = "⏎",
          step_over = "⏭",
          step_out = "⏮",
          step_back = "b",
          run_last = "▶▶",
          terminate = "⏹",
          disconnect = "⏏",
        },
      },
    })

    -- Auto-open/close UI on debug events
    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    -- Setup virtual text
    require("nvim-dap-virtual-text").setup()

    -- Setup Go debugging
    -- Determine delve path
    local mason_delve = vim.fn.stdpath("data") .. "/mason/bin/dlv"
    local delve_path = "dlv" -- default
    if vim.fn.executable(mason_delve) == 1 then
      delve_path = mason_delve
    elseif vim.fn.exepath("dlv") ~= "" then
      delve_path = vim.fn.exepath("dlv")
    end

    require("dap-go").setup({
      delve = {
        path = delve_path,
      },
    })
  end,
}
