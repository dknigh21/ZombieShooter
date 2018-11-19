/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01B7B966
/// @DnDArgument : "code" "/// @description Cast a shadow of this line segment from the point light$(13_10)/// @param VB Vertex buffer$(13_10)/// @param Ax  x1$(13_10)/// @param Ay  y1$(13_10)/// @param Bx  x2$(13_10)/// @param By  y2$(13_10)/// @param Lx  Light x$(13_10)/// @param Ly  Light Y$(13_10)$(13_10)var _vb = argument0;$(13_10)var _Ax = argument1;$(13_10)var _Ay = argument2;$(13_10)var _Bx = argument3;$(13_10)var _By = argument4;$(13_10)var _Lx = argument5;$(13_10)var _Ly = argument6;$(13_10)$(13_10)// shadows are infinite - almost, just enough to go off screen$(13_10)var SHADOW_LENGTH = 20000;$(13_10)$(13_10)var Adx,Ady,Bdx,Bdy,len$(13_10)$(13_10)// get unit length to point 1$(13_10)Adx = _Ax-_Lx;      $(13_10)Ady = _Ay-_Ly;      $(13_10)len = (1.0*SHADOW_LENGTH)/sqrt( (Adx*Adx)+(Ady*Ady) );      // unit length scaler * Shadow length$(13_10)Adx = _Ax + Adx * len;$(13_10)Ady = _Ay + Ady * len;$(13_10)$(13_10)// get unit length to point 2$(13_10)Bdx = _Bx-_Lx;      $(13_10)Bdy = _By-_Ly;      $(13_10)len = (1.0*SHADOW_LENGTH) / sqrt( (Bdx*Bdx)+(Bdy*Bdy) );    // unit length scaler * Shadow length$(13_10)Bdx = _Bx + Bdx * len;$(13_10)Bdy = _By + Bdy * len;$(13_10)$(13_10)$(13_10)// now build a quad$(13_10)vertex_position(_vb, _Ax,_Ay);$(13_10)vertex_argb(_vb, $ff000000);$(13_10)vertex_position(_vb, _Bx,_By);$(13_10)vertex_argb(_vb, $ff000000);$(13_10)vertex_position(_vb, Adx,Ady);$(13_10)vertex_argb(_vb, $ff000000);$(13_10)$(13_10)vertex_position(_vb, _Bx,_By);$(13_10)vertex_argb(_vb, $ff000000);$(13_10)vertex_position(_vb, Adx,Ady);$(13_10)vertex_argb(_vb, $ff000000);$(13_10)vertex_position(_vb, Bdx,Bdy);$(13_10)vertex_argb(_vb, $ff000000);$(13_10)"
/// @description Cast a shadow of this line segment from the point light
/// @param VB Vertex buffer
/// @param Ax  x1
/// @param Ay  y1
/// @param Bx  x2
/// @param By  y2
/// @param Lx  Light x
/// @param Ly  Light Y

var _vb = argument0;
var _Ax = argument1;
var _Ay = argument2;
var _Bx = argument3;
var _By = argument4;
var _Lx = argument5;
var _Ly = argument6;

// shadows are infinite - almost, just enough to go off screen
var SHADOW_LENGTH = 20000;

var Adx,Ady,Bdx,Bdy,len

// get unit length to point 1
Adx = _Ax-_Lx;      
Ady = _Ay-_Ly;      
len = (1.0*SHADOW_LENGTH)/sqrt( (Adx*Adx)+(Ady*Ady) );      // unit length scaler * Shadow length
Adx = _Ax + Adx * len;
Ady = _Ay + Ady * len;

// get unit length to point 2
Bdx = _Bx-_Lx;      
Bdy = _By-_Ly;      
len = (1.0*SHADOW_LENGTH) / sqrt( (Bdx*Bdx)+(Bdy*Bdy) );    // unit length scaler * Shadow length
Bdx = _Bx + Bdx * len;
Bdy = _By + Bdy * len;


// now build a quad
vertex_position(_vb, _Ax,_Ay);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, _Bx,_By);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Adx,Ady);
vertex_argb(_vb, $ff000000);

vertex_position(_vb, _Bx,_By);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Adx,Ady);
vertex_argb(_vb, $ff000000);
vertex_position(_vb, Bdx,Bdy);
vertex_argb(_vb, $ff000000);