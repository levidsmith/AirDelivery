///2023 Levi D. Smith
/// @description Insert description here
// You can write your code in this editor
col_purple = #473091
col_orange = #f6791f
draw_set_font(fontAirDeliverySmall)

draw_set_color(col_orange)
draw_text(640 - 200, 8, "Packages")
draw_set_color(col_purple)
draw_text(640 - 64, 8, objAirplane.iPackages)

draw_set_color(col_orange)
draw_text(640 - 200, 8 + 28, "Deliveries")
draw_set_color(col_purple)
draw_text(640 - 64, 8 + 28, score)


draw_set_color(col_orange)
draw_text(16, 8 + 28, "Health")
draw_set_color(col_purple)
draw_text(120, 8 + 28, objAirplane.iHealth)