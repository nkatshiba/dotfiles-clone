return {
  {
    -- # OXOCARBO
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },

  {
    -- # DARK_FLAT

    "sekke276/dark_flat.nvim",
    priority = 1000,
  },

  {
    -- # CITRUSZEST
    "zootedb0t/citruszest.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    -- # ENFOCADO
    "wuelnerdotexe/vim-enfocado"
  },

  {
    -- # ONEDARKPRO
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },

  {
    "catppuccin/nvim", name = "catppuccin", priority = 1000,
    opts = {
        term_colors = true,
        transparent_background = false,
        styles = {
            comments = {},
            conditionals = {},
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
        },
        color_overrides = {
            mocha = {
                base = "#020202",
                mantle = "#020202",
                crust = "#020202",
            },
        },
        integrations = {
            telescope = {
                enabled = true,
                style = "nvchad",
            },
            dropbar = {
                enabled = true,
                color_mode = true,
            },
        },
  },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- # CITRUSZEST
      colorscheme = "citruszest",

      -- # OXOCARBO
      -- background = "dark",
      -- colorscheme = "oxocarbon",

      -- # ENFOCADO
      -- colorscheme = "enfocado",

      -- # ONEDARKPRO
      -- colorscheme = "onedarkpro",
            --
      -- # DARK_FLAT
      -- colorscheme = "dark_flat",
    },
  },
}
