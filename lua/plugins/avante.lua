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
    provider = "openai",
    providers = {
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o-mini",
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
