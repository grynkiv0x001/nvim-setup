function SetSystemTheme()
	local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
	local result = handle and handle:read("*a") or ""

	if handle then
		handle:close()
	end

	if result:match("Dark") then
		vim.o.background = "dark"
		-- vim.cmd("colorscheme gruvbox") -- Change this to your dark theme
	else
		vim.o.background = "light"
		-- vim.cmd("colorscheme solarized") -- Change this to your light theme
	end
end

SetSystemTheme()
