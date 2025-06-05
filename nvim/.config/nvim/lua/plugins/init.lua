return {
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                width = 25
            }
        }
    },
    -- {
    -- 	"williamboman/mason.nvim",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"lua-language-server", "stylua",
    -- 			"html-lsp", "css-lsp" , "prettier"
    -- 		},
    -- 	},
    -- },
    --
    {
        "nvim-telescope/telescope.nvim",
        opts = {
            defaults = {
                hidden = true,
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css", "cpp", "go", "java",
                "python"
            },
            highlightCapturesUnderCursor = true
        },
    },
    {
        'ldelossa/litee.nvim',
        event = "VeryLazy",
        opts = {
            notify = { enabled = false },
            panel = {
                orientation = "bottom",
                panel_size = 10,
            },
        },
        config = function(_, opts) require('litee.lib').setup(opts) end
    },
    {
        'ldelossa/litee-calltree.nvim',
        dependencies = 'ldelossa/litee.nvim',
        event = "VeryLazy",
        opts = {
            on_open = "panel",
            map_resize_keys = false,
        },
        config = function(_, opts) require('litee.calltree').setup(opts) end
    },
    {
        'isakbm/gitgraph.nvim',
        opts = {
            symbols = {
                merge_commit = 'm',
                merge_commit_end = 'M',
                commit = '*',
                commit_end = 'o',
            },
            format = {
                timestamp = '%H:%M:%S %d-%m-%Y',
                fields = { 'hash', 'timestamp', 'author', 'branch_name', 'tag' },
            },
            hooks = {
                on_select_commit = function(commit)
                    print('selected commit:', commit.hash)
                end,
                on_select_range_commit = function(from, to)
                    print('selected range:', from.hash, to.hash)
                end,
            },
        },
        keys = {
            {
                "<leader>gl",
                function()
                    require('gitgraph').draw({}, { all = true, max_count = 5000 })
                end,
                desc = "GitGraph - Draw",
            },
        },
    },
}
