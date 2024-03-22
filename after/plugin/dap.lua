-- DAP

vim.keymap.set('n', '<F5>', '<cmd>lua require"dap".continue()<CR>')
vim.keymap.set('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>')
vim.keymap.set('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>')
vim.keymap.set('n', '<F12>', '<cmd>lua require"dap".step_out()<CR>')
vim.keymap.set('n', '<leader>b', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<leader>B', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
vim.keymap.set('n', '<leader>lp', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
vim.keymap.set('n', '<leader>dr', '<cmd>lua require"dap".repl.open()<CR>')

-- local dap = require('dap')
-- local dapui = require('dapui')
-- require('dapui').setup()
-- require('nvim-dap-virtual-text').setup()
--
-- dap.listeners.after.event_initialized['dapui_config'] = function()
--     dapui.open()
-- end
-- dap.listeners.before.event_terminated['dapui_config'] = function()
--     dapui.close()
-- end
-- dap.listeners.before.event_exited['dapui_config'] = function()
--     dapui.close()
-- end
--
-- -- C#
-- dap.adapters.coreclr = {
--     type = 'executable',
--     command = 'C:\\Users\\rafai\\netcoredbg\\netcoredbg.exe',
--     args = { '--interpreter=vscode' }
-- }
--
-- dap.configurations.cs = {
--     {
--         name = 'Launch',
--         type = 'coreclr',
--         request = 'launch',
--         program = function()
--             return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
--         end,
--     }
-- }
