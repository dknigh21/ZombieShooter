/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F268E47
/// @DnDArgument : "code" "image_angle = point_direction(x,y,mouse_x, mouse_y);$(13_10)$(13_10)$(13_10)if (keyboard_check(vk_right))$(13_10){$(13_10)	object_set_sprite(0,spr_player_move_flashlight);$(13_10)	x+=5;$(13_10)}$(13_10)if (keyboard_check(vk_left))$(13_10){$(13_10)	object_set_sprite(0,spr_player_move_flashlight);$(13_10)	x-=5;$(13_10)}$(13_10)if (keyboard_check(vk_up))$(13_10){$(13_10)	object_set_sprite(0,spr_player_move_flashlight);$(13_10)	y-=5;$(13_10)}$(13_10)if (keyboard_check(vk_down))$(13_10){$(13_10)	object_set_sprite(0,spr_player_move_flashlight);$(13_10)	y+=5;$(13_10)}$(13_10)$(13_10)if (!keyboard_check(vk_anykey))$(13_10){$(13_10)	object_set_sprite(0,spr_player_idle_flashlight);$(13_10)}"
image_angle = point_direction(x,y,mouse_x, mouse_y);


if (keyboard_check(vk_right))
{
	object_set_sprite(0,spr_player_move_flashlight);
	x+=5;
}
if (keyboard_check(vk_left))
{
	object_set_sprite(0,spr_player_move_flashlight);
	x-=5;
}
if (keyboard_check(vk_up))
{
	object_set_sprite(0,spr_player_move_flashlight);
	y-=5;
}
if (keyboard_check(vk_down))
{
	object_set_sprite(0,spr_player_move_flashlight);
	y+=5;
}

if (!keyboard_check(vk_anykey))
{
	object_set_sprite(0,spr_player_idle_flashlight);
}