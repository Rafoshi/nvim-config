local previewers = require('telescope.previewers')
local max_size = 100000 -- Set your file size limit here (in bytes)

local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)

  local stat = vim.loop.fs_stat(filepath)
  if stat and stat.size > max_size then
    -- If the file is too large, don't show the preview
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, {"File too large to preview"})
  else
    -- If the file size is within the limit, show the preview
    previewers.buffer_previewer_maker(filepath, bufnr, opts)
  end
end

require('telescope').setup {
  defaults = {
    buffer_previewer_maker = new_maker,
    -- Other defaults configuration
  },
  -- Other Telescope configurations
}


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pe', builtin.diagnostics, {})
