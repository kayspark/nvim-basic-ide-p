local M = {
    "mcchrish/zenbones.nvim",
--  "folke/tokyonight.nvim",
--  commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  dependencies = {
    {
      "rktjmp/lush.nvim",
      lazy = false,
    },
  },
}

M.name = "zenburned"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

vim.g.set_background = "dark"
vim.g.zenburned = {
  darkness = "warm", -- "stark" or "warm"
  solid_line_nr = true,
  lighten_comments = 50,
  lighten_n0n_text = 45,
  colorize_diagnostic_underline_text = true
}
return M
