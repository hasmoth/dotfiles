require "nvchad.options"

-- add yours here!
local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

vim.opt.clipboard = 'unnamedplus'   -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim
vim.opt.scrolloff=999


-- Tab
vim.opt.tabstop = 4                 -- number of visual spaces per TAB
vim.opt.softtabstop = 4             -- number of spacesin tab when editing
vim.opt.shiftwidth = 4              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

-- Set indentation based on file type
augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'go' },
  command = 'setlocal noexpandtab tabstop=4 shiftwidth=4'
})

-- Format on save
augroup('setFormat', { clear = true })
autocmd('BufWritePre', {
    group = 'setFormat',
    pattern = { '*.go' },
    command = 'lua=vim.lsp.buf.format()'
})

-- add hughlighting for custom file types
vim.cmd[[au BufNewFile,BufRead *.tdef set filetype=lua]]
vim.cmd[[au BufNewFile,BufRead *.tmod set filetype=lua]]

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.cmd[[set nowrap]]               -- don't wrap lines

-- mark trailing whitespaces
vim.cmd[[highlight WhitespaceEOL ctermbg=red guibg=red]]
vim.cmd[[match WhitespaceEOL /\s\+$/]]

-- add dots as whitespaces
vim.opt.list = true
vim.cmd[[set lcs+=space:·]]

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = true             -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered
vim.opt.showmatch = true

vim.cmd[[NvimTreeToggle]]           -- open file tree
