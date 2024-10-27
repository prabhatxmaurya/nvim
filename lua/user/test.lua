-- lua/user/test.lua
return function()
	-- Set up vim-test plugin
	require("packer").use({
		"vim-test/vim-test",
		config = function()
			vim.cmd([[
                let test#strategy = "neovim"
                " Customize the keybindings or other settings here
                nmap <silent> t<C-n> :TestNearest<CR>
                nmap <silent> t<C-f> :TestFile<CR>
                nmap <silent> t<C-s> :TestSuite<CR>
                nmap <silent> t<C-l> :TestLast<CR>
                nmap <silent> t<C-g> :TestVisit<CR>
            ]])
		end,
	})
end
