local alpha = require("alpha")

-- local ascii = {
--     "   ⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀   ",
--     "   ⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀   ",
--     "   ⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀   ",
--     "   ⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀   ",
--     "   ⣴⣿⣷⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦   ",
--     "   ⣿⣿⣿⣿⣄⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣷⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⡄⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠙⣿⣿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⢿⣿⣿⣿⣿⣿   ",
--     "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠙⣿⣿⣿⣿   ",
--     "   ⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⢿⣿⠟   ",
--     "   ⠀⠀⠛⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀   ",
--     "   ⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀   ",
--     "   ⠀⠀⠀⠀⠀⠀⠉⢿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀   ",
--     "   ⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀   ",
--     -- "                                            ",
--     -- "                N E O V I M                 ",
-- }

local ascii = {
   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}

-- local ascii = {
--     " /| ､        ",
--     "(°､ ｡ 7      ",
--     " |､  ~ヽ     ",
--     " じしf_,)〳  "
-- }

-- local ascii = {
--     '⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
--     '⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕',
--     '⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕',
--     '⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕',
--     '⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑',
--     '⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐',
--     '⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐',
--     '⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔',
--     '⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕',
--     '⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕',
--     '⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕',
--     '⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕',
--     '⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁',
--     '⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿',
-- }

local header = {
    type = "text",
    val = ascii,
    opts = {
        position = "center",
        hl = "Comment",
   },
}

local function button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        text = txt,
        shortcut = sc,
        cursor = 5,
        width = 36,
        align_shortcut = "right",
        hl = "Comment",
        hl_shortcut = "Keyword"
    }

    if keybind then
        opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
    end

    return {
        type = "button",
        val = txt,
        on_press = function()
            local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
            vim.api.nvim_feedkeys(key, "normal", false)
        end,
        opts = opts,
    }
end

local buttons = {
    type = "group",
    val = {
        button("n", "  New File  ", ":enew<CR>"),
        button("f", "  Find File  ", ":Telescope find_files<CR>"),
        button("r", "  Recent Files  ", ":Telescope oldfiles<CR>"),
        button("p", "  Open Project  ", ":Telescope projects theme=ivy<CR>"),
        button("d", "  Open directory  ", ":Telescope file_browser<CR>"),
        button("l", "  Load last session  ", ":lua require('persistence').load({ last = true })<CR>"),
        button("q", "  Quit  ", ":qa!<CR>"),
      -- button("SPC f p", "  Find Project  ", ":Telescope projects<CR>"),
      -- button("SPC f f", "  Find File  ", ":Telescope find_files<CR>"),
      -- button("SPC f w", "  Find Word  ", ":Telescope live_grep<CR>"),
      -- button("SPC f r", "ﮦ  Recent Files  ", ":Telescope oldfiles<CR>"),
      -- button("SPC b m", "  Bookmarks  ", ":Telescope marks<CR>"),
    },
    opts = {
        spacing = 1,
    },
}

local section = {
    header = header,
    buttons = buttons,
}

alpha.setup {
    layout = {
        { type = "padding", val = 4 },
        section.header,
        { type = "padding", val = 4 },
        section.buttons,
    },
    opts = {},
}

-- vim.cmd "au FileType alpha set showtabline=0 laststatus=0 noruler | au BufUnload <buffer> set showtabline=2 laststatus=2 ruler"

vim.cmd [[
augroup alpha_tabline
    au!
    au FileType alpha set showtabline=0 laststatus=0 | au BufUnload <buffer> set showtabline=2 laststatus=2
augroup END
]]