/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25E8FFD0
/// @DnDArgument : "code" "draw_self();$(13_10)draw_set_color(c_blue);$(13_10)draw_text(x,y-100,string(hitpoints)+"/"+string(maxHitpoints));$(13_10)"
draw_self();
draw_set_color(c_blue);
draw_text(x,y-100,string(hitpoints)+"/"+string(maxHitpoints));