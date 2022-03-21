require("toggleterm").setup {
    size = 15,
    shade_terminals = false,
    -- open_mapping = [[<c-\>]],
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = "single",
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    },
}

-- Open terminal with command
-- exec(cmd, num, size, dir, direction, go_back, open)
