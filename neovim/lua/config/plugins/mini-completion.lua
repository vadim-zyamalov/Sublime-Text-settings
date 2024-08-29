return {
  "echasnovski/mini.completion",
  version = false,
  dependencies = { "echasnovski/mini.icons" },
  -- event = "InsertEnter",
  config = function()
    require("mini.icons").setup()
    MiniIcons.tweak_lsp_kind()

    local pkg = require("mini.completion")
    pkg.setup {
      lsp_completion = {
        source_func = "completefunc",
        auto_setup = true,
      },
      window = {
        info = { border = "double" },
        signature = { border = "double" },
      },
    }
  end,
}
