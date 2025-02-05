return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      openrouter = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          env = {
            url = "https://openrouter.ai/api",
            api_key = "cmd: cat ~/.config/nvim/.openrouter", -- optional: if your endpoint is authenticated
            chat_url = "/v1/chat/completions", -- optional: default value, override if different
          },
          schema = {
            model = {
              default = "meta-llama/llama-3.1-70b-instruct:free",
            },
          },
        })
      end,

      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          env = {
            url = "http://localhost:33821", -- optional: default value is ollama url http://127.0.0.1:11434, but I'm using harbor
          },
          schema = {
            model = {
              default = "qwen2.5-coder:1.5b-instruct-q6_K",
            },
          },
        })
      end,
    },
    strategies = {
      -- Change the default chat adapter
      chat = {
        adapter = "openrouter",
      },
      inline = {
        adapter = "openrouter",
      },
    },
    opts = {
      -- Set debug logging
      log_level = "DEBUG",
    },
  },
}
