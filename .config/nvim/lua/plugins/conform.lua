return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        black = {
          prepend_args = { "--line-length", "120" },
        },
      },
      formatters_by_ft = {
        ["typescript"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["svelte"] = { "prettier" },
        ["html"] = { "prettier" },
      },
    },
  },
}
