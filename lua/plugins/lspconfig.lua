local lspconfig = require('lspconfig')

-- Servers with default settings.
local servers = { 'clangd' }
for _, server in ipairs(servers) do
	lspconfig[server].setup {}
end

-- Servers with custom settings.
lspconfig.basedpyright.setup {
	settings = {
		basedpyright = {
			analysis = {
				autoImportCompletions = true,
				autoSearchPaths = true,
				diagnosticMode = "openFilesOnly",
				typeCheckingMode = "standard",
				useLibraryCodeForTypes = true
			},
		},
	},
}

-- Return the list of servers
return {servers = { 'clangd', 'basedpyright' }}
