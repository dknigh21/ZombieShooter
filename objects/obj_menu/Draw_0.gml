/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14704EA1
/// @DnDArgument : "code" "var i =0;$(13_10)repeat(buttons){$(13_10)	draw_text(menu_x, menu_y = button_h*i, button[i]);$(13_10)	i++;$(13_10)}"
var i =0;
repeat(buttons){
	draw_text(menu_x, menu_y = button_h*i, button[i]);
	i++;
}