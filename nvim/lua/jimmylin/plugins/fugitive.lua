return {
    "tpope/vim-fugitive",
	config = function ()
		vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "git status"} )
		vim.keymap.set("n", "<leader>gvd", "<cmd>Gvdiff<CR>", { desc = "git status"} )
	end
}
