/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73D914AC
/// @DnDArgument : "code" "if (!surface_exists(surf)) {$(13_10)	surf = surface_create(room_width,room_height);$(13_10)}$(13_10)$(13_10)$(13_10)var lx = obj_player.x + lengthdir_x(75, obj_player.image_angle);$(13_10)var ly = obj_player.y + lengthdir_y(104, obj_player.image_angle);$(13_10)$(13_10)var tile_size = 32;$(13_10)var tilemap = layer_tilemap_get_id("Walls");$(13_10)var rad = 256$(13_10)var startx = floor((lx-rad)/tile_size);$(13_10)var endx = floor((lx+rad)/tile_size);$(13_10)var starty = floor((ly-rad)/tile_size);$(13_10)var endy = floor((ly+rad)/tile_size);$(13_10)$(13_10)//draw_set_color(c_yellow);$(13_10)//draw_rectangle(startx * tile_size, starty * tile_size, endx * tile_size, endy * tile_size, true);$(13_10)$(13_10)surface_set_target(surf);$(13_10)draw_clear_alpha(0,0);$(13_10)$(13_10)vertex_begin(VBuffer, VertexFormat);$(13_10)for (var yy=starty; yy<=endy; yy++)$(13_10){$(13_10)	for (var xx=startx; xx<=endx; xx++)$(13_10)	{$(13_10)		var tile = tilemap_get(tilemap, xx, yy);$(13_10)		if (tile!=0) $(13_10)		{$(13_10)			var px1 = xx*tile_size;$(13_10)			var py1 = yy*tile_size;$(13_10)			var px2 = px1+tile_size;$(13_10)			var py2 = py1+tile_size;$(13_10)			$(13_10)			if( !SignTest(px1,py1,px2,py1, lx,ly))$(13_10)			{$(13_10)				ProjectShadow(VBuffer, px1,py1,px2,py1, lx,ly);$(13_10)			}$(13_10)			if (!SignTest(px2,py1,px2,py2, lx,ly))$(13_10)			{$(13_10)				ProjectShadow(VBuffer, px2,py1,px2,py2, lx,ly);$(13_10)			}$(13_10)			if (!SignTest(px2,py2,px1,py2, lx,ly))$(13_10)			{$(13_10)				ProjectShadow(VBuffer, px2,py2,px1,py2, lx,ly);$(13_10)			}$(13_10)			if (!SignTest(px1,py2,px1,py1, lx,ly))$(13_10)			{$(13_10)				ProjectShadow(VBuffer, px1,py2,px1,py1, lx,ly);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)vertex_end(VBuffer);$(13_10)vertex_submit(VBuffer, pr_trianglelist, -1);$(13_10)surface_reset_target();$(13_10)$(13_10)$(13_10)shader_set(shader0);$(13_10)shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );$(13_10)draw_surface(surf,0,0);$(13_10)shader_reset();$(13_10)"
if (!surface_exists(surf)) {
	surf = surface_create(room_width,room_height);
}


var lx = obj_player.x + lengthdir_x(75, obj_player.image_angle);
var ly = obj_player.y + lengthdir_y(104, obj_player.image_angle);

var tile_size = 32;
var tilemap = layer_tilemap_get_id("Walls");
var rad = 256
var startx = floor((lx-rad)/tile_size);
var endx = floor((lx+rad)/tile_size);
var starty = floor((ly-rad)/tile_size);
var endy = floor((ly+rad)/tile_size);

//draw_set_color(c_yellow);
//draw_rectangle(startx * tile_size, starty * tile_size, endx * tile_size, endy * tile_size, true);

surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);
for (var yy=starty; yy<=endy; yy++)
{
	for (var xx=startx; xx<=endx; xx++)
	{
		var tile = tilemap_get(tilemap, xx, yy);
		if (tile!=0) 
		{
			var px1 = xx*tile_size;
			var py1 = yy*tile_size;
			var px2 = px1+tile_size;
			var py2 = py1+tile_size;
			
			if( !SignTest(px1,py1,px2,py1, lx,ly))
			{
				ProjectShadow(VBuffer, px1,py1,px2,py1, lx,ly);
			}
			if (!SignTest(px2,py1,px2,py2, lx,ly))
			{
				ProjectShadow(VBuffer, px2,py1,px2,py2, lx,ly);
			}
			if (!SignTest(px2,py2,px1,py2, lx,ly))
			{
				ProjectShadow(VBuffer, px2,py2,px1,py2, lx,ly);
			}
			if (!SignTest(px1,py2,px1,py1, lx,ly))
			{
				ProjectShadow(VBuffer, px1,py2,px1,py1, lx,ly);
			}
		}
	}
}
vertex_end(VBuffer);
vertex_submit(VBuffer, pr_trianglelist, -1);
surface_reset_target();


shader_set(shader0);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface(surf,0,0);
shader_reset();