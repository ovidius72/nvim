local colors = {
  asphalt   = '#1e1c31',
  black   = '#282639',
  base   = '#100d23',
  maroon  = '#ff8080',
  green   = '#62d196',
  olive   = '#808000',
  navy    = '#63f2f1',
  purple  = '#c991e1',
  teal    = '#62d196',
  silver  = '#c6c6c6',
  gray    = '#767676',
  red     = '#ff5468',
  lime    = '#95ffa4',
  yellow  = '#ffe9aa',
  blue    = '#91ddff',
  fuchsia = '#906cff',
  aqua    = '#aaffe4',
  white   = '#cbe3e7',
}
-- LuaFormatter on
return {
  normal = {
    a = {fg = colors.black, bg = colors.aqua, gui = 'bold'},
    b = {fg = colors.fuchsia, bg = colors.black},
    c = {fg = colors.navy, bg = colors.black}
  },
  insert = {a = {fg = colors.black, bg = colors.blue, gui = 'bold'}},
  visual = {a = {fg = colors.asphalt, bg = colors.yellow, gui = 'bold'}},
  replace = {a = {fg = colors.white, bg = colors.red, gui = 'bold'}},
  inactive = {
    a = {fg = colors.silver, bg = colors.black, gui = 'bold'},
    b = {fg = colors.gray, bg = colors.black},
    c = {fg = colors.silver, bg = colors.black}
  }
}
