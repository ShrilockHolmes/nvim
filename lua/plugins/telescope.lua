return {
       'nvim-telescope/telescope.nvim',branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim', {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}
  },
      config=function()
           local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")
      end,
      keys={
          {'<leader>ff','<cmd>Telescope find_files<CR>'},
          {'<leader>fo','<cmd>Telescope oldfiles <CR>'},
          {'<leader>fs',function()
              require('telescope.builtin').grep_string({search = vim.fn.input('Grep > ')})
          end},
      }
}
