local M = {
  "norcalli/nvim-colorizer.lua",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

function M.config()
  local colorizer = require "colorizer"
  colorizer.setup()
end

return M


