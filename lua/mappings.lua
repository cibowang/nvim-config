require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
vim.keymap.set('', '<C-p>', function()
      opts = {}
      opts.cmd = 'fd --color=never --hidden --type f --type l --exclude .git'
      local base = vim.fn.fnamemodify(vim.fn.expand('%'), ':h:.:S')
      if base ~= '.' then
        -- if there is no current file,
        -- proximity-sort can't do its thing
        opts.cmd = opts.cmd .. (" | proximity-sort %s"):format(vim.fn.shellescape(vim.fn.expand('%')))
      end
      opts.fzf_opts = {
        ['--scheme']    = 'path',
        ['--tiebreak']  = 'index',
        ["--layout"]    = "default",
      }
      require'fzf-lua'.files(opts)
end)

vim.keymap.set('n', '<leader>;', function()
      require'fzf-lua'.buffers({
        -- just include the paths in the fzf bits, and nothing else
        -- https://github.com/ibhagwan/fzf-lua/issues/2230#issuecomment-3164258823
        fzf_opts = {
          ["--with-nth"]      = "{-3..-2}",
          ["--nth"]           = "-1",
          ["--delimiter"]     = "[:\u{2002}]",
          ["--header-lines"]  = "false",
        },
        header = false,
      })
end)
