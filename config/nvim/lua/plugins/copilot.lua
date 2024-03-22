return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    config = function()
      require("copilot").setup()
    end,
    opts = {
      suggestion = {
        enabled = false,
        accept = "<Tab>",
        auto_trigger = true
      },
      panel = { enabled = false },
      filetypes = {
        go = true,
        markdown = true,
        help = true,
      },
    },
  },
}
-- return {
--   {
--     "github/copilot.vim",
--   }
-- }
