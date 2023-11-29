return {
 { 'rose-pine/neovim', name = 'rose-pine',event="UIEnter",config=function()
        require('rose-pine').setup({
            disable_background = true,
	disable_float_background = false,
        })
        vim.cmd.colorscheme('rose-pine')
 end}
}
