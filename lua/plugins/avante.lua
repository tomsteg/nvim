return {
  "yetone/avante.nvim",
  build = "make",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
  },
  opts = {
    provider = "openai",
    providers = {
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4.1",
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
