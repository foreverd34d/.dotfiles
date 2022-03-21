local wk = require("which-key")
local map = vim.api.nvim_set_keymap

-- Options for which-key
local wkopts = {
    mode    = "n",   -- NORMAL mode
    prefix  = "<leader>",
    buffer  = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
    silent  = true,  -- use `silent` when creating keymaps
    noremap = true,  -- use `noremap` when creating keymaps
    nowait  = false, -- use `nowait` when creating keymaps
}

-- Which-key mappings
wk.register({
    ["s"] = { "<cmd>w<CR>", "  Save" },
    ["S"] = { "<cmd>wa<CR>", "  Save all" },
    ["x"] = { "<cmd>Bdelete<CR>", "  Close buffer" },
    ["X"] = { "<cmd>Bdelete!<CR>", "  Force close buffer" },
    ["q"] = { "<cmd>q<CR>", "  Quit" },
    ["/"] = { "<cmd>NvimTreeFocus<cr>", "פּ  Open file tree" },
    ["."] = { "<cmd>Telescope file_browser<CR>", "  Find files" },
    ["<leader>"] = { "<cmd>Telescope find_files<CR>", "  Find project files" },

    f = {
        name = "  Find",
        ["f"] = { "<cmd>Telescope find_files<CR>", "  Find project files" },
        ["r"] = { "<cmd>Telescope oldfiles<CR>", "ﭯ  Recent files" },
        ["b"] = { "<cmd>Telescope buffers<CR>", "𧻓 Buffers" },
        ["p"] = { "<cmd>Telescope projects theme=ivy<CR>", "  Projects" },
        ["w"] = { "<cmd>Telescope live_grep<CR>", "  Word" },
        ["d"] = { "<cmd>Telescope file_browser<CR>", "  Directory" },
        -- ["t"] = { "<cmd>TodoTrouble<CR>", "  List todos"},
    },

    d = {
        name = '金 Debug & compile',
        -- ["c"] = { "<cmd>lua require('yabs'):run_task('build')<cr>", "Compile file"},
        -- ["r"] = { "<cmd>lua require('yabs'):run_task('run')<cr>", "Run file"},
        ["c"] = { "<cmd>YabsTask build<cr>", "  Compile file"},
        ["r"] = { "<cmd>YabsTask run<cr>", "金 Run file"},
        ["b"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "ﱢ  Toggle breakpoint"},
        ["d"] = { "<cmd>lua require'dap'.continue()<cr>", "  Start debug"},
    },

    c = {
        name = "  Code",
        ["d"] = { "<cmd>Trouble<cr>", "  Diagnostics"},
        ["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "  Rename"},
        ["a"] = { '<cmd>Telescope lsp_code_actions theme=cursor<CR>', "  Actions" },
        ["R"] = { "<cmd>Telescope lsp_references<CR>", "  References" },
    },

    p = {
        name = "  Packages",
        ["c"] = { "<cmd>PackerCompile<bar>LuaCacheClear<CR>", "  Compile" },
        ["C"] = { "<cmd>PackerClean<CR>", "  Clean" },
        ["i"] = { "<cmd>PackerInstall<CR>", "  Install" }, --
        ["s"] = { "<cmd>PackerSync<CR>", "痢 Sync" },
        ["S"] = { "<cmd>PackerStatus<CR>", "  Status" },
        ["u"] = { "<cmd>PackerUpdate<CR>", "祝 Update" },
        ["r"] = { "<cmd>source %<CR>", "勒 Reload neovim file"}
    },

    w = {
        name = "  Window",
        ["s"] = { "<C-w>s", "  Horizontal split" },
        ["v"] = { "<C-w>v", "  Vertical split" },
        ["c"] = { "<C-w>c", "窱 Close" },
        ["b"] = { "<C-w>=", "  Balance" },
    },
}, wkopts)

-- Other mappings
local mapopts = { noremap = true, silent = true }

-- Navigate windows
map("n", "<C-h>", "<C-w>h", mapopts)
map("n", "<C-j>", "<C-w>j", mapopts)
map("n", "<C-k>", "<C-w>k", mapopts)
map("n", "<C-l>", "<C-w>l", mapopts)

-- Resize windows
map("n", "<C-Up>", "<cmd>resize -2<CR>", mapopts)
map("n", "<C-Down>", "<cmd>resize +2<CR>", mapopts)
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", mapopts)
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", mapopts)

-- hjkl navigation in insert mode
map("i", "<C-h>", "<Left>", mapopts)
map("i", "<C-j>", "<Down>", mapopts)
map("i", "<C-k>", "<Up>", mapopts)
map("i", "<C-l>", "<Right>", mapopts)

-- Disable search highlight in insert and leave insert mode in terminal
map("t", "<ESC>", "<C-\\><C-N>", mapopts)
map("n", "<ESC>", ":noh<CR>", mapopts)

-- Open ToggleTerm
map("n", "<C-\\>", "<cmd>ToggleTerm<CR>", mapopts)
map("i", "<C-\\>", "<cmd>ToggleTerm<CR>", mapopts)
map("t", "<C-\\>", "<cmd>ToggleTerm<CR>", mapopts)

-- Switch buffers
map("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>", mapopts)
map("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>", mapopts)
