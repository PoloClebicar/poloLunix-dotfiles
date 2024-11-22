return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {"lua", "dart"},
			sync_install = false,
			auto_install = true,
		})
	end,
}
