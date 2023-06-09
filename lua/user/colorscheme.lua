local M = {
  "rebelot/kanagawa.nvim",
  --    "mcchrish/zenbones.nvim",
  --  "folke/tokyonight.nvim",
  --  commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  -- dependencies = {
  --   {
  --     "rktjmp/lush.nvim",
  --     lazy = false,
  --   },
  -- },
}

M.name = "kanagawa"
function M.config()
  local kanakawa = require 'kanagawa'
  kanakawa.setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {},
        all = {
          ui = {
            bg_gutter = "none"
          }
        } },
    },
    overrides = function(colors) -- add/modify highlights
    local theme = colors.theme
    return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- Save an hlgroup with dark background and dimmed foreground
        -- so that you can use it where your still want darker windows.
        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

        -- Popular plugins that open floats will link to NormalFloat by default;
        -- set their background accordingly if you wish to keep them dark and borderless
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
      dark = "dragon",           -- try "dragon" !
      light = "lotus"
    },

    -- dark = true,
    -- transparent = true,
    -- italic_comments = true,
    -- italic_keywords = true,
    -- italic_functions = true,
    -- itali
  })

  -- setup must be called before loading
  vim.cmd("colorscheme kanagawa")
end
return M
