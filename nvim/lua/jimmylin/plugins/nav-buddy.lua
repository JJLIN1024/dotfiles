return {
	"neovim/nvim-lspconfig",
	keys = {
          {"<leader>nv", "<cmd>Navbuddy<cr>", desc = "Nav"},
    },
	dependencies = {
		{
			"SmiteshP/nvim-navbuddy",
			dependencies = {
				"SmiteshP/nvim-navic",
				"MunifTanjim/nui.nvim"
			},
			opts = { lsp = { auto_attach = true } }
		}
	},
}
