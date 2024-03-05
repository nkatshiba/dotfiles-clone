return {
  "echasnovski/mini.surround",
  opts = {
    mappings = {
      add = "gsa",
      delete = "gsd",
      find = "gsf",
      find_left = "gsF",
      highlight = "gs?",
      replace = "gsr",
      update_n_lines = "gsn",
    },
    custom_surroundings = {

      -- <x>
      ["1"] = { output = { left = "<", right = ">" } },
      -- <">
      ["2"] = { output = { left = '"', right = '"' } },
      ["@"] = { output = { left = '"', right = '"' } },
      -- <'>
      ["'"] = { output = { left = "'", right = "'" } },
      ["a"] = { output = { left = "'", right = "'" } },
      ["A"] = { output = { left = '"', right = '"' } },
      -- <{>
      ["{"] = { output = { left = '{', right = '}' } },
      ["}"] = { output = { left = '{ ', right = ' }' } },
      -- <[>
      ["["] = { output = { left = "[", right = "]" } },
      ["]"] = { output = { left = "[ ", right = " ]" } },
      -- <(>
      ["("] = { output = { left = '(', right = ')' } },
      [")"] = { output = { left = '( ', right = ' )' } },
      -- <```>
      ["c"] = { output = { left = '```\n', right = '\n```' } },
      -- <`>
      ["?"] = { output = { left = '`', right = '`' } },

      ["#"] = { output = { left = ' # ', right = '' } },

      ["/"] = { output = { left = '// ', right = '' } },


    },
  },
}
