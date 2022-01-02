local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
[[  .____    .__      .__                  .__           __  .__                 .___                            ]],
[[|    |   |__|__  _|__| ____    ____    |__| ____   _/  |_|  |__   ____     __| _/______   ____ _____    _____  ]],
[[|    |   |  \  \/ /  |/    \  / ___\   |  |/    \  \   __\  |  \_/ __ \   / __ |\_  __ \_/ __ \\__  \  /     \ ]],
[[|    |___|  |\   /|  |   |  \/ /_/  >  |  |   |  \  |  | |   Y  \  ___/  / /_/ | |  | \/\  ___/ / __ \|  Y Y  \]],
[[|_______ \__| \_/ |__|___|  /\___  /   |__|___|  /  |__| |___|  /\___  > \____ | |__|    \___  >____  /__|_|  /]],
[[        \/                \//_____/            \/             \/     \/       \/             \/     \/      \/ ]],
[[]],
[[]],
[[]],
}

dashboard.section.buttons.val = {
	dashboard.button("p", " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
	dashboard.button("t", " Find text", ":Telescope live_grep <CR>"),
	dashboard.button("f", " Find file", ":Telescope find_files <CR>"),
	dashboard.button("r", " Recent files", ":Telescope oldfiles <CR>"),
	dashboard.button("q", " Quit", ":qa<CR>"),
	-- dashboard.button("e", " New file", ":ene <BAR> startinsert <CR>"),
	-- dashboard.button("s", "  Find Session", ":Telescope sessions save_current=false <CR>"),
	-- dashboard.button("c", "  Config", ":e ~/.config/nvim/init.lua <CR>"),
}
-- 
local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "\nBecoming is the key."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
