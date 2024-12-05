return {
  "akinsho/toggleterm.nvim",
  config = function()
    require('toggleterm').setup{
        direction = 'horizontal',
        start_in_insert = true,
        autochdir = true,
    }
  end
}
