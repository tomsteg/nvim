return {
  "yetone/avante.nvim",
  build = "make",
  mode = "legacy",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "stevearc/dressing.nvim",
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
  opts = {
    ask = {
      auto_completion = false,
    },
    provider = "claude",
    providers = {
      claude = {
        endpoint = "https://api.anthropic.com",
        model = "claude-sonnet-4-5-20250929",
        api_key_name = "ANTHROPIC_API_KEY",
        extra_request_body = {
          temperature = 0.2,
        },
      },
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-5.1-codex-mini",
        extra_request_body = {
          temperature = 0.2,
        },
      },
    },
    mappings = {
      ask = "<leader>aa",
      focus = "<leader>af",
      accept = "<leader>ac",
    },
  },
}
