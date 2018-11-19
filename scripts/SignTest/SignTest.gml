/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09099588
/// @DnDArgument : "code" "/// @description Which side of a line the point is on$(13_10)/// @param Ax$(13_10)/// @param Ay$(13_10)/// @param Bx$(13_10)/// @param By$(13_10)/// @param Lx$(13_10)/// @param Ly$(13_10)$(13_10)var _Ax = argument0;$(13_10)var _Ay = argument1;$(13_10)var _Bx = argument2;$(13_10)var _By = argument3;$(13_10)var _Lx = argument4;$(13_10)var _Ly = argument5;$(13_10)$(13_10)return ((_Bx - _Ax) * (_Ly - _Ay) - (_By - _Ay) * (_Lx - _Ax));"
/// @description Which side of a line the point is on
/// @param Ax
/// @param Ay
/// @param Bx
/// @param By
/// @param Lx
/// @param Ly

var _Ax = argument0;
var _Ay = argument1;
var _Bx = argument2;
var _By = argument3;
var _Lx = argument4;
var _Ly = argument5;

return ((_Bx - _Ax) * (_Ly - _Ay) - (_By - _Ay) * (_Lx - _Ax));