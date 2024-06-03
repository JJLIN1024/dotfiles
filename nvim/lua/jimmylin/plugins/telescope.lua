return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
	local builtin = require('telescope.builtin')
    telescope.setup({})
    telescope.load_extension("fzf")

	-- Lists files in your current working directory, respects .gitignore
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files in CWD"})
	-- Lists searches that were executed recently, and reruns them on <cr>
	vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
	vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
	vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
	vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
	vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
	vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
	vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
	vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
	vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

	vim.keymap.set('n', '<leader>ps', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })
	end)

  end,
}
