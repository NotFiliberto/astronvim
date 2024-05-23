return {
  "echasnovski/mini.map",
  version = "*",
  keys = {
    { "<leader>um", function() require("mini.map").toggle() end, desc = "Toggle minimap" },
  },
  opts = function()
    local map = require "mini.map"
    return {
      integrations = {
        map.gen_integration.builtin_search(),
        map.gen_integration.diagnostic {
          error = "DiagnosticFloatingError",
          warn = "DiagnosticFloatingWarn",
          info = "DiagnosticFloatingInfo",
          hint = "DiagnosticFloatingHint",
        },
      },
      symbols = {
        encode = map.gen_encode_symbols.dot "4x2",
      },
      window = {
        side = "right",
        width = 25,
        winblend = 15,
        show_integration_count = false,
      },
    }
  end,
}
