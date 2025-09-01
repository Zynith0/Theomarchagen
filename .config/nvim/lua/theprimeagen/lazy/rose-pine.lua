return {
	'rose-pine/neovim',
	config = function()
		require("rose-pine").setup({
			variant = "moon",
			disable_background = true,
			styles = {
				bold = true,
				italic = false,
				-- transparency = true,
			},
			palette = {
				moon = {
					base = '#000000',
				},
			},
		})
		vim.cmd.colorscheme "rose-pine-moon"
	end
}
