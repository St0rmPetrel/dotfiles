-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("mason not found")
	return
end

mason.setup()

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("mason_lspconfig not found")
	return
end

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"lua_ls",
		"gopls",
		"rust_analyzer",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})


local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("mason_null_ls not found")
	return
end

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"stylua", -- lua formatter
		"goimports",
		"rustfmt",
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})