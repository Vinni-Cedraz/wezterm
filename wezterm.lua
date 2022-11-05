local wezterm = require 'wezterm'
local act = wezterm.action

return {
  leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },
  keys = {
    {
      key = '|',
      mods = 'LEADER|SHIFT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'a',
      mods = 'LEADER|CTRL',
      action = wezterm.action.SendString '\x01',
    },
    {
      key = 'w',
      mods = 'CMD',
      action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
      key = "Tab",
      mods = "CTRL",
      action = wezterm.action.ToggleFullScreen,
    },
    { key = 'a', mods = 'ALT', action = act.ActivatePaneByIndex(0) },
    { key = 'b', mods = 'ALT', action = act.ActivatePaneByIndex(1) },
    { key = 'c', mods = 'ALT', action = act.ActivatePaneByIndex(2) },
  },
  font = wezterm.font('Fira Code Nerd Font', {
    weight = 'Regular', italic = false,
  }),
  font_size = 13.0,
  window_background_opacity = 0.77,
  enable_tab_bar = false,
  harfbuzz_features = {"cv05", "cv09", "cv16", "ss03", "ss05", "cv21", "cv12", "cv29", "cv28", "cv27"},
}
-- &$@*$
-- *(pointer)
-- ==
-- !=
-- =<
-- <=
-- -> --> ---> ----> -----> ------> ------------------------------------------------------>
-- i i i
-- l l l
-- 000000
-- {}
-- [ hello ]
-- [I'm a shell condition]
-- {. .}
