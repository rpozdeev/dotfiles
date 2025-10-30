return {
  {
    "nvim-neotest/neotest",
    optional = false,
    dependencies = {
      "nvim-neotest/neotest-python",
    },
    opts = {
      adapters = {
        ["neotest-python"] = {
          -- Extra arguments for nvim-dap configuration
          -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
          dap = { justMyCode = false },
          runner = "pytest",
          -- python = ".venv/bin/python",
        },
      },
    },
  },
}
