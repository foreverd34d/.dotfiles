local telescope = require("telescope")
local actions = require("telescope.actions")
local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup {
    defaults = {
        initial_mode = 'insert',
        prompt_prefix = "  ",
        selection_caret = " ",
        entry_prefix = " ",
        scroll_strategy = "limit",
        sorting_strategy = "ascending",
        results_title = false,
        borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
        layout_strategy = "horizontal",
        layout_config = {
            prompt_position = 'top',
            horizontal = {
                -- anchor = "S",
                -- width = vim.o.columns,
                -- height = 0.6,
                preview_width = 0.5,
            },
        },
        mappings = {
            i = {
                ["<C-j>"]   = actions.move_selection_next,
                ["<C-k>"]   = actions.move_selection_previous,
                ["<tab>"]   = actions.select_default,
                ["<esc>"]   = actions.close,
            }
        }
    },

    extensions = {
        file_browser = {
            mappings = {
                i = {
                    ["<C-a>"]   = fb_actions.create,
                    ["<C-r>"]   = fb_actions.rename,
                    ["<C-d>"]   = fb_actions.remove,
                    ["["]       = fb_actions.goto_parent_dir,
                    ["<C-.>"]   = fb_actions.change_cwd,
                    ["<tab>"]   = actions.select_default,
                }
            }
        },
    }
}

telescope.load_extension("projects")
telescope.load_extension("fzf")
telescope.load_extension("file_browser")

-- Set highlights
vim.cmd [[
hi link TelescopePromptBorder CursorLine
hi link TelescopePromptNormal CursorLine
hi link TelescopeNormal StatusLine
hi link TelescopePreviewBorder StatusLine
hi link TelescopeResultsBorder StatusLine
hi link TelescopePreview StatusLine
hi link TelescopeResults StatusLine
hi link TelescopeTitle lualine_a_normal
]]
