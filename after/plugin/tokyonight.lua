vim.cmd[[colorscheme kanagawa-dragon]]

require("tokyonight").setup({
  style = "day",
  light_style = "light",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "normal",
    floats = "dark",
  },
  sidebars = { "qf", "help" },
  day_brightness = 0.9,
  hide_inactive_statusline = false,
  dim_inactive = false,
  lualine_bold = false,
})
