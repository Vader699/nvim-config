return {
  'gelguy/wilder.nvim',
  dependencies = { "roxma/nvim-yarp", "roxma/vim-hug-neovim-rpc" },
  config = function()
    local wilder = require('wilder')
    wilder.setup({ modes = { ':', '/', '?' } })

    wilder.set_option('pipeline', {
      wilder.branch(
        wilder.cmdline_pipeline(),
        wilder.search_pipeline()
      ),
    })

    wilder.set_option('renderer', wilder.popupmenu_renderer(
      wilder.popupmenu_border_theme({
        pumblend = 50,
        left = { ' ', wilder.popupmenu_devicons() },
        right = { ' ', wilder.popupmenu_scrollbar() },
        highlighter = wilder.basic_highlighter(),
        min_width = '100%', -- minimum height of the popupmenu, can also be a number
        min_height = '50%', -- to set a fixed height, set max_height to the same value
        reverse = 0,        -- if 1, shows the candidates from bottom to top
      })
    ))
  end
}
