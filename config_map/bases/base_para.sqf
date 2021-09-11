// Export of 'base_para.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer1492 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer1472 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer1301 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};
private _layer1520 = (_allWhitelisted || {"shoothouse pit" in _layerWhiteList}) && {!("shoothouse pit" in _layerBlackList)};
private _layer17 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer21 = (_allWhitelisted || {"bargate" in _layerWhiteList}) && {!("bargate" in _layerBlackList)};
private _layer24 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item1295 = "";
if (_layerRoot) then {
	_item1295 = createMarker ["armory",[17333.4,13345.9,0]];
	_this = _item1295;
	_markers pushback _this;
	_markerIDs pushback 1295;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Armory";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item1296 = "";
if (_layerRoot) then {
	_item1296 = createMarker ["fob",[17439,13136.1,0]];
	_this = _item1296;
	_markers pushback _this;
	_markerIDs pushback 1296;
	_this setMarkerType "n_hq";
	_this setMarkerText "FOB Phoenix";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorUNKNOWN";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item1148 = grpNull;
if (_layerRoot) then {
	_item1148 = createGroup west;
	_this = _item1148;
	_groups pushback _this;
	_groupIDs pushback 1148;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item23 = objNull;
if (_layer21 && _layer24) then {
	_item23 = createVehicle ["Land_BarGate_F",[17496.9,13192,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [17496.9,13192,17.3922];
	_this setVectorDirAndUp [[-0.725715,-0.687991,0.00269419],[-0.00133721,0.0053265,0.999985]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
};

private _item1239 = objNull;
if (_layer21 && _layer24) then {
	_item1239 = createVehicle ["Land_BarGate_F",[17351.5,13359.6,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item1239;
	_objects pushback _this;
	_objectIDs pushback 1239;
	_this setPosWorld [17351.5,13359.6,16.4192];
	_this setVectorDirAndUp [[0.73104,0.68201,-0.0210519],[0.0213271,0.00799908,0.999741]];
	gate_1 = _this;
	_this setVehicleVarName "gate_1";
	0 remoteExec ['setFeatureType', _this];
};

private _item18 = objNull;
if (_layer17 && _layer24) then {
	_item18 = createVehicle ["Land_RepairDepot_01_tan_F",[17415.6,13189.6,-6.67572e-005],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [17415.6,13189.6,16.1457];
	_this setVectorDirAndUp [[-0.998696,0.050055,0.0100511],[0.0106641,0.0119943,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item14 = objNull;
if (_layer24) then {
	_item14 = createVehicle ["Land_InfoStand_V1_F",[17426.2,13141.1,-6.38962e-005],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [17426.2,13141.1,15.2153];
	_this setVectorDirAndUp [[-0.692622,-0.721301,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item1294 = objNull;
if (_layer24) then {
	_item1294 = createVehicle ["Land_InfoStand_V1_F",[17332.7,13364.8,0.348],[],0,"CAN_COLLIDE"];
	_this = _item1294;
	_objects pushback _this;
	_objectIDs pushback 1294;
	_this setPosWorld [17332.7,13364.8,13.6479];
	_this setVectorDirAndUp [[0.679618,0.733509,0.00918569],[-0.00677183,-0.00624812,0.999958]];
	s4_button = _this;
	_this setVehicleVarName "s4_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = createVehicle ["Land_HBarrier_3_F",[17492.2,13196.7,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [17492.2,13196.7,14.12];
	_this setVectorDirAndUp [[0.714346,0.699792,-0.000900648],[-0.00133721,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = createVehicle ["Land_HBarrier_3_F",[17501.1,13187.3,0],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [17501.1,13187.3,14.1898];
	_this setVectorDirAndUp [[0.714331,0.699807,0.00103588],[-0.00666818,0.00532638,0.999964]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1194 = objNull;
if (_layerRoot) then {
	_item1194 = createSimpleObject ["Land_Notepad_F",[17428.3,13117.4,16.0543]];
	_this = _item1194;
	_objects pushback _this;
	_objectIDs pushback 1194;
	_this setPosWorld [17428.3,13117.4,16.0654];
	_this setVectorDirAndUp [[-0.539955,-0.841694,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item1196 = objNull;
if (_layerRoot) then {
	_item1196 = createVehicle ["Land_Medevac_house_V1_F",[17461.5,13120.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1196;
	_objects pushback _this;
	_objectIDs pushback 1196;
	_this setPosWorld [17461.5,13120.5,15.5422];
	_this setVectorDirAndUp [[0.704961,0.709246,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item1199 = objNull;
if (_layerRoot) then {
	_item1199 = createSimpleObject ["Land_BarrelWater_grey_F",[17324.8,13361.8,13.067]];
	_this = _item1199;
	_objects pushback _this;
	_objectIDs pushback 1199;
	_this setPosWorld [17324.8,13361.8,13.4718];
	_this setVectorDirAndUp [[0.844612,-0.535379,-0.000126053],[0.000358884,0.000330726,1]];
	0 remoteExec ['setFeatureType', _this];
	if (160 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 160, true]};
};

private _item1200 = objNull;
if (_layerRoot) then {
	_item1200 = createSimpleObject ["Land_Pallets_stack_F",[17323.3,13362.5,13.0423]];
	_this = _item1200;
	_objects pushback _this;
	_objectIDs pushback 1200;
	_this setPosWorld [17323.3,13362.5,13.4718];
	_this setVectorDirAndUp [[-0.735708,-0.677237,0.00913054],[0.013112,-0.000763176,0.999914]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1202 = objNull;
if (_layerRoot) then {
	_item1202 = createSimpleObject ["Land_File1_F",[17335.6,13359.2,13.9459]];
	_this = _item1202;
	_objects pushback _this;
	_objectIDs pushback 1202;
	_this setPosWorld [17335.6,13359.2,13.9545];
	_this setVectorDirAndUp [[0.21866,-0.975801,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item1203 = objNull;
if (_layerRoot) then {
	_item1203 = createSimpleObject ["Land_FoodSacks_01_small_brown_F",[17326.5,13359.9,13.2165]];
	_this = _item1203;
	_objects pushback _this;
	_objectIDs pushback 1203;
	_this setPosWorld [17326.5,13359.9,13.433];
	_this setVectorDirAndUp [[0.677239,-0.735703,0.00936039],[-0.00598021,0.00721751,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1204 = objNull;
if (_layerRoot) then {
	_item1204 = createSimpleObject ["Land_Canteen_F",[17335.1,13359.2,13.941]];
	_this = _item1204;
	_objects pushback _this;
	_objectIDs pushback 1204;
	_this setPosWorld [17335.1,13359.2,14.0713];
	_this setVectorDirAndUp [[0.975801,0.21866,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1205 = objNull;
if (_layerRoot) then {
	_item1205 = createSimpleObject ["Land_DisinfectantSpray_F",[17326.8,13359.2,13.2331]];
	_this = _item1205;
	_objects pushback _this;
	_objectIDs pushback 1205;
	_this setPosWorld [17326.8,13359.2,13.3712];
	_this setVectorDirAndUp [[0.95303,0.302875,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1207 = objNull;
if (_layerRoot) then {
	_item1207 = createSimpleObject ["Land_PenBlack_F",[17326.4,13360.2,13.9732]];
	_this = _item1207;
	_objects pushback _this;
	_objectIDs pushback 1207;
	_this setPosWorld [17326.4,13360.2,13.981];
	_this setVectorDirAndUp [[-0.448233,0.893917,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1208 = objNull;
if (_layerRoot) then {
	_item1208 = createSimpleObject ["Land_PencilGreen_F",[17326.4,13360.3,13.9731]];
	_this = _item1208;
	_objects pushback _this;
	_objectIDs pushback 1208;
	_this setPosWorld [17326.4,13360.3,13.9773];
	_this setVectorDirAndUp [[-0.0587776,-0.998271,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1209 = objNull;
if (_layerRoot) then {
	_item1209 = createSimpleObject ["Land_PaperBox_01_small_closed_brown_food_F",[17331.2,13356.5,13.1933]];
	_this = _item1209;
	_objects pushback _this;
	_objectIDs pushback 1209;
	_this setPosWorld [17331.2,13356.5,13.4003];
	_this setVectorDirAndUp [[0.463765,-0.885958,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item1210 = objNull;
if (_layerRoot) then {
	_item1210 = createSimpleObject ["Land_PaperBox_01_small_closed_white_med_F",[17330.2,13355.5,13.1984]];
	_this = _item1210;
	_objects pushback _this;
	_objectIDs pushback 1210;
	_this setPosWorld [17330.2,13355.5,13.4053];
	_this setVectorDirAndUp [[0.735538,0.677082,-0.0233123],[0.0171518,0.0157886,0.999728]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item1211 = objNull;
if (_layerRoot) then {
	_item1211 = createSimpleObject ["Land_BakedBeans_F",[17335.4,13359.6,13.9441]];
	_this = _item1211;
	_objects pushback _this;
	_objectIDs pushback 1211;
	_this setPosWorld [17335.4,13359.6,14.0032];
	_this setVectorDirAndUp [[0.535379,0.844612,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1212 = objNull;
if (_layerRoot) then {
	_item1212 = createSimpleObject ["Land_Ammobox_rounds_F",[17334.7,13358.3,13.9423]];
	_this = _item1212;
	_objects pushback _this;
	_objectIDs pushback 1212;
	_this setPosWorld [17334.7,13358.3,14.0477];
	_this setVectorDirAndUp [[0.885958,0.463765,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1214 = objNull;
if (_layerRoot) then {
	_item1214 = createSimpleObject ["Land_Ammobox_rounds_F",[17334.2,13358.3,13.9442]];
	_this = _item1214;
	_objects pushback _this;
	_objectIDs pushback 1214;
	_this setPosWorld [17334.2,13358.3,14.0496];
	_this setVectorDirAndUp [[0.463765,-0.885958,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1215 = objNull;
if (_layerRoot) then {
	_item1215 = createSimpleObject ["Land_Pliers_F",[17328.1,13360.4,13.9796]];
	_this = _item1215;
	_objects pushback _this;
	_objectIDs pushback 1215;
	_this setPosWorld [17328.1,13360.4,13.9834];
	_this setVectorDirAndUp [[-0.298536,-0.954399,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1216 = objNull;
if (_layerRoot) then {
	_item1216 = createSimpleObject ["Land_Money_F",[17331.9,13356,13.9267]];
	_this = _item1216;
	_objects pushback _this;
	_objectIDs pushback 1216;
	_this setPosWorld [17331.9,13356,13.9622];
	_this setVectorDirAndUp [[0.286196,-0.958171,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1217 = objNull;
if (_layerRoot) then {
	_item1217 = createVehicle ["Land_PaperBox_open_full_F",[17324.9,13363.8,0.161],[],0,"CAN_COLLIDE"];
	_this = _item1217;
	_objects pushback _this;
	_objectIDs pushback 1217;
	_this setPosWorld [17324.9,13363.8,13.6502];
	_this setVectorDirAndUp [[0.975802,0.218654,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1218 = objNull;
if (_layerRoot) then {
	_item1218 = createSimpleObject ["Land_WoodenCounter_01_F",[17330.8,13356,13.0507]];
	_this = _item1218;
	_objects pushback _this;
	_objectIDs pushback 1218;
	_this setPosWorld [17330.8,13356,13.5265];
	_this setVectorDirAndUp [[-0.677266,0.735739,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1219 = objNull;
if (_layerRoot) then {
	_item1219 = createSimpleObject ["Land_WoodenCounter_01_F",[17331.3,13355.4,13.0507]];
	_this = _item1219;
	_objects pushback _this;
	_objectIDs pushback 1219;
	_this setPosWorld [17331.3,13355.4,13.5265];
	_this setVectorDirAndUp [[0.677266,-0.735738,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1220 = objNull;
if (_layerRoot) then {
	_item1220 = createSimpleObject ["Land_WoodenCounter_01_F",[17327.4,13359.8,13.0507]];
	_this = _item1220;
	_objects pushback _this;
	_objectIDs pushback 1220;
	_this setPosWorld [17327.4,13359.8,13.5265];
	_this setVectorDirAndUp [[0.677239,-0.735703,0.00936039],[-0.00598021,0.00721751,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1221 = objNull;
if (_layerRoot) then {
	_item1221 = createSimpleObject ["Land_WoodenCounter_01_F",[17326.9,13360.4,13.0507]];
	_this = _item1221;
	_objects pushback _this;
	_objectIDs pushback 1221;
	_this setPosWorld [17326.9,13360.4,13.5265];
	_this setVectorDirAndUp [[-0.677239,0.735703,-0.0093604],[-0.00598021,0.00721751,0.999956]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1222 = objNull;
if (_layerRoot) then {
	_item1222 = createSimpleObject ["Land_WoodenCounter_01_F",[17334.4,13359.3,13.0507]];
	_this = _item1222;
	_objects pushback _this;
	_objectIDs pushback 1222;
	_this setPosWorld [17334.4,13359.3,13.5265];
	_this setVectorDirAndUp [[-0.677266,0.735739,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1223 = objNull;
if (_layerRoot) then {
	_item1223 = createSimpleObject ["Land_WoodenCounter_01_F",[17334.9,13358.7,13.0511]];
	_this = _item1223;
	_objects pushback _this;
	_objectIDs pushback 1223;
	_this setPosWorld [17334.9,13358.7,13.527];
	_this setVectorDirAndUp [[0.677266,-0.735738,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1224 = objNull;
if (_layerRoot) then {
	_item1224 = createVehicle ["Land_CratesPlastic_F",[17334.4,13358.3,0.493751],[],0,"CAN_COLLIDE"];
	_this = _item1224;
	_objects pushback _this;
	_objectIDs pushback 1224;
	_this setPosWorld [17334.4,13358.3,13.4305];
	_this setVectorDirAndUp [[0.677266,-0.735738,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1229 = objNull;
if (_layerRoot) then {
	_item1229 = createSimpleObject ["Box_Syndicate_Ammo_F",[17335.4,13359.2,13.2092]];
	_this = _item1229;
	_objects pushback _this;
	_objectIDs pushback 1229;
	_this setPosWorld [17335.4,13359.2,13.4193];
	_this setVectorDirAndUp [[0.677266,-0.735738,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1230 = objNull;
if (_layerRoot) then {
	_item1230 = createSimpleObject ["Box_Syndicate_Ammo_F",[17333.8,13358.9,13.1979]];
	_this = _item1230;
	_objects pushback _this;
	_objectIDs pushback 1230;
	_this setPosWorld [17333.8,13358.9,13.4079];
	_this setVectorDirAndUp [[0.677266,-0.735738,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1232 = objNull;
if (_layerRoot) then {
	_item1232 = createSimpleObject ["Land_EmergencyBlanket_01_stack_F",[17331.8,13355.8,13.1984]];
	_this = _item1232;
	_objects pushback _this;
	_objectIDs pushback 1232;
	_this setPosWorld [17331.8,13355.8,13.402];
	_this setVectorDirAndUp [[0.844612,-0.535379,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1233 = objNull;
if (_layerRoot) then {
	_item1233 = createSimpleObject ["Land_EmergencyBlanket_01_stack_F",[17330.7,13354.8,13.1766]];
	_this = _item1233;
	_objects pushback _this;
	_objectIDs pushback 1233;
	_this setPosWorld [17330.7,13354.8,13.3801];
	_this setVectorDirAndUp [[0.735538,0.677082,-0.0233123],[0.0171518,0.0157886,0.999728]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1234 = objNull;
if (_layerRoot) then {
	_item1234 = createSimpleObject ["Land_PlasticCase_01_medium_gray_F",[17327.9,13360.3,13.2308]];
	_this = _item1234;
	_objects pushback _this;
	_objectIDs pushback 1234;
	_this setPosWorld [17327.9,13360.3,13.4248];
	_this setVectorDirAndUp [[-0.735539,-0.677081,0.0233148],[0.0276714,0.00436021,0.999608]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item1235 = objNull;
if (_layerRoot) then {
	_item1235 = createSimpleObject ["Land_PaperBox_01_small_destroyed_brown_F",[17321.7,13366.3,13.0448]];
	_this = _item1235;
	_objects pushback _this;
	_objectIDs pushback 1235;
	_this setPosWorld [17321.7,13366.3,13.2651];
	_this setVectorDirAndUp [[0.463605,-0.885961,-0.0119822],[0.0167756,-0.00474415,0.999848]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1236 = objNull;
if (_layerRoot) then {
	_item1236 = createSimpleObject ["Land_PaperBox_01_small_closed_white_med_F",[17322.4,13366.9,13.0623]];
	_this = _item1236;
	_objects pushback _this;
	_objectIDs pushback 1236;
	_this setPosWorld [17322.4,13366.9,13.2693];
	_this setVectorDirAndUp [[0.844612,-0.535379,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item1237 = objNull;
if (_layerRoot) then {
	_item1237 = createSimpleObject ["Land_Cargo10_yellow_F",[17337.9,13354.8,13.0464]];
	_this = _item1237;
	_objects pushback _this;
	_objectIDs pushback 1237;
	_this setPosWorld [17337.9,13354.8,14.3986];
	_this setVectorDirAndUp [[0.735533,0.677077,0.0236309],[-0.030496,-0.00175615,0.999533]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 15] call ace_cargo_fnc_setSize;;
};

private _item1242 = objNull;
if (_layerRoot) then {
	_item1242 = createVehicle ["Land_HBarrier_1_F",[17347.4,13363.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1242;
	_objects pushback _this;
	_objectIDs pushback 1242;
	_this setPosWorld [17347.4,13363.7,13.1234];
	_this setVectorDirAndUp [[-0.72685,0.686796,-0.000648354],[0.00666787,0.00800072,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1243 = objNull;
if (_layerRoot) then {
	_item1243 = createVehicle ["Land_HBarrier_1_F",[17355.5,13354.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1243;
	_objects pushback _this;
	_objectIDs pushback 1243;
	_this setPosWorld [17355.5,13354.8,13.0278];
	_this setVectorDirAndUp [[-0.726608,0.686946,0.0120512],[0.0266571,0.0106603,0.999588]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1244 = objNull;
if (_layerRoot) then {
	_item1244 = createVehicle ["Box_IND_AmmoVeh_F",[17421.2,13191.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1244;
	_objects pushback _this;
	_objectIDs pushback 1244;
	_this setPosWorld [17421.2,13191.3,14.4446];
	_this setVectorDirAndUp [[-0.57498,0.81816,-0.00335569],[0.00933759,0.0106633,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
};

private _item1245 = objNull;
if (_layerRoot) then {
	_item1245 = createVehicle ["CargoNet_01_barrels_F",[17410.3,13190.8,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item1245;
	_objects pushback _this;
	_objectIDs pushback 1245;
	_this setPosWorld [17410.3,13190.8,14.3809];
	_this setVectorDirAndUp [[-0.41729,-0.908493,0.0225868],[0.027987,0.0119953,0.999536]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	if (1000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 1000] call ace_refuel_fnc_makeSource};
	if ([0.3,0.3,0.3] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.3,0.3,0.3]], true]};
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item1247 = objNull;
if (_layerRoot) then {
	_item1247 = createVehicle ["Gunrack1",[17331,13355.7,1.21665],[],0,"CAN_COLLIDE"];
	_this = _item1247;
	_objects pushback _this;
	_objectIDs pushback 1247;
	_this setPosWorld [17331,13355.7,14.5155];
	_this setVectorDirAndUp [[-0.718561,-0.695464,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item1248 = objNull;
if (_layerRoot) then {
	_item1248 = createVehicle ["Gunrack1",[17327,13360.2,1.16262],[],0,"CAN_COLLIDE"];
	_this = _item1248;
	_objects pushback _this;
	_objectIDs pushback 1248;
	_this setPosWorld [17327,13360.2,14.5177];
	_this setVectorDirAndUp [[-0.718548,-0.695477,0.000722578],[-0.00598017,0.00721747,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item1267 = objNull;
if (_layerRoot) then {
	_item1267 = createVehicle ["Land_PortableLight_double_F",[17490.1,13195.5,-0.000340462],[],0,"CAN_COLLIDE"];
	_this = _item1267;
	_objects pushback _this;
	_objectIDs pushback 1267;
	_this setPosWorld [17490.1,13195.5,14.4055];
	_this setVectorDirAndUp [[-0.901845,-0.432059,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1268 = objNull;
if (_layerRoot) then {
	_item1268 = createVehicle ["Land_TentLamp_01_suspended_F",[17327.8,13363.5,4.734],[],0,"CAN_COLLIDE"];
	_this = _item1268;
	_objects pushback _this;
	_objectIDs pushback 1268;
	_this setPosWorld [17327.8,13363.5,17.6105];
	_this setVectorDirAndUp [[-0.76712,-0.641503,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,4] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1271 = objNull;
if (_layerRoot) then {
	_item1271 = createSimpleObject ["Land_CampingTable_F",[17511.6,13158.7,13.7718]];
	_this = _item1271;
	_objects pushback _this;
	_objectIDs pushback 1271;
	_this setPosWorld [17511.6,13158.7,14.1833];
	_this setVectorDirAndUp [[0.139322,0.990209,-0.0086807],[-0.00399675,0.00932842,0.999949]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1272 = objNull;
if (_layerRoot) then {
	_item1272 = createSimpleObject ["Land_CampingTable_F",[17508.6,13165,13.6975]];
	_this = _item1272;
	_objects pushback _this;
	_objectIDs pushback 1272;
	_this setPosWorld [17508.6,13165,14.109];
	_this setVectorDirAndUp [[0.169274,0.98552,-0.00983367],[-0.00399675,0.010664,0.999935]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1273 = objNull;
if (_layerRoot) then {
	_item1273 = createSimpleObject ["Land_CampingTable_F",[17511.6,13159.6,13.7628]];
	_this = _item1273;
	_objects pushback _this;
	_objectIDs pushback 1273;
	_this setPosWorld [17511.6,13159.6,14.1744];
	_this setVectorDirAndUp [[0.0650832,0.997839,-0.00904861],[-0.00399675,0.00932842,0.999949]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1274 = objNull;
if (_layerRoot) then {
	_item1274 = createSimpleObject ["Land_CampingTable_F",[17508.5,13163.6,13.712]];
	_this = _item1274;
	_objects pushback _this;
	_objectIDs pushback 1274;
	_this setPosWorld [17508.5,13163.6,14.1235];
	_this setVectorDirAndUp [[-0.065989,-0.997766,0.0103771],[-0.00399675,0.010664,0.999935]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1275 = objNull;
if (_layerRoot) then {
	_item1275 = createSimpleObject ["Land_CampingChair_V1_F",[17510.9,13158.1,13.7746]];
	_this = _item1275;
	_objects pushback _this;
	_objectIDs pushback 1275;
	_this setPosWorld [17510.9,13158.1,14.2822];
	_this setVectorDirAndUp [[0.0263569,-0.999608,0.0094306],[-0.00399675,0.00932842,0.999949]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1276 = objNull;
if (_layerRoot) then {
	_item1276 = createSimpleObject ["Land_CampingChair_V1_F",[17508.9,13162.7,13.7238]];
	_this = _item1276;
	_objects pushback _this;
	_objectIDs pushback 1276;
	_this setPosWorld [17508.9,13162.7,14.2314];
	_this setVectorDirAndUp [[-0.0559723,-0.998378,0.0104237],[-0.00399675,0.010664,0.999935]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1277 = objNull;
if (_layerRoot) then {
	_item1277 = createSimpleObject ["Land_CampingChair_V1_F",[17507.7,13162.9,13.7161]];
	_this = _item1277;
	_objects pushback _this;
	_objectIDs pushback 1277;
	_this setPosWorld [17507.7,13162.9,14.2238];
	_this setVectorDirAndUp [[0.892576,0.450895,-0.00124102],[-0.00399675,0.010664,0.999935]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1278 = objNull;
if (_layerRoot) then {
	_item1278 = createSimpleObject ["Land_CampingChair_V1_F",[17508.2,13166.5,13.6803]];
	_this = _item1278;
	_objects pushback _this;
	_objectIDs pushback 1278;
	_this setPosWorld [17508.2,13166.5,14.1879];
	_this setVectorDirAndUp [[0.548021,0.836437,-0.00672989],[-0.00399675,0.010664,0.999935]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1279 = objNull;
if (_layerRoot) then {
	_item1279 = createSimpleObject ["Land_CampingChair_V1_F",[17509.2,13166.2,13.6879]];
	_this = _item1279;
	_objects pushback _this;
	_objectIDs pushback 1279;
	_this setPosWorld [17509.2,13166.2,14.1956];
	_this setVectorDirAndUp [[-0.204258,0.978874,-0.00919422],[-0.00666818,0.00800072,0.999946]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1280 = objNull;
if (_layerRoot) then {
	_item1280 = createSimpleObject ["Land_CampingChair_V1_F",[17511.4,13160.7,13.7521]];
	_this = _item1280;
	_objects pushback _this;
	_objectIDs pushback 1280;
	_this setPosWorld [17511.4,13160.7,14.2597];
	_this setVectorDirAndUp [[0.312409,0.949917,-0.007613],[-0.00399675,0.00932842,0.999949]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1281 = objNull;
if (_layerRoot) then {
	_item1281 = createSimpleObject ["Land_CampingChair_V1_F",[17511.6,13157.4,13.7838]];
	_this = _item1281;
	_objects pushback _this;
	_objectIDs pushback 1281;
	_this setPosWorld [17511.6,13157.4,14.2914];
	_this setVectorDirAndUp [[-0.617817,-0.786307,0.004866],[-0.00399675,0.00932842,0.999949]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1286 = objNull;
if (_layerRoot) then {
	_item1286 = createSimpleObject ["Land_CampingChair_V1_F",[17512.4,13160.6,13.7571]];
	_this = _item1286;
	_objects pushback _this;
	_objectIDs pushback 1286;
	_this setPosWorld [17512.4,13160.6,14.2647];
	_this setVectorDirAndUp [[0.0557282,0.998405,-0.00909128],[-0.00399675,0.00932842,0.999949]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1149 = objNull;
if (_layerRoot) then {
	_item1149 = _item1148 createUnit ["B_officer_F",[17434.1,13127.2,0.610518],[],0,"CAN_COLLIDE"];
	_item1148 selectLeader _item1149;
	_this = _item1149;
	_objects pushback _this;
	_objectIDs pushback 1149;
	_this setPosWorld [17434.1,13127.2,15.252];
	_this setVectorDirAndUp [[0.800424,-0.599435,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kyle Moore";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_AT_TABLE",["hubsittingattableu_idle1","hubsittingattableu_idle2","hubsittingattableu_idle3"],false,true] # 0 isEqualTo '') then      {        ["SIT_AT_TABLE",["hubsittingattableu_idle1","hubsittingattableu_idle2","hubsittingattableu_idle3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1151 = objNull;
if (_layerRoot) then {
	_item1151 = _item1148 createUnit ["B_officer_F",[17428.8,13116.8,0.644556],[],0,"CAN_COLLIDE"];
	_this = _item1151;
	_objects pushback _this;
	_objectIDs pushback 1151;
	_this setPosWorld [17428.8,13116.8,15.2876];
	_this setVectorDirAndUp [[-0.791048,0.611754,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "George Smith";;
	_this setface "WhiteHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1152 = objNull;
if (_layerRoot) then {
	_item1152 = _item1148 createUnit ["B_officer_F",[17422.9,13139.7,0.587084],[],0,"CAN_COLLIDE"];
	_this = _item1152;
	_objects pushback _this;
	_objectIDs pushback 1152;
	_this setPosWorld [17422.9,13139.8,15.2285];
	_this setVectorDirAndUp [[0.840505,0.541804,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_MilCap_mcamo","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Henry Edwards";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_IDLE",["Acts_CivilIdle_1","Acts_CivilIdle_2"],false,true] # 0 isEqualTo '') then      {        ["STAND_IDLE",["Acts_CivilIdle_1","Acts_CivilIdle_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1251 = objNull;
if (_layerRoot) then {
	_item1251 = _item1148 createUnit ["B_Soldier_F",[17494.1,13197,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item1251;
	_objects pushback _this;
	_objectIDs pushback 1251;
	_this setPosWorld [17494.1,13197,13.325];
	_this setVectorDirAndUp [[0.77798,0.628289,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Toby Newton";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male09ENG";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,true] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1254 = objNull;
if (_layerRoot) then {
	_item1254 = _item1148 createUnit ["B_Soldier_F",[17356.6,13355.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1254;
	_objects pushback _this;
	_objectIDs pushback 1254;
	_this setPosWorld [17356.6,13355.4,12.2913];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Toby Kirby";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,true] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1255 = objNull;
if (_layerRoot) then {
	_item1255 = _item1148 createUnit ["B_Soldier_F",[17495.4,13201.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1255;
	_objects pushback _this;
	_objectIDs pushback 1255;
	_this setPosWorld [17495.4,13201.8,13.3163];
	_this setVectorDirAndUp [[0.980159,0.198213,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Dylan Jones";;
	_this setface "WhiteHead_08";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN",["inbasemoves_lean1"],false,true] # 0 isEqualTo '') then      {        ["LEAN",["inbasemoves_lean1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1256 = objNull;
if (_layerRoot) then {
	_item1256 = _item1148 createUnit ["B_Soldier_F",[17410.5,13193.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1256;
	_objects pushback _this;
	_objectIDs pushback 1256;
	_this setPosWorld [17410.5,13193.7,13.7987];
	_this setVectorDirAndUp [[0.559497,0.828833,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "James Price";;
	_this setface "AfricanHead_02";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1257 = objNull;
if (_layerRoot) then {
	_item1257 = _item1148 createUnit ["B_Soldier_F",[17411.8,13195.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1257;
	_objects pushback _this;
	_objectIDs pushback 1257;
	_this setPosWorld [17411.8,13195.2,13.7226];
	_this setVectorDirAndUp [[-0.693948,-0.720025,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "John Thomas";;
	_this setface "WhiteHead_03";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,true] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1258 = objNull;
if (_layerRoot) then {
	_item1258 = _item1148 createUnit ["B_Soldier_F",[17507,13185,4.373],[],0,"CAN_COLLIDE"];
	_this = _item1258;
	_objects pushback _this;
	_objectIDs pushback 1258;
	_this setPosWorld [17507,13185.1,17.8328];
	_this setVectorDirAndUp [[0.46617,0.884695,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Charlie Byrne";;
	_this setface "AfricanHead_03";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,true] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1261 = objNull;
if (_layerRoot) then {
	_item1261 = _item1148 createUnit ["B_Soldier_F",[17323.4,13362.1,0.130373],[],0,"CAN_COLLIDE"];
	_this = _item1261;
	_objects pushback _this;
	_objectIDs pushback 1261;
	_this setPosWorld [17323.4,13362.1,13.041];
	_this setVectorDirAndUp [[0.848233,-0.529623,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Fred Acker";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_HIGH2",["hubsittinghighb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_HIGH2",["hubsittinghighb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1263 = objNull;
if (_layerRoot) then {
	_item1263 = _item1148 createUnit ["B_Soldier_F",[17494.1,13152.4,3.06171],[],0,"CAN_COLLIDE"];
	_this = _item1263;
	_objects pushback _this;
	_objectIDs pushback 1263;
	_this setPosWorld [17494.1,13152.4,16.8374];
	_this setVectorDirAndUp [[0.342183,-0.939633,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Jammie James";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,true] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1265 = objNull;
if (_layerRoot) then {
	_item1265 = _item1148 createUnit ["B_Soldier_F",[17435.9,13151.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1265;
	_objects pushback _this;
	_objectIDs pushback 1265;
	_this setPosWorld [17435.9,13151.4,14.6304];
	_this setVectorDirAndUp [[0.777739,-0.628588,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Lewis Davis";;
	_this setface "WhiteHead_21";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1266 = objNull;
if (_layerRoot) then {
	_item1266 = _item1148 createUnit ["B_Soldier_F",[17437.3,13149.8,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item1266;
	_objects pushback _this;
	_objectIDs pushback 1266;
	_this setPosWorld [17437.3,13149.9,14.6325];
	_this setVectorDirAndUp [[-0.79853,0.601955,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Harvey Walker";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,true] # 0 isEqualTo '') then      {        ["STAND_IA",["amovpercmstpslowwrfldnon","amovpercmstpslowwrfldnon","aidlpercmstpslowwrfldnon_g01","aidlpercmstpslowwrfldnon_g02","aidlpercmstpslowwrfldnon_g03","aidlpercmstpslowwrfldnon_g05"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1270 = objNull;
if (_layerRoot) then {
	_item1270 = _item1148 createUnit ["B_Soldier_F",[17374.5,13112.3,4.33957],[],0,"CAN_COLLIDE"];
	_this = _item1270;
	_objects pushback _this;
	_objectIDs pushback 1270;
	_this setPosWorld [17374.5,13112.4,19.7691];
	_this setVectorDirAndUp [[-0.807166,-0.590325,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Jack Walker";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male06ENG";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,true] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1291 = objNull;
if (_layerRoot) then {
	_item1291 = _item1148 createUnit ["B_Soldier_F",[17512.4,13160.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1291;
	_objects pushback _this;
	_objectIDs pushback 1291;
	_this setPosWorld [17512.4,13160.6,13.7596];
	_this setVectorDirAndUp [[-0.0849997,-0.996381,0],[0,0,1]];
	_this setRank "SERGEANT";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Kyle Ward";;
	_this setface "WhiteHead_10";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U2",["hubsittingchairub_idle1","hubsittingchairub_idle2","hubsittingchairub_idle3","hubsittingchairub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1293 = objNull;
if (_layerRoot) then {
	_item1293 = _item1148 createUnit ["B_Soldier_F",[17511.7,13157.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1293;
	_objects pushback _this;
	_objectIDs pushback 1293;
	_this setPosWorld [17511.7,13157.5,13.785];
	_this setVectorDirAndUp [[0.64913,0.760678,0],[0,0,1]];
	_this setRank "CORPORAL";
	0 remoteExec ['setFeatureType', _this];
	_this setname "Bradley Harris";;
	_this setface "WhiteHead_05";;
	_this setspeaker "Male03ENG";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT1",["hubsittingchaira_idle1","hubsittingchaira_idle2","hubsittingchaira_idle3","hubsittingchaira_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT1",["hubsittingchaira_idle1","hubsittingchaira_idle2","hubsittingchaira_idle3","hubsittingchaira_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item1153 = objNull;
if (_layerRoot) then {
	_item1153 = createVehicle ["Land_CampingChair_V2_white_F",[17421.2,13127.1,0.585453],[],0,"CAN_COLLIDE"];
	_this = _item1153;
	_objects pushback _this;
	_objectIDs pushback 1153;
	_this setPosWorld [17421.2,13127.1,15.7319];
	_this setVectorDirAndUp [[0.691594,0.722286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1154 = objNull;
if (_layerRoot) then {
	_item1154 = createVehicle ["Land_CampingChair_V2_white_F",[17423.2,13124.6,0.586987],[],0,"CAN_COLLIDE"];
	_this = _item1154;
	_objects pushback _this;
	_objectIDs pushback 1154;
	_this setPosWorld [17423.2,13124.6,15.7335];
	_this setVectorDirAndUp [[0.823557,0.567234,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1155 = objNull;
if (_layerRoot) then {
	_item1155 = createVehicle ["Land_CampingChair_V2_white_F",[17421.8,13126.2,0.585945],[],0,"CAN_COLLIDE"];
	_this = _item1155;
	_objects pushback _this;
	_objectIDs pushback 1155;
	_this setPosWorld [17421.8,13126.2,15.7324];
	_this setVectorDirAndUp [[0.691594,0.722286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1156 = objNull;
if (_layerRoot) then {
	_item1156 = createVehicle ["Land_CampingChair_V2_white_F",[17422.5,13125.4,0.586493],[],0,"CAN_COLLIDE"];
	_this = _item1156;
	_objects pushback _this;
	_objectIDs pushback 1156;
	_this setPosWorld [17422.5,13125.4,15.733];
	_this setVectorDirAndUp [[0.691594,0.722286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1157 = objNull;
if (_layerRoot) then {
	_item1157 = createVehicle ["Land_CampingChair_V2_white_F",[17420,13125.9,0.584555],[],0,"CAN_COLLIDE"];
	_this = _item1157;
	_objects pushback _this;
	_objectIDs pushback 1157;
	_this setPosWorld [17420,13125.9,15.731];
	_this setVectorDirAndUp [[0.691594,0.722286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1158 = objNull;
if (_layerRoot) then {
	_item1158 = createVehicle ["Land_CampingChair_V2_white_F",[17422.1,13123.6,0.584302],[],0,"CAN_COLLIDE"];
	_this = _item1158;
	_objects pushback _this;
	_objectIDs pushback 1158;
	_this setPosWorld [17422.1,13123.6,15.7326];
	_this setVectorDirAndUp [[0.823557,0.567234,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1159 = objNull;
if (_layerRoot) then {
	_item1159 = createVehicle ["Land_CampingChair_V2_white_F",[17420.7,13125.3,0.585077],[],0,"CAN_COLLIDE"];
	_this = _item1159;
	_objects pushback _this;
	_objectIDs pushback 1159;
	_this setPosWorld [17420.7,13125.3,15.7316];
	_this setVectorDirAndUp [[0.691594,0.722286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1160 = objNull;
if (_layerRoot) then {
	_item1160 = createVehicle ["Land_CampingChair_V2_white_F",[17421.4,13124.5,0.584936],[],0,"CAN_COLLIDE"];
	_this = _item1160;
	_objects pushback _this;
	_objectIDs pushback 1160;
	_this setPosWorld [17421.4,13124.5,15.7321];
	_this setVectorDirAndUp [[0.691594,0.722286,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1162 = objNull;
if (_layerRoot) then {
	_item1162 = createVehicle ["Desk",[17428.1,13117.3,0.588169],[],0,"CAN_COLLIDE"];
	_this = _item1162;
	_objects pushback _this;
	_objectIDs pushback 1162;
	_this setPosWorld [17428.1,13117.3,15.6377];
	_this setVectorDirAndUp [[0.685595,-0.727983,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1163 = objNull;
if (_layerRoot) then {
	_item1163 = createVehicle ["Desk",[17434.7,13126.7,0.595928],[],0,"CAN_COLLIDE"];
	_this = _item1163;
	_objects pushback _this;
	_objectIDs pushback 1163;
	_this setPosWorld [17434.7,13126.7,15.643];
	_this setVectorDirAndUp [[-0.716602,0.697482,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1161 = objNull;
if (_layerRoot) then {
	_item1161 = createVehicle ["Desk",[17427.4,13118,0.587374],[],0,"CAN_COLLIDE"];
	_this = _item1161;
	_objects pushback _this;
	_objectIDs pushback 1161;
	_this setPosWorld [17427.4,13118,15.6372];
	_this setVectorDirAndUp [[-0.716602,0.697482,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1164 = objNull;
if (_layerRoot) then {
	_item1164 = createSimpleObject ["Land_Document_01_F",[17434.9,13127,16.0586]];
	_this = _item1164;
	_objects pushback _this;
	_objectIDs pushback 1164;
	_this setPosWorld [17434.9,13127,16.0639];
	_this setVectorDirAndUp [[0.800721,-0.599037,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1165 = objNull;
if (_layerRoot) then {
	_item1165 = createSimpleObject ["Land_File1_F",[17434.3,13126.3,16.0584]];
	_this = _item1165;
	_objects pushback _this;
	_objectIDs pushback 1165;
	_this setPosWorld [17434.3,13126.3,16.067];
	_this setVectorDirAndUp [[0.574514,-0.818495,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item1166 = objNull;
if (_layerRoot) then {
	_item1166 = createVehicle ["Land_GymBench_01_F",[17418.9,13140.4,0.584003],[],0,"CAN_COLLIDE"];
	_this = _item1166;
	_objects pushback _this;
	_objectIDs pushback 1166;
	_this setPosWorld [17418.9,13140.4,15.8133];
	_this setVectorDirAndUp [[-0.697488,0.716597,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1167 = objNull;
if (_layerRoot) then {
	_item1167 = createVehicle ["Land_GymRack_03_F",[17417.2,13138.8,0.582642],[],0,"CAN_COLLIDE"];
	_this = _item1167;
	_objects pushback _this;
	_objectIDs pushback 1167;
	_this setPosWorld [17417.2,13138.8,15.8053];
	_this setVectorDirAndUp [[-0.71612,0.697977,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1168 = objNull;
if (_layerRoot) then {
	_item1168 = createVehicle ["Land_Laptop_unfolded_F",[17434.6,13126.7,1.41559],[],0,"CAN_COLLIDE"];
	_this = _item1168;
	_objects pushback _this;
	_objectIDs pushback 1168;
	_this setPosWorld [17434.6,13126.7,16.2117];
	_this setVectorDirAndUp [[-0.722731,0.691129,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item1169 = objNull;
if (_layerRoot) then {
	_item1169 = createSimpleObject ["Land_OfficeCabinet_01_F",[17422.2,13119.5,15.2261]];
	_this = _item1169;
	_objects pushback _this;
	_objectIDs pushback 1169;
	_this setPosWorld [17422.2,13119.5,16.0066];
	_this setVectorDirAndUp [[-0.73183,-0.681487,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1171 = objNull;
if (_layerRoot) then {
	_item1171 = createSimpleObject ["Land_OfficeChair_01_F",[17428.8,13116.7,15.1994]];
	_this = _item1171;
	_objects pushback _this;
	_objectIDs pushback 1171;
	_this setPosWorld [17428.8,13116.7,15.8738];
	_this setVectorDirAndUp [[0.667017,-0.745043,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1172 = objNull;
if (_layerRoot) then {
	_item1172 = createSimpleObject ["Land_OfficeChair_01_F",[17434.1,13127.2,15.2211]];
	_this = _item1172;
	_objects pushback _this;
	_objectIDs pushback 1172;
	_this setPosWorld [17434.1,13127.2,15.8955];
	_this setVectorDirAndUp [[-0.742497,0.669849,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1170 = objNull;
if (_layerRoot) then {
	_item1170 = createSimpleObject ["Land_OfficeChair_01_F",[17426.4,13118.9,15.2292]];
	_this = _item1170;
	_objects pushback _this;
	_objectIDs pushback 1170;
	_this setPosWorld [17426.4,13118.9,15.9036];
	_this setVectorDirAndUp [[-0.912191,0.409766,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1181 = objNull;
if (_layerRoot) then {
	_item1181 = createSimpleObject ["Land_PencilYellow_F",[17434.1,13126.4,16.0582]];
	_this = _item1181;
	_objects pushback _this;
	_objectIDs pushback 1181;
	_this setPosWorld [17434.1,13126.4,16.0624];
	_this setVectorDirAndUp [[0.0271286,-0.999632,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1182 = objNull;
if (_layerRoot) then {
	_item1182 = createSimpleObject ["Fridge_01_closed_F",[17425.6,13133.8,15.2291]];
	_this = _item1182;
	_objects pushback _this;
	_objectIDs pushback 1182;
	_this setPosWorld [17425.6,13133.8,15.7475];
	_this setVectorDirAndUp [[-0.694784,0.719218,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1183 = objNull;
if (_layerRoot) then {
	_item1183 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[17421.6,13120.1,15.2257]];
	_this = _item1183;
	_objects pushback _this;
	_objectIDs pushback 1183;
	_this setPosWorld [17421.6,13120.1,15.6436];
	_this setVectorDirAndUp [[-0.740453,-0.672108,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [1,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [2,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [3,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [4,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [5,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [6,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [7,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [8,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
	_this setObjectTextureGlobal [9,"a3\props_f_enoch\military\camps\data\portablecabinet_01_books_co.paa"];
};

private _item1184 = objNull;
if (_layerRoot) then {
	_item1184 = createVehicle ["Land_TentLamp_01_suspended_F",[17425.7,13127.9,4.02249],[],0,"CAN_COLLIDE"];
	_this = _item1184;
	_objects pushback _this;
	_objectIDs pushback 1184;
	_this setPosWorld [17425.7,13127.9,18.7065];
	_this setVectorDirAndUp [[-0.681507,0.731811,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,4] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item1185 = objNull;
if (_layerRoot) then {
	_item1185 = createVehicle ["CUP_vending_machine",[17424.5,13140.5,0.588601],[],0,"CAN_COLLIDE"];
	_this = _item1185;
	_objects pushback _this;
	_objectIDs pushback 1185;
	_this setPosWorld [17424.5,13140.5,16.2701];
	_this setVectorDirAndUp [[0.733545,0.67964,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1186 = objNull;
if (_layerRoot) then {
	_item1186 = createSimpleObject ["Land_WaterCooler_01_new_F",[17426.3,13134.4,15.2296]];
	_this = _item1186;
	_objects pushback _this;
	_objectIDs pushback 1186;
	_this setPosWorld [17426.3,13134.4,15.9616];
	_this setVectorDirAndUp [[-0.694781,0.719222,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item1187 = objNull;
if (_layerRoot) then {
	_item1187 = createVehicle ["Land_MapBoard_01_Wall_F",[17435.8,13129.9,2.1464],[],0,"CAN_COLLIDE"];
	_this = _item1187;
	_objects pushback _this;
	_objectIDs pushback 1187;
	_this setPosWorld [17435.8,13129.9,17.3379];
	_this setVectorDirAndUp [[0.702335,0.711847,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item1188 = objNull;
if (_layerRoot) then {
	_item1188 = createVehicle ["Land_MapBoard_01_Wall_Altis_F",[17419.3,13122,1.77997],[],0,"CAN_COLLIDE"];
	_this = _item1188;
	_objects pushback _this;
	_objectIDs pushback 1188;
	_this setPosWorld [17419.3,13122,16.9755];
	_this setVectorDirAndUp [[-0.724201,-0.689589,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item1189 = objNull;
if (_layerRoot) then {
	_item1189 = createSimpleObject ["MapBoard_seismic_F",[17428.5,13114.1,15.2238]];
	_this = _item1189;
	_objects pushback _this;
	_objectIDs pushback 1189;
	_this setPosWorld [17428.5,13114.1,16.1927];
	_this setVectorDirAndUp [[-0.440242,-0.897879,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item1297 = objNull;
if (_layerRoot) then {
	_item1297 = createVehicle ["Land_LampHalogen_F",[17443.3,13085.7,0.000131607],[],0,"CAN_COLLIDE"];
	_this = _item1297;
	_objects pushback _this;
	_objectIDs pushback 1297;
	_this setPosWorld [17443.3,13085.7,21.4196];
	_this setVectorDirAndUp [[0.99989,-0.0148005,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1298 = objNull;
if (_layerRoot) then {
	_item1298 = createVehicle ["Land_LampHalogen_F",[17490.5,13202.9,2.38419e-005],[],0,"CAN_COLLIDE"];
	_this = _item1298;
	_objects pushback _this;
	_objectIDs pushback 1298;
	_this setPosWorld [17490.5,13202.9,19.289];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1299 = objNull;
if (_layerRoot) then {
	_item1299 = createVehicle ["Land_LampHalogen_F",[17464,13175.9,0.000250816],[],0,"CAN_COLLIDE"];
	_this = _item1299;
	_objects pushback _this;
	_objectIDs pushback 1299;
	_this setPosWorld [17464,13175.9,19.6764];
	_this setVectorDirAndUp [[0.486418,-0.873726,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1300 = objNull;
if (_layerRoot) then {
	_item1300 = createVehicle ["Land_LampHalogen_F",[17478.6,13158.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1300;
	_objects pushback _this;
	_objectIDs pushback 1300;
	_this setPosWorld [17478.6,13158.2,19.7229];
	_this setVectorDirAndUp [[0.0356521,-0.999364,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1302 = objNull;
if (_layer1301 && _layer1520) then {
	_item1302 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17615.7,13012.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1302;
	_objects pushback _this;
	_objectIDs pushback 1302;
	_this setPosWorld [17615.7,13012.1,22.1926];
	_this setVectorDirAndUp [[-0.648996,0.76066,-0.0141961],[0,0.0186596,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1303 = objNull;
if (_layer1301 && _layer1520) then {
	_item1303 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17621.8,13017.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1303;
	_objects pushback _this;
	_objectIDs pushback 1303;
	_this setPosWorld [17621.8,13017.3,22.1649];
	_this setVectorDirAndUp [[-0.648986,0.760679,-0.0135992],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1304 = objNull;
if (_layer1301 && _layer1520) then {
	_item1304 = createVehicle ["Land_Shoot_House_Wall_F",[17622.2,13004.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1304;
	_objects pushback _this;
	_objectIDs pushback 1304;
	_this setPosWorld [17622.2,13004.5,22.3812];
	_this setVectorDirAndUp [[-0.648975,0.760069,-0.0335664],[-0.00799344,0.0373051,0.999272]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1305 = objNull;
if (_layer1301 && _layer1520) then {
	_item1305 = createVehicle ["Land_Shoot_House_Wall_F",[17627.1,13012.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1305;
	_objects pushback _this;
	_objectIDs pushback 1305;
	_this setPosWorld [17627.1,13012.6,22.2634];
	_this setVectorDirAndUp [[0.760759,0.649032,-0.00155576],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1306 = objNull;
if (_layer1301 && _layer1520) then {
	_item1306 = createVehicle ["Land_Shoot_House_Wall_F",[17624.5,13015.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1306;
	_objects pushback _this;
	_objectIDs pushback 1306;
	_this setPosWorld [17624.5,13015.7,22.2006];
	_this setVectorDirAndUp [[0.760782,0.648992,-0.00460018],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1307 = objNull;
if (_layer1301 && _layer1520) then {
	_item1307 = createVehicle ["Land_Shoot_House_Wall_F",[17628.3,13009.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1307;
	_objects pushback _this;
	_objectIDs pushback 1307;
	_this setPosWorld [17628.3,13009.7,22.3321];
	_this setVectorDirAndUp [[-0.648967,0.760519,-0.0212689],[-0.00933489,0.0199938,0.999757]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1308 = objNull;
if (_layer1301 && _layer1520) then {
	_item1308 = createVehicle ["Land_Shoot_House_Wall_F",[17617.8,13002,0],[],0,"CAN_COLLIDE"];
	_this = _item1308;
	_objects pushback _this;
	_objectIDs pushback 1308;
	_this setPosWorld [17617.8,13002,22.4274];
	_this setVectorDirAndUp [[0.760738,0.648939,-0.0124968],[-0.012,0.0333126,0.999373]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1309 = objNull;
if (_layer1301 && _layer1520) then {
	_item1309 = createVehicle ["Land_Shoot_House_Wall_F",[17613.9,13006.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1309;
	_objects pushback _this;
	_objectIDs pushback 1309;
	_this setPosWorld [17613.9,13006.6,22.2795];
	_this setVectorDirAndUp [[0.760768,0.649023,-0.000834256],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1310 = objNull;
if (_layer1301 && _layer1520) then {
	_item1310 = createVehicle ["Land_Shoot_House_Wall_F",[17615.2,13005.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1310;
	_objects pushback _this;
	_objectIDs pushback 1310;
	_this setPosWorld [17615.2,13005.1,22.3061];
	_this setVectorDirAndUp [[0.760768,0.649023,-0.000834256],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1311 = objNull;
if (_layer1301 && _layer1520) then {
	_item1311 = createVehicle ["Land_Shoot_House_Wall_F",[17623.7,13005.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1311;
	_objects pushback _this;
	_objectIDs pushback 1311;
	_this setPosWorld [17623.7,13005.8,22.3601];
	_this setVectorDirAndUp [[-0.648975,0.760563,-0.0193901],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1312 = objNull;
if (_layer1301 && _layer1520) then {
	_item1312 = createVehicle ["Land_Shoot_House_Wall_F",[17626.8,13008.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1312;
	_objects pushback _this;
	_objectIDs pushback 1312;
	_this setPosWorld [17626.8,13008.4,22.3408];
	_this setVectorDirAndUp [[-0.648959,0.760531,-0.0211182],[-0.0106641,0.0186617,0.999769]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1313 = objNull;
if (_layer1301 && _layer1520) then {
	_item1313 = createVehicle ["Land_Shoot_House_Wall_F",[17620.3,13016,0],[],0,"CAN_COLLIDE"];
	_this = _item1313;
	_objects pushback _this;
	_objectIDs pushback 1313;
	_this setPosWorld [17620.3,13016,22.1704];
	_this setVectorDirAndUp [[-0.648975,0.760694,-0.0133054],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1314 = objNull;
if (_layer1301 && _layer1520) then {
	_item1314 = createVehicle ["Land_Shoot_House_Wall_F",[17628.4,13011.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1314;
	_objects pushback _this;
	_objectIDs pushback 1314;
	_this setPosWorld [17628.4,13011.1,22.3049];
	_this setVectorDirAndUp [[0.760759,0.649007,-0.00587597],[-0.00933489,0.0199938,0.999757]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1315 = objNull;
if (_layer1301 && _layer1520) then {
	_item1315 = createVehicle ["Land_Shoot_House_Wall_F",[17625.3,13007.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1315;
	_objects pushback _this;
	_objectIDs pushback 1315;
	_this setPosWorld [17625.3,13007.1,22.3488];
	_this setVectorDirAndUp [[-0.648959,0.760531,-0.0211182],[-0.0106641,0.0186617,0.999769]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1316 = objNull;
if (_layer1301 && _layer1520) then {
	_item1316 = createVehicle ["Land_Shoot_House_Wall_F",[17619.2,13001.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1316;
	_objects pushback _this;
	_objectIDs pushback 1316;
	_this setPosWorld [17619.2,13001.9,22.4481];
	_this setVectorDirAndUp [[-0.648949,0.76011,-0.0331294],[-0.012,0.0333126,0.999373]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1317 = objNull;
if (_layer1301 && _layer1520) then {
	_item1317 = createVehicle ["Land_Shoot_House_Wall_F",[17612.7,13009.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1317;
	_objects pushback _this;
	_objectIDs pushback 1317;
	_this setPosWorld [17612.7,13009.5,22.2388];
	_this setVectorDirAndUp [[-0.648975,0.760694,-0.0133054],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1318 = objNull;
if (_layer1301 && _layer1520) then {
	_item1318 = createVehicle ["Land_Shoot_House_Wall_F",[17616.5,13003.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1318;
	_objects pushback _this;
	_objectIDs pushback 1318;
	_this setPosWorld [17616.5,13003.6,22.3654];
	_this setVectorDirAndUp [[0.760768,0.648838,-0.0155421],[-0.00799344,0.0333121,0.999413]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1319 = objNull;
if (_layer1301 && _layer1520) then {
	_item1319 = createVehicle ["Land_Shoot_House_Wall_F",[17627.2,13014,0],[],0,"CAN_COLLIDE"];
	_this = _item1319;
	_objects pushback _this;
	_objectIDs pushback 1319;
	_this setPosWorld [17627.2,13014,22.2457];
	_this setVectorDirAndUp [[-0.648967,0.760644,-0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1320 = objNull;
if (_layer1301 && _layer1520) then {
	_item1320 = createVehicle ["Land_Shoot_House_Wall_F",[17626.8,13017.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1320;
	_objects pushback _this;
	_objectIDs pushback 1320;
	_this setPosWorld [17626.8,13017.6,22.194];
	_this setVectorDirAndUp [[-0.648967,0.760644,-0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1321 = objNull;
if (_layer1301 && _layer1520) then {
	_item1321 = createVehicle ["Land_Shoot_House_Wall_F",[17625.3,13016.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1321;
	_objects pushback _this;
	_objectIDs pushback 1321;
	_this setPosWorld [17625.3,13016.3,22.1971];
	_this setVectorDirAndUp [[-0.648967,0.760644,-0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1322 = objNull;
if (_layer1301 && _layer1520) then {
	_item1322 = createVehicle ["Land_Shoot_House_Wall_F",[17628.3,13018.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1322;
	_objects pushback _this;
	_objectIDs pushback 1322;
	_this setPosWorld [17628.3,13018.9,22.1909];
	_this setVectorDirAndUp [[-0.648967,0.760644,-0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1323 = objNull;
if (_layer1301 && _layer1520) then {
	_item1323 = createVehicle ["Land_Shoot_House_Wall_F",[17630.3,13016.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1323;
	_objects pushback _this;
	_objectIDs pushback 1323;
	_this setPosWorld [17630.3,13016.6,22.2395];
	_this setVectorDirAndUp [[-0.648967,0.760644,-0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1324 = objNull;
if (_layer1301 && _layer1520) then {
	_item1324 = createVehicle ["Land_Shoot_House_Wall_F",[17612.6,13008.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1324;
	_objects pushback _this;
	_objectIDs pushback 1324;
	_this setPosWorld [17612.6,13008.1,22.2529];
	_this setVectorDirAndUp [[0.760768,0.649023,-0.000834256],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1325 = objNull;
if (_layer1301 && _layer1520) then {
	_item1325 = createVehicle ["Land_Shoot_House_Wall_F",[17614.2,13010.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1325;
	_objects pushback _this;
	_objectIDs pushback 1325;
	_this setPosWorld [17614.2,13010.8,22.2168];
	_this setVectorDirAndUp [[-0.648996,0.76066,-0.0141961],[0,0.0186596,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1326 = objNull;
if (_layer1301 && _layer1520) then {
	_item1326 = createVehicle ["Land_Shoot_House_Wall_F",[17625.1,13022.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1326;
	_objects pushback _this;
	_objectIDs pushback 1326;
	_this setPosWorld [17625.1,13022.7,22.1172];
	_this setVectorDirAndUp [[0.648967,-0.760684,0.014167],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1327 = objNull;
if (_layer1301 && _layer1520) then {
	_item1327 = createVehicle ["Land_Shoot_House_Wall_F",[17623.6,13021.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1327;
	_objects pushback _this;
	_objectIDs pushback 1327;
	_this setPosWorld [17623.6,13021.4,22.1207];
	_this setVectorDirAndUp [[0.648986,-0.760696,0.0125861],[-0.0053265,0.0119998,0.999914]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1328 = objNull;
if (_layer1301 && _layer1520) then {
	_item1328 = createVehicle ["Land_Shoot_House_Wall_F",[17613,13013.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1328;
	_objects pushback _this;
	_objectIDs pushback 1328;
	_this setPosWorld [17613,13013.8,22.1755];
	_this setVectorDirAndUp [[0.760792,0.648974,-0.00518771],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1329 = objNull;
if (_layer1301 && _layer1520) then {
	_item1329 = createVehicle ["Land_Shoot_House_Wall_F",[17612.3,13013.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1329;
	_objects pushback _this;
	_objectIDs pushback 1329;
	_this setPosWorld [17612.3,13013.1,22.1807];
	_this setVectorDirAndUp [[-0.648996,0.760768,-0.00608135],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1330 = objNull;
if (_layer1301 && _layer1520) then {
	_item1330 = createVehicle ["Land_Shoot_House_Wall_F",[17615.8,13013.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1330;
	_objects pushback _this;
	_objectIDs pushback 1330;
	_this setPosWorld [17615.8,13013.5,22.1773];
	_this setVectorDirAndUp [[-0.760792,-0.648975,0.00518771],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1331 = objNull;
if (_layer1301 && _layer1520) then {
	_item1331 = createVehicle ["Land_Shoot_House_Wall_F",[17614.3,13012.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1331;
	_objects pushback _this;
	_objectIDs pushback 1331;
	_this setPosWorld [17614.3,13012.2,22.1905];
	_this setVectorDirAndUp [[-0.760792,-0.648883,0.01211],[0,0.0186596,0.999826]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1332 = objNull;
if (_layer1301 && _layer1520) then {
	_item1332 = createVehicle ["Land_Shoot_House_Wall_F",[17614.5,13015.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1332;
	_objects pushback _this;
	_objectIDs pushback 1332;
	_this setPosWorld [17614.5,13015.1,22.1651];
	_this setVectorDirAndUp [[-0.760792,-0.648975,0.00518771],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1333 = objNull;
if (_layer1301 && _layer1520) then {
	_item1333 = createVehicle ["Land_Shoot_House_Wall_F",[17618.8,13014.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1333;
	_objects pushback _this;
	_objectIDs pushback 1333;
	_this setPosWorld [17618.8,13014.7,22.1721];
	_this setVectorDirAndUp [[-0.648975,0.760694,-0.0133054],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1334 = objNull;
if (_layer1301 && _layer1520) then {
	_item1334 = createVehicle ["Land_Shoot_House_Wall_F",[17621.9,13018.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1334;
	_objects pushback _this;
	_objectIDs pushback 1334;
	_this setPosWorld [17621.9,13018.7,22.1465];
	_this setVectorDirAndUp [[-0.760781,-0.648992,0.00460019],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1335 = objNull;
if (_layer1301 && _layer1520) then {
	_item1335 = createVehicle ["Land_Shoot_House_Wall_F",[17620.6,13020.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1335;
	_objects pushback _this;
	_objectIDs pushback 1335;
	_this setPosWorld [17620.6,13020.2,22.1196];
	_this setVectorDirAndUp [[-0.760781,-0.648998,0.00373587],[-0.0053265,0.0119998,0.999914]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1336 = objNull;
if (_layer1301 && _layer1520) then {
	_item1336 = createVehicle ["Land_Shoot_House_Wall_F",[17619.1,13018.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1336;
	_objects pushback _this;
	_objectIDs pushback 1336;
	_this setPosWorld [17619.1,13018.9,22.1285];
	_this setVectorDirAndUp [[-0.760781,-0.648992,0.00460019],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1337 = objNull;
if (_layer1301 && _layer1520) then {
	_item1337 = createVehicle ["Land_Shoot_House_Wall_F",[17628.8,13015.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1337;
	_objects pushback _this;
	_objectIDs pushback 1337;
	_this setPosWorld [17628.8,13015.3,22.2426];
	_this setVectorDirAndUp [[-0.648967,0.760644,-0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1338 = objNull;
if (_layer1301 && _layer1520) then {
	_item1338 = createVehicle ["Land_Shoot_House_Wall_F",[17615.3,13006.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1338;
	_objects pushback _this;
	_objectIDs pushback 1338;
	_this setPosWorld [17615.3,13006.5,22.2919];
	_this setVectorDirAndUp [[-0.648975,0.760694,-0.0133054],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1339 = objNull;
if (_layer1301 && _layer1520) then {
	_item1339 = createVehicle ["Land_Shoot_House_Wall_F",[17618.3,13009.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1339;
	_objects pushback _this;
	_objectIDs pushback 1339;
	_this setPosWorld [17618.3,13009.1,22.256];
	_this setVectorDirAndUp [[-0.648975,0.760563,-0.0193901],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1340 = objNull;
if (_layer1301 && _layer1520) then {
	_item1340 = createVehicle ["Land_Shoot_House_Wall_F",[17618.7,13013.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1340;
	_objects pushback _this;
	_objectIDs pushback 1340;
	_this setPosWorld [17618.7,13013.3,22.1862];
	_this setVectorDirAndUp [[-0.760768,-0.649024,0.000834263],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1341 = objNull;
if (_layer1301 && _layer1520) then {
	_item1341 = createVehicle ["Land_Shoot_House_Wall_F",[17620,13011.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1341;
	_objects pushback _this;
	_objectIDs pushback 1341;
	_this setPosWorld [17620,13011.8,22.2185];
	_this setVectorDirAndUp [[-0.760768,-0.648996,0.0060261],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1342 = objNull;
if (_layer1301 && _layer1520) then {
	_item1342 = createVehicle ["Land_Shoot_House_Wall_F",[17619.8,13010.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1342;
	_objects pushback _this;
	_objectIDs pushback 1342;
	_this setPosWorld [17619.8,13010.4,22.2439];
	_this setVectorDirAndUp [[-0.648975,0.760563,-0.0193901],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1343 = objNull;
if (_layer1301 && _layer1520) then {
	_item1343 = createVehicle ["Land_Shoot_House_Wall_F",[17625.7,13012.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1343;
	_objects pushback _this;
	_objectIDs pushback 1343;
	_this setPosWorld [17625.7,13012.7,22.2487];
	_this setVectorDirAndUp [[0.648967,-0.760644,0.0161962],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1344 = objNull;
if (_layer1301 && _layer1520) then {
	_item1344 = createVehicle ["Land_Shoot_House_Wall_F",[17624.2,13011.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1344;
	_objects pushback _this;
	_objectIDs pushback 1344;
	_this setPosWorld [17624.2,13011.4,22.2586];
	_this setVectorDirAndUp [[0.648975,-0.760563,0.0193901],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1345 = objNull;
if (_layer1301 && _layer1520) then {
	_item1345 = createVehicle ["Land_Shoot_House_Wall_F",[17624.1,13010,0],[],0,"CAN_COLLIDE"];
	_this = _item1345;
	_objects pushback _this;
	_objectIDs pushback 1345;
	_this setPosWorld [17624.1,13010,22.2839];
	_this setVectorDirAndUp [[0.760768,0.648996,-0.00602609],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1346 = objNull;
if (_layer1301 && _layer1520) then {
	_item1346 = createVehicle ["Land_Shoot_House_Wall_F",[17621.1,13008.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1346;
	_objects pushback _this;
	_objectIDs pushback 1346;
	_this setPosWorld [17621.1,13008.9,22.2826];
	_this setVectorDirAndUp [[0.648975,-0.760563,0.0193901],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1347 = objNull;
if (_layer1301 && _layer1520) then {
	_item1347 = createVehicle ["Land_Shoot_House_Wall_F",[17621,13007.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1347;
	_objects pushback _this;
	_objectIDs pushback 1347;
	_this setPosWorld [17621,13007.5,22.308];
	_this setVectorDirAndUp [[0.760768,0.648996,-0.00602609],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1348 = objNull;
if (_layer1301 && _layer1520) then {
	_item1348 = createVehicle ["Land_Shoot_House_Wall_F",[17622.3,13005.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1348;
	_objects pushback _this;
	_objectIDs pushback 1348;
	_this setPosWorld [17622.3,13005.9,22.3468];
	_this setVectorDirAndUp [[0.760768,0.648996,-0.00602609],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1349 = objNull;
if (_layer1301 && _layer1520) then {
	_item1349 = createVehicle ["Land_Shoot_House_Wall_F",[17622.6,13008.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1349;
	_objects pushback _this;
	_objectIDs pushback 1349;
	_this setPosWorld [17622.6,13008.8,22.2959];
	_this setVectorDirAndUp [[0.760768,0.648996,-0.00602609],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1350 = objNull;
if (_layer1301 && _layer1520) then {
	_item1350 = createVehicle ["Land_Shoot_House_Wall_F",[17621.4,13011.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1350;
	_objects pushback _this;
	_objectIDs pushback 1350;
	_this setPosWorld [17621.4,13011.7,22.2319];
	_this setVectorDirAndUp [[0.648975,-0.760563,0.0193901],[-0.0080009,0.0186622,0.999794]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1351 = objNull;
if (_layer1301 && _layer1520) then {
	_item1351 = createVehicle ["Land_Shoot_House_Wall_F",[17624.4,13014.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1351;
	_objects pushback _this;
	_objectIDs pushback 1351;
	_this setPosWorld [17624.4,13014.3,22.2188];
	_this setVectorDirAndUp [[0.648986,-0.760679,0.0135992],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1352 = objNull;
if (_layer1301 && _layer1520) then {
	_item1352 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17609.7,13016.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1352;
	_objects pushback _this;
	_objectIDs pushback 1352;
	_this setPosWorld [17609.7,13016.1,22.1509];
	_this setVectorDirAndUp [[0.648912,-0.760685,0.0164634],[-0.0159977,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1353 = objNull;
if (_layer1301 && _layer1520) then {
	_item1353 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17615.7,13021.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1353;
	_objects pushback _this;
	_objectIDs pushback 1353;
	_this setPosWorld [17615.7,13021.3,22.087];
	_this setVectorDirAndUp [[0.648993,-0.760708,0.0114622],[0.00265204,0.0173281,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1354 = objNull;
if (_layer1301 && _layer1520) then {
	_item1354 = createVehicle ["Land_Shoot_House_Wall_F",[17617.4,13024,0],[],0,"CAN_COLLIDE"];
	_this = _item1354;
	_objects pushback _this;
	_objectIDs pushback 1354;
	_this setPosWorld [17617.4,13024,22.0566];
	_this setVectorDirAndUp [[0.76079,0.648973,-0.00577042],[-0.00265204,0.0119999,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1355 = objNull;
if (_layer1301 && _layer1520) then {
	_item1355 = createVehicle ["Land_Shoot_House_Wall_F",[17608.1,13014.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1355;
	_objects pushback _this;
	_objectIDs pushback 1355;
	_this setPosWorld [17608.1,13014.8,22.137];
	_this setVectorDirAndUp [[-0.648912,0.760685,-0.0164634],[-0.0159977,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1356 = objNull;
if (_layer1301 && _layer1520) then {
	_item1356 = createVehicle ["Land_Shoot_House_Wall_F",[17606.2,13026.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1356;
	_objects pushback _this;
	_objectIDs pushback 1356;
	_this setPosWorld [17606.2,13026.4,21.8942];
	_this setVectorDirAndUp [[-0.648664,0.760318,-0.0339368],[-0.031983,0.0173193,0.999338]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1357 = objNull;
if (_layer1301 && _layer1520) then {
	_item1357 = createVehicle ["Land_Shoot_House_Wall_F",[17606.7,13015,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1357;
	_objects pushback _this;
	_objectIDs pushback 1357;
	_this setPosWorld [17606.7,13015,22.1146];
	_this setVectorDirAndUp [[0.760711,0.649071,0.00510186],[-0.0146643,0.0093275,0.999849]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1358 = objNull;
if (_layer1301 && _layer1520) then {
	_item1358 = createVehicle ["Land_Shoot_House_Wall_F",[17614.8,13027.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1358;
	_objects pushback _this;
	_objectIDs pushback 1358;
	_this setPosWorld [17614.8,13027.1,22.0132];
	_this setVectorDirAndUp [[0.76079,0.648973,-0.00577042],[-0.00265204,0.0119999,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1359 = objNull;
if (_layer1301 && _layer1520) then {
	_item1359 = createVehicle ["Land_Shoot_House_Wall_F",[17611.2,13017.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1359;
	_objects pushback _this;
	_objectIDs pushback 1359;
	_this setPosWorld [17611.2,13017.4,22.1459];
	_this setVectorDirAndUp [[-0.648996,0.760768,-0.00608135],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1361 = objNull;
if (_layer1301 && _layer1520) then {
	_item1361 = createVehicle ["Land_Shoot_House_Wall_F",[17604.1,13018,0],[],0,"CAN_COLLIDE"];
	_this = _item1361;
	_objects pushback _this;
	_objectIDs pushback 1361;
	_this setPosWorld [17604.1,13018,22.0481];
	_this setVectorDirAndUp [[0.760711,0.649071,0.00510186],[-0.0146643,0.0093275,0.999849]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1362 = objNull;
if (_layer1301 && _layer1520) then {
	_item1362 = createVehicle ["Land_Shoot_House_Wall_F",[17602.8,13019.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1362;
	_objects pushback _this;
	_objectIDs pushback 1362;
	_this setPosWorld [17602.8,13019.5,22.0148];
	_this setVectorDirAndUp [[0.760711,0.649071,0.00510186],[-0.0146643,0.0093275,0.999849]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1363 = objNull;
if (_layer1301 && _layer1520) then {
	_item1363 = createVehicle ["Land_Shoot_House_Wall_F",[17601.5,13021,0],[],0,"CAN_COLLIDE"];
	_this = _item1363;
	_objects pushback _this;
	_objectIDs pushback 1363;
	_this setPosWorld [17601.5,13021,21.8897];
	_this setVectorDirAndUp [[0.758123,0.650757,0.0420254],[-0.0837048,0.0331981,0.995937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1364 = objNull;
if (_layer1301 && _layer1520) then {
	_item1364 = createVehicle ["Land_Shoot_House_Wall_F",[17601.6,13022.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1364;
	_objects pushback _this;
	_objectIDs pushback 1364;
	_this setPosWorld [17601.6,13022.5,21.8521];
	_this setVectorDirAndUp [[-0.646718,0.75856,-0.0796396],[-0.0837048,0.0331981,0.995937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1365 = objNull;
if (_layer1301 && _layer1520) then {
	_item1365 = createVehicle ["Land_Shoot_House_Wall_F",[17603.2,13023.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1365;
	_objects pushback _this;
	_objectIDs pushback 1365;
	_this setPosWorld [17603.2,13023.8,21.891];
	_this setVectorDirAndUp [[-0.648912,0.760024,-0.0357224],[-0.0159977,0.0333107,0.999317]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1366 = objNull;
if (_layer1301 && _layer1520) then {
	_item1366 = createVehicle ["Land_Shoot_House_Wall_F",[17604.7,13025.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1366;
	_objects pushback _this;
	_objectIDs pushback 1366;
	_this setPosWorld [17604.7,13025.1,21.8721];
	_this setVectorDirAndUp [[-0.648912,0.760024,-0.0357224],[-0.0159977,0.0333107,0.999317]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1367 = objNull;
if (_layer1301 && _layer1520) then {
	_item1367 = createVehicle ["Land_Shoot_House_Wall_F",[17612.2,13030.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1367;
	_objects pushback _this;
	_objectIDs pushback 1367;
	_this setPosWorld [17612.2,13030.1,21.924];
	_this setVectorDirAndUp [[0.76079,0.648775,-0.0170119],[-0.00265204,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1368 = objNull;
if (_layer1301 && _layer1520) then {
	_item1368 = createVehicle ["Land_Shoot_House_Wall_F",[17607.7,13027.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1368;
	_objects pushback _this;
	_objectIDs pushback 1368;
	_this setPosWorld [17607.7,13027.6,21.9139];
	_this setVectorDirAndUp [[-0.648664,0.758095,-0.067292],[-0.031983,0.0611867,0.997614]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1369 = objNull;
if (_layer1301 && _layer1520) then {
	_item1369 = createVehicle ["Land_Shoot_House_Wall_F",[17614.2,13020,0],[],0,"CAN_COLLIDE"];
	_this = _item1369;
	_objects pushback _this;
	_objectIDs pushback 1369;
	_this setPosWorld [17614.2,13020,22.1135];
	_this setVectorDirAndUp [[-0.648993,0.760708,-0.0114622],[0.00265204,0.0173281,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1370 = objNull;
if (_layer1301 && _layer1520) then {
	_item1370 = createVehicle ["Land_Shoot_House_Wall_F",[17621.2,13027.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1370;
	_objects pushback _this;
	_objectIDs pushback 1370;
	_this setPosWorld [17621.2,13027.3,22.0423];
	_this setVectorDirAndUp [[-0.648981,0.760703,-0.0124405],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1371 = objNull;
if (_layer1301 && _layer1520) then {
	_item1371 = createVehicle ["Land_Shoot_House_Wall_F",[17619.7,13026,0],[],0,"CAN_COLLIDE"];
	_this = _item1371;
	_objects pushback _this;
	_objectIDs pushback 1371;
	_this setPosWorld [17619.7,13026,22.046];
	_this setVectorDirAndUp [[-0.648981,0.760703,-0.0124405],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1372 = objNull;
if (_layer1301 && _layer1520) then {
	_item1372 = createVehicle ["Land_Shoot_House_Wall_F",[17618.1,13024.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1372;
	_objects pushback _this;
	_objectIDs pushback 1372;
	_this setPosWorld [17618.1,13024.7,22.0526];
	_this setVectorDirAndUp [[-0.648986,0.760696,-0.0125861],[-0.0053265,0.0119998,0.999914]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1373 = objNull;
if (_layer1301 && _layer1520) then {
	_item1373 = createVehicle ["Land_Shoot_House_Wall_F",[17616.2,13027,0],[],0,"CAN_COLLIDE"];
	_this = _item1373;
	_objects pushback _this;
	_objectIDs pushback 1373;
	_this setPosWorld [17616.2,13027,22.0183];
	_this setVectorDirAndUp [[-0.648993,0.760717,-0.0108505],[-0.00265204,0.0119999,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1374 = objNull;
if (_layer1301 && _layer1520) then {
	_item1374 = createVehicle ["Land_Shoot_House_Wall_F",[17617.7,13028.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1374;
	_objects pushback _this;
	_objectIDs pushback 1374;
	_this setPosWorld [17617.7,13028.3,22.0045];
	_this setVectorDirAndUp [[-0.648981,0.760626,-0.0164922],[-0.00665923,0.0159973,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1375 = objNull;
if (_layer1301 && _layer1520) then {
	_item1375 = createVehicle ["Land_Shoot_House_Wall_F",[17619.2,13029.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1375;
	_objects pushback _this;
	_objectIDs pushback 1375;
	_this setPosWorld [17619.2,13029.6,21.9939];
	_this setVectorDirAndUp [[-0.648981,0.760626,-0.0164922],[-0.00665923,0.0159973,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1376 = objNull;
if (_layer1301 && _layer1520) then {
	_item1376 = createVehicle ["Land_Shoot_House_Wall_F",[17623.8,13024.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1376;
	_objects pushback _this;
	_objectIDs pushback 1376;
	_this setPosWorld [17623.8,13024.2,22.0921];
	_this setVectorDirAndUp [[0.648981,-0.760703,0.0124405],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1377 = objNull;
if (_layer1301 && _layer1520) then {
	_item1377 = createVehicle ["Land_Shoot_House_Wall_F",[17622.3,13022.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1377;
	_objects pushback _this;
	_objectIDs pushback 1377;
	_this setPosWorld [17622.3,13022.9,22.0958];
	_this setVectorDirAndUp [[0.648981,-0.760703,0.0124405],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1378 = objNull;
if (_layer1301 && _layer1520) then {
	_item1378 = createVehicle ["Land_Shoot_House_Wall_F",[17615.6,13019.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1378;
	_objects pushback _this;
	_objectIDs pushback 1378;
	_this setPosWorld [17615.6,13019.9,22.1112];
	_this setVectorDirAndUp [[0.76079,0.648937,-0.00893847],[0.00265204,0.010664,0.99994]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1379 = objNull;
if (_layer1301 && _layer1520) then {
	_item1379 = createVehicle ["Land_Shoot_House_Wall_F",[17616.9,13018.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1379;
	_objects pushback _this;
	_objectIDs pushback 1379;
	_this setPosWorld [17616.9,13018.4,22.124];
	_this setVectorDirAndUp [[0.76079,0.648937,-0.00893847],[0.00265204,0.010664,0.99994]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1380 = objNull;
if (_layer1301 && _layer1520) then {
	_item1380 = createVehicle ["Land_Shoot_House_Wall_F",[17605.4,13016.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1380;
	_objects pushback _this;
	_objectIDs pushback 1380;
	_this setPosWorld [17605.4,13016.5,22.0814];
	_this setVectorDirAndUp [[0.760711,0.649071,0.00510186],[-0.0146643,0.0093275,0.999849]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1381 = objNull;
if (_layer1301 && _layer1520) then {
	_item1381 = createVehicle ["Land_Shoot_House_Wall_F",[17618.5,13019.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1381;
	_objects pushback _this;
	_objectIDs pushback 1381;
	_this setPosWorld [17618.5,13019.7,22.1145];
	_this setVectorDirAndUp [[0.760782,0.648992,-0.00460018],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1382 = objNull;
if (_layer1301 && _layer1520) then {
	_item1382 = createVehicle ["Land_Shoot_House_Wall_F",[17609.6,13014.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1382;
	_objects pushback _this;
	_objectIDs pushback 1382;
	_this setPosWorld [17609.6,13014.7,22.1604];
	_this setVectorDirAndUp [[0.760695,0.649072,0.00698282],[-0.0159977,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1383 = objNull;
if (_layer1301 && _layer1520) then {
	_item1383 = createVehicle ["Land_Shoot_House_Wall_F",[17611.1,13016,0],[],0,"CAN_COLLIDE"];
	_this = _item1383;
	_objects pushback _this;
	_objectIDs pushback 1383;
	_this setPosWorld [17611.1,13016,22.1572];
	_this setVectorDirAndUp [[0.760792,0.648974,-0.00518771],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1384 = objNull;
if (_layer1301 && _layer1520) then {
	_item1384 = createVehicle ["Land_Shoot_House_Wall_F",[17610.8,13013.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1384;
	_objects pushback _this;
	_objectIDs pushback 1384;
	_this setPosWorld [17610.8,13013.2,22.1798];
	_this setVectorDirAndUp [[0.760792,0.648974,-0.00518771],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1385 = objNull;
if (_layer1301 && _layer1520) then {
	_item1385 = createVehicle ["Land_Shoot_House_Wall_F",[17610.8,13030.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1385;
	_objects pushback _this;
	_objectIDs pushback 1385;
	_this setPosWorld [17610.8,13030.2,21.9171];
	_this setVectorDirAndUp [[-0.648993,0.760415,-0.024027],[-0.00265204,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1386 = objNull;
if (_layer1301 && _layer1520) then {
	_item1386 = createVehicle ["Land_Shoot_House_Wall_F",[17613.1,13015.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1386;
	_objects pushback _this;
	_objectIDs pushback 1386;
	_this setPosWorld [17613.1,13015.2,22.1642];
	_this setVectorDirAndUp [[0.648995,-0.760768,0.00608135],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1387 = objNull;
if (_layer1301 && _layer1520) then {
	_item1387 = createVehicle ["Land_Shoot_House_Wall_F",[17618.3,13018.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1387;
	_objects pushback _this;
	_objectIDs pushback 1387;
	_this setPosWorld [17618.3,13018.4,22.1291];
	_this setVectorDirAndUp [[0.648975,-0.760694,0.0133054],[-0.0080009,0.0106637,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1388 = objNull;
if (_layer1301 && _layer1520) then {
	_item1388 = createVehicle ["Land_Shoot_House_Wall_F",[17612.4,13014.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1388;
	_objects pushback _this;
	_objectIDs pushback 1388;
	_this setPosWorld [17612.4,13014.5,22.1694];
	_this setVectorDirAndUp [[0.760792,0.648974,-0.00518771],[0,0.00799344,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1389 = objNull;
if (_layer1301 && _layer1520) then {
	_item1389 = createVehicle ["Land_Shoot_House_Wall_F",[17613.5,13028.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1389;
	_objects pushback _this;
	_objectIDs pushback 1389;
	_this setPosWorld [17613.5,13028.6,21.9722];
	_this setVectorDirAndUp [[0.76079,0.648775,-0.0170119],[-0.00265204,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1390 = objNull;
if (_layer1301 && _layer1520) then {
	_item1390 = createVehicle ["Land_Shoot_House_Wall_F",[17614,13026.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1390;
	_objects pushback _this;
	_objectIDs pushback 1390;
	_this setPosWorld [17614,13026.4,22.019];
	_this setVectorDirAndUp [[-0.648993,0.760717,-0.0108505],[-0.00265204,0.0119999,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1391 = objNull;
if (_layer1301 && _layer1520) then {
	_item1391 = createVehicle ["Land_Shoot_House_Wall_F",[17612.5,13025.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1391;
	_objects pushback _this;
	_objectIDs pushback 1391;
	_this setPosWorld [17612.5,13025.1,22.0305];
	_this setVectorDirAndUp [[-0.648993,0.760717,-0.0108505],[-0.00265204,0.0119999,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1392 = objNull;
if (_layer1301 && _layer1520) then {
	_item1392 = createVehicle ["Land_Shoot_House_Wall_F",[17611,13023.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1392;
	_objects pushback _this;
	_objectIDs pushback 1392;
	_this setPosWorld [17611,13023.8,22.0562];
	_this setVectorDirAndUp [[-0.648993,0.760708,-0.0114622],[0.00265204,0.0173281,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1393 = objNull;
if (_layer1301 && _layer1520) then {
	_item1393 = createVehicle ["Land_Shoot_House_Wall_F",[17609.6,13024,0],[],0,"CAN_COLLIDE"];
	_this = _item1393;
	_objects pushback _this;
	_objectIDs pushback 1393;
	_this setPosWorld [17609.6,13024,22.0432];
	_this setVectorDirAndUp [[0.760403,0.649319,0.0130829],[-0.031983,0.0173193,0.999338]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1394 = objNull;
if (_layer1301 && _layer1520) then {
	_item1394 = createVehicle ["Land_Shoot_House_Wall_F",[17607.2,13019.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1394;
	_objects pushback _this;
	_objectIDs pushback 1394;
	_this setPosWorld [17607.2,13019.1,22.0874];
	_this setVectorDirAndUp [[0.648912,-0.760685,0.0164634],[-0.0159977,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1395 = objNull;
if (_layer1301 && _layer1520) then {
	_item1395 = createVehicle ["Land_Shoot_House_Wall_F",[17607.3,13020.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1395;
	_objects pushback _this;
	_objectIDs pushback 1395;
	_this setPosWorld [17607.3,13020.5,22.065];
	_this setVectorDirAndUp [[-0.760695,-0.649041,0.00945712],[-0.0159977,0.0333107,0.999317]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1396 = objNull;
if (_layer1301 && _layer1520) then {
	_item1396 = createVehicle ["Land_Shoot_House_Wall_F",[17606,13022,0],[],0,"CAN_COLLIDE"];
	_this = _item1396;
	_objects pushback _this;
	_objectIDs pushback 1396;
	_this setPosWorld [17606,13022,21.9934];
	_this setVectorDirAndUp [[-0.760695,-0.649041,0.00945712],[-0.0159977,0.0333107,0.999317]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1397 = objNull;
if (_layer1301 && _layer1520) then {
	_item1397 = createVehicle ["Land_Shoot_House_Wall_F",[17606.1,13023.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1397;
	_objects pushback _this;
	_objectIDs pushback 1397;
	_this setPosWorld [17606.1,13023.4,21.9482];
	_this setVectorDirAndUp [[0.648912,-0.760024,0.0357224],[-0.0159977,0.0333107,0.999317]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1398 = objNull;
if (_layer1301 && _layer1520) then {
	_item1398 = createVehicle ["Land_Shoot_House_Wall_F",[17606.2,13024.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1398;
	_objects pushback _this;
	_objectIDs pushback 1398;
	_this setPosWorld [17606.2,13024.8,21.92];
	_this setVectorDirAndUp [[-0.760403,-0.64932,-0.0130828],[-0.031983,0.0173193,0.999338]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1399 = objNull;
if (_layer1301 && _layer1520) then {
	_item1399 = createVehicle ["Land_Shoot_House_Wall_F",[17617.2,13021.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1399;
	_objects pushback _this;
	_objectIDs pushback 1399;
	_this setPosWorld [17617.2,13021.2,22.0899];
	_this setVectorDirAndUp [[0.76079,0.648973,-0.00577042],[-0.00265204,0.0119999,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1400 = objNull;
if (_layer1301 && _layer1520) then {
	_item1400 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17625.2,13024.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1400;
	_objects pushback _this;
	_objectIDs pushback 1400;
	_this setPosWorld [17625.2,13024.1,22.1032];
	_this setVectorDirAndUp [[-0.760759,-0.649034,-0.000175708],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1401 = objNull;
if (_layer1301 && _layer1520) then {
	_item1401 = createVehicle ["Land_Shoot_House_Wall_F",[17640,13031.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1401;
	_objects pushback _this;
	_objectIDs pushback 1401;
	_this setPosWorld [17640,13031.5,22.1051];
	_this setVectorDirAndUp [[0.760782,0.64892,-0.0106551],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1402 = objNull;
if (_layer1301 && _layer1520) then {
	_item1402 = createVehicle ["Land_Shoot_House_Wall_F",[17632.4,13025,0],[],0,"CAN_COLLIDE"];
	_this = _item1402;
	_objects pushback _this;
	_objectIDs pushback 1402;
	_this setPosWorld [17632.4,13025,22.1415];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1403 = objNull;
if (_layer1301 && _layer1520) then {
	_item1403 = createVehicle ["Land_Shoot_House_Wall_F",[17632.8,13030.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1403;
	_objects pushback _this;
	_objectIDs pushback 1403;
	_this setPosWorld [17632.8,13030.6,22.0591];
	_this setVectorDirAndUp [[0.760738,0.649058,-0.00125409],[-0.012,0.0159965,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1404 = objNull;
if (_layer1301 && _layer1520) then {
	_item1404 = createVehicle ["Land_Shoot_House_Wall_F",[17626.5,13022.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1404;
	_objects pushback _this;
	_objectIDs pushback 1404;
	_this setPosWorld [17626.5,13022.6,22.1315];
	_this setVectorDirAndUp [[0.760759,0.649034,0.000175716],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1405 = objNull;
if (_layer1301 && _layer1520) then {
	_item1405 = createVehicle ["Land_Shoot_House_Wall_F",[17638.7,13033,0],[],0,"CAN_COLLIDE"];
	_this = _item1405;
	_objects pushback _this;
	_objectIDs pushback 1405;
	_this setPosWorld [17638.7,13033,22.0637];
	_this setVectorDirAndUp [[0.760782,0.64892,-0.0106551],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1406 = objNull;
if (_layer1301 && _layer1520) then {
	_item1406 = createVehicle ["Land_Shoot_House_Wall_F",[17633,13015,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1406;
	_objects pushback _this;
	_objectIDs pushback 1406;
	_this setPosWorld [17633,13015,22.2853];
	_this setVectorDirAndUp [[0.760776,0.649005,-0.00357954],[-0.00666818,0.0133314,0.999889]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1407 = objNull;
if (_layer1301 && _layer1520) then {
	_item1407 = createVehicle ["Land_Shoot_House_Wall_F",[17631.7,13016.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1407;
	_objects pushback _this;
	_objectIDs pushback 1407;
	_this setPosWorld [17631.7,13016.5,22.2541];
	_this setVectorDirAndUp [[0.760759,0.649032,-0.00155576],[-0.0093285,0.0133311,0.999868]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1408 = objNull;
if (_layer1301 && _layer1520) then {
	_item1408 = createVehicle ["Land_Shoot_House_Wall_F",[17637.4,13034.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1408;
	_objects pushback _this;
	_objectIDs pushback 1408;
	_this setPosWorld [17637.4,13034.5,22.0224];
	_this setVectorDirAndUp [[0.760782,0.64892,-0.0106551],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1409 = objNull;
if (_layer1301 && _layer1520) then {
	_item1409 = createVehicle ["Land_Shoot_House_Wall_F",[17637.4,13034.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1409;
	_objects pushback _this;
	_objectIDs pushback 1409;
	_this setPosWorld [17637.4,13034.5,22.0224];
	_this setVectorDirAndUp [[0.760782,0.64892,-0.0106551],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1410 = objNull;
if (_layer1301 && _layer1520) then {
	_item1410 = createVehicle ["Land_Shoot_House_Wall_F",[17635.9,13016.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1410;
	_objects pushback _this;
	_objectIDs pushback 1410;
	_this setPosWorld [17635.9,13016.2,22.289];
	_this setVectorDirAndUp [[-0.648981,0.760667,-0.0144699],[-0.00666818,0.0133314,0.999889]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1411 = objNull;
if (_layer1301 && _layer1520) then {
	_item1411 = createVehicle ["Land_Shoot_House_Wall_F",[17631.1,13026.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1411;
	_objects pushback _this;
	_objectIDs pushback 1411;
	_this setPosWorld [17631.1,13026.5,22.1123];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1412 = objNull;
if (_layer1301 && _layer1520) then {
	_item1412 = createVehicle ["Land_Shoot_House_Wall_F",[17643.9,13026.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1412;
	_objects pushback _this;
	_objectIDs pushback 1412;
	_this setPosWorld [17643.9,13026.9,22.2433];
	_this setVectorDirAndUp [[0.760738,0.649017,0.0074083],[-0.012,0.00265185,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1413 = objNull;
if (_layer1301 && _layer1520) then {
	_item1413 = createVehicle ["Land_Shoot_House_Wall_F",[17637.4,13017.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1413;
	_objects pushback _this;
	_objectIDs pushback 1413;
	_this setPosWorld [17637.4,13017.5,22.2786];
	_this setVectorDirAndUp [[-0.648986,0.76066,-0.014613],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1414 = objNull;
if (_layer1301 && _layer1520) then {
	_item1414 = createVehicle ["Land_Shoot_House_Wall_F",[17642,13021.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1414;
	_objects pushback _this;
	_objectIDs pushback 1414;
	_this setPosWorld [17642,13021.4,22.2577];
	_this setVectorDirAndUp [[-0.648981,0.760733,-0.0104145],[-0.00666818,0.00800072,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1415 = objNull;
if (_layer1301 && _layer1520) then {
	_item1415 = createVehicle ["Land_Shoot_House_Wall_F",[17643.5,13022.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1415;
	_objects pushback _this;
	_objectIDs pushback 1415;
	_this setPosWorld [17643.5,13022.7,22.2575];
	_this setVectorDirAndUp [[-0.648981,0.760733,-0.0104145],[-0.00666818,0.00800072,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1416 = objNull;
if (_layer1301 && _layer1520) then {
	_item1416 = createVehicle ["Land_Shoot_House_Wall_F",[17627.8,13021.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1416;
	_objects pushback _this;
	_objectIDs pushback 1416;
	_this setPosWorld [17627.8,13021.1,22.1599];
	_this setVectorDirAndUp [[0.760759,0.649034,0.000175716],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1417 = objNull;
if (_layer1301 && _layer1520) then {
	_item1417 = createVehicle ["Land_Shoot_House_Wall_F",[17628.4,13020.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1417;
	_objects pushback _this;
	_objectIDs pushback 1417;
	_this setPosWorld [17628.4,13020.3,22.1741];
	_this setVectorDirAndUp [[0.760759,0.649034,0.000175716],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1418 = objNull;
if (_layer1301 && _layer1520) then {
	_item1418 = createVehicle ["Land_Shoot_House_Wall_F",[17634.4,13014.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1418;
	_objects pushback _this;
	_objectIDs pushback 1418;
	_this setPosWorld [17634.4,13014.9,22.2962];
	_this setVectorDirAndUp [[-0.648981,0.760667,-0.0144699],[-0.00666818,0.0133314,0.999889]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1419 = objNull;
if (_layer1301 && _layer1520) then {
	_item1419 = createVehicle ["Land_Shoot_House_Wall_F",[17635.4,13027.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1419;
	_objects pushback _this;
	_objectIDs pushback 1419;
	_this setPosWorld [17635.4,13027.6,22.1389];
	_this setVectorDirAndUp [[0.760738,0.649058,-0.00125409],[-0.012,0.0159965,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1420 = objNull;
if (_layer1301 && _layer1520) then {
	_item1420 = createVehicle ["Land_Shoot_House_Wall_F",[17638.7,13033,0],[],0,"CAN_COLLIDE"];
	_this = _item1420;
	_objects pushback _this;
	_objectIDs pushback 1420;
	_this setPosWorld [17638.7,13033,22.0637];
	_this setVectorDirAndUp [[0.760782,0.64892,-0.0106551],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1421 = objNull;
if (_layer1301 && _layer1520) then {
	_item1421 = createVehicle ["Land_Shoot_House_Wall_F",[17645.2,13025.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1421;
	_objects pushback _this;
	_objectIDs pushback 1421;
	_this setPosWorld [17645.2,13025.4,22.263];
	_this setVectorDirAndUp [[0.760738,0.649017,0.0074083],[-0.012,0.00265185,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1422 = objNull;
if (_layer1301 && _layer1520) then {
	_item1422 = createVehicle ["Land_Shoot_House_Wall_F",[17633.7,13023.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1422;
	_objects pushback _this;
	_objectIDs pushback 1422;
	_this setPosWorld [17633.7,13023.5,22.1708];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1423 = objNull;
if (_layer1301 && _layer1520) then {
	_item1423 = createVehicle ["Land_Shoot_House_Wall_F",[17639.9,13028.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1423;
	_objects pushback _this;
	_objectIDs pushback 1423;
	_this setPosWorld [17639.9,13028.8,22.1654];
	_this setVectorDirAndUp [[0.760782,0.64892,-0.0106551],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1424 = objNull;
if (_layer1301 && _layer1520) then {
	_item1424 = createVehicle ["Land_Shoot_House_Wall_F",[17636.7,13026.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1424;
	_objects pushback _this;
	_objectIDs pushback 1424;
	_this setPosWorld [17636.7,13026.1,22.1673];
	_this setVectorDirAndUp [[0.760738,0.649047,0.00393772],[-0.011995,0.00799287,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1425 = objNull;
if (_layer1301 && _layer1520) then {
	_item1425 = createVehicle ["Land_Shoot_House_Wall_F",[17639.3,13023,0],[],0,"CAN_COLLIDE"];
	_this = _item1425;
	_objects pushback _this;
	_objectIDs pushback 1425;
	_this setPosWorld [17639.3,13023,22.2228];
	_this setVectorDirAndUp [[0.760738,0.649047,0.00393772],[-0.011995,0.00799287,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1426 = objNull;
if (_layer1301 && _layer1520) then {
	_item1426 = createVehicle ["Land_Shoot_House_Wall_F",[17637.5,13018.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1426;
	_objects pushback _this;
	_objectIDs pushback 1426;
	_this setPosWorld [17637.5,13018.9,22.2585];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1427 = objNull;
if (_layer1301 && _layer1520) then {
	_item1427 = createVehicle ["Land_Shoot_House_Wall_F",[17640.6,13021.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1427;
	_objects pushback _this;
	_objectIDs pushback 1427;
	_this setPosWorld [17640.6,13021.5,22.2474];
	_this setVectorDirAndUp [[0.760776,0.649015,-0.000119608],[-0.00666818,0.00800072,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1428 = objNull;
if (_layer1301 && _layer1520) then {
	_item1428 = createVehicle ["Land_Shoot_House_Wall_F",[17634.1,13029.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1428;
	_objects pushback _this;
	_objectIDs pushback 1428;
	_this setPosWorld [17634.1,13029.1,22.099];
	_this setVectorDirAndUp [[0.760738,0.649058,-0.00125409],[-0.012,0.0159965,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1429 = objNull;
if (_layer1301 && _layer1520) then {
	_item1429 = createVehicle ["Land_Shoot_House_Wall_F",[17628.5,13021.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1429;
	_objects pushback _this;
	_objectIDs pushback 1429;
	_this setPosWorld [17628.5,13021.7,22.16];
	_this setVectorDirAndUp [[-0.648967,0.760684,-0.014167],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1430 = objNull;
if (_layer1301 && _layer1520) then {
	_item1430 = createVehicle ["Land_Shoot_House_Wall_F",[17631.8,13021,0],[],0,"CAN_COLLIDE"];
	_this = _item1430;
	_objects pushback _this;
	_objectIDs pushback 1430;
	_this setPosWorld [17631.8,13021,22.1963];
	_this setVectorDirAndUp [[-0.648986,0.76066,-0.014613],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1431 = objNull;
if (_layer1301 && _layer1520) then {
	_item1431 = createVehicle ["Land_Shoot_House_Wall_F",[17631.6,13024.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1431;
	_objects pushback _this;
	_objectIDs pushback 1431;
	_this setPosWorld [17631.6,13024.3,22.147];
	_this setVectorDirAndUp [[-0.648986,0.76066,-0.014613],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1432 = objNull;
if (_layer1301 && _layer1520) then {
	_item1432 = createVehicle ["Land_Shoot_House_Wall_F",[17634.2,13030.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1432;
	_objects pushback _this;
	_objectIDs pushback 1432;
	_this setPosWorld [17634.2,13030.5,22.0778];
	_this setVectorDirAndUp [[-0.648949,0.76057,-0.0199579],[-0.012,0.0159965,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1433 = objNull;
if (_layer1301 && _layer1520) then {
	_item1433 = createVehicle ["Land_Shoot_House_Wall_F",[17631.6,13033.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1433;
	_objects pushback _this;
	_objectIDs pushback 1433;
	_this setPosWorld [17631.6,13033.5,22.0052];
	_this setVectorDirAndUp [[-0.64899,0.760653,-0.0147645],[-0.00399675,0.0159976,0.999864]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1434 = objNull;
if (_layer1301 && _layer1520) then {
	_item1434 = createVehicle ["Land_Shoot_House_Wall_F",[17637.3,13033.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1434;
	_objects pushback _this;
	_objectIDs pushback 1434;
	_this setPosWorld [17637.3,13033.1,22.0537];
	_this setVectorDirAndUp [[-0.648986,0.760519,-0.0206957],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1435 = objNull;
if (_layer1301 && _layer1520) then {
	_item1435 = createVehicle ["Land_Shoot_House_Wall_F",[17645,13024,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1435;
	_objects pushback _this;
	_objectIDs pushback 1435;
	_this setPosWorld [17645,13024,22.2654];
	_this setVectorDirAndUp [[-0.648949,0.760769,-0.00980556],[-0.012,0.00265185,0.999924]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1436 = objNull;
if (_layer1301 && _layer1520) then {
	_item1436 = createVehicle ["Land_Shoot_House_Wall_F",[17638.1,13026,0],[],0,"CAN_COLLIDE"];
	_this = _item1436;
	_objects pushback _this;
	_objectIDs pushback 1436;
	_this setPosWorld [17638.1,13026,22.1852];
	_this setVectorDirAndUp [[-0.648949,0.760706,-0.0138658],[-0.011995,0.00799287,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1437 = objNull;
if (_layer1301 && _layer1520) then {
	_item1437 = createVehicle ["Land_Shoot_House_Wall_F",[17626.5,13022.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1437;
	_objects pushback _this;
	_objectIDs pushback 1437;
	_this setPosWorld [17626.5,13022.6,22.1315];
	_this setVectorDirAndUp [[0.760759,0.649034,0.000175716],[-0.0093285,0.0106636,0.9999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1438 = objNull;
if (_layer1301 && _layer1520) then {
	_item1438 = createVehicle ["Land_Shoot_House_Wall_F",[17640.5,13020.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1438;
	_objects pushback _this;
	_objectIDs pushback 1438;
	_this setPosWorld [17640.5,13020.1,22.258];
	_this setVectorDirAndUp [[-0.648981,0.760733,-0.0104145],[-0.00666818,0.00800072,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1439 = objNull;
if (_layer1301 && _layer1520) then {
	_item1439 = createVehicle ["Land_Shoot_House_Wall_F",[17636.2,13020.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1439;
	_objects pushback _this;
	_objectIDs pushback 1439;
	_this setPosWorld [17636.2,13020.4,22.2293];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1440 = objNull;
if (_layer1301 && _layer1520) then {
	_item1440 = createVehicle ["Land_Shoot_House_Wall_F",[17634.8,13037.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1440;
	_objects pushback _this;
	_objectIDs pushback 1440;
	_this setPosWorld [17634.8,13037.6,21.9258];
	_this setVectorDirAndUp [[0.760782,0.648855,-0.0141057],[-0.00533768,0.027989,0.999594]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1441 = objNull;
if (_layer1301 && _layer1520) then {
	_item1441 = createVehicle ["Land_Shoot_House_Wall_F",[17621.5,13039.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1441;
	_objects pushback _this;
	_objectIDs pushback 1441;
	_this setPosWorld [17621.5,13039.2,21.7875];
	_this setVectorDirAndUp [[-0.648912,0.760245,-0.0306592],[-0.0159977,0.0266537,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1442 = objNull;
if (_layer1301 && _layer1520) then {
	_item1442 = createVehicle ["Land_Shoot_House_Wall_F",[17623.9,13025.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1442;
	_objects pushback _this;
	_objectIDs pushback 1442;
	_this setPosWorld [17623.9,13025.7,22.0778];
	_this setVectorDirAndUp [[0.760776,0.649012,-0.00184812],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1443 = objNull;
if (_layer1301 && _layer1520) then {
	_item1443 = createVehicle ["Land_Shoot_House_Wall_F",[17632.2,13040.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1443;
	_objects pushback _this;
	_objectIDs pushback 1443;
	_this setPosWorld [17632.2,13040.6,21.828];
	_this setVectorDirAndUp [[0.76079,0.648798,-0.0161311],[-0.00267442,0.0279893,0.999605]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1444 = objNull;
if (_layer1301 && _layer1520) then {
	_item1444 = createVehicle ["Land_Shoot_House_Wall_F",[17619.3,13031,0],[],0,"CAN_COLLIDE"];
	_this = _item1444;
	_objects pushback _this;
	_objectIDs pushback 1444;
	_this setPosWorld [17619.3,13031,21.9721];
	_this setVectorDirAndUp [[0.760776,0.648993,-0.00531678],[-0.00665923,0.0159973,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1445 = objNull;
if (_layer1301 && _layer1520) then {
	_item1445 = createVehicle ["Land_Shoot_House_Wall_F",[17628.5,13029.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1445;
	_objects pushback _this;
	_objectIDs pushback 1445;
	_this setPosWorld [17628.5,13029.6,22.0539];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1446 = objNull;
if (_layer1301 && _layer1520) then {
	_item1446 = createVehicle ["Land_Shoot_House_Wall_F",[17632,13037.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1446;
	_objects pushback _this;
	_objectIDs pushback 1446;
	_this setPosWorld [17632,13037.9,21.9037];
	_this setVectorDirAndUp [[0.76079,0.648798,-0.0161311],[-0.00267442,0.0279893,0.999605]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1447 = objNull;
if (_layer1301 && _layer1520) then {
	_item1447 = createVehicle ["Land_Shoot_House_Wall_F",[17620,13037.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1447;
	_objects pushback _this;
	_objectIDs pushback 1447;
	_this setPosWorld [17620,13037.9,21.8143];
	_this setVectorDirAndUp [[-0.648975,0.760156,-0.0315427],[-0.00799344,0.0346445,0.999368]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1448 = objNull;
if (_layer1301 && _layer1520) then {
	_item1448 = createVehicle ["Land_Shoot_House_Wall_F",[17629,13044.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1448;
	_objects pushback _this;
	_objectIDs pushback 1448;
	_this setPosWorld [17629,13044.3,21.6343];
	_this setVectorDirAndUp [[0.76079,0.647406,-0.0454363],[-0.00267442,0.0731367,0.997318]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1449 = objNull;
if (_layer1301 && _layer1520) then {
	_item1449 = createVehicle ["Land_Shoot_House_Wall_F",[17624.6,13041.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1449;
	_objects pushback _this;
	_objectIDs pushback 1449;
	_this setPosWorld [17624.6,13041.8,21.767];
	_this setVectorDirAndUp [[-0.648912,0.760245,-0.0306592],[-0.0159977,0.0266537,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1450 = objNull;
if (_layer1301 && _layer1520) then {
	_item1450 = createVehicle ["Land_Shoot_House_Wall_F",[17626.1,13043.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1450;
	_objects pushback _this;
	_objectIDs pushback 1450;
	_this setPosWorld [17626.1,13043.1,21.7135];
	_this setVectorDirAndUp [[-0.648993,0.758628,-0.0573731],[-0.00267442,0.0731367,0.997318]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1451 = objNull;
if (_layer1301 && _layer1520) then {
	_item1451 = createVehicle ["Land_Shoot_House_Wall_F",[17627.2,13031.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1451;
	_objects pushback _this;
	_objectIDs pushback 1451;
	_this setPosWorld [17627.2,13031.1,22.0246];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1452 = objNull;
if (_layer1301 && _layer1520) then {
	_item1452 = createVehicle ["Land_Shoot_House_Wall_F",[17630.2,13033.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1452;
	_objects pushback _this;
	_objectIDs pushback 1452;
	_this setPosWorld [17630.2,13033.7,21.9976];
	_this setVectorDirAndUp [[0.760786,0.648961,-0.00734212],[-0.00399675,0.0159976,0.999864]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1453 = objNull;
if (_layer1301 && _layer1520) then {
	_item1453 = createVehicle ["Land_Shoot_House_Wall_F",[17620.9,13034.4,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1453;
	_objects pushback _this;
	_objectIDs pushback 1453;
	_this setPosWorld [17620.9,13034.4,21.9311];
	_this setVectorDirAndUp [[0.760768,0.649015,-0.00343637],[-0.00799344,0.0146638,0.999861]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1454 = objNull;
if (_layer1301 && _layer1520) then {
	_item1454 = createVehicle ["Land_Shoot_House_Wall_F",[17624.5,13034.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1454;
	_objects pushback _this;
	_objectIDs pushback 1454;
	_this setPosWorld [17624.5,13034.2,21.9641];
	_this setVectorDirAndUp [[0.760768,0.649015,-0.00343637],[-0.00799344,0.0146638,0.999861]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1455 = objNull;
if (_layer1301 && _layer1520) then {
	_item1455 = createVehicle ["Land_Shoot_House_Wall_F",[17621.4,13037.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1455;
	_objects pushback _this;
	_objectIDs pushback 1455;
	_this setPosWorld [17621.4,13037.8,21.8295];
	_this setVectorDirAndUp [[0.760768,0.648816,-0.0164071],[-0.00799344,0.0346445,0.999368]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1456 = objNull;
if (_layer1301 && _layer1520) then {
	_item1456 = createVehicle ["Land_Shoot_House_Wall_F",[17616.9,13033.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1456;
	_objects pushback _this;
	_objectIDs pushback 1456;
	_this setPosWorld [17616.9,13033.9,21.9026];
	_this setVectorDirAndUp [[0.760695,0.649107,0.00178694],[-0.0159977,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1457 = objNull;
if (_layer1301 && _layer1520) then {
	_item1457 = createVehicle ["Land_Shoot_House_Wall_F",[17624.5,13040.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1457;
	_objects pushback _this;
	_objectIDs pushback 1457;
	_this setPosWorld [17624.5,13040.4,21.8027];
	_this setVectorDirAndUp [[0.760695,0.649089,-0.00513372],[-0.0159977,0.0266537,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1458 = objNull;
if (_layer1301 && _layer1520) then {
	_item1458 = createVehicle ["Land_Shoot_House_Wall_F",[17628.9,13035.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1458;
	_objects pushback _this;
	_objectIDs pushback 1458;
	_this setPosWorld [17628.9,13035.2,21.966];
	_this setVectorDirAndUp [[0.760786,0.648846,-0.0142607],[-0.00399675,0.0266569,0.999637]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1459 = objNull;
if (_layer1301 && _layer1520) then {
	_item1459 = createVehicle ["Land_Shoot_House_Wall_F",[17617,13035.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1459;
	_objects pushback _this;
	_objectIDs pushback 1459;
	_this setPosWorld [17617,13035.3,21.8653];
	_this setVectorDirAndUp [[-0.648912,0.758417,-0.0609667],[-0.0159977,0.0665106,0.997657]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1460 = objNull;
if (_layer1301 && _layer1520) then {
	_item1460 = createVehicle ["Land_Shoot_House_Wall_F",[17624,13027.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1460;
	_objects pushback _this;
	_objectIDs pushback 1460;
	_this setPosWorld [17624,13027.1,22.0635];
	_this setVectorDirAndUp [[-0.648981,0.760703,-0.0124405],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1461 = objNull;
if (_layer1301 && _layer1520) then {
	_item1461 = createVehicle ["Land_Shoot_House_Wall_F",[17630,13032.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1461;
	_objects pushback _this;
	_objectIDs pushback 1461;
	_this setPosWorld [17630,13032.2,22.0201];
	_this setVectorDirAndUp [[-0.64899,0.760653,-0.0147645],[-0.00399675,0.0159976,0.999864]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1462 = objNull;
if (_layer1301 && _layer1520) then {
	_item1462 = createVehicle ["Land_Shoot_House_Wall_F",[17630.3,13035.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1462;
	_objects pushback _this;
	_objectIDs pushback 1462;
	_this setPosWorld [17630.3,13035.1,21.9746];
	_this setVectorDirAndUp [[-0.64899,0.760453,-0.0228734],[-0.00399675,0.0266569,0.999637]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1463 = objNull;
if (_layer1301 && _layer1520) then {
	_item1463 = createVehicle ["Land_Shoot_House_Wall_F",[17620.9,13030.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1463;
	_objects pushback _this;
	_objectIDs pushback 1463;
	_this setPosWorld [17620.9,13030.9,21.9841];
	_this setVectorDirAndUp [[-0.648981,0.760626,-0.0164922],[-0.00665923,0.0159973,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1464 = objNull;
if (_layer1301 && _layer1520) then {
	_item1464 = createVehicle ["Land_Shoot_House_Wall_F",[17632,13039.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1464;
	_objects pushback _this;
	_objectIDs pushback 1464;
	_this setPosWorld [17632,13039.3,21.8639];
	_this setVectorDirAndUp [[-0.648993,0.760446,-0.0230292],[-0.00267442,0.0279893,0.999605]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1465 = objNull;
if (_layer1301 && _layer1520) then {
	_item1465 = createVehicle ["Land_Shoot_House_Wall_F",[17627.6,13044.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1465;
	_objects pushback _this;
	_objectIDs pushback 1465;
	_this setPosWorld [17627.6,13044.4,21.6224];
	_this setVectorDirAndUp [[-0.648993,0.758628,-0.0573731],[-0.00267442,0.0731367,0.997318]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1466 = objNull;
if (_layer1301 && _layer1520) then {
	_item1466 = createVehicle ["Land_Shoot_House_Wall_F",[17623.9,13025.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1466;
	_objects pushback _this;
	_objectIDs pushback 1466;
	_this setPosWorld [17623.9,13025.7,22.0778];
	_this setVectorDirAndUp [[0.760776,0.649012,-0.00184812],[-0.00666818,0.0106638,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1467 = objNull;
if (_layer1301 && _layer1520) then {
	_item1467 = createVehicle ["Land_Shoot_House_Wall_F",[17636,13036.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1467;
	_objects pushback _this;
	_objectIDs pushback 1467;
	_this setPosWorld [17636,13036.1,21.9749];
	_this setVectorDirAndUp [[-0.760781,-0.648855,0.0141058],[-0.00533768,0.027989,0.999594]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1468 = objNull;
if (_layer1301 && _layer1520) then {
	_item1468 = createVehicle ["Land_Shoot_House_Wall_F",[17625.8,13038.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1468;
	_objects pushback _this;
	_objectIDs pushback 1468;
	_this setPosWorld [17625.8,13038.9,21.8551];
	_this setVectorDirAndUp [[0.760786,0.648846,-0.0142607],[-0.00399675,0.0266569,0.999637]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1469 = objNull;
if (_layer1301 && _layer1520) then {
	_item1469 = createVehicle ["Land_Shoot_House_Wall_F",[17630.8,13042.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1469;
	_objects pushback _this;
	_objectIDs pushback 1469;
	_this setPosWorld [17630.8,13042.1,21.7821];
	_this setVectorDirAndUp [[-0.760789,-0.648798,0.0161311],[-0.00267442,0.0279893,0.999605]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1470 = objNull;
if (_layer1301 && _layer1520) then {
	_item1470 = createVehicle ["Land_Shoot_House_Wall_F",[17625.9,13032.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1470;
	_objects pushback _this;
	_objectIDs pushback 1470;
	_this setPosWorld [17625.9,13032.6,21.9954];
	_this setVectorDirAndUp [[0.760782,0.648985,-0.00546514],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1471 = objNull;
if (_layer1301 && _layer1520) then {
	_item1471 = createVehicle ["Land_Shoot_House_Wall_F",[17625.5,13028.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1471;
	_objects pushback _this;
	_objectIDs pushback 1471;
	_this setPosWorld [17625.5,13028.4,22.0556];
	_this setVectorDirAndUp [[-0.648986,0.76066,-0.014613],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1473 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1473 = createVehicle ["Sign_Arrow_F",[17627.3,13019.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1473;
	_objects pushback _this;
	_objectIDs pushback 1473;
	_this setPosWorld [17627.3,13019.7,20.8685];
	_this setVectorDirAndUp [[-0.750827,-0.660497,0.00180128],[-0.0093285,0.0133311,0.999868]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1474 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1474 = createVehicle ["Sign_Arrow_F",[17637.8,13020.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1474;
	_objects pushback _this;
	_objectIDs pushback 1474;
	_this setPosWorld [17637.8,13020.6,20.9327];
	_this setVectorDirAndUp [[-0.645306,0.763784,-0.0146392],[-0.0053265,0.0146641,0.999878]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1475 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1475 = createVehicle ["Sign_Arrow_F",[17636.2,13034.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1475;
	_objects pushback _this;
	_objectIDs pushback 1475;
	_this setPosWorld [17636.2,13034.3,20.7196];
	_this setVectorDirAndUp [[-0.760924,-0.648753,0.0106505],[-0.0053265,0.0226599,0.999729]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1476 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1476 = createVehicle ["Sign_Arrow_F",[17610.4,13026.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1476;
	_objects pushback _this;
	_objectIDs pushback 1476;
	_this setPosWorld [17610.4,13026.9,20.7029];
	_this setVectorDirAndUp [[0.621817,-0.783072,0.0119219],[0.00265204,0.0173281,0.999846]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1477 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1477 = createVehicle ["Sign_Arrow_F",[17627.6,13041.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1477;
	_objects pushback _this;
	_objectIDs pushback 1477;
	_this setPosWorld [17627.6,13041.2,20.4979];
	_this setVectorDirAndUp [[0.613687,-0.789193,0.0237396],[-0.00267442,0.0279893,0.999605]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1478 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1478 = createVehicle ["Sign_Arrow_F",[17610.8,13014.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1478;
	_objects pushback _this;
	_objectIDs pushback 1478;
	_this setPosWorld [17610.8,13014.5,20.8669];
	_this setVectorDirAndUp [[-0.692798,0.721108,-0.00576433],[0,0.00799344,0.999968]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1479 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1479 = createVehicle ["Sign_Arrow_F",[17614.5,13013.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1479;
	_objects pushback _this;
	_objectIDs pushback 1479;
	_this setPosWorld [17614.5,13013.4,20.8759];
	_this setVectorDirAndUp [[0.662868,-0.748712,0.00598498],[0,0.00799344,0.999968]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1480 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1480 = createVehicle ["Sign_Arrow_F",[17620.8,13018,0],[],0,"CAN_COLLIDE"];
	_this = _item1480;
	_objects pushback _this;
	_objectIDs pushback 1480;
	_this setPosWorld [17620.8,13018,20.8483];
	_this setVectorDirAndUp [[0.67106,-0.741281,0.0134582],[-0.0053265,0.0133315,0.999897]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1481 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1481 = createVehicle ["Sign_Arrow_F",[17616.9,13019.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1481;
	_objects pushback _this;
	_objectIDs pushback 1481;
	_this setPosWorld [17616.9,13019.7,20.8077];
	_this setVectorDirAndUp [[-0.651374,0.75873,-0.00636403],[0.00265204,0.010664,0.99994]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1482 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1482 = createVehicle ["Sign_Arrow_F",[17623.7,13022.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1482;
	_objects pushback _this;
	_objectIDs pushback 1482;
	_this setPosWorld [17623.7,13022.7,20.8055];
	_this setVectorDirAndUp [[0.760046,0.649867,-0.0018621],[-0.00666818,0.0106638,0.999921]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1483 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1483 = createVehicle ["Sign_Arrow_F",[17625.9,13010.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1483;
	_objects pushback _this;
	_objectIDs pushback 1483;
	_this setPosWorld [17625.9,13010.8,20.9857];
	_this setVectorDirAndUp [[-0.759051,-0.651018,0.00405547],[-0.0106641,0.0186617,0.999769]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1484 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1484 = createVehicle ["Sign_Arrow_F",[17630.7,13034.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1484;
	_objects pushback _this;
	_objectIDs pushback 1484;
	_this setPosWorld [17630.7,13034.3,20.6867];
	_this setVectorDirAndUp [[-0.760929,-0.648794,0.00733887],[-0.00399675,0.0159976,0.999864]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1485 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1485 = createVehicle ["Sign_Arrow_F",[17613.2,13017.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1485;
	_objects pushback _this;
	_objectIDs pushback 1485;
	_this setPosWorld [17613.2,13017.8,20.8386];
	_this setVectorDirAndUp [[-0.760932,-0.64877,0.00893707],[0.00265204,0.010664,0.99994]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1486 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1486 = createVehicle ["Sign_Arrow_F",[17621.9,13007.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1486;
	_objects pushback _this;
	_objectIDs pushback 1486;
	_this setPosWorld [17621.9,13007.6,21.0109];
	_this setVectorDirAndUp [[-0.760911,-0.648829,0.00602183],[-0.0080009,0.0186622,0.999794]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1487 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1487 = createVehicle ["Sign_Arrow_F",[17636,13019,0],[],0,"CAN_COLLIDE"];
	_this = _item1487;
	_objects pushback _this;
	_objectIDs pushback 1487;
	_this setPosWorld [17636,13019,20.9471];
	_this setVectorDirAndUp [[0.760052,0.649839,-0.00548155],[-0.0053265,0.0146641,0.999878]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1488 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1488 = createVehicle ["Sign_Arrow_F",[17631.1,13022.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1488;
	_objects pushback _this;
	_objectIDs pushback 1488;
	_this setPosWorld [17631.1,13022.5,20.8689];
	_this setVectorDirAndUp [[0.760052,0.649839,-0.00548155],[-0.0053265,0.0146641,0.999878]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1489 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1489 = createVehicle ["Sign_Arrow_F",[17604.7,13021.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1489;
	_objects pushback _this;
	_objectIDs pushback 1489;
	_this setPosWorld [17604.7,13021.1,20.701];
	_this setVectorDirAndUp [[0.759966,0.649894,-0.00949722],[-0.0159977,0.0333107,0.999317]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1490 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1490 = createVehicle ["Sign_Arrow_F",[17642.8,13024.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1490;
	_objects pushback _this;
	_objectIDs pushback 1490;
	_this setPosWorld [17642.8,13024.1,20.9395];
	_this setVectorDirAndUp [[-0.750843,-0.660481,0.000277585],[-0.00666818,0.00800072,0.999946]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1491 = objNull;
if (_layer1472 && _layer1301 && _layer1520) then {
	_item1491 = createVehicle ["Sign_Arrow_F",[17615.6,13009.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1491;
	_objects pushback _this;
	_objectIDs pushback 1491;
	_this setPosWorld [17615.6,13009.3,20.9438];
	_this setVectorDirAndUp [[-0.760935,-0.648715,0.0121069],[0,0.0186596,0.999826]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item1494 = objNull;
if (_layer1301 && _layer1520) then {
	_item1494 = createVehicle ["Land_Shoot_House_Wall_F",[17609.3,13028.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1494;
	_objects pushback _this;
	_objectIDs pushback 1494;
	_this setPosWorld [17609.3,13028.9,21.9058];
	_this setVectorDirAndUp [[-0.64767,0.75925,-0.0637408],[-0.0638688,0.0292623,0.997529]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1495 = objNull;
if (_layer1301 && _layer1520) then {
	_item1495 = createVehicle ["Land_Shoot_House_Wall_F",[17620.7,13003.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1495;
	_objects pushback _this;
	_objectIDs pushback 1495;
	_this setPosWorld [17620.7,13003.2,22.4174];
	_this setVectorDirAndUp [[-0.648975,0.760069,-0.0335664],[-0.00799344,0.0373051,0.999272]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1496 = objNull;
if (_layer1301 && _layer1520) then {
	_item1496 = createVehicle ["Land_Shoot_House_Wall_F",[17633.3,13025.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1496;
	_objects pushback _this;
	_objectIDs pushback 1496;
	_this setPosWorld [17633.3,13025.6,22.1379];
	_this setVectorDirAndUp [[-0.648986,0.76066,-0.014613],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1497 = objNull;
if (_layer1301 && _layer1520) then {
	_item1497 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17620.4,13017.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1497;
	_objects pushback _this;
	_objectIDs pushback 1497;
	_this setPosWorld [17620.4,13017.3,22.1561];
	_this setVectorDirAndUp [[0.760782,0.648992,-0.00460018],[-0.0053265,0.0133315,0.999897]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1498 = objNull;
if (_layer1301 && _layer1520) then {
	_item1498 = createVehicle ["Land_Shoot_House_Wall_F",[17619.2,13020.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1498;
	_objects pushback _this;
	_objectIDs pushback 1498;
	_this setPosWorld [17619.2,13020.4,22.1102];
	_this setVectorDirAndUp [[0.648986,-0.760696,0.0125861],[-0.0053265,0.0119998,0.999914]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1499 = objNull;
if (_layer1301 && _layer1520) then {
	_item1499 = createVehicle ["Land_Shoot_House_Wall_F",[17632.9,13033.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1499;
	_objects pushback _this;
	_objectIDs pushback 1499;
	_this setPosWorld [17632.9,13033.3,22.0168];
	_this setVectorDirAndUp [[0.760738,0.649058,-0.00125409],[-0.012,0.0159965,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1500 = objNull;
if (_layer1301 && _layer1520) then {
	_item1500 = createVehicle ["Land_Shoot_House_Panels_Window_F",[17622.2,13021.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1500;
	_objects pushback _this;
	_objectIDs pushback 1500;
	_this setPosWorld [17622.2,13021.6,22.111];
	_this setVectorDirAndUp [[0.741557,0.670878,-0.00410086],[-0.0053265,0.0119998,0.999914]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1501 = objNull;
if (_layer1301 && _layer1520) then {
	_item1501 = createVehicle ["Land_Shoot_House_Wall_F",[17623,13040.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1501;
	_objects pushback _this;
	_objectIDs pushback 1501;
	_this setPosWorld [17623,13040.5,21.777];
	_this setVectorDirAndUp [[-0.648912,0.760245,-0.0306592],[-0.0159977,0.0266537,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1502 = objNull;
if (_layer1301 && _layer1520) then {
	_item1502 = createVehicle ["Land_Shoot_House_Wall_F",[17618.5,13036.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1502;
	_objects pushback _this;
	_objectIDs pushback 1502;
	_this setPosWorld [17618.5,13036.6,21.8483];
	_this setVectorDirAndUp [[-0.648975,0.760156,-0.0315427],[-0.00799344,0.0346445,0.999368]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1503 = objNull;
if (_layer1301 && _layer1520) then {
	_item1503 = createVehicle ["Land_Shoot_House_Wall_F",[17639,13018.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1503;
	_objects pushback _this;
	_objectIDs pushback 1503;
	_this setPosWorld [17639,13018.8,22.2674];
	_this setVectorDirAndUp [[-0.648986,0.76066,-0.014613],[-0.0053265,0.0146641,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1504 = objNull;
if (_layer1301 && _layer1520) then {
	_item1504 = createVehicle ["Land_Shoot_House_Wall_F",[17642.6,13028.4,0],[],0,"CAN_COLLIDE"];
	_this = _item1504;
	_objects pushback _this;
	_objectIDs pushback 1504;
	_this setPosWorld [17642.6,13028.4,22.2054];
	_this setVectorDirAndUp [[0.760738,0.649035,-0.00558303],[-0.011995,0.0226586,0.999671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1505 = objNull;
if (_layer1301 && _layer1520) then {
	_item1505 = createVehicle ["Land_Shoot_House_Wall_F",[17633.4,13037.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1505;
	_objects pushback _this;
	_objectIDs pushback 1505;
	_this setPosWorld [17633.4,13037.7,21.9151];
	_this setVectorDirAndUp [[-0.648986,0.760397,-0.0247569],[-0.00533768,0.027989,0.999594]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1506 = objNull;
if (_layer1301 && _layer1520) then {
	_item1506 = createVehicle ["Land_Shoot_House_Wall_F",[17641.3,13028.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1506;
	_objects pushback _this;
	_objectIDs pushback 1506;
	_this setPosWorld [17641.3,13028.6,22.1866];
	_this setVectorDirAndUp [[-0.648949,0.760421,-0.0250225],[-0.011995,0.0226586,0.999671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1507 = objNull;
if (_layer1301 && _layer1520) then {
	_item1507 = createVehicle ["Land_Shoot_House_Wall_F",[17639.9,13030.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1507;
	_objects pushback _this;
	_objectIDs pushback 1507;
	_this setPosWorld [17639.9,13030.2,22.1333];
	_this setVectorDirAndUp [[-0.648986,0.760519,-0.0206957],[-0.0053265,0.0226599,0.999729]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1508 = objNull;
if (_layer1301 && _layer1520) then {
	_item1508 = createVehicle ["Land_Shoot_House_Wall_F",[17629.8,13011,0],[],0,"CAN_COLLIDE"];
	_this = _item1508;
	_objects pushback _this;
	_objectIDs pushback 1508;
	_this setPosWorld [17629.8,13011,22.3199];
	_this setVectorDirAndUp [[-0.648967,0.760519,-0.0212689],[-0.00933489,0.0199938,0.999757]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1509 = objNull;
if (_layer1301 && _layer1520) then {
	_item1509 = createVehicle ["Land_Shoot_House_Wall_F",[17632.8,13013.6,0],[],0,"CAN_COLLIDE"];
	_this = _item1509;
	_objects pushback _this;
	_objectIDs pushback 1509;
	_this setPosWorld [17632.8,13013.6,22.3029];
	_this setVectorDirAndUp [[-0.648981,0.760667,-0.0144699],[-0.00666818,0.0133314,0.999889]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1510 = objNull;
if (_layer1301 && _layer1520) then {
	_item1510 = createVehicle ["Land_Shoot_House_Wall_F",[17631.3,13012.3,0],[],0,"CAN_COLLIDE"];
	_this = _item1510;
	_objects pushback _this;
	_objectIDs pushback 1510;
	_this setPosWorld [17631.3,13012.3,22.3081];
	_this setVectorDirAndUp [[-0.648967,0.760519,-0.0212689],[-0.00933489,0.0199938,0.999757]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1511 = objNull;
if (_layer1301 && _layer1520) then {
	_item1511 = createVehicle ["Land_Shoot_House_Wall_F",[17629.9,13043.2,0],[],0,"CAN_COLLIDE"];
	_this = _item1511;
	_objects pushback _this;
	_objectIDs pushback 1511;
	_this setPosWorld [17629.9,13043.2,21.7172];
	_this setVectorDirAndUp [[-0.760789,-0.647406,0.0454364],[-0.00267442,0.0731367,0.997318]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1512 = objNull;
if (_layer1301 && _layer1520) then {
	_item1512 = createVehicle ["Land_Shoot_House_Wall_F",[17612.4,13031.5,0],[],0,"CAN_COLLIDE"];
	_this = _item1512;
	_objects pushback _this;
	_objectIDs pushback 1512;
	_this setPosWorld [17612.4,13031.5,21.8844];
	_this setVectorDirAndUp [[-0.648993,0.760415,-0.024027],[-0.00265204,0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1513 = objNull;
if (_layer1301 && _layer1520) then {
	_item1513 = createVehicle ["Land_Shoot_House_Wall_F",[17613.9,13032.8,0],[],0,"CAN_COLLIDE"];
	_this = _item1513;
	_objects pushback _this;
	_objectIDs pushback 1513;
	_this setPosWorld [17613.9,13032.8,21.8729];
	_this setVectorDirAndUp [[-0.648912,0.760529,-0.022552],[-0.0159977,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1514 = objNull;
if (_layer1301 && _layer1520) then {
	_item1514 = createVehicle ["Land_Shoot_House_Wall_F",[17615.4,13034.1,0],[],0,"CAN_COLLIDE"];
	_this = _item1514;
	_objects pushback _this;
	_objectIDs pushback 1514;
	_this setPosWorld [17615.4,13034.1,21.8764];
	_this setVectorDirAndUp [[-0.648912,0.760529,-0.022552],[-0.0159977,0.0159956,0.999744]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1515 = objNull;
if (_layer1301 && _layer1520) then {
	_item1515 = createVehicle ["Land_InfoStand_V1_F",[17643,13038,0],[],0,"CAN_COLLIDE"];
	_this = _item1515;
	_objects pushback _this;
	_objectIDs pushback 1515;
	_this setPosWorld [17643,13038,20.8814];
	_this setVectorDirAndUp [[-0.731259,-0.682037,0.00927824],[-0.0146643,0.029319,0.999463]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item1516 = objNull;
if (_layer1301 && _layer1520) then {
	_item1516 = createVehicle ["Land_Scaffolding_New_F",[17640.7,13032.9,0],[],0,"CAN_COLLIDE"];
	_this = _item1516;
	_objects pushback _this;
	_objectIDs pushback 1516;
	_this setPosWorld [17640.7,13032.9,23.1555];
	_this setVectorDirAndUp [[-0.656892,0.753984,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1517 = objNull;
if (_layer1301 && _layer1520) then {
	_item1517 = createVehicle ["VR_Area_01_circle_4_yellow_F",[17643.8,13038.8,0.015379],[],0,"CAN_COLLIDE"];
	_this = _item1517;
	_objects pushback _this;
	_objectIDs pushback 1517;
	_this setPosWorld [17643.8,13038.8,20.311];
	_this setVectorDirAndUp [[-0.741023,-0.671428,0.00838588],[-0.0174926,0.0317872,0.999342]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item1521 = objNull;
if (_layerRoot) then {
	_item1521 = createVehicle ["Land_LampHalogen_F",[17630.4,13057.1,0.00112152],[],0,"CAN_COLLIDE"];
	_this = _item1521;
	_objects pushback _this;
	_objectIDs pushback 1521;
	_this setPosWorld [17630.4,13057.1,25.2224];
	_this setVectorDirAndUp [[-0.953475,0.301473,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item22 = objNull;
if (_layer21 && _layer24) then {
	_item22 = createTrigger ["EmptyDetectorArea10x10",[17498,13192.6,0],true];
	_this = _item22;
	_triggers pushback _this;
	_triggerIDs pushback 22;
	_item22 setPosATL [17498,13192.6,0];
	_this setTriggerArea [5,20,226.428,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item1238 = objNull;
if (_layer21 && _layer24) then {
	_item1238 = createTrigger ["EmptyDetectorArea10x10",[17352.6,13359.8,0],true];
	_this = _item1238;
	_triggers pushback _this;
	_triggerIDs pushback 1238;
	_item1238 setPosATL [17352.6,13359.8,0];
	_this setTriggerArea [5,20,226.428,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate_1 animate [""Door_1_rot"", 1]}","call{gate_1 animate [""Door_1_rot"", 0]}"];
};

private _item19 = objNull;
if (_layer17 && _layer24) then {
	_item19 = createTrigger ["EmptyDetectorArea10x10",[17416.1,13177.6,9.53674e-007],true];
	_this = _item19;
	_triggers pushback _this;
	_triggerIDs pushback 19;
	_item19 setPosATL [17416.1,13177.6,9.53674e-007];
	_this setTriggerArea [10,10,182.797,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};

private _item16 = objNull;
if (_layer24) then {
	_item16 = createTrigger ["EmptyDetectorArea10x10",[17461.6,13121.6,0],true];
	_this = _item16;
	_triggers pushback _this;
	_triggerIDs pushback 16;
	_item16 setPosATL [17461.6,13121.6,0];
	_this setTriggerArea [6,6,227.588,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
		aceHealer = _this;
};

private _item1518 = objNull;
if (_layer1301 && _layer1520) then {
	_item1518 = createTrigger ["EmptyDetectorAreaR50",[17624.7,13024.3,1.90735e-006],true];
	_this = _item1518;
	_triggers pushback _this;
	_triggerIDs pushback 1518;
	_item1518 setPosATL [17624.7,13024.3,1.90735e-006];
	_this setTriggerArea [30,30,318.318,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{player allowDamage false; player setCaptive true;}","call{player allowDamage true; player setCaptive false;}"];
};

private _item1519 = objNull;
if (_layer1301 && _layer1520) then {
	_item1519 = createTrigger ["EmptyDetectorArea10x10",[17623.3,13022.6,0],true];
	_this = _item1519;
	_triggers pushback _this;
	_triggerIDs pushback 1519;
	_item1519 setPosATL [17623.3,13022.6,0];
	_this setTriggerArea [18,13.5,319.198,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item1148;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      //if (!is3DEN && !(["","ColorWEST","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item12 = objNull;
if (_layerRoot) then {
	_item12 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[17416.6,13188.7,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_logics pushback _this;
	_logicIDs pushback 12;
	_this setPosWorld [17416.6,13188.7,13.7285];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item15 = objNull;
if (_layer24) then {
	_item15 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[17429.6,13148.9,0],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_logics pushback _this;
	_logicIDs pushback 15;
	_this setPosWorld [17429.6,13148.9,14.6381];
	_this setVectorDirAndUp [[-0.762637,-0.646826,0.000835617],[0,0.00129187,0.999999]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item1195 = objNull;
if (_layerRoot) then {
	_item1195 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[17463.1,13121,3.02744],[],0,"CAN_COLLIDE"];
	_this = _item1195;
	_logics pushback _this;
	_logicIDs pushback 1195;
	_this setPosWorld [17463.1,13121,17.8608];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item1493 = objNull;
if (_layer1492 && _layer1301 && _layer1520) then {
	_item1493 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[17615.5,13030.3,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item1493;
	_logics pushback _this;
	_logicIDs pushback 1493;
	_this setPosWorld [17615.5,13030.3,20.2642];
	_this setVectorDirAndUp [[0.470868,-0.881938,0.0216455],[-0.0159977,0.0159956,0.999744]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer1492) then {missionNamespace setVariable ["base_para_Spawns",[[_item1493],[]]];};
if (_layer1472) then {missionNamespace setVariable ["base_para_Shoothouse Targets",[[_item1473,_item1474,_item1475,_item1476,_item1477,_item1478,_item1479,_item1480,_item1481,_item1482,_item1483,_item1484,_item1485,_item1486,_item1487,_item1488,_item1489,_item1490,_item1491],[]]];};
if (_layer1301) then {missionNamespace setVariable ["base_para_Shoothouse",[[_item1302,_item1303,_item1304,_item1305,_item1306,_item1307,_item1308,_item1309,_item1310,_item1311,_item1312,_item1313,_item1314,_item1315,_item1316,_item1317,_item1318,_item1319,_item1320,_item1321,_item1322,_item1323,_item1324,_item1325,_item1326,_item1327,_item1328,_item1329,_item1330,_item1331,_item1332,_item1333,_item1334,_item1335,_item1336,_item1337,_item1338,_item1339,_item1340,_item1341,_item1342,_item1343,_item1344,_item1345,_item1346,_item1347,_item1348,_item1349,_item1350,_item1351,_item1352,_item1353,_item1354,_item1355,_item1356,_item1357,_item1358,_item1359,_item1361,_item1362,_item1363,_item1364,_item1365,_item1366,_item1367,_item1368,_item1369,_item1370,_item1371,_item1372,_item1373,_item1374,_item1375,_item1376,_item1377,_item1378,_item1379,_item1380,_item1381,_item1382,_item1383,_item1384,_item1385,_item1386,_item1387,_item1388,_item1389,_item1390,_item1391,_item1392,_item1393,_item1394,_item1395,_item1396,_item1397,_item1398,_item1399,_item1400,_item1401,_item1402,_item1403,_item1404,_item1405,_item1406,_item1407,_item1408,_item1409,_item1410,_item1411,_item1412,_item1413,_item1414,_item1415,_item1416,_item1417,_item1418,_item1419,_item1420,_item1421,_item1422,_item1423,_item1424,_item1425,_item1426,_item1427,_item1428,_item1429,_item1430,_item1431,_item1432,_item1433,_item1434,_item1435,_item1436,_item1437,_item1438,_item1439,_item1440,_item1441,_item1442,_item1443,_item1444,_item1445,_item1446,_item1447,_item1448,_item1449,_item1450,_item1451,_item1452,_item1453,_item1454,_item1455,_item1456,_item1457,_item1458,_item1459,_item1460,_item1461,_item1462,_item1463,_item1464,_item1465,_item1466,_item1467,_item1468,_item1469,_item1470,_item1471,_item1473,_item1474,_item1475,_item1476,_item1477,_item1478,_item1479,_item1480,_item1481,_item1482,_item1483,_item1484,_item1485,_item1486,_item1487,_item1488,_item1489,_item1490,_item1491,_item1493,_item1494,_item1495,_item1496,_item1497,_item1498,_item1499,_item1500,_item1501,_item1502,_item1503,_item1504,_item1505,_item1506,_item1507,_item1508,_item1509,_item1510,_item1511,_item1512,_item1513,_item1514,_item1515,_item1516,_item1517,_item1518,_item1519],[]]];};
if (_layer1520) then {missionNamespace setVariable ["base_para_Shoothouse Pit",[[_item1302,_item1303,_item1304,_item1305,_item1306,_item1307,_item1308,_item1309,_item1310,_item1311,_item1312,_item1313,_item1314,_item1315,_item1316,_item1317,_item1318,_item1319,_item1320,_item1321,_item1322,_item1323,_item1324,_item1325,_item1326,_item1327,_item1328,_item1329,_item1330,_item1331,_item1332,_item1333,_item1334,_item1335,_item1336,_item1337,_item1338,_item1339,_item1340,_item1341,_item1342,_item1343,_item1344,_item1345,_item1346,_item1347,_item1348,_item1349,_item1350,_item1351,_item1352,_item1353,_item1354,_item1355,_item1356,_item1357,_item1358,_item1359,_item1361,_item1362,_item1363,_item1364,_item1365,_item1366,_item1367,_item1368,_item1369,_item1370,_item1371,_item1372,_item1373,_item1374,_item1375,_item1376,_item1377,_item1378,_item1379,_item1380,_item1381,_item1382,_item1383,_item1384,_item1385,_item1386,_item1387,_item1388,_item1389,_item1390,_item1391,_item1392,_item1393,_item1394,_item1395,_item1396,_item1397,_item1398,_item1399,_item1400,_item1401,_item1402,_item1403,_item1404,_item1405,_item1406,_item1407,_item1408,_item1409,_item1410,_item1411,_item1412,_item1413,_item1414,_item1415,_item1416,_item1417,_item1418,_item1419,_item1420,_item1421,_item1422,_item1423,_item1424,_item1425,_item1426,_item1427,_item1428,_item1429,_item1430,_item1431,_item1432,_item1433,_item1434,_item1435,_item1436,_item1437,_item1438,_item1439,_item1440,_item1441,_item1442,_item1443,_item1444,_item1445,_item1446,_item1447,_item1448,_item1449,_item1450,_item1451,_item1452,_item1453,_item1454,_item1455,_item1456,_item1457,_item1458,_item1459,_item1460,_item1461,_item1462,_item1463,_item1464,_item1465,_item1466,_item1467,_item1468,_item1469,_item1470,_item1471,_item1473,_item1474,_item1475,_item1476,_item1477,_item1478,_item1479,_item1480,_item1481,_item1482,_item1483,_item1484,_item1485,_item1486,_item1487,_item1488,_item1489,_item1490,_item1491,_item1493,_item1494,_item1495,_item1496,_item1497,_item1498,_item1499,_item1500,_item1501,_item1502,_item1503,_item1504,_item1505,_item1506,_item1507,_item1508,_item1509,_item1510,_item1511,_item1512,_item1513,_item1514,_item1515,_item1516,_item1517,_item1518,_item1519],[]]];};
if (_layer17) then {missionNamespace setVariable ["base_para_Repair Station",[[_item18,_item19],[]]];};
if (_layer21) then {missionNamespace setVariable ["base_para_bargate",[[_item22,_item23,_item1238,_item1239],[]]];};
if (_layer24) then {missionNamespace setVariable ["base_para_SIA ZGM Essentials",[[_item22,_item23,_item1238,_item1239,_item18,_item19,_item14,_item16,_item15,_item1294],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item18) then {
		this = _item18;
		call{repStation = this;};
	};
	if !(isnull _item14) then {
		this = _item14;
		call{[] spawn {sleep 5; _action = ["TpArmory", "Armory", "", {_player setPos (getPos s4_button);}, {!(_target == s4_button)}] call ace_interact_menu_fnc_createAction; 
 ["Land_InfoStand_V1_F", 0, ["ACE_MainActions", "Facilities"], _action, true] call ace_interact_menu_fnc_addActionToClass;};};
	};
	if !(isnull _item1247) then {
		this = _item1247;
		call{arsenals pushBack this};
	};
	if !(isnull _item1248) then {
		this = _item1248;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item12) then {_item12 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item1195) then {_item1195 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
