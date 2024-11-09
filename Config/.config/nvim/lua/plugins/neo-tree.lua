return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    otps = {
      sources = { "filesystem" },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = { ".git" },
        },
      },
    },
  },
}
