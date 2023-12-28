return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event="UIEnter",
    config=function ()
    vim.cmd.colorscheme('catppuccin')
    end
  },
}
