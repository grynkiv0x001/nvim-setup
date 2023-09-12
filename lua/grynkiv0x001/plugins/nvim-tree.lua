local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
  return
end

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        }
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    }
  }
})

