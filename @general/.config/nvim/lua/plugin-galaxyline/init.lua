local gl = require("galaxyline")
local gls = gl.section
local condition = require('galaxyline.condition')

gl.short_line_list = {'NvimTree', 'vista', 'packer'}

local colors = {
    bg = "#282828",
    bg3 = "#665c54",
    fg = "#ebdbb2",
    fg3 = "#bdae93",
    yellow = "#d79921",
    green = "#98971a",
    orange = "#d65d0e",
    purple = "#b16286",
    blue = "#458588",
    aqua = "#689d6a",
    red = "#cc241d",
    gray = "#a89984",
    light_red = "#fb4934",
    light_green = "#b8bb26",
    light_yellow = "#fabd2f",
    light_blue = "#83a598",
    light_purple = "#d3869b",
    light_aqua = "#8ec07c",
    light_orange = "#fe8019",
}

gls.left[1] = {
    ViMode = {
        provider = function()
            local mode_color = {
                n = colors.fg3,
                i = colors.light_blue,
                c = colors.light_purple,
                V = colors.light_orange,
                [""] = colors.light_orange,
                v = colors.light_orange,
                R = colors.light_aqua,
                Rv = colors.light_aqua,
                t = colors.green,
                ['!'] = colors.red
            }
            local alias = {
                n      = "  N ",
                i      = "  I ",
                c      = "  C ",
                V      = "  V ",
                [""] = "  V ",
                v      = "  V ",
                R      = "  R ",
                Rv     = "  R ",
                t      = "  T ",
                ['!']  = "  S "
            }
            vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim.fn.mode()])
            return alias[vim.fn.mode()]
        end,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg3},
        highlight = {colors.bg, colors.fg},
    }
}
print(vim.fn.getbufvar(0,'ts'))
vim.fn.getbufvar(0,'ts')


gls.left[2] ={
  FileIcon = {
    provider = {'FileIcon'},
    condition = condition.buffer_not_empty,
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg3 },
  }
}

gls.left[3] = {
  FileName = {
    provider = {'FileName'},
    condition = condition.buffer_not_empty,
    highlight = { colors.fg, colors.bg3 },
    separator = '',
    separator_highlight = {colors.bg3, 'NONE'},
  }
}

gls.left[4] = {
    GitIcon = {
        provider = function()
            return ' '
        end,
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE', colors.bg},
        highlight = {colors.light_red, colors.bg}
    }
}

gls.left[5] = {
    GitBranch = {
        provider = 'GitBranch',
        condition = condition.check_git_workspace,
        separator = '',
        separator_highlight = {colors.bg, colors.bg},
        highlight = {colors.fg, colors.bg}
    }
}


gls.left[6] = {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = condition.hide_in_width,
        icon = '+',
        highlight = {colors.light_green, colors.bg}
    }
}

gls.left[7] = {
    DiffModified = {
        provider = 'DiffModified',
        condition = condition.hide_in_width,
        icon = '~',
        highlight = {colors.light_blue, colors.bg}
    }
}

gls.left[8] = {
    DiffRemove = {
        provider = 'DiffRemove',
        condition = condition.hide_in_width,
        icon = '-',
        highlight = {colors.light_red, colors.bg}
    }
}

-- -- TODO: Add Vista in statusbar
-- gls.left[9] = {
--     Vista = {
--         provider = 'VistaPlugin',
--         condition = condition.hide_in_width,
--         highlight = {colors.light_red, colors.bg}
--     }
-- }

---------------------------------------------------------------------------------------------

gls.right[1] = {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        highlight = {colors.light_red, colors.bg}
    }
}
gls.right[2] = {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        icon = '  ',
        highlight = {colors.light_yellow, colors.bg}
    }
}

gls.right[3] = {
    DiagnosticHint = {
        provider = 'DiagnosticHint',
        icon = '  ',
        highlight = {colors.light_blue, colors.bg}
    }
}

gls.right[4] = {
    DiagnosticInfo = {
        provider = 'DiagnosticInfo',
        icon = '  ',
        highlight = {colors.light_green, colors.bg}
    }
}

gls.right[6] = {
    LineInfo = {
        provider = 'LineColumn',
        highlight = {colors.fg, colors.bg}
    }
}

gls.right[7] = {
    Percent = {
        provider = 'LinePercent',
        separator = ' ',
        separator_highlight = {colors.bg, colors.bg},
        highlight = {colors.bg, colors.fg3}
    }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = '',
    separator_highlight = {colors.fg3, 'NONE'},
    highlight = {colors.bg,colors.fg3}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = ' ',
    separator_highlight = {colors.fg3, 'NONE'},
    highlight = {colors.bg, colors.fg3}
  }
}
