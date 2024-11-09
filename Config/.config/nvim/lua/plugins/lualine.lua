return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local function nagisa()
        return [[Nagisa ☕🌿]]
      end
      table.insert(opts.sections.lualine_x, 1, { nagisa })
    end,
  },
}
