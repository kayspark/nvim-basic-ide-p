local M = {
  "nvim-orgmode/orgmode",
  lazy = false,
  ft = "org",
  config = function()
    require "orgmode".setup()
  end,
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      commit = "226c1475a46a2ef6d840af9caa0117a439465500",
      event = "BufReadPost",
    },
  },
}

function M.config()
  local orgmode = require "orgmode"
  orgmode.setup_ts_grammar()
  orgmode.setup({
    org_todo_keywords = { "🟡(t)", "🟢(p)", "🔴(h)", "|", "☑️(d)", "🟠(w)" },
    org_todo_keyword_faces = {
      --        DELEGATED = ':background #FFFFFF :slant italic :underline on',
      TODO = ":background #000000 :foreground red", -- overrides builtin color for `TODO` keyword
    },
    mappings = {
      text_objects = {
        inner_heading = "iC",
        around_heading = "aC",
        inner_subtree = "iT",
        around_subtree = "aT",
        inner_heading_from_root = "iH",
        around_heading_from_root = "aH",
        inner_subtree_from_root = "iR",
        around_subtree_from_root = "aR",
      },
    },

    org_agenda_files = { "~/Org/*.org", "~/Org/org-roam/**/*" },
    org_default_notes_file = "~/Org/weekly_report/weekly_report.org",
  })
end
return M
