-- colors for active , inactive buffer tabs
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_close_icon = false,
        show_bufferline_close_icons = false,
        separator_style = "thin",
        sort_by = 'directory',

        diagnostic = false,
    },
}
