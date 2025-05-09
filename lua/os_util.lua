sysname = vim.uv.os_uname().sysname

is_windows = sysname == 'Windows_NT'


return {sysname = sysname, is_windows = is_windows}



