return {
  {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter', -- Loads when entering insert mode (lazy loading)
    config = function()
      require('copilot').setup {
        panel = {
          enabled = true,
        },
        suggestion = {
          enabled = true,
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ['.'] = false,
        },
        copilot_node_command = 'node',
        server_opts_overrides = {},
      }
    end,
  },
}
