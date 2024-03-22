-- local has_words_before = function()
--   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
-- end

return {
  {
    "onsails/lspkind.nvim"
  },
  {
    "hrsh7th/nvim-cmp",

    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      cmp.setup({
        -- experimental = { ghost_text = true },
        -- snippet = {
        --   expand = function(args)
        --     require("luasnip").lsp_expand(args.body)
        --   end
        -- },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered()
        },

        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol",
            max_width = 50,
            symbol_map = { Copilot = "" }
          })
        },

        sorting = {
          priority_weight = 2,
          comparators = {
            -- require("copilot_cmp.comparators").prioritize,

            -- Below is the default comparitor list and order for nvim-cmp
            cmp.config.compare.offset,
            -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.recently_used,
            cmp.config.compare.locality,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
        mapping = {
          ["<Up>"] = cmp.mapping.select_prev_item(),
          ["<Down>"] = cmp.mapping.select_next_item(),
          ["<Left>"] = cmp.mapping.select_prev_item(),
          -- ["<Right>"] = cmp.mapping.select_next_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(),
            { "i", "c" }),
          ["<C-e>"] = cmp.mapping.close(),
          -- ["<CR>"] = cmp.mapping.confirm({
          -- behavior = cmp.ConfirmBehavior.Insert,
          -- select = true
          -- }),
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),

          -- ["<Tab>"] = vim.schedule_wrap(function(fallback)
          --   if cmp.visible() and has_words_before() then
          --     cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          --   else
          --     fallback()
          --   end
          -- end),
        },
        -- ordered by priority
        sources = cmp.config.sources({
          { name = "copilot",                group_index = 2 },
          { name = "nvim_lsp",               keyword_length = 1 },
          { name = "nvim_lsp_signature_help" },
          { name = "luasnip" },
          { name = "path" },
          { name = "nvim_lua" }
        }, {
          { name = 'buffer' },
        })
      })

      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(), -- Tab for selection (arrows needed for selecting past items)
        sources = { { name = "buffer" } }
      })

      cmp.setup.cmdline({ ":" }, {
        mapping = cmp.mapping.preset.cmdline(), -- Tab for selection (arrows needed for selecting past items)
        sources = { { name = "cmdline" }, { name = "path" } }
      })
    end
  }, "hrsh7th/cmp-buffer", "hrsh7th/cmp-cmdline", "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-nvim-lsp-signature-help",
  "hrsh7th/cmp-path",
  -- {
  --   "L3MON4D3/LuaSnip",
  --   lazy = false,
  --   dependencies = { "saadparwaiz1/cmp_luasnip" },
  --   keys = {
  --     {
  --       "<leader><leader>;",
  --       function() require("luasnip").jump(1) end,
  --       desc = "Jump forward a snippet placement",
  --       mode = "i",
  --       noremap = true,
  --       silent = true
  --     }, {
  --     "<leader><leader>,",
  --     function() require("luasnip").jump(-1) end,
  --     desc = "Jump backward a snippet placement",
  --     mode = "i",
  --     noremap = true,
  --     silent = true
  --   }
  --   },
  --   config = function()
  --     require("luasnip.loaders.from_lua").load({ paths = "~/.snippets" })
  --   end
  -- }
}
