return {
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup({
        mappings = {
          expand = { "<CR>", "<2-LeftMouse>" },
          open = "o",
          remove = "d",
          edit = "e",
          repl = "r",
        },
        layouts = {
          {
            elements = {
              "scopes",
              "breakpoints",
              "stacks",
              "watches",
            },
            size = 40, -- ширина или высота панели
            position = "left", -- left, right, top, bottom
          },
          {
            elements = {
              "repl",
              "console",
            },
            size = 10,
            position = "bottom",
          },
        },
        floating = {
          max_height = 0.9,
          max_width = 0.5,
          border = "single",
          mappings = { close = { "q", "<Esc>" } },
        },
        windows = { indent = 1 },
      })
    end,
  },
}
