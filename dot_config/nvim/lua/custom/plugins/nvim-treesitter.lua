-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   version = "*",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--     "MunifTanjim/nui.nvim",
--   },
--   config = function ()
--     require('neo-tree').setup {}
--   end,
-- }


return {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      config = function()
        require('nvim-treesitter.configs').setup {
          ensure_installed = { 'vim', 'lua' },
          highlight = {
            enable = true,
          },
          -- context_commentstring = {
            -- enable = true,
          -- },
        }
      end,
      dependencies = {
        {
          'JoosepAlviste/nvim-ts-context-commentstring',
          'luckasRanarison/tree-sitter-hypr',
          config = function()
            require('nvim-treesitter.parsers').get_parser_configs().hypr = {
              install_info = {
                url = 'https://github.com/luckasRanarison/tree-sitter-hypr',
                files = { 'src/parser.c' },
                branch = 'master',
              },
              filetype = 'hypr',
            }
          end,
        },
      },
    },

    {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end,
    }
