
return {
    {
        "vhyrro/luarocks.nvim",
        priority = 1001, -- this plugin needs to run before anything else
        opts = {
            rocks = { "magick" }, -- Ensure that the required LuaRocks dependencies are installed
        },
    },
    {
        "3rd/image.nvim",
        dependencies = { "vhyrro/luarocks.nvim" }, -- Ensure luarocks.nvim is loaded before image.nvim
        config = function()
            require("image").setup({
                render = {
                    backend = "kitty",  -- or "ueberzug" depending on your terminal
                },
                events = {
                    update_on_nvim_resize = true,
                },
            })
        end,
    }
}

