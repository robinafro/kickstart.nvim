return {
    {
        "github/copilot.vim",
    },

    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
          { "github/copilot.vim" }, -- or github/copilot.vim
          { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
        },
        build = "make tiktoken", -- Only on MacOS or Linux
        config = function()
          require("CopilotChat").setup()
        end,
      },

      {
        "gbprod/yanky.nvim",
        opts = {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
          system_clipboard = {
            sync_with_ring = true,
          },
          highlight = {
            on_put = true,
            on_yank = true,
            timer = 500,
          },
        },
        keys = {
          { "n", "y", "lua require('yanky').yank()" },
          { "n", "Y", "lua require('yanky').yank_line()" },
          { "n", "p", "lua require('yanky').put()" },
          { "n", "P", "lua require('yanky').put(true)" },
        },
      },
}