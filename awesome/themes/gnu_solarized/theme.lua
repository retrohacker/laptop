local theme = {}

theme.font          = "sans 7"

theme.bg_normal     = "#002b36"
theme.bg_focus      = "#002b36"
theme.bg_urgent     = "#002b36"
theme.bg_minimize   = "#002b36"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#586e75"
theme.fg_focus      = "#b58900"
theme.fg_urgent     = "#dc322f"
theme.fg_minimize   = "#073642"

theme.useless_gap   = 0
theme.border_width  = 1
theme.border_normal = "#002b36"
theme.border_focus  = "#b58900"
theme.border_marked = "#dc322f"

-- Display the taglist squares
theme.taglist_squares_sel   = "~/.config/awesome/themes/gnu_solarized/taglist/squaref.png"
theme.taglist_squares_unsel = "~/.config/awesome/themes/gnu_solarized/taglist/square.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "~/.config/awesome/themes/gnu_solarized/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "~/.config/awesome/themes/gnu_solarized/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/.config/awesome/themes/gnu_solarized/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = "~/.config/awesome/themes/gnu_solarized/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = "~/.config/awesome/themes/gnu_solarized/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/.config/awesome/themes/gnu_solarized/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/.config/awesome/themes/gnu_solarized/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "~/.config/awesome/themes/gnu_solarized/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "~/.config/awesome/themes/gnu_solarized/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/.config/awesome/themes/gnu_solarized/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/.config/awesome/themes/gnu_solarized/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "~/.config/awesome/themes/gnu_solarized/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "~/.config/awesome/themes/gnu_solarized/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/.config/awesome/themes/gnu_solarized/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/.config/awesome/themes/gnu_solarized/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "~/.config/awesome/themes/gnu_solarized/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "~/.config/awesome/themes/gnu_solarized/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/.config/awesome/themes/gnu_solarized/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/.config/awesome/themes/gnu_solarized/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "~/.config/awesome/themes/gnu_solarized/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "~/.config/awesome/themes/gnu_solarized/titlebar/maximized_focus_active.png"

theme.wallpaper = "~/.config/awesome/themes/gnu_solarized/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = "~/.config/awesome/themes/gnu_solarized/layouts/fairh.png"
theme.layout_fairv = "~/.config/awesome/themes/gnu_solarized/layouts/fairv.png"
theme.layout_floating  = "~/.config/awesome/themes/gnu_solarized/layouts/floating.png"
theme.layout_magnifier = "~/.config/awesome/themes/gnu_solarized/layouts/magnifier.png"
theme.layout_max = "~/.config/awesome/themes/gnu_solarized/layouts/max.png"
theme.layout_fullscreen = "~/.config/awesome/themes/gnu_solarized/layouts/fullscreen.png"
theme.layout_tilebottom = "~/.config/awesome/themes/gnu_solarized/layouts/tilebottom.png"
theme.layout_tileleft   = "~/.config/awesome/themes/gnu_solarized/layouts/tileleft.png"
theme.layout_tile = "~/.config/awesome/themes/gnu_solarized/layouts/tile.png"
theme.layout_tiletop = "~/.config/awesome/themes/gnu_solarized/layouts/tiletop.png"
theme.layout_spiral  = "~/.config/awesome/themes/gnu_solarized/layouts/spiral.png"
theme.layout_dwindle = "~/.config/awesome/themes/gnu_solarized/layouts/dwindle.png"
theme.layout_cornernw = "~/.config/awesome/themes/gnu_solarized/layouts/cornernw.png"
theme.layout_cornerne = "~/.config/awesome/themes/gnu_solarized/layouts/cornerne.png"
theme.layout_cornersw = "~/.config/awesome/themes/gnu_solarized/layouts/cornersw.png"
theme.layout_cornerse = "~/.config/awesome/themes/gnu_solarized/layouts/cornerse.png"

theme.awesome_icon = "~/.config/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons
-- from ~/.config/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
