-- Load impatient
local present, impatient = pcall(require, "impatient")

if not present then
    -- impatient.enable_profile()
    vim.notify("Error loading impatient")
end

-- Disable default filetype detection
vim.g.did_load_filetypes = 1

-- Disable some builtin plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

-- Load configs
require('config')
require('plugins')
require('mappings')
-- require('lspconf')
-- require('dapconf')
