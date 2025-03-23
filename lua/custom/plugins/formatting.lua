return {
  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' },
    config = function()
      -- Configure ufo plugin settings
      -- Set up fold options
      vim.o.foldcolumn = '0' -- Display fold indicators in the left column (without numbers)
      vim.o.foldlevel = 99 -- Open all folds by default
      vim.o.foldlevelstart = 99 -- Start with all folds opened
      vim.o.foldenable = true -- Enable folding
      vim.o.signcolumn = 'yes' -- Enable sign column for showing fold signs
      vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

      require('ufo').setup {
        provider_selector = function(bufnr, filetype, buftype)
          return { 'lsp', 'indent' } -- Choose your preferred folding methods
        end,
      }

      -- Key mappings for folding
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds) -- Open all folds
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds) -- Close all folds
    end,
  },
}
