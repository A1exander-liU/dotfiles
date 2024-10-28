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
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
