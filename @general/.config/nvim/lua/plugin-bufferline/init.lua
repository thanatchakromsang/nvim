-- colors for active , inactive buffer tabs
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 16,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_close_icon = false,
        show_bufferline_close_icons = false,
        separator_style = "thin",
        sort_by = 'directory',

        -- TODO: Add diagnostic status indicator in bufferline?

        -- TODO: Update colorscheme to gruvbox
        highlights = {
            background = {
                guifg = comment_fg,
                guibg = "#7c6f64"
            },
            fill = {
                guifg = comment_fg,
                guibg = "#7c6f64"
            },
            buffer_selected = {
                guifg = normal_fg,
                guibg = "#3A3E44",
                gui = "bold"
            },
            separator_visible = {
                guifg = "#282828",
                guibg = "#282828"
            },
            separator_selected = {
                guifg = "#282828",
                guibg = "#282828"
            },
            separator = {
                guifg = "#282828",
                guibg = "#282828"
            },
            indicator_selected = {
                guifg = "#282828",
                guibg = "#282828"
            },
            modified_selected = {
                guifg = string_fg,
                guibg = "#3A3E44"
            }
        }
    },
}
