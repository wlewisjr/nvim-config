return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})
		vim.keymap.set("n", "<leader>gf", function()
			conform.format({})
		end, {})
	end,
}
