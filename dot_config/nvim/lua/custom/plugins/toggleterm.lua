return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = '<C-t>',
        shade_terminals = true,
        float_opts = {
          border = 'single',
          -- border = 'shadow',
          -- border = 'curved',
          -- like `size`, width and height can be a number or function which is passed the current terminal
          width = 150,
          height = 50,
          winblend = 10,
          zindex = 1,
        },
        direction = 'float',
        close_on_exit = false, -- close the terminal window when the process exits
        auto_scroll = true, -- automatically scroll to the bottom on terminal output
        terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals

         winbar = {
            enabled = true,
            name_formatter = function(term) --  term: Terminal
              return term.name
            end
          },
      })
    end
  }
}
