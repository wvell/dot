return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  enabled = false,
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        seperator_style = "slant",
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "center",
          },
        },
      },
    })
  end,
}
