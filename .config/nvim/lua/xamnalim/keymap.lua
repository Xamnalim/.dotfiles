-- clear highlight on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- diagnostic keymaps
vim.keymap.set(
    "n",
    "[d",
    vim.diagnostic.goto_prev,
    { desc = "Go to previous [D]iagnostic message" }
)
vim.keymap.set(
    "n",
    "]d",
    vim.diagnostic.goto_next,
    { desc = "Go to next [D]iagnostic message" }
)
vim.keymap.set(
    "n",
    "<leader>vd",
    vim.diagnostic.open_float,
    { desc = "[V]iew [D]iagnostic error messages" }
)
vim.keymap.set(
    "n",
    "<leader>q",
    vim.diagnostic.setloclist,
    { desc = "Open diagnostic [Q]uickfix list" }
)

-- disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

--  CTRL+<hjkl> to switch between windows
vim.keymap.set(
    "n",
    "<C-h>",
    "<C-w><C-h>",
    { desc = "Move focus to the left window" }
)
vim.keymap.set(
    "n",
    "<C-l>",
    "<C-w><C-l>",
    { desc = "Move focus to the right window" }
)
vim.keymap.set(
    "n",
    "<C-j>",
    "<C-w><C-j>",
    { desc = "Move focus to the lower window" }
)
vim.keymap.set(
    "n",
    "<C-k>",
    "<C-w><C-k>",
    { desc = "Move focus to the upper window" }
)

-- format buffer
vim.keymap.set("n", "<C-f>", "<cmd>Format<CR>", { desc = "Format buffer" })

-- moving selected lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- jump back to cursor position after join
vim.keymap.set("n", "J", "mzJ`z")

-- center view after jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", '"+y', { desc = "[Y]ank to clipboard"})
vim.keymap.set("v", "<leader>y", '"+y', { desc = "[Y]ank to clipboard"})
vim.keymap.set("v", "<leader>Y", '"+Y', { desc = "[Y]ank to clipboard"})
vim.keymap.set("n", "<leader>d", '"_d', { desc = "[D]elete without registering"})
vim.keymap.set("v", "<leader>d", '"_d', { desc = "[D]elete without registering"})
vim.keymap.set("x", "<leader>p", '"_dP')


