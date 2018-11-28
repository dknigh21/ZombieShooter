/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14704EA1
/// @DnDArgument : "code" "var i =0;$(13_10)repeat(buttons){$(13_10)	draw_set_font(font0);$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_color(c_ltgray); $(13_10)	draw_text(menu_x, menu_y = button_h*i, button[i]);$(13_10)	i++;$(13_10)}"
var i =0;
repeat(buttons){
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray); 
	draw_text(menu_x, menu_y = button_h*i, button[i]);
	i++;
}