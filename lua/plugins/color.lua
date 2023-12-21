return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      vim.cmd.colorscheme('catppuccin')
    end,
    event = "UIEnter"
  },
 {'ThePrimeagen/vim-be-good',event="InsertEnter"}
}
