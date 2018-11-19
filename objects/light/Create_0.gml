/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14BA1887
/// @DnDArgument : "code" "vertex_format_begin();$(13_10)vertex_format_add_position();$(13_10)vertex_format_add_color();$(13_10)VertexFormat = vertex_format_end();$(13_10)surf = -1;$(13_10)VBuffer = vertex_create_buffer();$(13_10)LightPosRadius = shader_get_uniform(shader0, "u_fLightPositionRadius");$(13_10)"
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
VertexFormat = vertex_format_end();
surf = -1;
VBuffer = vertex_create_buffer();
LightPosRadius = shader_get_uniform(shader0, "u_fLightPositionRadius");