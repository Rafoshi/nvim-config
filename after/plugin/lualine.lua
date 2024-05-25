local lualine_onedark = require("lualine.themes.onedark")

require('lualine').setup{
    options = {
        theme = "cyberdream",
    },
    sections = {
        lualine_c = {
            {'filename', file_status = true, path = 3},
        },
    }
}
