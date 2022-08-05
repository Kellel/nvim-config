require'nvim-treesitter.configs'.setup {
	ensure_installed = { "bash", "go", "gomod", "gowork" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
