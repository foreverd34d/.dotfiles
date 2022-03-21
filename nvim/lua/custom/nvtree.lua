local g = vim.g

-- g.nvim_tree_root_folder_modifier = ':t'
g.nvim_tree_root_folder_modifier = ':e'
g.nvim_tree_indent_markers       = 1
g.nvim_tree_icon_padding         = ' '
g.nvim_tree_symlink_arrow        = '  '
g.nvim_tree_respect_buf_cwd      = 1

vim.g.nvim_tree_icons = {
    ['default'] = '',
    ['symlink'] = '',
    ['git'] = {
        ['unstaged']  = "",
        ['staged']    = "",
        ['unmerged']  = "שׂ",
        ['renamed']   = "",
        ['untracked'] = "ﲉ",
        ['deleted']   = "",
        ['ignored']   = "◌"
    },
    ['folder'] = {
        -- ['arrow_open'] = "",
        -- ['arrow_closed'] = "",
        ['arrow_open']   = "",
        ['arrow_closed'] = "",
        ['default']      = "",
        ['open']         = "",
        ['empty']        = "",
        ['empty_open']   = "",
        ['symlink']      = "",
        ['symlink_open'] = "",
    }
}

require'nvim-tree'.setup {
    disable_netrw        = false,
    hijack_netrw         = true,
    open_on_setup        = false,
    ignore_ft_on_setup   = {},
    auto_close           = true,
    auto_reload_on_write = true,
    open_on_tab          = false,
    hijack_cursor        = true,
    update_cwd           = true,
    hijack_unnamed_buffer_when_opening = false,
    hijack_directories   = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = false,
        icons = {
            hint    = "",
            info    = "",
            warning = "",
            error   = "",
        }
    },
    update_focused_file = {
        enable      = true,
        update_cwd  = true,
        ignore_list = {}
    },
    system_open = {
        cmd  = nil,
        args = {}
    },
    filters = {
        dotfiles = false,
        custom = {".DS_Store", ".projectile"}
    },
    git = {
        enable  = true,
        ignore  = true,
        timeout = 500,
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = 'left',
        auto_resize = true,
        mappings = {
            custom_only = false,
            list = {}
        },
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
    trash = {
        cmd = "trash",
        require_confirm = true
    },
    actions = {
        change_dir = {
            global = false,
        },
        open_file = {
            quit_on_open = false,
        }
    }
}
