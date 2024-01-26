
--local alpha = require 'alpha'
--
--alpha.setup(require'alpha.themes.dashboard'.config)

local dashboard = require 'alpha.themes.dashboard'

-- Header Section
local ne0vim = {
[[             ⢻⣧⣀⣼⠇            ]],
[[  ⣠⣾⣿⣷⡀     ⣤⣶⣿⣿⣿⣦⣄     ⣠⣾⣿⣷⣄ ]],
[[ ⠺⣿⣿⣿⣿⣿⣦⡀   ⠿⢿⣿⣿⣿⡿⠟   ⢀⣼⣾⣿⣿⣿⡿⠇]],
[[  ⠈⠻⢿⣿⣿⢛⡇  ⢀⣠⡤⣖⣗⣷⠤⣄⣀  ⣸⠛⣿⣿⡿⠋  ]],
[[     ⠙⠛⠛⢗⡴⣛⠭⣖⢂⠏⡟⢹⠖⢖⠭⡓⢤⡛⠛⠛⠉    ]],
[[       ⡴⣫⢞⢈⡳⠛⠈⠉⠉⠉⠙⠺⢦⡿⠢⡙⣆      ]],
[[      ⡾⣱⠉⡲⣏⢀⡠⠴⢶⣟⣓⡤⠔⣚⠑⣖⢛⡌⣧     ]],
[[     ⢸⢧⣇⢬⠃⠐⢵⣏⣛⠸⢷⣶⣚⡭⠾ ⠘⣑⣺⢸⡄    ]],
[[    ⠨⣯⣿⣙⣨  ⠣⠩⢖⣫⠭⠭⡵⣚⣭⢅ ⡷⢶⣿⣽    ]],
[[    ⠈⠹⡝⣿⡿⡀ ⠈⣋⡭⢖⣫⡭⣞⡽⢖⣫⢤⣉⣹⢹⠏    ]],
[[  ⣦⡀  ⢳⡱⣥⡶⢄ ⠸⡚⠁⢰⣛⡭⠖⠉⡠⠳⣭⢇⡟  ⢀⣴ ]],
[[ ⢰⣿⢷⣤⡀⠈⠳⣝⢤⣾⠶⣤⣕⣀ ⣀⣀⣤⠚⣷⡶⣣⠞ ⢀⣴⢿⣿ ]],
[[  ⣿⢞⣷⡀ ⢀⠜⠲⣍⡲⠿⣢⣰⣩⣠⡃⠿⣛⡡⠞⠥⡀ ⣠⣟⡶⡿ ]],
[[   ⠈⢫⡻⣶⡟⠁  ⠉⠑⠒⣗⣟⡗⠒⠛⠉   ⢨⣶⣯⠞ ⠁ ]],
[[    ⡠⠻⢮⡻⣦⣄⡀  ⣀⣥⣥⣥⡀  ⣀⣠⡶⣿⡿⠛⢆   ]],
[[   ⠾⠉  ⠙⠿⣽⣟⣿⣿⡿⠟⢹⣿⣿⣿⣟⣿⣽⠞⠋   ⠑  ]],
}
dashboard.section.header.val = ne0vim

-- Menu Section
dashboard.section.buttons.val = {
  dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button('f', '  Search file', ':Telescope find_files<CR>'),
  dashboard.button('--', '- - - - - - - - - - - - - - - - - - - - - - -', ':<CR>'),
  dashboard.button('s', '  Go Init Lua', ':e $MYVIMRC<CR>'),
  dashboard.button('u', '  Update Packer Packages', ':PackerUpdate<CR>'),
  dashboard.button('q', '  Exit', ':qa<CR>'),
}

-- Footer Section
local footer = {
  [[]],
  os.date('%Y/%m/%d - %H:%M:%S'),
    [[~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~]],
    [[~      ______                   __                  ~]],
    [[~     /\__  _\                 /\ \      __         ~]],
    [[~     \/_/\ \/     ___     ____\ \ \___ /\_\        ~]],
    [[~        \ \ \    / __`\  /',__\\ \  _ `\/\ \       ~]],
    [[~         \_\ \__/\ \L\ \/\__, `\\ \ \ \ \ \ \      ~]],
    [[~         /\_____\ \____/\/\____/ \ \_\ \_\ \_\     ~]],
    [[~         \/_____/\/___/  \/___/   \/_/\/_/\/_/     ~]],
    [[~                                                   ~]],
    [[~                                                   ~]],
    [[~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~]],
}
dashboard.section.footer.val = footer

require'alpha'.setup(dashboard.config)
