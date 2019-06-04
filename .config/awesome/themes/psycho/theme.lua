-- {{{ Main
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local themes_path = require("gears.filesystem").get_themes_dir()

theme = {}
theme.wd = "~/.config/awesome/theme/"
theme.wallpaper = '~/wallpaper'
-- }}}

-- {{{ Styles
--theme.font                     = "terminus 12"
theme.font                     = "Source Code Pro 12"
theme.hotkeys_font             = "Source Code Pro Bold 12"
theme.hotkeys_description_font = theme.font
-- }}}


-- {{{ Settings
theme.useless_gap = 5
theme.border_width  = 3
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "15"
theme.menu_width  = "100"
-- }}}


-- {{{ Colors

-- {{{ Base
theme.color_bg0_h        = "#1d2021"
theme.color_bg0          = "#282828"
theme.color_bg0_s        = "#32302f"
theme.color_bg1          = "#3c3836"
theme.color_bg2          = "#504945"
theme.color_bg3          = "#665c54"
theme.color_bg4          = "#7c6f64"
theme.color_fg0          = "#fbf1c7"
theme.color_fg1          = "#ebdbb2"
theme.color_fg2          = "#d5c4a1"
theme.color_fg3          = "#bdae93"
theme.color_fg4          = "#a89984"
theme.color_gray         = "#a89984"
theme.color_red          = "#cc241d"
theme.color_green        = "#98971a"
theme.color_yellow       = "#d79921"
theme.color_blue         = "#458588"
theme.color_purple       = "#b16286"
theme.color_aqua         = "#689d6a"
theme.color_orange       = "#d65d0e"
theme.color_red_light    = "#fb4934"
theme.color_green_light  = "#b8bb26"
theme.color_yellow_light = "#fabd2f"
theme.color_blue_light   = "#93a598"
theme.color_purple_light = "#d3869b"
theme.color_aqua_light   = "#9ec07c"
theme.color_orange_light = "#fe8019"
theme.color_bg           = theme.color_bg0
theme.color_fg           = theme.color_fg1
-- }}}


-- {{{  Settings
theme.bg_normal          = theme.color_bg
theme.fg_normal          = theme.color_fg
theme.border_normal      = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal

theme.bg_focus          = theme.color_bg1
theme.fg_focus          = theme.fg_normal
theme.border_focus      = theme.color_purple
theme.titlebar_bg_focus = theme.bg_focus

theme.bg_urgent = theme.color_bg2
theme.fg_urgent = theme.color_purple_light

theme.border_marked = theme.color_red

theme.hotkeys_border_color = theme.border_focus
theme.hotkeys_border_width = theme.border_width
theme.hotkeys_modifiers_fg = theme.fg_urgent
-- }}}


-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- }}}


-- {{{ Tasklist
theme.tasklist_bg_normal = theme.bg_normal
theme.tasklist_bg_focus = theme.tasklist_bg_normal
theme.tasklist_fg_normal = "#ffffff"
theme.tasklist_fg_focus = theme.tasklist_fg_normal
-- }}}

-- {{{ Taglist
theme.taglist_bg_normal = theme.bg_normal
theme.taglist_fg_normal = theme.color_bg3
theme.taglist_bg_occupied = theme.color_bg3
theme.taglist_fg_occupied = theme.color_bg3
theme.taglist_bg_empty = theme.color_bg1
theme.taglist_fg_empty = theme.color_bg2

theme.taglist_bg_focus = theme.color_yellow
theme.taglist_fg_focus = theme.fg_normal

theme.taglist_bg_urgent = theme.color_red
theme.taglist_fg_urgent = theme.color_red

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- }}}

-- {{{ Icons

-- {{{ Misc
theme.awesome_icon           = theme.wd.."/awesome-icon.png"
theme.menu_submenu_icon      = themes_path.."/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = theme.wd.."/layouts/tile.png"
theme.layout_tileleft   = theme.wd.."/layouts/tileleft.png"
theme.layout_tilebottom = theme.wd.."/layouts/tilebottom.png"
theme.layout_tiletop    = theme.wd.."/layouts/tiletop.png"
theme.layout_fairv      = theme.wd.."/layouts/fairv.png"
theme.layout_fairh      = theme.wd.."/layouts/fairh.png"
theme.layout_spiral     = theme.wd.."/layouts/spiral.png"
theme.layout_dwindle    = theme.wd.."/layouts/dwindle.png"
theme.layout_max        = theme.wd.."/layouts/max.png"
theme.layout_fullscreen = theme.wd.."/layouts/fullscreen.png"
theme.layout_magnifier  = theme.wd.."/layouts/magnifier.png"
theme.layout_floating   = theme.wd.."/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus               = theme.wd.."/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.wd.."/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active        = theme.wd.."/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.wd.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.wd.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.wd.."/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = theme.wd.."/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.wd.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.wd.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.wd.."/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = theme.wd.."/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.wd.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.wd.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.wd.."/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = theme.wd.."/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.wd.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.wd.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.wd.."/titlebar/maximized_normal_inactive.png"
-- }}}

-- }}}

return theme
