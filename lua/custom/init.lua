-----------------
--- KEYBINDS

-- Set tab length to 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==')
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==')
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv")

vim.keymap.set('n', '<Down>', 'gj')
vim.keymap.set('n', '<Up>', 'gk')
vim.keymap.set('i', '<Down>', '<C-o>gj')
vim.keymap.set('i', '<Up>', '<C-o>gk')

-- Remap d and dd to delete without yanking (using the black hole register)
vim.keymap.set('n', 'd', '"_d', { noremap = true })
vim.keymap.set('n', 'dd', '"_dd', { noremap = true })

-- Map Shift+d (D) and Shift+dd (DD) to delete normally (yanking as usual)
vim.keymap.set('n', 'D', function()
  vim.cmd 'normal! d'
end, { noremap = true })
vim.keymap.set('n', 'DD', function()
  vim.cmd 'normal! dd'
end, { noremap = true })

-----------------
--- COPILOT

vim.keymap.set('i', '<C-Right>', '<Plug>(copilot-accept-word)')
