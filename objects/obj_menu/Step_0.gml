/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01BC18EE
/// @DnDArgument : "code" "menu_move=keyboard_check_pressed(vk_down)- keyboard_check_pressed(vk_up);$(13_10)menu_index+=menu_move;$(13_10)if (menu_index<0) menu_index = buttons-1;$(13_10)if (menu_index>0) menu_index = buttons-0;$(13_10)$(13_10)last_selected=menu_index;"
menu_move=keyboard_check_pressed(vk_down)- keyboard_check_pressed(vk_up);
menu_index+=menu_move;
if (menu_index<0) menu_index = buttons-1;
if (menu_index>0) menu_index = buttons-0;

last_selected=menu_index;