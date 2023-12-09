-- function for transparency
function Colormypencils()
    vim.api.nvim_set_hl(0,"Normal",{bg="none"})
end
local vopt = vim.opt
local keyset = vim.keymap.set

vopt.nu = true
vopt.rnu = true
vopt.guicursor = ""
vopt.tabstop = 2
vopt.softtabstop = 2
vopt.shiftwidth = 2
vopt.expandtab = true
vopt.smartindent = true
vopt.wrap = true

vopt.undodir = os.getenv("HOME") .. "/.vim/undo"
vopt.undofile = true
vopt.hlsearch = false
vopt.incsearch = true
vopt.termguicolors = true

vopt.updatetime = 250
keyset('n', 'U', '<cmd>redo<CR>')
keyset('v', '<M-j>', ":m '>+1<CR>gv=gv")
keyset('v', '<M-k>', ":m '<-2<CR>gv=gv")

keyset('n', '<C-d>', "<C-d>zz")
keyset('n', '<C-u>', "<C-u>zz")

keyset('n', 'n', 'nzzzv')
keyset('n', 'N', 'nzzzv')

-- for this eg given below
keyset('x', "<leader>p", "\"_dP")
-- say we have foo and bar delete and paste over
keyset('n', '<leader>y', "\"+y")
keyset('v', '<leader>y', "\"+y")
keyset('n', '<leader>Y', "\"+Y")

keyset('n', "<leader>d", "\"_d")
keyset('v', "<leader>d", "\"_d")

keyset('i', "<C-c>", "<Esc>")

keyset('n', "<F3>", function() vim.lsp.buf.format { timeout = 20000 } end)

keyset("n", "<C-k>", "<cmd>cnext<CR>zz")
keyset("n", "<C-j>", "<cmd>cprev<CR>zz")
keyset("n", "<leader>k", "<cmd>lnext<CR>zz")
keyset("n", "<leader>j", "<cmd>lprev<CR>zz")
keyset("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keyset('n', '<C-c>', '<cmd>q!<CR>')

-- Resize with arrows
keyset("n", "<C-Up>", ":resize -2<CR>")
keyset("n", "<C-Down>", ":resize +2<CR>")
keyset("n", "<C-Left>", ":vertical resize -2<CR>")
keyset("n", "<C-Right>", ":vertical resize +2<CR>")


keyset("n", "<C-h>", "<C-w>h")
keyset("n", "<C-j>", "<C-w>j")
keyset("n", "<C-k>", "<C-w>k")
keyset("n", "<C-l>", "<C-w>l")

keyset('n', '<leader>pv', vim.cmd.Ex)
