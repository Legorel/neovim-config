local lspconfig = require('lspconfig')

-- Servers with default settings.
local servers = { 'clangd' }
for _, server in ipairs(servers) do
	lspconfig[server].setup {}
end

-- Servers with custom settings.
table.insert(servers, 'basedpyright')
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

-- Only add zls if on linux.
is_windows = require('os_util').is_windows
if not is_windows then
	table.insert(servers, 'zls')
	lspconfig.zls.setup {
		cmd = { '/home/legorel/opt/zig-linux-x86_64-0.14.0/zls' },
		settings = {
			zls = { zig_exe_path = '/home/legorel/opt/zig-linux-x86_64-0.14.0/zig' }
		},
	}
end

-- Return the list of servers
return {servers = servers}
