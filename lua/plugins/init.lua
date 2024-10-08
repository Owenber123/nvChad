return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "custom.lspconfig"
    end,
  },

  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   event = "VeryLazy",
  --   opts = function()
  --     return require "configs.null-ls"
  --   end,
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        -- "html",
        -- "css",
        -- "bash",
        -- "html",
        -- "javascript",
        -- "json",
        -- "markdown",
        -- "markdown_inline",
        -- "python",
        -- "query",
        -- "regex",
        -- "tsx",
        -- "typescript",
        -- "yaml",
      },
    },
  },
  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    -- event = "Lazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "😄")
    end,
  },
}
