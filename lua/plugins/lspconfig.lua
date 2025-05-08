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

lspconfig.zls.setup {
	cmd = { '/home/legorel/opt/zig-linux-x86_64-0.14.0/zls' },
	settings = {
		zls = { zig_exe_path = '/home/legorel/opt/zig-linux-x86_64-0.14.0/zig' }
	},
}

-- Return the list of servers
return {servers = { 'clangd', 'basedpyright' }}
