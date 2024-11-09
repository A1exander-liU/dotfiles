return {
  {
    "stevearc/oil.nvim",
    keys = {
      {
        "<leader>o",
        function()
          require("oil").toggle_float(LazyVim.root())
        end,
        desc = "Oil (Root Dir)",
      },
      {
        "<leader>O",
        function()
          require("oil").toggle_float()
        end,
        desc = "Oil (cwd)",
      },
    },
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
