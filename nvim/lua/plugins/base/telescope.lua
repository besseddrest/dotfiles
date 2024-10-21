return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  -- lazy = true,
  cmd = "Telescope",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    defaults = {
      prompt_prefix = "   ",
      selection_caret = " ",
      entry_prefix = " ",
      layout_config = {
        horizontal = {
          prompt_position = "bottom",
          preview_width = 0.50,
        },
        width = 0.80,
        height = 0.50,
      },
      sorting_strategy = "descending",
    },
    extensions_list = { "themes", "terms" },
    extensions = {},
    hl_styles = {
      floats = "transparent",
    },
    pickers = {
      cache_picker = {
        num_pickers = 3,
        limit_pickers = 50,
        ignore_empty_prompt = true,
      },
      projects = {
        num_pickers = 3,
      },
      find_files = {
        hidden = true,
      },
      -- live_grep = {
      --   vimgrep_arguments = function()
      --     table.insert(require("telescope.config").values.vimgrep_arguments, "--fixed-strings")
      --   end,
      -- },
    },
  },
  config = function(_, opts)
    local telescope = require "telescope"
    telescope.setup(opts)

    -- load extensions
    for _, ext in ipairs(opts.extensions_list) do
      telescope.load_extension(ext)
    end
  end,
}
