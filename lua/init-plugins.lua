return require("packer").startup(function(use)
    -- package manager
    use("wbthomason/packer.nvim")

    -- lua functions
    use("nvim-lua/plenary.nvim")
    -- icons for other plugins
    use({
        "kyazdani42/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup({ default = true })
        end,
    })
    -- termial integration
    -- ctrl + \ 打开终端
    use({
        "akinsho/nvim-toggleterm.lua",
        config = function()
            require("init-term")
        end,
    })

    -- auto completion
    use({
        "hrsh7th/nvim-cmp",
        config = function()
            require("init-cmp")
        end,
    })
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-nvim-lsp")
    -- snippet support
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    -- lsp support rust 等语言需要安装单独的lsp
    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("init-lspconf")
        end,
    })
    -- null-ls for missing ls functionalities
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("init-null-ls")
        end,
    })
    -- lsp UI staffs 提供lsp ui 使用<leader>rn时会有弹窗，此处的leader被设置为空格
    use("tami5/lspsaga.nvim")
    -- java lsp
    -- use({
    --     "mfussenegger/nvim-jdtls",
    --     ft = { "java" },
    --     config = function()
    --         require("init-jdtls")
    --     end,
    -- })
    -- dap support
    -- <leader> db 打断点, <leader> dr 查看调用信息 f5不断运行
    use({
        "rcarriga/nvim-dap-ui",
        config = function()
            require("init-dap")
        end,
        requires = { { "mfussenegger/nvim-dap" }, { "theHamsta/nvim-dap-virtual-text" } },
    })
    -- treesitter config 美化代码高亮，下一个版本nvim内置
    use({
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("init-treesitter")
        end,
    })
    -- auto pairs 自动补全括号
    use("windwp/nvim-autopairs")
    -- auto tags
    use("windwp/nvim-ts-autotag")
    -- comment gcc 注释， v 选中多行，gc关闭注释
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })
    -- indent 缩进对齐竖线补充
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("init-indent")
        end,
    })

    -- color scheme
    use({
        "olimorris/onedarkpro.nvim",
        event = "BufEnter",
        config = function()
            require("init-theme")
        end,
    })

    -- status line
    use({
        "windwp/windline.nvim",
        config = function()
            require("init-windline")
        end,
    })
    -- clickable buffer line
    use({
        "akinsho/nvim-bufferline.lua",
        config = function()
            require("bufferline").setup()
        end,
    })
    -- git integration git 集成可视化查看左侧状态，黄色修改，绿色新增，红色删除
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("init-gitsigns").setup({
                current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 500,
                    ignore_whitespace = false,
                },
            })
        end,
    })
    -- which-key 按下leader 弹出按键提示，根据引导顺序查看按键组合
    use({
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup()
        end,
    })

    -- file explorer
    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("init-tree")
        end,
    })
    -- fuzzy finder
    -- scoop install ripgrep 正则搜索支持
    use({
        "nvim-telescope/telescope.nvim",
        config = function()
            require("init-telescope")
        end,
    })
    -- 搜索支持
    use({
        "nvim-lua/plenary.nvim",
        config = function()
            require("init-telescope")
        end,
    })

    -- media file preview extension for telescope 预览媒体文件
    use("nvim-telescope/telescope-media-files.nvim")

    -- md 预览
    use("iamcco/markdown-preview.nvim")
end)
