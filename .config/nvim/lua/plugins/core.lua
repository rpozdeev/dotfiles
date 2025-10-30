return {
  {
    "christoomey/vim-tmux-navigator",
    event = "VimEnter",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
  },
  {
    {
      "keaising/im-select.nvim",
      event = "VimEnter",
      config = function()
        require("im_select").setup({
          default_command = "im-select",
        })
      end,
    },
  },
  -- { "tpope/vim-sleuth", event = "VeryLazy" },
  { "MunifTanjim/nui.nvim" },
  -- { "Pocco81/auto-save.nvim" },
}
