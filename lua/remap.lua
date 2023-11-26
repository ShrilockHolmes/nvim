-- function for transparency
function Colormypencils(color)
	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0,"Normal", { bg = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat", { bg = "none"})
end
local vopt = vim.opt
local keyset = vim.keymap.set
vopt.rnu = true
vopt.guicursor = ""
vopt.tabstop = 4
vopt.softtabstop = 4
vopt.shiftwidth = 4
vopt.expandtab = true
vopt.smartindent = true

vopt.wrap = true

vopt.undodir=os.getenv("HOME") .. "/.vim/undo"
vopt.undofile = true
vopt.hlsearch = false
vopt.incsearch = true
vopt.termguicolors = true

vopt.updatetime = 250
keyset('n','U','<cmd>redo<CR>')
keyset('v','<M-j>',":m '>+1<CR>gv=gv")
keyset('v','<M-k>',":m '<-2<CR>gv=gv")

keyset('n','<C-d>',"<C-d>zz")
keyset('n','<C-u>',"<C-u>zz")

keyset('n','n','nzzzv')
keyset('n','N','nzzzv')

-- for this eg given below 
keyset('x',"<leader>p","\"_dp")
-- say we have foo and bar delete and paste over
keyset('n','<leader>y',"\"+y")
keyset('v','<leader>y',"\"+y")
keyset('n','<leader>Y',"\"+Y")

keyset('n',"<leader>d","\"_d")
keyset('v',"<leader>d","\"_d")

keyset('i',"<C-c>","<Esc>")

keyset('n',"<F3>", function()vim.lsp.buf.format{timeout = 20000} end)

keyset("n", "<C-k>", "<cmd>cnext<CR>zz")
keyset("n", "<C-j>", "<cmd>cprev<CR>zz")
keyset("n", "<leader>k", "<cmd>lnext<CR>zz")
keyset("n", "<leader>j", "<cmd>lprev<CR>zz")
keyset("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keyset('n','<C-c>','q!')
