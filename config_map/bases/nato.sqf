// Export of 'nato.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer498 = (_allWhitelisted || {"hospital" in _layerWhiteList}) && {!("hospital" in _layerBlackList)};
private _layer464 = (_allWhitelisted || {"canteen #1" in _layerWhiteList}) && {!("canteen #1" in _layerBlackList)};
private _layer452 = (_allWhitelisted || {"armory" in _layerWhiteList}) && {!("armory" in _layerBlackList)};
private _layer450 = (_allWhitelisted || {"base" in _layerWhiteList}) && {!("base" in _layerBlackList)};
private _layer448 = (_allWhitelisted || {"repair station_1" in _layerWhiteList}) && {!("repair station_1" in _layerBlackList)};
private _layer446 = (_allWhitelisted || {"repair station" in _layerWhiteList}) && {!("repair station" in _layerBlackList)};
private _layer401 = (_allWhitelisted || {"at range" in _layerWhiteList}) && {!("at range" in _layerBlackList)};
private _layer370 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer350 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer181 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};
private _layer54 = (_allWhitelisted || {"checkpoint [blu]" in _layerWhiteList}) && {!("checkpoint [blu]" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item121 = "";
if (_layerRoot) then {
	_item121 = createMarker ["marker_2",[15198,17309.8,0]];
	_this = _item121;
	_markers pushback _this;
	_markerIDs pushback 121;
	_this setMarkerType "b_hq";
	_this setMarkerText "SHAFTER AB";
	_this setMarkerShape "ICON";
};

private _item179 = "";
if (_layerRoot) then {
	_item179 = createMarker ["marker_3",[15056.3,17306.4,0]];
	_this = _item179;
	_markers pushback _this;
	_markerIDs pushback 179;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Service";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};

private _item180 = "";
if (_layerRoot) then {
	_item180 = createMarker ["marker_4",[15301.5,17392.2,0]];
	_this = _item180;
	_markers pushback _this;
	_markerIDs pushback 180;
	_this setMarkerType "mil_triangle";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWhite";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item73 = grpNull;
if (_layerRoot) then {
	_item73 = createGroup west;
	_this = _item73;
	_groups pushback _this;
	_groupIDs pushback 73;
};

private _item83 = grpNull;
if (_layerRoot) then {
	_item83 = createGroup west;
	_this = _item83;
	_groups pushback _this;
	_groupIDs pushback 83;
};

private _item149 = grpNull;
if (_layerRoot) then {
	_item149 = createGroup west;
	_this = _item149;
	_groups pushback _this;
	_groupIDs pushback 149;
};

private _item160 = grpNull;
if (_layerRoot) then {
	_item160 = createGroup west;
	_this = _item160;
	_groups pushback _this;
	_groupIDs pushback 160;
};

private _item419 = grpNull;
if (_layerRoot) then {
	_item419 = createGroup west;
	_this = _item419;
	_groups pushback _this;
	_groupIDs pushback 419;
};

private _item423 = grpNull;
if (_layerRoot) then {
	_item423 = createGroup west;
	_this = _item423;
	_groups pushback _this;
	_groupIDs pushback 423;
};

private _item554 = grpNull;
if (_layerRoot) then {
	_item554 = createGroup west;
	_this = _item554;
	_groups pushback _this;
	_groupIDs pushback 554;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = createVehicle ["Land_HelipadSquare_F",[15136.2,17287.5,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [15136.2,17287.5,17.7729];
	_this setVectorDirAndUp [[-0.712611,0.7014,0.0149417],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = createVehicle ["Land_HelipadSquare_F",[15158.7,17266.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [15158.7,17266.1,17.9085];
	_this setVectorDirAndUp [[-0.720575,0.693377,-0.000895754],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.1,17295.5,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [15136.1,17295.5,17.9634];
	_this setVectorDirAndUp [[0,0.999996,0.00265199],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = createVehicle ["PortableHelipadLight_01_blue_F",[15144.1,17287.6,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [15144.1,17287.6,17.9172];
	_this setVectorDirAndUp [[0,0.999956,0.00932853],[-0.0093285,-0.00932813,0.999913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.2,17279.6,4.19617e-005],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [15136.2,17279.6,17.9279];
	_this setVectorDirAndUp [[0,0.999304,-0.0373063],[0.0306514,0.0372888,0.998834]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = createVehicle ["PortableHelipadLight_01_blue_F",[15128.2,17287.4,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [15128.2,17287.4,17.9174];
	_this setVectorDirAndUp [[0,0.999956,-0.0093285],[0.00532655,0.00932837,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = createVehicle ["PortableHelipadLight_01_green_F",[15136.4,17287.3,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [15136.4,17287.3,17.8785];
	_this setVectorDirAndUp [[0,0.999712,0.023991],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = createVehicle ["PortableHelipadLight_01_yellow_F",[15166.6,17266.3,0],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [15166.6,17266.3,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.5,17274.1,0],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [15158.5,17274.1,18.0099];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item9 = objNull;
if (_layerRoot) then {
	_item9 = createVehicle ["PortableHelipadLight_01_yellow_F",[15150.6,17266,0],[],0,"CAN_COLLIDE"];
	_this = _item9;
	_objects pushback _this;
	_objectIDs pushback 9;
	_this setPosWorld [15150.6,17266,18.0181];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item10 = objNull;
if (_layerRoot) then {
	_item10 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.9,17258.2,0],[],0,"CAN_COLLIDE"];
	_this = _item10;
	_objects pushback _this;
	_objectIDs pushback 10;
	_this setPosWorld [15158.9,17258.2,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = createVehicle ["PortableHelipadLight_01_green_F",[15159,17265.8,0],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [15159,17265.8,18.0196];
	_this setVectorDirAndUp [[0.819687,-0.572811,0.000739998],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item12 = objNull;
if (_layerRoot) then {
	_item12 = createSimpleObject ["Land_BarrelEmpty_F",[15186.6,17371.2,18.6467]];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [15186.6,17371.2,19.0515];
	_this setVectorDirAndUp [[0.672602,-0.740005,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = createSimpleObject ["Land_Photos_V3_F",[15195,17368,19.3431]];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [15195,17368,19.344];
	_this setVectorDirAndUp [[0.896733,0.442573,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\documents\data\photos_camo_co.paa"];
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createSimpleObject ["Land_Bandage_F",[15195.8,17367,19.365]];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [15195.8,17367,19.3683];
	_this setVectorDirAndUp [[-0.975412,0.220389,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = createSimpleObject ["Land_CampingChair_V2_F",[15193.1,17367.5,18.5263]];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [15193.1,17367.5,19.0328];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createSimpleObject ["Land_CampingChair_V2_F",[15192.3,17368.2,18.5263]];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [15192.3,17368.2,19.0328];
	_this setVectorDirAndUp [[0.304562,0.952492,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = createSimpleObject ["Land_CampingTable_F",[15195.7,17367.5,18.5263]];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [15195.7,17367.5,18.9379];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createVehicle ["Item_FirstAidKit",[15195.8,17367.7,1.4184],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [15195.8,17367.7,20.0019];
	_this setVectorDirAndUp [[0.0918177,-0.995776,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createSimpleObject ["Land_GasCanister_F",[15195.5,17368.1,19.3431]];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [15195.5,17368.1,19.3984];
	_this setVectorDirAndUp [[0.386419,0.922323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = createVehicle ["Item_Medikit",[15196.2,17367,1.43556],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [15196.2,17367,20.02];
	_this setVectorDirAndUp [[0.458156,-0.888872,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item21 = objNull;
if (_layerRoot) then {
	_item21 = createVehicle ["Land_PaperBox_01_small_open_brown_F",[15196.1,17367.2,1.41459],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [15196.1,17367.2,19.5504];
	_this setVectorDirAndUp [[0.888872,0.458155,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = createVehicle ["Land_PaperBox_closed_F",[15192.8,17364.6,0.604],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [15192.8,17364.6,19.17];
	_this setVectorDirAndUp [[0.672599,-0.740007,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = createSimpleObject ["Land_TripodScreen_01_large_F",[15190.8,17366.2,18.5263]];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [15190.8,17366.2,19.5695];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = createSimpleObject ["Land_GasCooker_F",[15195.3,17368.2,19.3431]];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [15195.3,17368.2,19.4383];
	_this setVectorDirAndUp [[0.872341,0.488898,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = createSimpleObject ["Land_PencilBlue_F",[15195.2,17368,19.3431]];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [15195.2,17368,19.3473];
	_this setVectorDirAndUp [[-0.84121,0.540708,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = createSimpleObject ["Land_PenBlack_F",[15195.1,17367.8,19.3431]];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [15195.1,17367.8,19.351];
	_this setVectorDirAndUp [[-0.98561,0.169037,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item27 = objNull;
if (_layerRoot) then {
	_item27 = createVehicle ["Land_PaperBox_closed_F",[15186.6,17369,0.597],[],0,"CAN_COLLIDE"];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [15186.6,17369,19.17];
	_this setVectorDirAndUp [[0.672599,-0.740007,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item28 = objNull;
if (_layerRoot) then {
	_item28 = createSimpleObject ["Land_WaterBottle_01_full_F",[15188.7,17364.8,19.343]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [15188.7,17364.8,19.4712];
	_this setVectorDirAndUp [[-0.143806,0.989606,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layerRoot) then {
	_item29 = createSimpleObject ["Land_CampingChair_V2_F",[15186.4,17362.6,18.5263]];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [15186.4,17362.6,19.0328];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item30 = objNull;
if (_layerRoot) then {
	_item30 = createSimpleObject ["Land_CampingChair_V2_F",[15187.1,17362,18.5263]];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [15187.1,17362,19.0328];
	_this setVectorDirAndUp [[0.888872,0.458155,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item31 = objNull;
if (_layerRoot) then {
	_item31 = createSimpleObject ["Land_CampingChair_V2_F",[15188.4,17364.6,18.5263]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [15188.4,17364.6,19.0328];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item32 = objNull;
if (_layerRoot) then {
	_item32 = createSimpleObject ["Land_CampingTable_F",[15186.4,17362,18.5263]];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [15186.4,17362,18.9379];
	_this setVectorDirAndUp [[0.740005,0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item33 = objNull;
if (_layerRoot) then {
	_item33 = createSimpleObject ["Land_CampingTable_F",[15189.1,17364.5,18.5263]];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [15189.1,17364.5,18.9379];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layerRoot) then {
	_item34 = createSimpleObject ["Land_Can_V1_F",[15187.1,17361.5,19.3431]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [15187.1,17361.5,19.3831];
	_this setVectorDirAndUp [[0.998864,-0.0476615,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item35 = objNull;
if (_layerRoot) then {
	_item35 = createSimpleObject ["Land_TripodScreen_01_dual_v2_F",[15189.6,17364.9,18.5263]];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [15189.6,17364.9,19.3726];
	_this setVectorDirAndUp [[-0.740005,-0.672601,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
	_this setObjectTextureGlobal [1,"#(argb,8,8,3)color(0,0,0,0.0,co)"];
};

private _item36 = objNull;
if (_layerRoot) then {
	_item36 = createSimpleObject ["Land_VitaminBottle_F",[15185.9,17362.5,19.3431]];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [15185.9,17362.5,19.4016];
	_this setVectorDirAndUp [[0.619343,-0.78512,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item37 = objNull;
if (_layerRoot) then {
	_item37 = createSimpleObject ["Land_FoodSack_01_full_brown_F",[15186.3,17362.1,19.3259]];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [15186.3,17362.1,19.4347];
	_this setVectorDirAndUp [[-0.212487,0.977164,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item38 = objNull;
if (_layerRoot) then {
	_item38 = createVehicle ["Land_PaperBox_open_full_F",[15191,17363,0.606001],[],0,"CAN_COLLIDE"];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [15191,17363,19.1346];
	_this setVectorDirAndUp [[0.672599,-0.740007,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item39 = objNull;
if (_layerRoot) then {
	_item39 = createVehicle ["Land_WaterTank_03_F",[15152.5,17335.4,0],[],0,"CAN_COLLIDE"];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [15152.5,17335.4,18.6474];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item40 = objNull;
if (_layerRoot) then {
	_item40 = createSimpleObject ["Land_Tableware_01_tray_F",[15149.2,17338.7,18.6507]];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [15149.2,17338.7,18.6574];
	_this setVectorDirAndUp [[-0.63987,0.768459,-0.00614729],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item41 = objNull;
if (_layerRoot) then {
	_item41 = createSimpleObject ["Land_Tableware_01_fork_F",[15149.3,17338.8,18.6519]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [15149.3,17338.8,18.6567];
	_this setVectorDirAndUp [[0.813442,0.581618,0.00573073],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item42 = objNull;
if (_layerRoot) then {
	_item42 = createSimpleObject ["Land_CerealsBox_F",[15148.8,17338.7,18.6478]];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [15148.8,17338.7,18.8063];
	_this setVectorDirAndUp [[-0.973222,-0.229744,-0.00747969],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item43 = objNull;
if (_layerRoot) then {
	_item43 = createSimpleObject ["Land_Canteen_F",[15149.8,17336.7,18.6588]];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [15149.8,17336.7,18.7891];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item44 = objNull;
if (_layerRoot) then {
	_item44 = createSimpleObject ["Land_BottlePlastic_V2_F",[15150.2,17337.9,18.6589]];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [15150.2,17337.9,18.7897];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item45 = objNull;
if (_layerRoot) then {
	_item45 = createSimpleObject ["Land_FoodContainer_01_F",[15155,17332.8,18.6786]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [15155,17332.8,18.9064];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item46 = objNull;
if (_layerRoot) then {
	_item46 = createSimpleObject ["Land_LiquidDispenser_01_F",[15157,17334.1,18.6822]];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [15157,17334.1,19.057];
	_this setVectorDirAndUp [[0.854321,0.519743,0.0015707],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item47 = objNull;
if (_layerRoot) then {
	_item47 = createSimpleObject ["Land_Tableware_01_cup_F",[15157.3,17333.9,18.6833]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [15157.3,17333.9,18.7337];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layerRoot) then {
	_item48 = createSimpleObject ["Land_Tableware_01_napkin_F",[15150.2,17337.9,18.6589]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [15150.2,17337.9,18.6615];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layerRoot) then {
	_item49 = createSimpleObject ["Land_Can_V1_F",[15149.3,17337,18.6537]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [15149.3,17337,18.6937];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layerRoot) then {
	_item50 = createSimpleObject ["Land_Ketchup_01_F",[15155.2,17332.5,18.6795]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [15155.2,17332.5,18.7826];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layerRoot) then {
	_item51 = createSimpleObject ["Land_Mustard_01_F",[15155.3,17332.6,18.6797]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [15155.3,17332.6,18.7829];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layerRoot) then {
	_item52 = createVehicle ["WaterTrail_01_Old_F",[15157.7,17334.5,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [15157.7,17334.5,17.8724];
	_this setVectorDirAndUp [[-0.855882,-0.517171,0.000668118],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item53 = objNull;
if (_layerRoot) then {
	_item53 = createVehicle ["CamoNet_BLUFOR_open_F",[15152,17334.7,0],[],0,"CAN_COLLIDE"];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [15152,17334.7,19.0203];
	_this setVectorDirAndUp [[0.691586,0.722293,0.000864022],[-0.0026529,0.0013439,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item55 = objNull;
if (_layer54) then {
	_item55 = createSimpleObject ["RoadCone_F",[15300.1,17533.2,16.6155]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [15300.1,17533.2,16.8834];
	_this setVectorDirAndUp [[0.661324,0.749875,0.0183957],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item56 = objNull;
if (_layer54) then {
	_item56 = createSimpleObject ["RoadCone_F",[15304.8,17539.6,16.5871]];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [15304.8,17539.6,16.8551];
	_this setVectorDirAndUp [[0.0624047,-0.998047,0.00289629],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item57 = objNull;
if (_layer54) then {
	_item57 = createSimpleObject ["RoadCone_F",[15297.3,17530.2,16.5946]];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [15297.3,17530.2,16.8626];
	_this setVectorDirAndUp [[-0.998019,-0.0624157,-0.00790185],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item58 = objNull;
if (_layer54) then {
	_item58 = createSimpleObject ["RoadCone_F",[15293.7,17527,16.6024]];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [15293.7,17527,16.8703];
	_this setVectorDirAndUp [[0.980169,-0.197839,0.0113012],[-0.00533768,0.0306509,0.999516]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item59 = objNull;
if (_layer54) then {
	_item59 = createSimpleObject ["RoadCone_F",[15302.9,17536.4,16.6004]];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [15302.9,17536.4,16.8684];
	_this setVectorDirAndUp [[0.749855,-0.661588,0.00440576],[0,0.00665923,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item60 = objNull;
if (_layer54) then {
	_item60 = createSimpleObject ["RoadCone_F",[15304,17541.4,16.5789]];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [15304,17541.4,16.8469];
	_this setVectorDirAndUp [[0.661603,0.749854,0.000655636],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item61 = objNull;
if (_layer54) then {
	_item61 = createSimpleObject ["RoadCone_F",[15311.9,17533.4,16.6923]];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [15311.9,17533.4,16.96];
	_this setVectorDirAndUp [[0.0624052,-0.996962,0.0466075],[-0.00133721,0.0466149,0.998912]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item62 = objNull;
if (_layer54) then {
	_item62 = createSimpleObject ["RoadCone_F",[15303.9,17524.6,16.7874]];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [15303.9,17524.6,17.0552];
	_this setVectorDirAndUp [[0.749532,-0.661077,0.0343294],[-0.0293202,0.0186548,0.999396]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item63 = objNull;
if (_layer54) then {
	_item63 = createSimpleObject ["RoadCone_F",[15300.2,17521.5,16.8083]];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [15300.2,17521.5,17.0761];
	_this setVectorDirAndUp [[-0.749743,0.660892,-0.0332665],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item64 = objNull;
if (_layer54) then {
	_item64 = createSimpleObject ["RoadCone_F",[15308.9,17530.2,16.7809]];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [15308.9,17530.2,17.0487];
	_this setVectorDirAndUp [[0.0623958,-0.997549,0.0316725],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item65 = objNull;
if (_layer54) then {
	_item65 = createSimpleObject ["RoadCone_F",[15314.2,17536.2,16.6152]];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [15314.2,17536.2,16.8832];
	_this setVectorDirAndUp [[-0.833125,-0.55308,0.00221054],[0,0.00399675,0.999992]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item66 = objNull;
if (_layer54) then {
	_item66 = createSimpleObject ["RoadCone_F",[15306.6,17527.6,16.8123]];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [15306.6,17527.6,17.0801];
	_this setVectorDirAndUp [[0.0623784,-0.998048,0.00316434],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item67 = objNull;
if (_layer54) then {
	_item67 = createVehicle ["Land_CncBarrier_stripes_F",[15298.5,17541.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [15298.5,17541.9,16.9355];
	_this setVectorDirAndUp [[-0.0362552,0.999318,-0.00700201],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item68 = objNull;
if (_layer54) then {
	_item68 = createVehicle ["Land_CncBarrier_stripes_F",[15293.3,17541.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [15293.3,17541.8,16.8884];
	_this setVectorDirAndUp [[-0.076361,0.997053,-0.00736105],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item69 = objNull;
if (_layer54) then {
	_item69 = createVehicle ["Land_CncBarrier_stripes_F",[15302.2,17541.8,0],[],0,"CAN_COLLIDE"];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [15302.2,17541.8,16.9564];
	_this setVectorDirAndUp [[-0.0362598,0.999339,-0.00279608],[-0.00399679,0.00265288,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item70 = objNull;
if (_layerRoot) then {
	_item70 = createVehicle ["Land_BarGate_F",[15301.3,17528.9,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [15301.3,17528.9,20.7069];
	_this setVectorDirAndUp [[-0.713408,-0.700464,-0.0199829],[-0.0293173,0.00134333,0.999569]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item72 = objNull;
if (_layerRoot) then {
	_item72 = createVehicle ["Land_Cargo_Patrol_V1_F",[15323.1,17535.6,6.86646e-005],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [15323.1,17535.6,21.4615];
	_this setVectorDirAndUp [[-0.126062,-0.992022,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item74 = objNull;
if (_layerRoot) then {
	_item74 = _item73 createUnit ["B_Soldier_F",[15324,17536.9,4.3462],[],0,"CAN_COLLIDE"];
	_item73 selectLeader _item74;
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [15324,17536.9,20.8613];
	_this setVectorDirAndUp [[0.156151,0.987733,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","rhs_googles_yellow",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Thomas Bennett";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item75 = objNull;
if (_layerRoot) then {
	_item75 = _item73 createUnit ["B_Soldier_F",[15295.2,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [15295.2,17532.4,16.5766];
	_this setVectorDirAndUp [[0.941339,0.337461,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_Safety_yellow_F",[]],[],"H_HelmetB","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Owen Johnson";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male08ENG";;
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

private _item76 = objNull;
if (_layerRoot) then {
	_item76 = _item73 createUnit ["B_Soldier_F",[15187.2,17525,4.35],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [15187.2,17525,19.7565];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "George Wilson";;
	_this setface "WhiteHead_18";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH1",["inbasemoves_patrolling1"],false,false] # 0 isEqualTo '') then      {        ["WATCH1",["inbasemoves_patrolling1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item77 = objNull;
if (_layerRoot) then {
	_item77 = createVehicle ["Land_New_WiredFence_5m_F",[15319,17535.9,0],[],0,"CAN_COLLIDE"];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [15319,17535.9,17.6874];
	_this setVectorDirAndUp [[0.753463,-0.65749,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item79 = objNull;
if (_layerRoot) then {
	_item79 = createVehicle ["Land_GuardShed",[15295.4,17530.8,0],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [15295.4,17530.8,17.1861];
	_this setVectorDirAndUp [[-0.68727,-0.726402,-0.000757559],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item80 = objNull;
if (_layerRoot) then {
	_item80 = createVehicle ["Land_PortableLight_double_F",[15294.4,17534.6,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_objects pushback _this;
	_objectIDs pushback 80;
	_this setPosWorld [15294.4,17534.6,17.6493];
	_this setVectorDirAndUp [[-0.873944,-0.486026,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item81 = objNull;
if (_layerRoot) then {
	_item81 = createVehicle ["Land_Sign_WarningMilitaryArea_F",[15305.9,17525.6,0],[],0,"CAN_COLLIDE"];
	_this = _item81;
	_objects pushback _this;
	_objectIDs pushback 81;
	_this setPosWorld [15305.9,17525.6,17.8666];
	_this setVectorDirAndUp [[-0.74395,-0.668235,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\signs_f\signm\data\signm_warningmilitaryarea_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item82 = objNull;
if (_layerRoot) then {
	_item82 = createVehicle ["CUP_sign_stop_new",[15296.7,17532.4,-2.16378],[],0,"CAN_COLLIDE"];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [15296.7,17532.4,16.0448];
	_this setVectorDirAndUp [[-0.682527,-0.73086,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item84 = objNull;
if (_layerRoot) then {
	_item84 = _item83 createUnit ["B_Soldier_unarmed_F",[15219.4,17303.2,0],[],0,"CAN_COLLIDE"];
	_item83 selectLeader _item84;
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [15219.4,17303.2,17.9749];
	_this setVectorDirAndUp [[0.992134,0.125177,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Callum Hall";;
	_this setface "WhiteHead_19";;
	_this setspeaker "Male12ENG";;
	_this setpitch 0.95;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item85 = objNull;
if (_layerRoot) then {
	_item85 = _item83 createUnit ["B_Soldier_F",[15165.7,17369.2,4.145],[],0,"CAN_COLLIDE"];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [15165.7,17369.2,22.0473];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dwan Jones";;
	_this setface "WhiteHead_04";;
	_this setspeaker "Male05ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["WATCH2",["inbasemoves_patrolling2"],false,false] # 0 isEqualTo '') then      {        ["WATCH2",["inbasemoves_patrolling2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item86 = objNull;
if (_layerRoot) then {
	_item86 = _item83 createUnit ["B_Soldier_F",[15221.1,17303.7,0],[],0,"CAN_COLLIDE"];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [15221.1,17303.7,17.9778];
	_this setVectorDirAndUp [[-0.945589,-0.325363,0],[0,0,1]];
	_this setUnitLoadout [["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_Cap_oli","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dixon Walker";;
	_this setface "WhiteHead_13";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.04;;
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

private _item87 = objNull;
if (_layerRoot) then {
	_item87 = _item83 createUnit ["B_Soldier_lite_F",[15150.3,17338.5,0],[],0,"CAN_COLLIDE"];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [15150.3,17338.5,17.8443];
	_this setVectorDirAndUp [[-0.74672,-0.665139,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam_tshirt",[]],[],[],"H_Cap_usblack","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Luke Edwards";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U1",["hubsittingchairua_idle1","hubsittingchairua_idle2","hubsittingchairua_idle3","hubsittingchairua_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U1",["hubsittingchairua_idle1","hubsittingchairua_idle2","hubsittingchairua_idle3","hubsittingchairua_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item88 = objNull;
if (_layerRoot) then {
	_item88 = _item83 createUnit ["B_Soldier_lite_F",[15148.6,17336.8,0],[],0,"CAN_COLLIDE"];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [15148.6,17336.8,17.8348];
	_this setVectorDirAndUp [[0.472971,0.881078,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam_vest",[]],["V_TacVest_oli",[]],[],"","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ben Murphy";;
	_this setface "WhiteHead_09";;
	_this setspeaker "Male01ENG";;
	_this setpitch 1.03;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT_U3",["hubsittingchairuc_idle1","hubsittingchairuc_idle2","hubsittingchairuc_idle3","hubsittingchairuc_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT_U3",["hubsittingchairuc_idle1","hubsittingchairuc_idle2","hubsittingchairuc_idle3","hubsittingchairuc_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item89 = objNull;
if (_layerRoot) then {
	_item89 = createVehicle ["Land_LampHalogen_F",[15239.8,17323,-2.86102e-005],[],0,"CAN_COLLIDE"];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [15239.8,17323,23.9894];
	_this setVectorDirAndUp [[0.181383,0.983413,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item90 = objNull;
if (_layerRoot) then {
	_item90 = createVehicle ["Land_LampHalogen_F",[15182.5,17387,0.000137329],[],0,"CAN_COLLIDE"];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [15182.5,17387,23.899];
	_this setVectorDirAndUp [[-0.986538,-0.163534,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item91 = objNull;
if (_layerRoot) then {
	_item91 = createVehicle ["Land_LampHalogen_F",[15132.1,17339.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [15132.1,17339.7,23.5835];
	_this setVectorDirAndUp [[-0.142908,-0.989736,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item92 = objNull;
if (_layerRoot) then {
	_item92 = createVehicle ["Land_LampHalogen_F",[15116.7,17328.3,0.000335693],[],0,"CAN_COLLIDE"];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [15116.7,17328.3,23.4271];
	_this setVectorDirAndUp [[-0.976489,-0.215566,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = createVehicle ["B_MRAP_01_F",[15167.8,17307.3,-1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [15167.8,17307.3,20.0619];
	_this setVectorDirAndUp [[0.721679,-0.692196,0.00664815],[-0.00666818,0.00265198,0.999974]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F""],[2]],[[""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""HandGrenade"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""16Rnd_9x21_Mag"",""SmokeShell"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellBlue"",""NLAW_F""],[16,6,10,10,4,4,4,4,12,4,4,4,4,2]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hithull"",""hitengine"",""hitfuel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_l"",""#light_r"",""#light_l"",""#light_r"",""#light_l2"",""#light_r2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = createVehicle ["B_LSV_01_unarmed_F",[15172.2,17313.7,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [15172.2,17313.8,20.0368];
	_this setVectorDirAndUp [[0.690199,-0.723617,0.00202397],[0.00265199,0.00532648,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F""],[2]],[[""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""HandGrenade"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""16Rnd_9x21_Mag"",""SmokeShell"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellBlue"",""NLAW_F""],[16,6,10,10,4,4,4,4,12,4,4,4,4,2]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hithull"",""hitengine"",""hitbody"",""hitglass1"",""hitrglass"",""hitlglass"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_1_hitpoint"",""#light_2_hitpoint""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = createVehicle ["B_LSV_01_armed_F",[15178,17318.8,-3.24249e-005],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [15178,17318.7,20.0579];
	_this setVectorDirAndUp [[0.682279,-0.73109,0.00162775],[-0.00666818,-0.00399657,0.99997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F""],[2]],[[""30Rnd_65x39_caseless_mag"",""100Rnd_65x39_caseless_mag"",""HandGrenade"",""1Rnd_HE_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""16Rnd_9x21_Mag"",""SmokeShell"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellBlue"",""NLAW_F""],[16,6,10,10,4,4,4,4,12,4,4,4,4,2]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hithull"",""hitengine"",""hitbody"",""hitglass1"",""hitrglass"",""hitlglass"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""hitturret"",""hitgun"",""#light_1_hitpoint"",""#light_2_hitpoint""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = createVehicle ["Land_New_WiredFence_5m_F",[15191.5,17538.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [15191.5,17538.2,16.7624];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = createVehicle ["Land_New_WiredFence_5m_F",[15180.8,17539.9,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [15180.8,17539.9,16.7591];
	_this setVectorDirAndUp [[0.713736,-0.700415,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = createVehicle ["Land_New_WiredFence_5m_F",[15187.6,17541.5,0],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [15187.6,17541.5,16.8122];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = createSimpleObject ["B_Truck_01_mover_F",[15222,17466.8,17.151]];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [15222,17466.8,19.0655];
	_this setVectorDirAndUp [[-0.718901,0.694948,-0.0151073],[-0.011995,0.00932783,0.999885]];
	0 remoteExec ['setFeatureType', _this];
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = createSimpleObject ["B_Truck_01_box_F",[15214.2,17459.3,17.1446]];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [15214.2,17459.3,19.4579];
	_this setVectorDirAndUp [[-0.709456,0.704643,-0.0122566],[-0.0093285,0.00800055,0.999924]];
	0 remoteExec ['setFeatureType', _this];
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = createVehicle ["Land_Scrap_MRAP_01_F",[15065.1,17312.2,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [15065.1,17312.2,18.4567];
	_this setVectorDirAndUp [[0.673398,0.73917,-0.0128104],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = createSimpleObject ["Land_Pallets_stack_F",[15053.6,17317.8,17.0326]];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [15053.6,17317.8,17.4616];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146643,0.0466113,0.998805]];
	0 remoteExec ['setFeatureType', _this];
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = createSimpleObject ["Land_DrillAku_F",[15053.3,17317.4,17.9269]];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [15053.3,17317.4,18.0688];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
};

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = createVehicle ["ACE_Wheel",[15053.9,17317.9,0.881086],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [15053.9,17317.9,18.0702];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = createVehicle ["ACE_Wheel",[15054.6,17318,0.260969],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [15054.6,17318,17.4548];
	_this setVectorDirAndUp [[-0.0797611,0.986334,0.144163],[0.974348,0.0466124,0.220165]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = createSimpleObject ["Land_Wrench_F",[15053.2,17317.3,17.9306]];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [15053.2,17317.3,17.9331];
	_this setVectorDirAndUp [[0.770311,-0.636347,0.0410186],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
};

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = createSimpleObject ["Land_RefuelingHose_01_F",[15058.9,17296.5,17.3275]];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [15058.9,17296.5,17.4077];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00133688,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = createSimpleObject ["Land_CanisterFuel_F",[15058.7,17295.9,17.3288]];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [15058.7,17295.9,17.6023];
	_this setVectorDirAndUp [[0,0.999999,-0.00129187],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = createVehicle ["B_Slingload_01_Fuel_F",[15055.1,17297.1,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [15055.1,17297.1,18.6897];
	_this setVectorDirAndUp [[0.72122,-0.692706,0.000894887],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = createVehicle ["Oil_Spill_F",[15059,17297,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [15059,17297,17.3261];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00133688,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = createVehicle ["Box_NATO_AmmoVeh_F",[15047.4,17304.5,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [15047.4,17304.5,18.0467];
	_this setVectorDirAndUp [[0.671275,0.740732,-0.0265764],[0.00133688,0.0346455,0.999399]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = createVehicle ["B_Quadbike_01_F",[15043.3,17314.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [15043.2,17314.7,18.4627];
	_this setVectorDirAndUp [[0.743046,-0.667544,0.0476227],[-0.0293202,0.0386199,0.998824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitengine"",""hitfuel"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = createVehicle ["Desk",[15214.8,17337.3,0.582422],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [15214.8,17337.3,18.9624];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item123 = objNull;
if (_layerRoot) then {
	_item123 = createSimpleObject ["Land_OfficeCabinet_01_F",[15220,17335.7,18.5513]];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [15220,17335.7,19.3318];
	_this setVectorDirAndUp [[0.750048,0.661383,-0.000517747],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item124 = objNull;
if (_layerRoot) then {
	_item124 = createSimpleObject ["Land_OfficeChair_01_F",[15215.8,17336.5,18.5544]];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [15215.8,17336.5,19.2289];
	_this setVectorDirAndUp [[0.900738,-0.434362,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item125 = objNull;
if (_layerRoot) then {
	_item125 = createVehicle ["Land_MapBoard_01_Wall_F",[15206.2,17325.7,2.15606],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [15206.2,17325.7,20.6632];
	_this setVectorDirAndUp [[-0.721387,-0.692532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = createSimpleObject ["MapBoard_seismic_F",[15213.9,17341.3,18.5491]];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [15213.9,17341.3,19.518];
	_this setVectorDirAndUp [[0.464438,0.885605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = createVehicle ["Land_CampingChair_V2_white_F",[15220.9,17328.1,0.561691],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [15220.9,17328.1,19.0572];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000490924],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layerRoot) then {
	_item128 = createVehicle ["Land_CampingChair_V2_white_F",[15218.9,17330.7,0.568523],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [15218.9,17330.7,19.0587];
	_this setVectorDirAndUp [[-0.838642,-0.544683,0.000579111],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layerRoot) then {
	_item129 = createVehicle ["Land_GymRack_03_F",[15224.5,17316.3,0.550093],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [15224.5,17316.3,19.1306];
	_this setVectorDirAndUp [[0.696921,-0.717148,-0.000481074],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item130 = objNull;
if (_layerRoot) then {
	_item130 = createVehicle ["Land_GymBench_01_F",[15222.8,17314.8,0.555876],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [15222.8,17314.8,19.1386];
	_this setVectorDirAndUp [[0.677791,-0.735255,-0.000467869],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item131 = objNull;
if (_layerRoot) then {
	_item131 = createSimpleObject ["Fridge_01_closed_F",[15216.2,17321.6,18.5543]];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [15216.2,17321.6,19.0728];
	_this setVectorDirAndUp [[0.675017,-0.737802,-0.000465955],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item132 = objNull;
if (_layerRoot) then {
	_item132 = createSimpleObject ["Land_WaterCooler_01_new_F",[15215.6,17320.9,18.5548]];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [15215.6,17320.9,19.2869];
	_this setVectorDirAndUp [[0.675013,-0.737805,-0.000465952],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item133 = objNull;
if (_layerRoot) then {
	_item133 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.6,17337.2,19.3764]];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [15214.6,17337.2,19.6311];
	_this setVectorDirAndUp [[-0.908626,0.417584,0.00468656],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item134 = objNull;
if (_layerRoot) then {
	_item134 = createSimpleObject ["Land_PCSet_01_screen_F",[15215,17337.6,19.378]];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [15215,17337.6,19.6326];
	_this setVectorDirAndUp [[-0.461859,0.886953,0.000318814],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15215,17337.2,19.378]];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [15215,17337.2,19.3859];
	_this setVectorDirAndUp [[-0.690211,0.72357,0.00743816],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = createSimpleObject ["Land_PCSet_01_mouse_F",[15215.3,17337.5,19.3777]];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [15215.3,17337.5,19.403];
	_this setVectorDirAndUp [[-0.656072,0.754698,0.000452877],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item137 = objNull;
if (_layerRoot) then {
	_item137 = createVehicle ["Desk",[15214.2,17338.1,0.584808],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [15214.2,17338.1,18.9629];
	_this setVectorDirAndUp [[-0.665593,0.746315,0.000459449],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = createSimpleObject ["Land_OfficeChair_01_F",[15213.5,17338.7,18.5247]];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [15213.5,17338.7,19.1991];
	_this setVectorDirAndUp [[-0.646559,0.762864,0.00044631],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item139 = objNull;
if (_layerRoot) then {
	_item139 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.4,17338.3,19.3783]];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [15214.4,17338.3,19.633];
	_this setVectorDirAndUp [[0.889608,-0.456712,0.00348723],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = createSimpleObject ["Land_PCSet_01_screen_F",[15214,17337.9,19.3774]];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [15214,17337.9,19.6321];
	_this setVectorDirAndUp [[0.422854,-0.906198,-0.00029189],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,co)"];
};

private _item141 = objNull;
if (_layerRoot) then {
	_item141 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15214,17338.3,19.3777]];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [15214,17338.3,19.3857];
	_this setVectorDirAndUp [[0.658093,-0.752908,0.00653824],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item142 = objNull;
if (_layerRoot) then {
	_item142 = createSimpleObject ["Land_PCSet_01_mouse_F",[15213.6,17338,19.3756]];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [15213.6,17338,19.4008];
	_this setVectorDirAndUp [[0.622635,-0.782512,-0.000429796],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item143 = objNull;
if (_layerRoot) then {
	_item143 = createVehicle ["Desk",[15207.3,17328.9,0.59997],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [15207.3,17328.9,18.9682];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item144 = objNull;
if (_layerRoot) then {
	_item144 = createSimpleObject ["Land_OfficeChair_01_F",[15207.9,17328.3,18.5463]];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [15207.9,17328.3,19.2207];
	_this setVectorDirAndUp [[0.724052,-0.689745,-0.000499803],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item145 = objNull;
if (_layerRoot) then {
	_item145 = createVehicle ["Land_Laptop_unfolded_F",[15207.4,17328.8,1.4194],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [15207.4,17328.8,19.5369];
	_this setVectorDirAndUp [[0.703705,-0.710454,-0.00740374],[0.00556687,-0.00490686,0.999972]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item146 = objNull;
if (_layerRoot) then {
	_item146 = createSimpleObject ["Land_Document_01_F",[15207.1,17328.6,19.3838]];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [15207.1,17328.6,19.3891];
	_this setVectorDirAndUp [[-0.784175,0.620506,0.00652709],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item147 = objNull;
if (_layerRoot) then {
	_item147 = createSimpleObject ["Land_File1_F",[15207.7,17329.3,19.3836]];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [15207.7,17329.3,19.3922];
	_this setVectorDirAndUp [[-0.552097,0.83378,0.000381105],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item148 = objNull;
if (_layerRoot) then {
	_item148 = createSimpleObject ["Land_PencilYellow_F",[15208,17329.2,19.3835]];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [15208,17329.2,19.3876];
	_this setVectorDirAndUp [[0,1,0],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item150 = objNull;
if (_layerRoot) then {
	_item150 = _item149 createUnit ["B_officer_F",[15207.9,17328.4,0.613001],[],0,"CAN_COLLIDE"];
	_item149 selectLeader _item150;
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [15207.9,17328.4,18.5772];
	_this setVectorDirAndUp [[-0.783867,0.620929,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Jack Miller";;
	_this setface "WhiteHead_15";;
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

private _item151 = objNull;
if (_layerRoot) then {
	_item151 = _item149 createUnit ["B_officer_F",[15213.5,17339.5,0.587999],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [15213.5,17339.5,18.5586];
	_this setVectorDirAndUp [[0.678942,-0.734192,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "William Thompson";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male04ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = _item149 createUnit ["B_officer_F",[15213.5,17338.6,0.642],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [15213.5,17338.7,18.6129];
	_this setVectorDirAndUp [[0.774161,-0.632989,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Tavish Walker";;
	_this setface "WhiteHead_11";;
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

private _item153 = objNull;
if (_layerRoot) then {
	_item153 = _item149 createUnit ["B_officer_F",[15218.8,17315.5,0.563248],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [15218.8,17315.6,18.5538];
	_this setVectorDirAndUp [[-0.854894,-0.518803,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"H_MilCap_mcamo","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ryan Bennett";;
	_this setface "WhiteHead_01";;
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

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = createVehicle ["Land_MapBoard_01_Wall_Altis_F",[15222.9,17333.1,1.762],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [15222.9,17333.1,20.3007];
	_this setVectorDirAndUp [[0.742642,0.669688,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[15220.6,17335.1,18.5509]];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [15220.6,17335.1,18.9689];
	_this setVectorDirAndUp [[0.758414,0.651773,-0.000523522],[0.000690285,0,1]];
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

private _item161 = objNull;
if (_layerRoot) then {
	_item161 = _item160 createUnit ["B_soldier_repair_F",[15210.9,17458.7,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_item160 selectLeader _item161;
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [15210.9,17458.7,17.1206];
	_this setVectorDirAndUp [[0.638114,-0.769942,0],[0,0,1]];
	_this setUnitLoadout [[],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[]],["V_Safety_orange_F",[]],["B_AssaultPack_rgr_Repair",[]],"H_Construction_basic_orange_F","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Mike Murphy";;
	_this setface "WhiteHead_06";;
	_this setspeaker "Male03ENG";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] # 0 isEqualTo '') then      {        ["STAND_U3",["hubstandinguc_idle1","hubstandinguc_idle2","hubstandinguc_idle3","hubstandinguc_move1","hubstandinguc_move2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', true];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = _item160 createUnit ["B_Soldier_unarmed_F",[15212.1,17457.4,0],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [15212.1,17457.4,17.1417];
	_this setVectorDirAndUp [[-0.711769,0.702414,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["U_B_CombatUniform_mcam",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"H_HelmetB","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Gillian White";;
	_this setface "WhiteHead_16";;
	_this setspeaker "Male04ENG";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] # 0 isEqualTo '') then      {        ["STAND_TALKING",["Acts_CivilTalking_1","Acts_CivilTalking_2"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item163 = objNull;
if (_layerRoot) then {
	_item163 = createVehicle ["Flag_NATO_F",[15196.3,17345.4,-0.000936508],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [15196.3,17345.4,21.8881];
	_this setVectorDirAndUp [[-0.768494,-0.639857,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = createVehicle ["CUP_vending_machine",[15217.1,17314.8,0.569],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [15217.1,17314.8,19.5953];
	_this setVectorDirAndUp [[-0.751713,-0.65949,0.00052499],[0.000698392,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layer181) then {
	_item182 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14739.1,16106.3,0],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [14739.1,16106.3,20.879];
	_this setVectorDirAndUp [[-0.719502,0.69449,-0.000823585],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item183 = objNull;
if (_layer181) then {
	_item183 = createVehicle ["Land_Shoot_House_Wall_F",[14740.8,16093.6,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [14740.8,16093.6,20.913];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item184 = objNull;
if (_layer181) then {
	_item184 = createVehicle ["Land_Shoot_House_Wall_F",[14744.9,16102.2,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [14744.9,16102.2,20.8773];
	_this setVectorDirAndUp [[0.69448,0.71949,-0.00565129],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item185 = objNull;
if (_layer181) then {
	_item185 = createVehicle ["Land_Shoot_House_Wall_F",[14742,16105,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [14742,16105,20.8744];
	_this setVectorDirAndUp [[0.69448,0.719482,-0.00660804],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item186 = objNull;
if (_layer181) then {
	_item186 = createVehicle ["Land_Shoot_House_Wall_F",[14746.3,16099.4,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [14746.3,16099.4,20.8826];
	_this setVectorDirAndUp [[-0.719502,0.694491,9.99267e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item187 = objNull;
if (_layer181) then {
	_item187 = createVehicle ["Land_Shoot_House_Wall_F",[14736.6,16090.7,0],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [14736.6,16090.7,20.9212];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item188 = objNull;
if (_layer181) then {
	_item188 = createVehicle ["Land_Shoot_House_Wall_F",[14732.3,16094.9,0],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [14732.3,16094.9,20.9156];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item189 = objNull;
if (_layer181) then {
	_item189 = createVehicle ["Land_Shoot_House_Wall_F",[14733.7,16093.5,0],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [14733.7,16093.5,20.9175];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item190 = objNull;
if (_layer181) then {
	_item190 = createVehicle ["Land_Shoot_House_Wall_F",[14742.2,16095.1,0],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [14742.2,16095.1,20.9092];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item191 = objNull;
if (_layer181) then {
	_item191 = createVehicle ["Land_Shoot_House_Wall_F",[14745,16097.9,0],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [14745,16097.9,20.8939];
	_this setVectorDirAndUp [[-0.719502,0.694491,9.99267e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item192 = objNull;
if (_layer181) then {
	_item192 = createVehicle ["Land_Shoot_House_Wall_F",[14737.8,16104.9,0],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [14737.8,16104.9,20.8918];
	_this setVectorDirAndUp [[-0.719502,0.69449,-0.000823585],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item193 = objNull;
if (_layer181) then {
	_item193 = createVehicle ["Land_Shoot_House_Wall_F",[14746.3,16100.8,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [14746.3,16100.8,20.877];
	_this setVectorDirAndUp [[0.69448,0.71949,-0.00565129],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item194 = objNull;
if (_layer181) then {
	_item194 = createVehicle ["Land_Shoot_House_Wall_F",[14743.6,16096.5,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [14743.6,16096.5,20.9052];
	_this setVectorDirAndUp [[-0.719502,0.694491,9.99267e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item195 = objNull;
if (_layer181) then {
	_item195 = createVehicle ["Land_Shoot_House_Wall_F",[14738,16090.8,0],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [14738,16090.8,20.9205];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item196 = objNull;
if (_layer181) then {
	_item196 = createVehicle ["Land_Shoot_House_Wall_F",[14730.8,16097.7,0],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [14730.8,16097.7,20.9012];
	_this setVectorDirAndUp [[-0.719507,0.694475,-0.00369917],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item197 = objNull;
if (_layer181) then {
	_item197 = createVehicle ["Land_Shoot_House_Wall_F",[14735.1,16092.1,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [14735.1,16092.1,20.9194];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item198 = objNull;
if (_layer181) then {
	_item198 = createVehicle ["Land_Shoot_House_Wall_F",[14744.9,16103.6,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [14744.9,16103.6,20.874];
	_this setVectorDirAndUp [[-0.719507,0.694484,-0.000897184],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item199 = objNull;
if (_layer181) then {
	_item199 = createVehicle ["Land_Shoot_House_Wall_F",[14744.1,16107.1,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [14744.1,16107.1,20.8693];
	_this setVectorDirAndUp [[-0.719507,0.694484,-0.000897184],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item200 = objNull;
if (_layer181) then {
	_item200 = createVehicle ["Land_Shoot_House_Wall_F",[14742.7,16105.7,0],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [14742.7,16105.7,20.8713];
	_this setVectorDirAndUp [[-0.719507,0.694484,-0.000897184],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item201 = objNull;
if (_layer181) then {
	_item201 = createVehicle ["Land_Shoot_House_Wall_F",[14745.5,16108.6,0],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [14745.5,16108.6,20.8662];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item202 = objNull;
if (_layer181) then {
	_item202 = createVehicle ["Land_Shoot_House_Wall_F",[14747.6,16106.5,0],[],0,"CAN_COLLIDE"];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [14747.6,16106.5,20.8632];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item203 = objNull;
if (_layer181) then {
	_item203 = createVehicle ["Land_Shoot_House_Wall_F",[14731,16096.2,0],[],0,"CAN_COLLIDE"];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [14731,16096.2,20.9092];
	_this setVectorDirAndUp [[0.694485,0.719497,-0.00383246],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item204 = objNull;
if (_layer181) then {
	_item204 = createVehicle ["Land_Shoot_House_Wall_F",[14732.2,16099.1,0],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [14732.2,16099.1,20.8935];
	_this setVectorDirAndUp [[-0.719507,0.694475,-0.00369917],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item205 = objNull;
if (_layer181) then {
	_item205 = createVehicle ["Land_Shoot_House_Wall_F",[14741.9,16112,0],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [14741.9,16112,20.8303];
	_this setVectorDirAndUp [[0.719507,-0.694381,0.0120342],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item206 = objNull;
if (_layer181) then {
	_item206 = createVehicle ["Land_Shoot_House_Wall_F",[14740.5,16110.6,0],[],0,"CAN_COLLIDE"];
	_this = _item206;
	_objects pushback _this;
	_objectIDs pushback 206;
	_this setPosWorld [14740.5,16110.6,20.8553];
	_this setVectorDirAndUp [[0.719507,-0.694381,0.0120342],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item207 = objNull;
if (_layer181) then {
	_item207 = createVehicle ["Land_Shoot_House_Wall_F",[14728.2,16098.9,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [14728.2,16098.9,20.8626];
	_this setVectorDirAndUp [[0.694381,0.719561,0.00820153],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item208 = objNull;
if (_layer181) then {
	_item208 = createVehicle ["Land_Shoot_House_Wall_F",[14732.2,16102.1,0],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [14732.2,16102.1,20.8849];
	_this setVectorDirAndUp [[-0.719502,0.69448,-0.00380436],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item209 = objNull;
if (_layer181) then {
	_item209 = createVehicle ["Land_Shoot_House_Wall_F",[14732.4,16097.6,0],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [14732.4,16097.6,20.9016];
	_this setVectorDirAndUp [[-0.694485,-0.719497,0.00383246],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item210 = objNull;
if (_layer181) then {
	_item210 = createVehicle ["Land_Shoot_House_Wall_F",[14729.5,16097.5,0],[],0,"CAN_COLLIDE"];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [14729.5,16097.5,20.894];
	_this setVectorDirAndUp [[-0.694381,-0.719561,-0.00820153],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item211 = objNull;
if (_layer181) then {
	_item211 = createVehicle ["Land_Shoot_House_Wall_F",[14729.3,16100.5,0],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [14729.3,16100.5,20.8743];
	_this setVectorDirAndUp [[-0.694381,-0.719561,-0.00820153],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item212 = objNull;
if (_layer181) then {
	_item212 = createVehicle ["Land_Shoot_House_Wall_F",[14736.4,16103.4,0],[],0,"CAN_COLLIDE"];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [14736.4,16103.4,20.8846];
	_this setVectorDirAndUp [[-0.719502,0.694331,-0.0149094],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item213 = objNull;
if (_layer181) then {
	_item213 = createVehicle ["Land_Shoot_House_Wall_F",[14739.1,16107.7,0],[],0,"CAN_COLLIDE"];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [14739.1,16107.7,20.8713];
	_this setVectorDirAndUp [[-0.694479,-0.719482,0.00660804],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item214 = objNull;
if (_layer181) then {
	_item214 = createVehicle ["Land_Shoot_House_Wall_F",[14737.7,16109.1,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [14737.7,16109.1,20.8696];
	_this setVectorDirAndUp [[-0.694479,-0.719482,0.00660804],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item215 = objNull;
if (_layer181) then {
	_item215 = createVehicle ["Land_Shoot_House_Wall_F",[14736.3,16107.7,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [14736.3,16107.7,20.8586];
	_this setVectorDirAndUp [[-0.694396,-0.719556,-0.00727754],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item216 = objNull;
if (_layer181) then {
	_item216 = createVehicle ["Land_Shoot_House_Wall_F",[14746.2,16105,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [14746.2,16105,20.8688];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item217 = objNull;
if (_layer181) then {
	_item217 = createVehicle ["Land_Shoot_House_Wall_F",[14733.7,16094.9,0],[],0,"CAN_COLLIDE"];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [14733.7,16094.9,20.9156];
	_this setVectorDirAndUp [[-0.719507,0.694484,-0.000897184],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item218 = objNull;
if (_layer181) then {
	_item218 = createVehicle ["Land_Shoot_House_Wall_F",[14736.5,16097.8,0],[],0,"CAN_COLLIDE"];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [14736.5,16097.8,20.9077];
	_this setVectorDirAndUp [[-0.719502,0.69448,-0.00380436],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item219 = objNull;
if (_layer181) then {
	_item219 = createVehicle ["Land_Shoot_House_Wall_F",[14736.4,16102,0],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [14736.4,16102,20.9017];
	_this setVectorDirAndUp [[-0.694479,-0.71951,-0.00181354],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item220 = objNull;
if (_layer181) then {
	_item220 = createVehicle ["Land_Shoot_House_Wall_F",[14737.8,16100.6,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [14737.8,16100.6,20.9075];
	_this setVectorDirAndUp [[-0.694484,-0.719505,0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item221 = objNull;
if (_layer181) then {
	_item221 = createVehicle ["Land_Shoot_House_Wall_F",[14737.9,16099.2,0],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [14737.9,16099.2,20.9094];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item222 = objNull;
if (_layer181) then {
	_item222 = createVehicle ["Land_Shoot_House_Wall_F",[14743.5,16102.2,0],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [14743.5,16102.2,20.8831];
	_this setVectorDirAndUp [[0.719501,-0.694491,-9.99249e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item223 = objNull;
if (_layer181) then {
	_item223 = createVehicle ["Land_Shoot_House_Wall_F",[14742.1,16100.7,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [14742.1,16100.7,20.8944];
	_this setVectorDirAndUp [[0.719501,-0.694491,-9.99249e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item224 = objNull;
if (_layer181) then {
	_item224 = createVehicle ["Land_Shoot_House_Wall_F",[14742.1,16099.3,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [14742.1,16099.3,20.8999];
	_this setVectorDirAndUp [[0.69448,0.71949,-0.00565129],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item225 = objNull;
if (_layer181) then {
	_item225 = createVehicle ["Land_Shoot_House_Wall_F",[14739.3,16097.8,0],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [14739.3,16097.8,20.9093];
	_this setVectorDirAndUp [[0.719507,-0.694486,-3.32168e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item226 = objNull;
if (_layer181) then {
	_item226 = createVehicle ["Land_Shoot_House_Wall_F",[14739.3,16096.4,0],[],0,"CAN_COLLIDE"];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [14739.3,16096.4,20.9112];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item227 = objNull;
if (_layer181) then {
	_item227 = createVehicle ["Land_Shoot_House_Wall_F",[14740.8,16095,0],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [14740.8,16095,20.9111];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item228 = objNull;
if (_layer181) then {
	_item228 = createVehicle ["Land_Shoot_House_Wall_F",[14740.7,16097.9,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [14740.7,16097.9,20.9074];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item229 = objNull;
if (_layer181) then {
	_item229 = createVehicle ["Land_Shoot_House_Wall_F",[14739.2,16100.7,0],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [14739.2,16100.7,20.9056];
	_this setVectorDirAndUp [[0.719507,-0.694486,-3.32168e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item230 = objNull;
if (_layer181) then {
	_item230 = createVehicle ["Land_Shoot_House_Wall_F",[14742,16103.5,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [14742,16103.5,20.8818];
	_this setVectorDirAndUp [[0.719501,-0.69449,0.000823588],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer181) then {
	_item231 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14727.2,16104,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [14727.2,16104,20.7867];
	_this setVectorDirAndUp [[0.719399,-0.693906,0.0309787],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer181) then {
	_item232 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14732.7,16109.7,0],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [14732.7,16109.7,20.7904];
	_this setVectorDirAndUp [[0.719415,-0.694414,0.0152095],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer181) then {
	_item233 = createVehicle ["Land_Shoot_House_Wall_F",[14734.1,16112.6,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [14734.1,16112.6,20.745];
	_this setVectorDirAndUp [[0.694396,0.719558,-0.00711502],[-0.0159977,0.0253219,0.999551]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layer181) then {
	_item234 = createVehicle ["Land_Shoot_House_Wall_F",[14725.8,16102.5,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [14725.8,16102.5,20.801];
	_this setVectorDirAndUp [[-0.719399,0.693906,-0.0309787],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item235 = objNull;
if (_layer181) then {
	_item235 = createVehicle ["Land_Shoot_House_Wall_F",[14722.7,16113.8,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [14722.7,16113.8,20.4503];
	_this setVectorDirAndUp [[-0.719252,0.693727,-0.0376845],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item236 = objNull;
if (_layer181) then {
	_item236 = createVehicle ["Land_Shoot_House_Wall_F",[14724.4,16102.5,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [14724.4,16102.5,20.7771];
	_this setVectorDirAndUp [[0.694381,0.719572,-0.00714768],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item237 = objNull;
if (_layer181) then {
	_item237 = createVehicle ["Land_Shoot_House_Wall_F",[14731.2,16115.4,0],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [14731.2,16115.4,20.6286];
	_this setVectorDirAndUp [[0.694396,0.719558,-0.00711502],[-0.0159977,0.0253219,0.999551]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item238 = objNull;
if (_layer181) then {
	_item238 = createVehicle ["Land_Shoot_House_Wall_F",[14728.6,16105.4,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [14728.6,16105.4,20.7863];
	_this setVectorDirAndUp [[-0.719252,0.694048,-0.0312136],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item239 = objNull;
if (_layer181) then {
	_item239 = createVehicle ["Land_Shoot_House_Wall_F",[14725.9,16108.3,0],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [14725.9,16108.3,20.6676];
	_this setVectorDirAndUp [[-0.719252,0.694048,-0.0312136],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item240 = objNull;
if (_layer181) then {
	_item240 = createVehicle ["Land_Shoot_House_Wall_F",[14721.5,16105.3,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [14721.5,16105.3,20.6424];
	_this setVectorDirAndUp [[0.694213,0.71977,0.000249915],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item241 = objNull;
if (_layer181) then {
	_item241 = createVehicle ["Land_Shoot_House_Wall_F",[14720,16106.7,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [14720,16106.7,20.5649];
	_this setVectorDirAndUp [[0.694213,0.71977,0.000249915],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item242 = objNull;
if (_layer181) then {
	_item242 = createVehicle ["Land_Shoot_House_Wall_F",[14718.6,16108.1,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [14718.6,16108.1,20.4876];
	_this setVectorDirAndUp [[0.694213,0.71977,0.000249915],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item243 = objNull;
if (_layer181) then {
	_item243 = createVehicle ["Land_Shoot_House_Wall_F",[14718.6,16109.5,0],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [14718.6,16109.5,20.4492];
	_this setVectorDirAndUp [[-0.719226,0.693701,-0.0386429],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item244 = objNull;
if (_layer181) then {
	_item244 = createVehicle ["Land_Shoot_House_Wall_F",[14720,16110.9,0],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [14720,16110.9,20.4459];
	_this setVectorDirAndUp [[-0.719226,0.693541,-0.0414161],[-0.0279894,0.0306394,0.999139]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item245 = objNull;
if (_layer181) then {
	_item245 = createVehicle ["Land_Shoot_House_Wall_F",[14721.4,16112.4,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [14721.4,16112.4,20.4456];
	_this setVectorDirAndUp [[-0.719139,0.693624,-0.0415168],[-0.031983,0.0266434,0.999133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item246 = objNull;
if (_layer181) then {
	_item246 = createVehicle ["Land_Shoot_House_Wall_F",[14728.3,16118.2,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [14728.3,16118.2,20.4877];
	_this setVectorDirAndUp [[0.694213,0.719761,-0.00358516],[-0.0279873,0.0319705,0.999097]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item247 = objNull;
if (_layer181) then {
	_item247 = createVehicle ["Land_Shoot_House_Wall_F",[14724.1,16115.3,0],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [14724.1,16115.3,20.449];
	_this setVectorDirAndUp [[-0.719252,0.693727,-0.0376845],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item248 = objNull;
if (_layer181) then {
	_item248 = createVehicle ["Land_Shoot_House_Wall_F",[14731.3,16108.3,0],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [14731.3,16108.3,20.7802];
	_this setVectorDirAndUp [[-0.719502,0.694331,-0.0149094],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item249 = objNull;
if (_layer181) then {
	_item249 = createVehicle ["Land_Shoot_House_Wall_F",[14737.6,16116.2,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [14737.6,16116.2,20.7581];
	_this setVectorDirAndUp [[-0.719507,0.694381,-0.0120342],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item250 = objNull;
if (_layer181) then {
	_item250 = createVehicle ["Land_Shoot_House_Wall_F",[14736.2,16114.8,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [14736.2,16114.8,20.7512];
	_this setVectorDirAndUp [[-0.7193,0.694081,-0.0292976],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layer181) then {
	_item251 = createVehicle ["Land_Shoot_House_Wall_F",[14734.8,16113.3,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [14734.8,16113.3,20.7427];
	_this setVectorDirAndUp [[-0.7193,0.694081,-0.0292976],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item252 = objNull;
if (_layer181) then {
	_item252 = createVehicle ["Land_Shoot_House_Wall_F",[14732.6,16115.4,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [14732.6,16115.4,20.6548];
	_this setVectorDirAndUp [[-0.7193,0.694081,-0.0292976],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item253 = objNull;
if (_layer181) then {
	_item253 = createVehicle ["Land_Shoot_House_Wall_F",[14733.4,16120.2,0],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [14733.4,16120.2,20.5562];
	_this setVectorDirAndUp [[-0.7193,0.69368,-0.0376186],[-0.0239937,0.0293117,0.999282]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item254 = objNull;
if (_layer181) then {
	_item254 = createVehicle ["Land_Shoot_House_Wall_F",[14735.4,16118.3,0],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [14735.4,16118.3,20.6622];
	_this setVectorDirAndUp [[-0.7193,0.69368,-0.0376186],[-0.0239937,0.0293117,0.999282]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item255 = objNull;
if (_layer181) then {
	_item255 = createVehicle ["Land_Shoot_House_Wall_F",[14740.4,16113.4,0],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [14740.4,16113.4,20.8063];
	_this setVectorDirAndUp [[0.719507,-0.694381,0.0120342],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item256 = objNull;
if (_layer181) then {
	_item256 = createVehicle ["Land_Shoot_House_Wall_F",[14739,16112,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [14739,16112,20.8312];
	_this setVectorDirAndUp [[0.719507,-0.694381,0.0120342],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item257 = objNull;
if (_layer181) then {
	_item257 = createVehicle ["Land_Shoot_House_Wall_F",[14732.7,16108.3,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [14732.7,16108.3,20.7983];
	_this setVectorDirAndUp [[0.694396,0.719556,0.00727754],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layer181) then {
	_item258 = createVehicle ["Land_Shoot_House_Wall_F",[14734.2,16106.9,0],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [14734.2,16106.9,20.8287];
	_this setVectorDirAndUp [[0.694396,0.719556,0.00727754],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item259 = objNull;
if (_layer181) then {
	_item259 = createVehicle ["Land_Shoot_House_Wall_F",[14722.9,16103.9,0],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [14722.9,16103.9,20.7152];
	_this setVectorDirAndUp [[0.694381,0.719572,-0.00714768],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item260 = objNull;
if (_layer181) then {
	_item260 = createVehicle ["Land_Shoot_House_Wall_F",[14735.6,16108.4,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [14735.6,16108.4,20.8433];
	_this setVectorDirAndUp [[0.694396,0.719556,0.00727754],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item261 = objNull;
if (_layer181) then {
	_item261 = createVehicle ["Land_Shoot_House_Wall_F",[14727,16100,0],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [14727,16100,20.8373];
	_this setVectorDirAndUp [[0.694381,0.719561,0.00820153],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item262 = objNull;
if (_layer181) then {
	_item262 = createVehicle ["Land_Shoot_House_Wall_F",[14728.6,16104,0],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [14728.6,16104,20.8114];
	_this setVectorDirAndUp [[0.694238,0.71972,0.00603994],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item263 = objNull;
if (_layer181) then {
	_item263 = createVehicle ["Land_Shoot_House_Wall_F",[14725.8,16101.1,0],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [14725.8,16101.1,20.8096];
	_this setVectorDirAndUp [[0.694381,0.719561,0.00820153],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layer181) then {
	_item264 = createVehicle ["Land_Shoot_House_Wall_F",[14726.9,16118.1,0],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [14726.9,16118.1,20.4489];
	_this setVectorDirAndUp [[-0.719226,0.693485,-0.0423385],[-0.0279873,0.0319705,0.999097]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layer181) then {
	_item265 = createVehicle ["Land_Shoot_House_Wall_F",[14727.9,16100.5,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [14727.9,16100.5,20.8499];
	_this setVectorDirAndUp [[0.719399,-0.694409,0.0161667],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layer181) then {
	_item266 = createVehicle ["Land_Shoot_House_Wall_F",[14735.5,16107,0],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [14735.5,16107,20.8495];
	_this setVectorDirAndUp [[0.719415,-0.694414,0.0152095],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item267 = objNull;
if (_layer181) then {
	_item267 = createVehicle ["Land_Shoot_House_Wall_F",[14732.4,16100.6,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [14732.4,16100.6,20.8876];
	_this setVectorDirAndUp [[0.69448,0.71951,0.00181354],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layer181) then {
	_item268 = createVehicle ["Land_Shoot_House_Wall_F",[14729.8,16116.8,0],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [14729.8,16116.8,20.5676];
	_this setVectorDirAndUp [[0.694213,0.719769,0.0012104],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layer181) then {
	_item269 = createVehicle ["Land_Shoot_House_Wall_F",[14730.5,16114.7,0],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [14730.5,16114.7,20.6358];
	_this setVectorDirAndUp [[-0.719415,0.693971,-0.0290947],[-0.0159977,0.0253219,0.999551]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layer181) then {
	_item270 = createVehicle ["Land_Shoot_House_Wall_F",[14729.1,16113.2,0],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [14729.1,16113.2,20.6395];
	_this setVectorDirAndUp [[-0.719226,0.693752,-0.0377201],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layer181) then {
	_item271 = createVehicle ["Land_Shoot_House_Wall_F",[14727.7,16111.8,0],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [14727.7,16111.8,20.6377];
	_this setVectorDirAndUp [[-0.719252,0.693727,-0.0376845],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layer181) then {
	_item272 = createVehicle ["Land_Shoot_House_Wall_F",[14726.3,16111.8,0],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [14726.3,16111.8,20.6006];
	_this setVectorDirAndUp [[0.694238,0.719745,-0.000675144],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item273 = objNull;
if (_layer181) then {
	_item273 = createVehicle ["Land_Shoot_House_Wall_F",[14724.4,16106.7,0],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [14724.4,16106.7,20.6667];
	_this setVectorDirAndUp [[0.719399,-0.693906,0.0309787],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item274 = objNull;
if (_layer181) then {
	_item274 = createVehicle ["Land_Shoot_House_Wall_F",[14724.4,16108.1,0],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [14724.4,16108.1,20.6286];
	_this setVectorDirAndUp [[-0.694381,-0.719572,0.00714769],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layer181) then {
	_item275 = createVehicle ["Land_Shoot_House_Wall_F",[14722.9,16109.5,0],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [14722.9,16109.5,20.5666];
	_this setVectorDirAndUp [[-0.694381,-0.719572,0.00714769],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layer181) then {
	_item276 = createVehicle ["Land_Shoot_House_Wall_F",[14722.9,16110.9,0],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [14722.9,16110.9,20.5323];
	_this setVectorDirAndUp [[0.719252,-0.693727,0.0376845],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layer181) then {
	_item277 = createVehicle ["Land_Shoot_House_Wall_F",[14727.3,16108.2,0],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [14727.3,16108.2,20.7056];
	_this setVectorDirAndUp [[-0.694238,-0.71972,-0.00603993],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layer181) then {
	_item278 = createVehicle ["Land_Shoot_House_Wall_F",[14734.1,16109.8,9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [14734.1,16109.8,20.8129];
	_this setVectorDirAndUp [[0.694396,0.719556,0.00727754],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item279 = objNull;
if (_layer181) then {
	_item279 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14741.8,16113.4,0],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [14741.8,16113.4,20.8097];
	_this setVectorDirAndUp [[-0.694423,-0.719539,-0.00638287],[-0.0133317,0.00399639,0.999903]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item280 = objNull;
if (_layer181) then {
	_item280 = createVehicle ["Land_Shoot_House_Wall_F",[14755.8,16122.2,0],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [14755.8,16122.2,20.7993];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item281 = objNull;
if (_layer181) then {
	_item281 = createVehicle ["Land_Shoot_House_Wall_F",[14748.9,16115,0],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [14748.9,16115,20.8337];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item282 = objNull;
if (_layer181) then {
	_item282 = createVehicle ["Land_Shoot_House_Wall_F",[14748.8,16120.6,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [14748.8,16120.6,20.7803];
	_this setVectorDirAndUp [[0.694484,0.7194,-0.0124388],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item283 = objNull;
if (_layer181) then {
	_item283 = createVehicle ["Land_Shoot_House_Wall_F",[14746,16117.7,0],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [14746,16117.7,20.8302];
	_this setVectorDirAndUp [[0.694484,0.7194,-0.0124388],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item284 = objNull;
if (_layer181) then {
	_item284 = createVehicle ["Land_Shoot_House_Wall_F",[14754.4,16123.6,0],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [14754.4,16123.6,20.7974];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item285 = objNull;
if (_layer181) then {
	_item285 = createVehicle ["Land_Shoot_House_Wall_F",[14750.5,16105.1,0],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [14750.5,16105.1,20.8566];
	_this setVectorDirAndUp [[0.69448,0.719497,-0.00468378],[0.00399666,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item286 = objNull;
if (_layer181) then {
	_item286 = createVehicle ["Land_Shoot_House_Wall_F",[14749,16106.5,0],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [14749,16106.5,20.8587];
	_this setVectorDirAndUp [[0.69448,0.719497,-0.00468378],[0.00399666,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item287 = objNull;
if (_layer181) then {
	_item287 = createVehicle ["Land_Shoot_House_Wall_F",[14753,16125,0],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [14753,16125,20.7956];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item288 = objNull;
if (_layer181) then {
	_item288 = createVehicle ["Land_Shoot_House_Wall_F",[14753,16125,0],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [14753,16125,20.7956];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item289 = objNull;
if (_layer181) then {
	_item289 = createVehicle ["Land_Shoot_House_Wall_F",[14753.3,16106.6,0],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [14753.3,16106.6,20.8415];
	_this setVectorDirAndUp [[-0.719502,0.69449,0.00103382],[0.00399666,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item290 = objNull;
if (_layer181) then {
	_item290 = createVehicle ["Land_Shoot_House_Wall_F",[14747.5,16116.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [14747.5,16116.4,20.8337];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item291 = objNull;
if (_layer181) then {
	_item291 = createVehicle ["Land_Shoot_House_Wall_F",[14760.2,16118,0],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [14760.2,16118,20.8046];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item292 = objNull;
if (_layer181) then {
	_item292 = createVehicle ["Land_Shoot_House_Wall_F",[14754.7,16108,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [14754.7,16108,20.8324];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item293 = objNull;
if (_layer181) then {
	_item293 = createVehicle ["Land_Shoot_House_Wall_F",[14758.8,16112.3,0],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [14758.8,16112.3,20.8155];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item294 = objNull;
if (_layer181) then {
	_item294 = createVehicle ["Land_Shoot_House_Wall_F",[14760.2,16113.8,0],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [14760.2,16113.8,20.8102];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item295 = objNull;
if (_layer181) then {
	_item295 = createVehicle ["Land_Shoot_House_Wall_F",[14744.7,16110.7,0],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [14744.7,16110.7,20.8592];
	_this setVectorDirAndUp [[0.694423,0.719538,0.00638288],[-0.0133317,0.00399639,0.999903]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item296 = objNull;
if (_layer181) then {
	_item296 = createVehicle ["Land_Shoot_House_Wall_F",[14745.4,16110,0],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [14745.4,16110,20.8638];
	_this setVectorDirAndUp [[0.69448,0.719497,-0.00468378],[0.00399666,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item297 = objNull;
if (_layer181) then {
	_item297 = createVehicle ["Land_Shoot_House_Wall_F",[14751.9,16105.1,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [14751.9,16105.1,20.8509];
	_this setVectorDirAndUp [[-0.719502,0.69449,0.00103382],[0.00399666,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item298 = objNull;
if (_layer181) then {
	_item298 = createVehicle ["Land_Shoot_House_Wall_F",[14751.7,16117.9,0],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [14751.7,16117.9,20.8208];
	_this setVectorDirAndUp [[0.694484,0.7194,-0.0124388],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item299 = objNull;
if (_layer181) then {
	_item299 = createVehicle ["Land_Shoot_House_Wall_F",[14754.4,16123.6,0],[],0,"CAN_COLLIDE"];
	_this = _item299;
	_objects pushback _this;
	_objectIDs pushback 299;
	_this setPosWorld [14754.4,16123.6,20.7974];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item300 = objNull;
if (_layer181) then {
	_item300 = createVehicle ["Land_Shoot_House_Wall_F",[14761.6,16116.6,0],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_objects pushback _this;
	_objectIDs pushback 300;
	_this setPosWorld [14761.6,16116.6,20.8045];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item301 = objNull;
if (_layer181) then {
	_item301 = createVehicle ["Land_Shoot_House_Wall_F",[14750.3,16113.6,0],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [14750.3,16113.6,20.8336];
	_this setVectorDirAndUp [[0.694484,0.719505,-0.00189057],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item302 = objNull;
if (_layer181) then {
	_item302 = createVehicle ["Land_Shoot_House_Wall_F",[14756,16119.5,0],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [14756,16119.5,20.808];
	_this setVectorDirAndUp [[0.694483,0.719494,-0.00471744],[0.00265199,0.00399673,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item303 = objNull;
if (_layer181) then {
	_item303 = createVehicle ["Land_Shoot_House_Wall_F",[14746.7,16114.2,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [14746.7,16114.2,20.8419];
	_this setVectorDirAndUp [[0.69448,0.71949,-0.00565129],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item304 = objNull;
if (_layer181) then {
	_item304 = createVehicle ["Land_Shoot_House_Wall_F",[14754.6,16115,0],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [14754.6,16115,20.8231];
	_this setVectorDirAndUp [[0.694483,0.719504,-0.0028039],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item305 = objNull;
if (_layer181) then {
	_item305 = createVehicle ["Land_Shoot_House_Wall_F",[14754.6,16109.4,0],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [14754.6,16109.4,20.8305];
	_this setVectorDirAndUp [[0.694483,0.719504,-0.0028039],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item306 = objNull;
if (_layer181) then {
	_item306 = createVehicle ["Land_Shoot_House_Wall_F",[14756.1,16113.6,0],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [14756.1,16113.6,20.821];
	_this setVectorDirAndUp [[0.694483,0.719504,-0.0028039],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item307 = objNull;
if (_layer181) then {
	_item307 = createVehicle ["Land_Shoot_House_Wall_F",[14750.2,16119.2,0],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [14750.2,16119.2,20.8005];
	_this setVectorDirAndUp [[0.694484,0.7194,-0.0124388],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item308 = objNull;
if (_layer181) then {
	_item308 = createVehicle ["Land_Shoot_House_Wall_F",[14745.4,16111.4,0],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [14745.4,16111.4,20.8583];
	_this setVectorDirAndUp [[-0.719502,0.694491,9.99267e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layer181) then {
	_item309 = createVehicle ["Land_Shoot_House_Wall_F",[14746.8,16112.8,0],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [14746.8,16112.8,20.847];
	_this setVectorDirAndUp [[-0.719502,0.694491,9.99267e-005],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item310 = objNull;
if (_layer181) then {
	_item310 = createVehicle ["Land_Shoot_House_Wall_F",[14756.1,16112.3,0],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [14756.1,16112.3,20.8228];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item311 = objNull;
if (_layer181) then {
	_item311 = createVehicle ["Land_Shoot_House_Wall_F",[14750.2,16120.7,0],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [14750.2,16120.7,20.7884];
	_this setVectorDirAndUp [[-0.719467,0.694449,-0.0104485],[-0.0106641,0.00399652,0.999935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item312 = objNull;
if (_layer181) then {
	_item312 = createVehicle ["Land_Shoot_House_Wall_F",[14747.3,16123.4,0],[],0,"CAN_COLLIDE"];
	_this = _item312;
	_objects pushback _this;
	_objectIDs pushback 312;
	_this setPosWorld [14747.3,16123.4,20.7461];
	_this setVectorDirAndUp [[-0.719467,0.694449,-0.0104485],[-0.0106641,0.00399652,0.999935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item313 = objNull;
if (_layer181) then {
	_item313 = createVehicle ["Land_Shoot_House_Wall_F",[14753,16123.5,0],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [14753,16123.5,20.8];
	_this setVectorDirAndUp [[-0.719505,0.694487,-0.000867568],[0.00265199,0.00399673,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layer181) then {
	_item314 = createVehicle ["Land_Shoot_House_Wall_F",[14761.6,16115.2,0],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [14761.6,16115.2,20.8064];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item315 = objNull;
if (_layer181) then {
	_item315 = createVehicle ["Land_Shoot_House_Wall_F",[14754.5,16116.5,0],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [14754.5,16116.5,20.8214];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layer181) then {
	_item316 = createVehicle ["Land_Shoot_House_Wall_F",[14757.5,16110.9,0],[],0,"CAN_COLLIDE"];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [14757.5,16110.9,20.8211];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item317 = objNull;
if (_layer181) then {
	_item317 = createVehicle ["Land_Shoot_House_Wall_F",[14753.2,16110.8,0],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [14753.2,16110.8,20.8325];
	_this setVectorDirAndUp [[0.694483,0.719504,-0.0028039],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item318 = objNull;
if (_layer181) then {
	_item318 = createVehicle ["Land_Shoot_House_Wall_F",[14750.1,16127.7,0],[],0,"CAN_COLLIDE"];
	_this = _item318;
	_objects pushback _this;
	_objectIDs pushback 318;
	_this setPosWorld [14750.1,16127.7,20.7079];
	_this setVectorDirAndUp [[0.694307,0.719644,0.00710559],[-0.0226603,0.0119919,0.999671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item319 = objNull;
if (_layer181) then {
	_item319 = createVehicle ["Land_Shoot_House_Wall_F",[14736.8,16128.1,0],[],0,"CAN_COLLIDE"];
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [14736.8,16128.1,20.4357];
	_this setVectorDirAndUp [[-0.719169,0.693595,-0.0414835],[-0.0306514,0.0279763,0.999139]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item320 = objNull;
if (_layer181) then {
	_item320 = createVehicle ["Land_Shoot_House_Wall_F",[14740.4,16114.8,0],[],0,"CAN_COLLIDE"];
	_this = _item320;
	_objects pushback _this;
	_objectIDs pushback 320;
	_this setPosWorld [14740.4,16114.8,20.785];
	_this setVectorDirAndUp [[0.694423,0.719538,0.00638288],[-0.0133317,0.00399639,0.999903]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item321 = objNull;
if (_layer181) then {
	_item321 = createVehicle ["Land_Shoot_House_Wall_F",[14747.2,16130.5,0],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [14747.2,16130.5,20.6102];
	_this setVectorDirAndUp [[0.694307,0.719644,0.00710559],[-0.0226603,0.0119919,0.999671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item322 = objNull;
if (_layer181) then {
	_item322 = createVehicle ["Land_Shoot_House_Wall_F",[14734.7,16120.4,0],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [14734.7,16120.4,20.5841];
	_this setVectorDirAndUp [[0.694213,0.719769,0.0012104],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item323 = objNull;
if (_layer181) then {
	_item323 = createVehicle ["Land_Shoot_House_Wall_F",[14744.6,16119.1,0],[],0,"CAN_COLLIDE"];
	_this = _item323;
	_objects pushback _this;
	_objectIDs pushback 323;
	_this setPosWorld [14744.6,16119.1,20.7995];
	_this setVectorDirAndUp [[0.694307,0.719667,0.00422475],[-0.0226603,0.0159936,0.999615]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item324 = objNull;
if (_layer181) then {
	_item324 = createVehicle ["Land_Shoot_House_Wall_F",[14747.3,16127.8,0],[],0,"CAN_COLLIDE"];
	_this = _item324;
	_objects pushback _this;
	_objectIDs pushback 324;
	_this setPosWorld [14747.3,16127.8,20.6735];
	_this setVectorDirAndUp [[0.694446,0.719478,-0.00985795],[-0.0106641,0.0239899,0.999655]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item325 = objNull;
if (_layer181) then {
	_item325 = createVehicle ["Land_Shoot_House_Wall_F",[14735.4,16126.7,0],[],0,"CAN_COLLIDE"];
	_this = _item325;
	_objects pushback _this;
	_objectIDs pushback 325;
	_this setPosWorld [14735.4,16126.7,20.4346];
	_this setVectorDirAndUp [[-0.719226,0.693541,-0.0414161],[-0.0279894,0.0306394,0.999139]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item326 = objNull;
if (_layer181) then {
	_item326 = createVehicle ["Land_Shoot_House_Wall_F",[14743.7,16133.9,0],[],0,"CAN_COLLIDE"];
	_this = _item326;
	_objects pushback _this;
	_objectIDs pushback 326;
	_this setPosWorld [14743.7,16133.9,20.4591];
	_this setVectorDirAndUp [[0.694213,0.719768,-0.00166617],[-0.0279894,0.0293087,0.999178]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item327 = objNull;
if (_layer181) then {
	_item327 = createVehicle ["Land_Shoot_House_Wall_F",[14739.5,16131,0],[],0,"CAN_COLLIDE"];
	_this = _item327;
	_objects pushback _this;
	_objectIDs pushback 327;
	_this setPosWorld [14739.5,16131,20.4261];
	_this setVectorDirAndUp [[-0.719252,0.693825,-0.0358377],[-0.0266571,0.0239852,0.999357]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item328 = objNull;
if (_layer181) then {
	_item328 = createVehicle ["Land_Shoot_House_Wall_F",[14740.9,16132.4,0],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [14740.9,16132.4,20.4286];
	_this setVectorDirAndUp [[-0.719252,0.693825,-0.0358377],[-0.0266571,0.0239852,0.999357]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item329 = objNull;
if (_layer181) then {
	_item329 = createVehicle ["Land_Shoot_House_Wall_F",[14737.6,16117.6,0],[],0,"CAN_COLLIDE"];
	_this = _item329;
	_objects pushback _this;
	_objectIDs pushback 329;
	_this setPosWorld [14737.6,16117.6,20.7338];
	_this setVectorDirAndUp [[0.694423,0.719511,-0.00896425],[-0.0133317,0.0253205,0.99959]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item330 = objNull;
if (_layer181) then {
	_item330 = createVehicle ["Land_Shoot_House_Wall_F",[14745.9,16123.4,0],[],0,"CAN_COLLIDE"];
	_this = _item330;
	_objects pushback _this;
	_objectIDs pushback 330;
	_this setPosWorld [14745.9,16123.4,20.7396];
	_this setVectorDirAndUp [[0.694484,0.7194,-0.0124388],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item331 = objNull;
if (_layer181) then {
	_item331 = createVehicle ["Land_Shoot_House_Wall_F",[14739,16116.2,0],[],0,"CAN_COLLIDE"];
	_this = _item331;
	_objects pushback _this;
	_objectIDs pushback 331;
	_this setPosWorld [14739,16116.2,20.7607];
	_this setVectorDirAndUp [[0.694423,0.719538,0.00638288],[-0.0133317,0.00399639,0.999903]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item332 = objNull;
if (_layer181) then {
	_item332 = createVehicle ["Land_Shoot_House_Wall_F",[14743.2,16120.5,0],[],0,"CAN_COLLIDE"];
	_this = _item332;
	_objects pushback _this;
	_objectIDs pushback 332;
	_this setPosWorld [14743.2,16120.5,20.7452];
	_this setVectorDirAndUp [[0.694307,0.719667,0.00422475],[-0.0226603,0.0159936,0.999615]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item333 = objNull;
if (_layer181) then {
	_item333 = createVehicle ["Land_Shoot_House_Wall_F",[14740.2,16123.3,0],[],0,"CAN_COLLIDE"];
	_this = _item333;
	_objects pushback _this;
	_objectIDs pushback 333;
	_this setPosWorld [14740.2,16123.3,20.634];
	_this setVectorDirAndUp [[0.694307,0.719667,0.00422475],[-0.0226603,0.0159936,0.999615]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item334 = objNull;
if (_layer181) then {
	_item334 = createVehicle ["Land_Shoot_House_Wall_F",[14736.2,16119,0],[],0,"CAN_COLLIDE"];
	_this = _item334;
	_objects pushback _this;
	_objectIDs pushback 334;
	_this setPosWorld [14736.2,16119,20.6589];
	_this setVectorDirAndUp [[0.694213,0.719769,0.0012104],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item335 = objNull;
if (_layer181) then {
	_item335 = createVehicle ["Land_Shoot_House_Wall_F",[14739.6,16129.6,0],[],0,"CAN_COLLIDE"];
	_this = _item335;
	_objects pushback _this;
	_objectIDs pushback 335;
	_this setPosWorld [14739.6,16129.6,20.4642];
	_this setVectorDirAndUp [[0.694307,0.719666,-0.00440573],[-0.0226629,0.0279823,0.999352]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item336 = objNull;
if (_layer181) then {
	_item336 = createVehicle ["Land_Shoot_House_Wall_F",[14744.5,16124.8,0],[],0,"CAN_COLLIDE"];
	_this = _item336;
	_objects pushback _this;
	_objectIDs pushback 336;
	_this setPosWorld [14744.5,16124.8,20.7068];
	_this setVectorDirAndUp [[0.694307,0.719667,0.00422475],[-0.0226603,0.0159936,0.999615]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item337 = objNull;
if (_layer181) then {
	_item337 = createVehicle ["Land_Shoot_House_Wall_F",[14732.6,16123.8,0],[],0,"CAN_COLLIDE"];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [14732.6,16123.8,20.4387];
	_this setVectorDirAndUp [[-0.719226,0.693752,-0.0377201],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item338 = objNull;
if (_layer181) then {
	_item338 = createVehicle ["Land_Shoot_House_Wall_F",[14740.4,16116.2,0],[],0,"CAN_COLLIDE"];
	_this = _item338;
	_objects pushback _this;
	_objectIDs pushback 338;
	_this setPosWorld [14740.4,16116.2,20.779];
	_this setVectorDirAndUp [[-0.719443,0.694441,-0.0123678],[-0.0133317,0.00399639,0.999903]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item339 = objNull;
if (_layer181) then {
	_item339 = createVehicle ["Land_Shoot_House_Wall_F",[14743.2,16119.1,0],[],0,"CAN_COLLIDE"];
	_this = _item339;
	_objects pushback _this;
	_objectIDs pushback 339;
	_this setPosWorld [14743.2,16119.1,20.7699];
	_this setVectorDirAndUp [[-0.719443,0.694019,-0.0271754],[-0.0133317,0.0253205,0.99959]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item340 = objNull;
if (_layer181) then {
	_item340 = createVehicle ["Land_Shoot_House_Wall_F",[14746.2,16119.2,0],[],0,"CAN_COLLIDE"];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [14746.2,16119.2,20.8065];
	_this setVectorDirAndUp [[-0.719507,0.694411,-0.0101484],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item341 = objNull;
if (_layer181) then {
	_item341 = createVehicle ["Land_Shoot_House_Wall_F",[14747.5,16120.6,0],[],0,"CAN_COLLIDE"];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [14747.5,16120.6,20.7826];
	_this setVectorDirAndUp [[-0.719507,0.694411,-0.0101484],[0.00133688,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item342 = objNull;
if (_layer181) then {
	_item342 = createVehicle ["Land_Shoot_House_Wall_F",[14747.2,16129.2,0],[],0,"CAN_COLLIDE"];
	_this = _item342;
	_objects pushback _this;
	_objectIDs pushback 342;
	_this setPosWorld [14747.2,16129.2,20.6383];
	_this setVectorDirAndUp [[-0.719467,0.694101,-0.0243322],[-0.0106641,0.0239899,0.999655]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item343 = objNull;
if (_layer181) then {
	_item343 = createVehicle ["Land_Shoot_House_Wall_F",[14742.3,16133.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [14742.3,16133.9,20.4221];
	_this setVectorDirAndUp [[-0.719252,0.693571,-0.0404579],[-0.0266571,0.0306405,0.999175]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item344 = objNull;
if (_layer181) then {
	_item344 = createVehicle ["Land_Shoot_House_Wall_F",[14740.4,16114.8,0],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [14740.4,16114.8,20.785];
	_this setVectorDirAndUp [[0.694423,0.719538,0.00638288],[-0.0133317,0.00399639,0.999903]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item345 = objNull;
if (_layer181) then {
	_item345 = createVehicle ["Land_Shoot_House_Wall_F",[14751.5,16126.3,0],[],0,"CAN_COLLIDE"];
	_this = _item345;
	_objects pushback _this;
	_objectIDs pushback 345;
	_this setPosWorld [14751.5,16126.3,20.7565];
	_this setVectorDirAndUp [[-0.694306,-0.719644,-0.00710558],[-0.0226603,0.0119919,0.999671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item346 = objNull;
if (_layer181) then {
	_item346 = createVehicle ["Land_Shoot_House_Wall_F",[14741,16128.2,0],[],0,"CAN_COLLIDE"];
	_this = _item346;
	_objects pushback _this;
	_objectIDs pushback 346;
	_this setPosWorld [14741,16128.2,20.5366];
	_this setVectorDirAndUp [[0.694307,0.719666,-0.00440573],[-0.0226629,0.0279823,0.999352]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item347 = objNull;
if (_layer181) then {
	_item347 = createVehicle ["Land_Shoot_House_Wall_F",[14745.7,16131.9,0],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [14745.7,16131.9,20.5598];
	_this setVectorDirAndUp [[-0.694306,-0.719644,-0.00710558],[-0.0226603,0.0119919,0.999671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item348 = objNull;
if (_layer181) then {
	_item348 = createVehicle ["Land_Shoot_House_Wall_F",[14741.7,16121.9,0],[],0,"CAN_COLLIDE"];
	_this = _item348;
	_objects pushback _this;
	_objectIDs pushback 348;
	_this setPosWorld [14741.7,16121.9,20.6898];
	_this setVectorDirAndUp [[0.694307,0.719667,0.00422475],[-0.0226603,0.0159936,0.999615]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item349 = objNull;
if (_layer181) then {
	_item349 = createVehicle ["Land_Shoot_House_Wall_F",[14741.8,16117.7,0],[],0,"CAN_COLLIDE"];
	_this = _item349;
	_objects pushback _this;
	_objectIDs pushback 349;
	_this setPosWorld [14741.8,16117.7,20.7878];
	_this setVectorDirAndUp [[-0.719443,0.694019,-0.0271754],[-0.0133317,0.0253205,0.99959]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item351 = objNull;
if (_layer350 && _layer181) then {
	_item351 = createVehicle ["Sign_Arrow_F",[14744.3,16109.2,0],[],0,"CAN_COLLIDE"];
	_this = _item351;
	_objects pushback _this;
	_objectIDs pushback 351;
	_this setPosWorld [14744.3,16109.2,19.5643];
	_this setVectorDirAndUp [[-0.68349,-0.729959,0.000943013],[0,0.00129187,0.999999]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item352 = objNull;
if (_layer350 && _layer181) then {
	_item352 = createVehicle ["Sign_Arrow_F",[14751.7,16107.8,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item352;
	_objects pushback _this;
	_objectIDs pushback 352;
	_this setPosWorld [14751.7,16107.8,19.5421];
	_this setVectorDirAndUp [[-0.716141,0.697955,0.00101119],[0.00399666,0.00265202,0.999988]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item353 = objNull;
if (_layer350 && _layer181) then {
	_item353 = createVehicle ["Sign_Arrow_F",[14751.9,16124.6,0],[],0,"CAN_COLLIDE"];
	_this = _item353;
	_objects pushback _this;
	_objectIDs pushback 353;
	_this setPosWorld [14751.9,16124.6,19.488];
	_this setVectorDirAndUp [[-0.694604,-0.719378,-0.00453259],[-0.0106641,0.00399652,0.999935]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item354 = objNull;
if (_layer350 && _layer181) then {
	_item354 = createVehicle ["Sign_Arrow_F",[14738.6,16120.6,0],[],0,"CAN_COLLIDE"];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [14738.6,16120.6,19.3701];
	_this setVectorDirAndUp [[0.694559,-0.718911,0.0274741],[-0.0133317,0.0253205,0.99959]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item355 = objNull;
if (_layer350 && _layer181) then {
	_item355 = createVehicle ["Sign_Arrow_F",[14742.6,16130.6,0],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [14742.6,16130.6,19.2149];
	_this setVectorDirAndUp [[0.686902,-0.725871,0.0357439],[-0.0266571,0.0239852,0.999357]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item356 = objNull;
if (_layer350 && _layer181) then {
	_item356 = createVehicle ["Sign_Arrow_F",[14728.5,16102.5,0],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [14728.5,16102.5,19.5464];
	_this setVectorDirAndUp [[-0.759157,0.650193,-0.0305025],[-0.0173316,0.0266531,0.999494]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item357 = objNull;
if (_layer350 && _layer181) then {
	_item357 = createVehicle ["Sign_Arrow_F",[14730.1,16111,0],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [14730.1,16111,19.4209];
	_this setVectorDirAndUp [[0.732056,-0.680629,0.028959],[-0.0159977,0.0253219,0.999551]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item358 = objNull;
if (_layer350 && _layer181) then {
	_item358 = createVehicle ["Sign_Arrow_F",[14738.1,16106.9,0],[],0,"CAN_COLLIDE"];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [14738.1,16106.9,19.5775];
	_this setVectorDirAndUp [[0.739596,-0.67305,0.00062907],[0.00399666,0.00532646,0.999978]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item359 = objNull;
if (_layer350 && _layer181) then {
	_item359 = createVehicle ["Sign_Arrow_F",[14734,16108.3,0],[],0,"CAN_COLLIDE"];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [14734,16108.3,19.5166];
	_this setVectorDirAndUp [[-0.721588,0.692155,-0.0152322],[-0.0159977,0.00532582,0.999858]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item360 = objNull;
if (_layer350 && _layer181) then {
	_item360 = createVehicle ["Sign_Arrow_F",[14740.5,16111.9,0],[],0,"CAN_COLLIDE"];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [14740.5,16111.9,19.5304];
	_this setVectorDirAndUp [[0.693676,0.720179,-0.0124813],[0,0.0173282,0.99985]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item361 = objNull;
if (_layer350 && _layer181) then {
	_item361 = createVehicle ["Sign_Arrow_F",[14743.9,16100.2,0],[],0,"CAN_COLLIDE"];
	_this = _item361;
	_objects pushback _this;
	_objectIDs pushback 361;
	_this setPosWorld [14743.9,16100.2,19.5868];
	_this setVectorDirAndUp [[-0.692598,-0.721302,0.00565101],[0.00399666,0.00399671,0.999984]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item362 = objNull;
if (_layer350 && _layer181) then {
	_item362 = createVehicle ["Sign_Arrow_F",[14743.9,16123.1,0],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [14743.9,16123.1,19.4182];
	_this setVectorDirAndUp [[-0.694465,-0.719514,-0.00423078],[-0.0226603,0.0159936,0.999615]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item363 = objNull;
if (_layer350 && _layer181) then {
	_item363 = createVehicle ["Sign_Arrow_F",[14730.6,16105.9,0],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [14730.6,16105.9,19.5161];
	_this setVectorDirAndUp [[-0.694638,-0.719294,0.0096892],[-0.00399675,0.017328,0.999842]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item364 = objNull;
if (_layer350 && _layer181) then {
	_item364 = createVehicle ["Sign_Arrow_F",[14740.2,16096.6,0],[],0,"CAN_COLLIDE"];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [14740.2,16096.6,19.6075];
	_this setVectorDirAndUp [[-0.694643,-0.719352,0.00189058],[0.00133688,0.00133721,0.999998]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item365 = objNull;
if (_layer350 && _layer181) then {
	_item365 = createVehicle ["Sign_Arrow_F",[14753.1,16109.3,0],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [14753.1,16109.3,19.5326];
	_this setVectorDirAndUp [[0.693671,0.720277,-0.00468261],[0.00399666,0.00265202,0.999988]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item366 = objNull;
if (_layer350 && _layer181) then {
	_item366 = createVehicle ["Sign_Arrow_F",[14747.9,16112.4,0],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [14747.9,16112.4,19.5419];
	_this setVectorDirAndUp [[0.693671,0.72027,-0.00565117],[0.00399666,0.00399671,0.999984]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item367 = objNull;
if (_layer350 && _layer181) then {
	_item367 = createVehicle ["Sign_Arrow_F",[14721.7,16108.5,0],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [14721.7,16108.5,19.2631];
	_this setVectorDirAndUp [[0.693405,0.720548,0.000206504],[-0.0279873,0.0266466,0.999253]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item368 = objNull;
if (_layer350 && _layer181) then {
	_item368 = createVehicle ["Sign_Arrow_F",[14739.7,16103.9,0],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [14739.7,16103.9,19.5871];
	_this setVectorDirAndUp [[-0.683485,-0.729935,0.00661977],[0.00399666,0.00532646,0.999978]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item369 = objNull;
if (_layer350 && _layer181) then {
	_item369 = createVehicle ["Sign_Arrow_F",[14733.8,16097.7,0],[],0,"CAN_COLLIDE"];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [14733.8,16097.7,19.5988];
	_this setVectorDirAndUp [[-0.694643,-0.719344,0.00383164],[0,0.0053265,0.999986]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item372 = objNull;
if (_layer181) then {
	_item372 = createVehicle ["Land_Shoot_House_Wall_F",[14725.5,16116.7,0],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [14725.5,16116.7,20.4509];
	_this setVectorDirAndUp [[-0.719226,0.693752,-0.0377201],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item373 = objNull;
if (_layer181) then {
	_item373 = createVehicle ["Land_Shoot_House_Wall_F",[14739.4,16092.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item373;
	_objects pushback _this;
	_objectIDs pushback 373;
	_this setPosWorld [14739.4,16092.2,20.9167];
	_this setVectorDirAndUp [[-0.719507,0.694485,3.32174e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item374 = objNull;
if (_layer181) then {
	_item374 = createVehicle ["Land_Shoot_House_Wall_F",[14729.9,16106.9,0],[],0,"CAN_COLLIDE"];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [14729.9,16106.9,20.7979];
	_this setVectorDirAndUp [[-0.719252,0.694048,-0.0312136],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item375 = objNull;
if (_layer181) then {
	_item375 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14737.7,16106.2,0],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [14737.7,16106.2,20.8849];
	_this setVectorDirAndUp [[0.69448,0.719482,-0.00660804],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item376 = objNull;
if (_layer181) then {
	_item376 = createVehicle ["Land_Shoot_House_Wall_F",[14736.3,16109.1,0],[],0,"CAN_COLLIDE"];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [14736.3,16109.1,20.8507];
	_this setVectorDirAndUp [[0.719415,-0.694414,0.0152095],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item377 = objNull;
if (_layer181) then {
	_item377 = createVehicle ["Land_Shoot_House_Wall_F",[14748.6,16123.3,0],[],0,"CAN_COLLIDE"];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [14748.6,16123.3,20.7608];
	_this setVectorDirAndUp [[0.694446,0.719531,0.00453029],[-0.0106641,0.00399652,0.999935]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item378 = objNull;
if (_layer181) then {
	_item378 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14739.1,16110.7,0],[],0,"CAN_COLLIDE"];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [14739.1,16110.7,20.8538];
	_this setVectorDirAndUp [[0.673234,0.739318,-0.012813],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item379 = objNull;
if (_layer181) then {
	_item379 = createVehicle ["Land_Shoot_House_Wall_F",[14738.1,16129.5,0],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [14738.1,16129.5,20.4326];
	_this setVectorDirAndUp [[-0.719323,0.693756,-0.035738],[-0.0226629,0.0279823,0.999352]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item380 = objNull;
if (_layer181) then {
	_item380 = createVehicle ["Land_Shoot_House_Wall_F",[14734,16125.2,0],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [14734,16125.2,20.4411];
	_this setVectorDirAndUp [[-0.719226,0.693541,-0.0414161],[-0.0279894,0.0306394,0.999139]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item381 = objNull;
if (_layer181) then {
	_item381 = createVehicle ["Land_Shoot_House_Wall_F",[14756.1,16109.5,0],[],0,"CAN_COLLIDE"];
	_this = _item381;
	_objects pushback _this;
	_objectIDs pushback 381;
	_this setPosWorld [14756.1,16109.5,20.8267];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item382 = objNull;
if (_layer181) then {
	_item382 = createVehicle ["Land_Shoot_House_Wall_F",[14758.7,16119.4,0],[],0,"CAN_COLLIDE"];
	_this = _item382;
	_objects pushback _this;
	_objectIDs pushback 382;
	_this setPosWorld [14758.7,16119.4,20.803];
	_this setVectorDirAndUp [[0.694485,0.719507,-0.00092951],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item383 = objNull;
if (_layer181) then {
	_item383 = createVehicle ["Land_Shoot_House_Wall_F",[14748.7,16127.7,0],[],0,"CAN_COLLIDE"];
	_this = _item383;
	_objects pushback _this;
	_objectIDs pushback 383;
	_this setPosWorld [14748.7,16127.7,20.6896];
	_this setVectorDirAndUp [[-0.719467,0.694101,-0.0243322],[-0.0106641,0.0239899,0.999655]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item384 = objNull;
if (_layer181) then {
	_item384 = createVehicle ["Land_Shoot_House_Wall_F",[14757.3,16119.3,0],[],0,"CAN_COLLIDE"];
	_this = _item384;
	_objects pushback _this;
	_objectIDs pushback 384;
	_this setPosWorld [14757.3,16119.3,20.8057];
	_this setVectorDirAndUp [[-0.719505,0.694487,-0.000867568],[0.00265199,0.00399673,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item385 = objNull;
if (_layer181) then {
	_item385 = createVehicle ["Land_Shoot_House_Wall_F",[14755.9,16120.9,0],[],0,"CAN_COLLIDE"];
	_this = _item385;
	_objects pushback _this;
	_objectIDs pushback 385;
	_this setPosWorld [14755.9,16120.9,20.8027];
	_this setVectorDirAndUp [[-0.719505,0.694487,-0.000867568],[0.00265199,0.00399673,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item386 = objNull;
if (_layer181) then {
	_item386 = createVehicle ["Land_Shoot_House_Wall_F",[14747.7,16100.8,0],[],0,"CAN_COLLIDE"];
	_this = _item386;
	_objects pushback _this;
	_objectIDs pushback 386;
	_this setPosWorld [14747.7,16100.8,20.8728];
	_this setVectorDirAndUp [[-0.719505,0.694487,6.6316e-005],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item387 = objNull;
if (_layer181) then {
	_item387 = createVehicle ["Land_Shoot_House_Wall_F",[14750.5,16103.7,0],[],0,"CAN_COLLIDE"];
	_this = _item387;
	_objects pushback _this;
	_objectIDs pushback 387;
	_this setPosWorld [14750.5,16103.7,20.8593];
	_this setVectorDirAndUp [[-0.719505,0.694487,0.000979451],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item388 = objNull;
if (_layer181) then {
	_item388 = createVehicle ["Land_Shoot_House_Wall_F",[14749.1,16102.3,0],[],0,"CAN_COLLIDE"];
	_this = _item388;
	_objects pushback _this;
	_objectIDs pushback 388;
	_this setPosWorld [14749.1,16102.3,20.8653];
	_this setVectorDirAndUp [[-0.719505,0.694487,6.6316e-005],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item389 = objNull;
if (_layer181) then {
	_item389 = createVehicle ["Land_Shoot_House_Wall_F",[14744.7,16132.9,0],[],0,"CAN_COLLIDE"];
	_this = _item389;
	_objects pushback _this;
	_objectIDs pushback 389;
	_this setPosWorld [14744.7,16132.9,20.5167];
	_this setVectorDirAndUp [[-0.694213,-0.719768,0.00166618],[-0.0279894,0.0293087,0.999178]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item390 = objNull;
if (_layer181) then {
	_item390 = createVehicle ["Land_Shoot_House_Wall_F",[14728.4,16119.5,0],[],0,"CAN_COLLIDE"];
	_this = _item390;
	_objects pushback _this;
	_objectIDs pushback 390;
	_this setPosWorld [14728.4,16119.5,20.4458];
	_this setVectorDirAndUp [[-0.719169,0.69354,-0.0424068],[-0.0306514,0.0293064,0.9991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item391 = objNull;
if (_layer181) then {
	_item391 = createVehicle ["Land_Shoot_House_Wall_F",[14729.8,16121,0],[],0,"CAN_COLLIDE"];
	_this = _item391;
	_objects pushback _this;
	_objectIDs pushback 391;
	_this setPosWorld [14729.8,16121,20.4463];
	_this setVectorDirAndUp [[-0.719169,0.69354,-0.0424068],[-0.0306514,0.0293064,0.9991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item392 = objNull;
if (_layer181) then {
	_item392 = createVehicle ["Land_Shoot_House_Wall_F",[14731.1,16122.4,0],[],0,"CAN_COLLIDE"];
	_this = _item392;
	_objects pushback _this;
	_objectIDs pushback 392;
	_this setPosWorld [14731.1,16122.4,20.439];
	_this setVectorDirAndUp [[-0.7193,0.69368,-0.0376186],[-0.0239937,0.0293117,0.999282]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item393 = objNull;
if (_layer181) then {
	_item393 = createVehicle ["Land_InfoStand_V1_F",[14759.4,16131,-0.000244141],[],0,"CAN_COLLIDE"];
	_this = _item393;
	_objects pushback _this;
	_objectIDs pushback 393;
	_this setPosWorld [14759.4,16131,19.6662];
	_this setVectorDirAndUp [[-0.685089,-0.728454,-0.00257008],[-0.0080009,0.00399662,0.99996]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item394 = objNull;
if (_layer181) then {
	_item394 = createVehicle ["Land_Scaffolding_New_F",[14756.4,16123.6,0],[],0,"CAN_COLLIDE"];
	_this = _item394;
	_objects pushback _this;
	_objectIDs pushback 394;
	_this setPosWorld [14756.4,16123.6,21.8707];
	_this setVectorDirAndUp [[-0.726709,0.686945,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item395 = objNull;
if (_layer181) then {
	_item395 = createVehicle ["VR_Area_01_circle_4_yellow_F",[14760.2,16131.8,0.0179749],[],0,"CAN_COLLIDE"];
	_this = _item395;
	_objects pushback _this;
	_objectIDs pushback 395;
	_this setPosWorld [14760.2,16131.8,19.1108];
	_this setVectorDirAndUp [[-0.695142,-0.718873,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item398 = objNull;
if (_layer181) then {
	_item398 = createVehicle ["Land_Shoot_House_Wall_F",[14756,16118,0],[],0,"CAN_COLLIDE"];
	_this = _item398;
	_objects pushback _this;
	_objectIDs pushback 398;
	_this setPosWorld [14756,16118,20.8145];
	_this setVectorDirAndUp [[-0.719505,0.694487,-0.000867568],[0.00265199,0.00399673,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item399 = objNull;
if (_layerRoot) then {
	_item399 = createVehicle ["Land_ClutterCutter_large_F",[14760.3,16131.9,2.47955e-005],[],0,"CAN_COLLIDE"];
	_this = _item399;
	_objects pushback _this;
	_objectIDs pushback 399;
	_this setPosWorld [14760.3,16131.9,19.0919];
	_this setVectorDirAndUp [[0.688362,-0.725365,0.00197886],[0.00133688,0.00399674,0.999991]];
	0 remoteExec ['setFeatureType', _this];
};

private _item402 = objNull;
if (_layer401) then {
	_item402 = createVehicle ["Land_InfoStand_V1_F",[14771.7,16059.3,-0.00300026],[],0,"CAN_COLLIDE"];
	_this = _item402;
	_objects pushback _this;
	_objectIDs pushback 402;
	_this setPosWorld [14771.7,16059.2,18.8203];
	_this setVectorDirAndUp [[0.519871,-0.852895,-0.0480004],[0.0266657,-0.0399606,0.998845]];
	fr_at_button = _this;
	_this setVehicleVarName "fr_at_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item403 = objNull;
if (_layer401) then {
	_item403 = createVehicle ["Sign_Arrow_Large_Blue_F",[14998,15637.4,12.7374],[],0,"CAN_COLLIDE"];
	_this = _item403;
	_objects pushback _this;
	_objectIDs pushback 403;
	_this setPosWorld [14998,15637.4,0.681832];
	_this setVectorDirAndUp [[0,0.994905,0.100817],[-0.038638,-0.100741,0.994162]];
	fr_at_spawn = _this;
	_this setVehicleVarName "fr_at_spawn";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item404 = objNull;
if (_layer401) then {
	_item404 = createVehicle ["Sign_Arrow_Large_Blue_F",[14917.5,15787.9,0],[],0,"CAN_COLLIDE"];
	_this = _item404;
	_objects pushback _this;
	_objectIDs pushback 404;
	_this setPosWorld [14917.5,15787.9,3.14905];
	_this setVectorDirAndUp [[0,0.99953,-0.0306514],[-0.0399685,0.0306269,0.998731]];
	fr_at_spawn_1 = _this;
	_this setVehicleVarName "fr_at_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item405 = objNull;
if (_layer401) then {
	_item405 = createVehicle ["Sign_Arrow_Large_Blue_F",[15070,15519.8,33.9429],[],0,"CAN_COLLIDE"];
	_this = _item405;
	_objects pushback _this;
	_objectIDs pushback 405;
	_this setPosWorld [15070,15519.8,0.755382];
	_this setVectorDirAndUp [[0,0.999679,0.0253248],[0.188556,-0.0248705,0.981748]];
	fr_at_spawn_2 = _this;
	_this setVehicleVarName "fr_at_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item406 = objNull;
if (_layerRoot) then {
	_item406 = createVehicle ["ShootingPos_F",[14764.2,16051.7,0.0569038],[],0,"CAN_COLLIDE"];
	_this = _item406;
	_objects pushback _this;
	_objectIDs pushback 406;
	_this setPosWorld [14764.2,16051.7,18.0098];
	_this setVectorDirAndUp [[0.479243,-0.873873,-0.0816782],[0.0293202,-0.077069,0.996595]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item407 = objNull;
if (_layerRoot) then {
	_item407 = createVehicle ["ShootingPos_F",[14768.6,16054.1,0.0944195],[],0,"CAN_COLLIDE"];
	_this = _item407;
	_objects pushback _this;
	_objectIDs pushback 407;
	_this setPosWorld [14768.6,16054.1,18.1477];
	_this setVectorDirAndUp [[0.479439,-0.875117,-0.0656394],[-0.00665923,-0.078422,0.996898]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item408 = objNull;
if (_layerRoot) then {
	_item408 = createVehicle ["ShootingPos_F",[14772.9,16056.5,0.102654],[],0,"CAN_COLLIDE"];
	_this = _item408;
	_objects pushback _this;
	_objectIDs pushback 408;
	_this setPosWorld [14772.9,16056.5,18.2242];
	_this setVectorDirAndUp [[0.479279,-0.87609,-0.0525099],[0.0266571,-0.0452706,0.998619]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item409 = objNull;
if (_layerRoot) then {
	_item409 = createVehicle ["ShootingPos_F",[14777.3,16058.9,0],[],0,"CAN_COLLIDE"];
	_this = _item409;
	_objects pushback _this;
	_objectIDs pushback 409;
	_this setPosWorld [14777.3,16058.9,18.0761];
	_this setVectorDirAndUp [[0.479139,-0.876445,-0.0476425],[0.0359766,-0.0346232,0.998753]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item410 = objNull;
if (_layerRoot) then {
	_item410 = createVehicle ["ShootingPos_F",[14781.3,16061.2,0],[],0,"CAN_COLLIDE"];
	_this = _item410;
	_objects pushback _this;
	_objectIDs pushback 410;
	_this setPosWorld [14781.3,16061.2,17.9634];
	_this setVectorDirAndUp [[0.478699,-0.877082,-0.0396728],[0.0559122,-0.014641,0.998328]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item411 = objNull;
if (_layerRoot) then {
	_item411 = createVehicle ["Land_ShootingPos_Roof_01_F",[14771.8,16071.6,0],[],0,"CAN_COLLIDE"];
	_this = _item411;
	_objects pushback _this;
	_objectIDs pushback 411;
	_this setPosWorld [14771.8,16071.6,19.6712];
	_this setVectorDirAndUp [[0.549146,-0.835726,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item412 = objNull;
if (_layerRoot) then {
	_item412 = createVehicle ["Land_MysteriousBell_01_F",[14774.8,16073.5,0],[],0,"CAN_COLLIDE"];
	_this = _item412;
	_objects pushback _this;
	_objectIDs pushback 412;
	_this setPosWorld [14774.8,16073.5,19.3113];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item413 = objNull;
if (_layerRoot) then {
	_item413 = createVehicle ["TargetP_Inf_F",[14872,15878.8,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item413;
	_objects pushback _this;
	_objectIDs pushback 413;
	_this setPosWorld [14872,15878.8,6.96853];
	_this setVectorDirAndUp [[0.690077,-0.722245,0.0464313],[-0.115228,-0.0463057,0.992259]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item414 = objNull;
if (_layerRoot) then {
	_item414 = createVehicle ["TargetP_Inf_F",[14796.5,15845.7,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item414;
	_objects pushback _this;
	_objectIDs pushback 414;
	_this setPosWorld [14796.5,15845.7,8.11997];
	_this setVectorDirAndUp [[0.34787,-0.935537,0.0612916],[0.00666787,0.0678419,0.997674]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item415 = objNull;
if (_layerRoot) then {
	_item415 = createVehicle ["TargetP_Inf_F",[14798.6,15943.8,0],[],0,"CAN_COLLIDE"];
	_this = _item415;
	_objects pushback _this;
	_objectIDs pushback 415;
	_this setPosWorld [14798.6,15943.8,11.3261];
	_this setVectorDirAndUp [[-0.377259,-0.924999,-0.0453108],[0.0399667,-0.0651418,0.997075]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item416 = objNull;
if (_layerRoot) then {
	_item416 = createVehicle ["TargetP_Inf_F",[14871.6,15962,0],[],0,"CAN_COLLIDE"];
	_this = _item416;
	_objects pushback _this;
	_objectIDs pushback 416;
	_this setPosWorld [14871.6,15962,9.41558];
	_this setVectorDirAndUp [[0.920107,-0.391564,-0.00904442],[-0.00265204,-0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item417 = objNull;
if (_layerRoot) then {
	_item417 = createVehicle ["TargetP_Inf_F",[14834.1,15903.4,0],[],0,"CAN_COLLIDE"];
	_this = _item417;
	_objects pushback _this;
	_objectIDs pushback 417;
	_this setPosWorld [14834.1,15903.4,8.36457];
	_this setVectorDirAndUp [[0.131981,-0.989629,0.0567023],[0.0995034,0.0701405,0.992562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item418 = objNull;
if (_layerRoot) then {
	_item418 = createVehicle ["SkeetMachine",[14753.2,16044.3,-0.00255013],[],0,"CAN_COLLIDE"];
	_this = _item418;
	_objects pushback _this;
	_objectIDs pushback 418;
	_this setPosWorld [14753.2,16044.2,18.4374];
	_this setVectorDirAndUp [[-0.805135,0.588967,0.0698251],[0.0466147,-0.054526,0.997424]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
};

private _item420 = objNull;
if (_layerRoot) then {
	_item420 = _item419 createUnit ["B_RangeMaster_F",[14752,16044.4,0],[],0,"CAN_COLLIDE"];
	_item419 selectLeader _item420;
	_this = _item420;
	_objects pushback _this;
	_objectIDs pushback 420;
	_this setPosWorld [14752,16044.4,18.04];
	_this setVectorDirAndUp [[0.706205,0.708007,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"H_Cap_headphones","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	sk_op = _this;
	_this setVehicleVarName "sk_op";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Daniel Moore";;
	_this setface "GreekHead_A3_03";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item421 = objNull;
if (_layerRoot) then {
	_item421 = createVehicle ["TargetP_Inf_F",[14770.6,15922.3,0],[],0,"CAN_COLLIDE"];
	_this = _item421;
	_objects pushback _this;
	_objectIDs pushback 421;
	_this setPosWorld [14770.6,15922.3,11.9501];
	_this setVectorDirAndUp [[-0.264683,-0.96026,-0.0885618],[0.00399666,-0.0929286,0.995665]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item447 = objNull;
if (_layer446) then {
	_item447 = createVehicle ["Land_RepairDepot_01_tan_F",[15062.9,17317.5,2.28882e-005],[],0,"CAN_COLLIDE"];
	_this = _item447;
	_objects pushback _this;
	_objectIDs pushback 447;
	_this setPosWorld [15062.9,17317.6,19.5716];
	_this setVectorDirAndUp [[-0.722971,0.690075,-0.0332975],[-0.0053265,0.042627,0.999077]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item451 = objNull;
if (_layer450) then {
	_item451 = createVehicle ["ProtectionZone_Invisible_F",[15193,17312.7,0],[],0,"CAN_COLLIDE"];
	_this = _item451;
	_objects pushback _this;
	_objectIDs pushback 451;
	_this setPosWorld [15193,17312.7,22.6638];
	_this setVectorDirAndUp [[-0.738337,0.674429,-0.00189862],[-0.0013439,0.0013439,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item453 = objNull;
if (_layer452 && _layer450) then {
	_item453 = createVehicle ["Land_LampHalogen_F",[15193.9,17276,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item453;
	_objects pushback _this;
	_objectIDs pushback 453;
	_this setPosWorld [15193.9,17276,23.9154];
	_this setVectorDirAndUp [[0.99211,0.125367,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item454 = objNull;
if (_layer452 && _layer450) then {
	_item454 = createVehicle ["Land_Cargo_HQ_V1_F",[15194.2,17290,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item454;
	_objects pushback _this;
	_objectIDs pushback 454;
	_this setPosWorld [15194.2,17290,21.8143];
	_this setVectorDirAndUp [[0.709527,0.704678,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item455 = objNull;
if (_layer452 && _layer450) then {
	_item455 = createVehicle ["Land_Pallet_MilBoxes_F",[15197,17292,0.601],[],0,"CAN_COLLIDE"];
	_this = _item455;
	_objects pushback _this;
	_objectIDs pushback 455;
	_this setPosWorld [15197,17292,18.9911];
	_this setVectorDirAndUp [[0.710492,0.703705,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item456 = objNull;
if (_layer452 && _layer450) then {
	_item456 = createVehicle ["Land_PaperBox_open_empty_F",[15201.5,17290.2,0.720978],[],0,"CAN_COLLIDE"];
	_this = _item456;
	_objects pushback _this;
	_objectIDs pushback 456;
	_this setPosWorld [15201.5,17290.2,19.268];
	_this setVectorDirAndUp [[-0.677835,-0.735214,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item457 = objNull;
if (_layer452 && _layer450) then {
	_item457 = createVehicle ["Land_PaperBox_closed_F",[15200.2,17291.5,0.720978],[],0,"CAN_COLLIDE"];
	_this = _item457;
	_objects pushback _this;
	_objectIDs pushback 457;
	_this setPosWorld [15200.2,17291.5,19.3042];
	_this setVectorDirAndUp [[-0.699658,-0.714478,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item458 = objNull;
if (_layer452 && _layer450) then {
	_item458 = createSimpleObject ["Land_CampingTable_F",[15194.7,17294.5,18.5406]];
	_this = _item458;
	_objects pushback _this;
	_objectIDs pushback 458;
	_this setPosWorld [15194.7,17294.5,18.9521];
	_this setVectorDirAndUp [[0.715137,0.698985,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item459 = objNull;
if (_layer452 && _layer450) then {
	_item459 = createVehicle ["Box_NATO_Equip_F",[15196,17290.5,0.601],[],0,"CAN_COLLIDE"];
	_this = _item459;
	_objects pushback _this;
	_objectIDs pushback 459;
	_this setPosWorld [15196,17290.5,18.9225];
	_this setVectorDirAndUp [[0.689708,0.724088,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if !(false) then {_this setVariable ['s', false, true];};;
};

private _item460 = objNull;
if (_layer452 && _layer450) then {
	_item460 = createVehicle ["Weapon_arifle_MX_F",[15194.3,17294.8,1.41705],[],0,"CAN_COLLIDE"];
	_this = _item460;
	_objects pushback _this;
	_objectIDs pushback 460;
	_this setPosWorld [15194.3,17294.8,19.3562];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item461 = objNull;
if (_layer452 && _layer450) then {
	_item461 = createVehicle ["Weapon_arifle_MX_F",[15194.7,17294.6,1.4166],[],0,"CAN_COLLIDE"];
	_this = _item461;
	_objects pushback _this;
	_objectIDs pushback 461;
	_this setPosWorld [15194.7,17294.6,19.3562];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item462 = objNull;
if (_layer452 && _layer450) then {
	_item462 = createVehicle ["Box_NATO_Ammo_F",[15195,17294.1,1.416],[],0,"CAN_COLLIDE"];
	_this = _item462;
	_objects pushback _this;
	_objectIDs pushback 462;
	_this setPosWorld [15195,17294.1,19.6401];
	_this setVectorDirAndUp [[-0.658138,0.752898,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if !(false) then {_this setVariable ['s', false, true];};;
};

private _item463 = objNull;
if (_layer452 && _layer450) then {
	_item463 = createVehicle ["Land_InfoStand_V1_F",[15190.3,17294.9,0],[],0,"CAN_COLLIDE"];
	_this = _item463;
	_objects pushback _this;
	_objectIDs pushback 463;
	_this setPosWorld [15190.3,17294.9,18.5091];
	_this setVectorDirAndUp [[0.707994,-0.706218,0.000914406],[-0.00129154,0,0.999999]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item465 = objNull;
if (_layer464 && _layer450) then {
	_item465 = createVehicle ["Land_Garbage_square5_F",[15148.6,17340.1,0],[],0,"CAN_COLLIDE"];
	_this = _item465;
	_objects pushback _this;
	_objectIDs pushback 465;
	_this setPosWorld [15148.6,17340.1,17.8678];
	_this setVectorDirAndUp [[0.893348,-0.449264,0.00954095],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item466 = objNull;
if (_layer464 && _layer450) then {
	_item466 = createSimpleObject ["Land_GarbageContainer_open_F",[15154.9,17338.9,17.8544]];
	_this = _item466;
	_objects pushback _this;
	_objectIDs pushback 466;
	_this setPosWorld [15154.9,17338.9,18.5929];
	_this setVectorDirAndUp [[0.835798,0.549035,0.0014824],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item467 = objNull;
if (_layer464 && _layer450) then {
	_item467 = createSimpleObject ["Land_Sink_F",[15151.2,17334.4,17.8507]];
	_this = _item467;
	_objects pushback _this;
	_objectIDs pushback 467;
	_this setPosWorld [15151.2,17334.4,18.4684];
	_this setVectorDirAndUp [[0.65373,-0.756723,0.00274563],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item468 = objNull;
if (_layer464 && _layer450) then {
	_item468 = createSimpleObject ["Land_CampingTable_F",[15149.5,17337.1,17.84]];
	_this = _item468;
	_objects pushback _this;
	_objectIDs pushback 468;
	_this setPosWorld [15149.5,17337.1,18.2515];
	_this setVectorDirAndUp [[-0.681751,-0.73157,-0.00447653],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item469 = objNull;
if (_layer464 && _layer450) then {
	_item469 = createSimpleObject ["Land_CampingTable_F",[15148.7,17339,17.831]];
	_this = _item469;
	_objects pushback _this;
	_objectIDs pushback 469;
	_this setPosWorld [15148.7,17339,18.2425];
	_this setVectorDirAndUp [[0.685203,0.728338,0.00450848],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item470 = objNull;
if (_layer464 && _layer450) then {
	_item470 = createSimpleObject ["Land_CampingTable_F",[15150.1,17337.7,17.8432]];
	_this = _item470;
	_objects pushback _this;
	_objectIDs pushback 470;
	_this setPosWorld [15150.1,17337.7,18.2548];
	_this setVectorDirAndUp [[0.672007,0.740544,0.000791933],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item471 = objNull;
if (_layer464 && _layer450) then {
	_item471 = createSimpleObject ["Land_CampingTable_F",[15148.1,17338.4,17.8273]];
	_this = _item471;
	_objects pushback _this;
	_objectIDs pushback 471;
	_this setPosWorld [15148.1,17338.4,18.2388];
	_this setVectorDirAndUp [[-0.672698,-0.739904,-0.00439296],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item472 = objNull;
if (_layer464 && _layer450) then {
	_item472 = createVehicle ["Land_CratesShabby_F",[15153.6,17338.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item472;
	_objects pushback _this;
	_objectIDs pushback 472;
	_this setPosWorld [15153.6,17338.7,18.6113];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item473 = objNull;
if (_layer464 && _layer450) then {
	_item473 = createSimpleObject ["Land_WheelieBin_01_F",[15153.6,17339.5,17.8503]];
	_this = _item473;
	_objects pushback _this;
	_objectIDs pushback 473;
	_this setPosWorld [15153.6,17339.5,18.3673];
	_this setVectorDirAndUp [[-0.449346,-0.893358,2.91935e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item474 = objNull;
if (_layer464 && _layer450) then {
	_item474 = createSimpleObject ["Land_WaterCooler_01_old_F",[15152.8,17338.4,17.8496]];
	_this = _item474;
	_objects pushback _this;
	_objectIDs pushback 474;
	_this setPosWorld [15152.8,17338.4,18.5816];
	_this setVectorDirAndUp [[0.449401,0.89333,-2.73832e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item475 = objNull;
if (_layer464 && _layer450) then {
	_item475 = createVehicle ["Land_CratesPlastic_F",[15154.1,17337.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item475;
	_objects pushback _this;
	_objectIDs pushback 475;
	_this setPosWorld [15154.1,17337.9,18.0862];
	_this setVectorDirAndUp [[0.314002,-0.94942,0.00210233],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item476 = objNull;
if (_layer464 && _layer450) then {
	_item476 = createVehicle ["Land_Garbage_square5_F",[15152.4,17337.1,0],[],0,"CAN_COLLIDE"];
	_this = _item476;
	_objects pushback _this;
	_objectIDs pushback 476;
	_this setPosWorld [15152.4,17337.1,17.8898];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item477 = objNull;
if (_layer464 && _layer450) then {
	_item477 = createSimpleObject ["Land_CampingTable_F",[15156.4,17333.8,17.8652]];
	_this = _item477;
	_objects pushback _this;
	_objectIDs pushback 477;
	_this setPosWorld [15156.4,17333.8,18.2768];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item478 = objNull;
if (_layer464 && _layer450) then {
	_item478 = createSimpleObject ["Land_BarrelTrash_grey_F",[15145.9,17335.2,17.8172]];
	_this = _item478;
	_objects pushback _this;
	_objectIDs pushback 478;
	_this setPosWorld [15145.9,17335.2,18.222];
	_this setVectorDirAndUp [[0.893362,-0.44929,0.00655431],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
};

private _item479 = objNull;
if (_layer464 && _layer450) then {
	_item479 = createSimpleObject ["Land_CampingTable_F",[15156.8,17333.2,17.8671]];
	_this = _item479;
	_objects pushback _this;
	_objectIDs pushback 479;
	_this setPosWorld [15156.8,17333.2,18.2787];
	_this setVectorDirAndUp [[0.549032,-0.835797,0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item480 = objNull;
if (_layer464 && _layer450) then {
	_item480 = createSimpleObject ["Land_CampingTable_F",[15155.2,17332.2,17.8639]];
	_this = _item480;
	_objects pushback _this;
	_objectIDs pushback 480;
	_this setPosWorld [15155.2,17332.2,18.2754];
	_this setVectorDirAndUp [[0.549789,-0.835302,0.00145807],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item481 = objNull;
if (_layer464 && _layer450) then {
	_item481 = createSimpleObject ["Land_CampingTable_F",[15154.8,17332.8,17.8624]];
	_this = _item481;
	_objects pushback _this;
	_objectIDs pushback 481;
	_this setPosWorld [15154.8,17332.8,18.274];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item482 = objNull;
if (_layer464 && _layer450) then {
	_item482 = createVehicle ["Land_Garbage_square5_F",[15156.1,17332.1,0],[],0,"CAN_COLLIDE"];
	_this = _item482;
	_objects pushback _this;
	_objectIDs pushback 482;
	_this setPosWorld [15156.1,17332.1,17.9056];
	_this setVectorDirAndUp [[0.893373,-0.449309,0.00236927],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item483 = objNull;
if (_layer464 && _layer450) then {
	_item483 = createSimpleObject ["Land_CampingChair_V2_F",[15148.6,17336.7,17.8333]];
	_this = _item483;
	_objects pushback _this;
	_objectIDs pushback 483;
	_this setPosWorld [15148.6,17336.7,18.3398];
	_this setVectorDirAndUp [[-0.448689,-0.893685,-0.00239499],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item484 = objNull;
if (_layer464 && _layer450) then {
	_item484 = createSimpleObject ["Land_CampingChair_V2_F",[15148,17337.6,17.8273]];
	_this = _item484;
	_objects pushback _this;
	_objectIDs pushback 484;
	_this setPosWorld [15148,17337.6,18.3338];
	_this setVectorDirAndUp [[-0.665214,-0.746641,-0.00432406],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item485 = objNull;
if (_layer464 && _layer450) then {
	_item485 = createSimpleObject ["Land_CampingChair_V2_F",[15147.1,17338.3,17.8189]];
	_this = _item485;
	_objects pushback _this;
	_objectIDs pushback 485;
	_this setPosWorld [15147.1,17338.3,18.3254];
	_this setVectorDirAndUp [[0.97919,-0.202782,0.00810582],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item486 = objNull;
if (_layer464 && _layer450) then {
	_item486 = createSimpleObject ["Land_CampingChair_V2_F",[15149,17340.2,17.831]];
	_this = _item486;
	_objects pushback _this;
	_objectIDs pushback 486;
	_this setPosWorld [15149,17340.2,18.3374];
	_this setVectorDirAndUp [[0.949397,0.314023,0.00592371],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item487 = objNull;
if (_layer464 && _layer450) then {
	_item487 = createSimpleObject ["Land_CampingChair_V2_F",[15150.8,17337.6,17.8453]];
	_this = _item487;
	_objects pushback _this;
	_objectIDs pushback 487;
	_this setPosWorld [15150.8,17337.6,18.3517];
	_this setVectorDirAndUp [[0.665219,0.746648,0.000765771],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item488 = objNull;
if (_layer464 && _layer450) then {
	_item488 = createSimpleObject ["Land_CampingChair_V2_F",[15149.6,17339.3,17.8378]];
	_this = _item488;
	_objects pushback _this;
	_objectIDs pushback 488;
	_this setPosWorld [15149.6,17339.3,18.3442];
	_this setVectorDirAndUp [[0.449372,0.893341,0.00240091],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item489 = objNull;
if (_layer464 && _layer450) then {
	_item489 = createSimpleObject ["Land_CampingChair_V2_F",[15150.5,17338.6,17.8431]];
	_this = _item489;
	_objects pushback _this;
	_objectIDs pushback 489;
	_this setPosWorld [15150.5,17338.6,18.3496];
	_this setVectorDirAndUp [[0.835856,0.548947,0.00148268],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item490 = objNull;
if (_layer464 && _layer450) then {
	_item490 = createSimpleObject ["Land_CampingChair_V2_F",[15156.6,17334.8,17.8644]];
	_this = _item490;
	_objects pushback _this;
	_objectIDs pushback 490;
	_this setPosWorld [15156.6,17334.8,18.3709];
	_this setVectorDirAndUp [[0.202724,0.979236,-0.000771813],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item491 = objNull;
if (_layer464 && _layer450) then {
	_item491 = createSimpleObject ["Land_CampingChair_V2_F",[15157.5,17333,17.8692]];
	_this = _item491;
	_objects pushback _this;
	_objectIDs pushback 491;
	_this setPosWorld [15157.5,17333,18.3757];
	_this setVectorDirAndUp [[0.746635,-0.665228,0.00286967],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item492 = objNull;
if (_layer464 && _layer450) then {
	_item492 = createSimpleObject ["Land_CampingChair_V2_F",[15149.3,17336,17.8401]];
	_this = _item492;
	_objects pushback _this;
	_objectIDs pushback 492;
	_this setPosWorld [15149.3,17336,18.3465];
	_this setVectorDirAndUp [[-0.949413,-0.313947,-0.00717659],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item493 = objNull;
if (_layer464 && _layer450) then {
	_item493 = createSimpleObject ["Land_CampingChair_V2_F",[15154.7,17333.6,17.8611]];
	_this = _item493;
	_objects pushback _this;
	_objectIDs pushback 493;
	_this setPosWorld [15154.7,17333.6,18.3676];
	_this setVectorDirAndUp [[0.44926,0.893401,-3.20573e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item494 = objNull;
if (_layer464 && _layer450) then {
	_item494 = createSimpleObject ["Land_CampingChair_V2_F",[15156.7,17332.3,17.8679]];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [15156.7,17332.3,18.3744];
	_this setVectorDirAndUp [[0.549045,-0.835791,0.0014561],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item495 = objNull;
if (_layer464 && _layer450) then {
	_item495 = createSimpleObject ["Land_CampingChair_V2_F",[15153.8,17331.6,17.8602]];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [15153.8,17331.6,18.3667];
	_this setVectorDirAndUp [[-0.893381,0.449293,-0.00236929],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item496 = objNull;
if (_layer464 && _layer450) then {
	_item496 = createSimpleObject ["Land_CampingChair_V2_F",[15155.1,17331.4,17.8636]];
	_this = _item496;
	_objects pushback _this;
	_objectIDs pushback 496;
	_this setPosWorld [15155.1,17331.4,18.3701];
	_this setVectorDirAndUp [[0.549116,-0.835745,0.00145629],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item497 = objNull;
if (_layer464 && _layer450) then {
	_item497 = createSimpleObject ["Land_CampingChair_V2_F",[15153.9,17333.1,17.8597]];
	_this = _item497;
	_objects pushback _this;
	_objectIDs pushback 497;
	_this setPosWorld [15153.9,17333.1,18.3662];
	_this setVectorDirAndUp [[-0.746689,0.665167,-0.00286973],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item499 = objNull;
if (_layer498) then {
	_item499 = createVehicle ["Land_HelipadRescue_F",[15282.9,17409.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item499;
	_objects pushback _this;
	_objectIDs pushback 499;
	_this setPosWorld [15282.9,17409.7,17.8317];
	_this setVectorDirAndUp [[-0.71644,0.697648,0.00108011],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
};

private _item500 = objNull;
if (_layer498) then {
	_item500 = createVehicle ["Land_PaperBox_closed_F",[15303.1,17385.1,0],[],0,"CAN_COLLIDE"];
	_this = _item500;
	_objects pushback _this;
	_objectIDs pushback 500;
	_this setPosWorld [15303.1,17385.1,18.4704];
	_this setVectorDirAndUp [[0.765095,-0.643914,0.0020941],[0.00399666,0.00800083,0.99996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item501 = objNull;
if (_layer498) then {
	_item501 = createVehicle ["Land_Cargo20_white_F",[15288.2,17388.5,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item501;
	_objects pushback _this;
	_objectIDs pushback 501;
	_this setPosWorld [15288.2,17388.5,19.2094];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item502 = objNull;
if (_layer498) then {
	_item502 = createVehicle ["Land_Cargo20_white_F",[15285.7,17385.9,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [15285.7,17385.9,19.2231];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item503 = objNull;
if (_layer498) then {
	_item503 = createVehicle ["Land_HBarrier_5_F",[15282.2,17388.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [15282.2,17388.2,18.6394];
	_this setVectorDirAndUp [[-0.72276,0.691099,8.39335e-005],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item504 = objNull;
if (_layer498) then {
	_item504 = createVehicle ["Land_HBarrier_5_F",[15286,17392.2,0.00354576],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [15286,17392.2,18.6213];
	_this setVectorDirAndUp [[-0.722757,0.691103,0.000126477],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item505 = objNull;
if (_layer498) then {
	_item505 = createVehicle ["Land_HBarrier_5_F",[15322.3,17404.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [15322.3,17404.1,17.9601];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item506 = objNull;
if (_layer498) then {
	_item506 = createVehicle ["Land_HBarrier_5_F",[15316.3,17409.8,0],[],0,"CAN_COLLIDE"];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [15316.3,17409.8,18.012];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item507 = objNull;
if (_layer498) then {
	_item507 = createVehicle ["Land_HBarrier_5_F",[15310.6,17415.4,0],[],0,"CAN_COLLIDE"];
	_this = _item507;
	_objects pushback _this;
	_objectIDs pushback 507;
	_this setPosWorld [15310.6,17415.4,18.0781];
	_this setVectorDirAndUp [[-0.690959,-0.722723,0.0157512],[0.0199947,0.00267389,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item508 = objNull;
if (_layer498) then {
	_item508 = createVehicle ["B_Truck_01_medical_F",[15310.9,17403.1,-0.0113106],[],0,"CAN_COLLIDE"];
	_this = _item508;
	_objects pushback _this;
	_objectIDs pushback 508;
	_this setPosWorld [15310.9,17403.1,19.6725];
	_this setVectorDirAndUp [[0.722658,-0.69118,-0.00603749],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[10]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_r"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	_this setVariable ["ace_medical_isMedicalVehicle", true, true];
};

private _item509 = objNull;
if (_layer498) then {
	_item509 = createVehicle ["Land_LampShabby_F",[15306.2,17389,0.00991631],[],0,"CAN_COLLIDE"];
	_this = _item509;
	_objects pushback _this;
	_objectIDs pushback 509;
	_this setPosWorld [15306.2,17389,21.5368];
	_this setVectorDirAndUp [[0.722762,-0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item510 = objNull;
if (_layer498) then {
	_item510 = createVehicle ["Land_Medevac_HQ_V1_F",[15301.7,17392.2,0],[],0,"CAN_COLLIDE"];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [15301.7,17392.2,21.6293];
	_this setVectorDirAndUp [[-0.691097,-0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item511 = objNull;
if (_layer498) then {
	_item511 = createVehicle ["Land_TTowerSmall_1_F",[15297.7,17382.3,0.00361061],[],0,"CAN_COLLIDE"];
	_this = _item511;
	_objects pushback _this;
	_objectIDs pushback 511;
	_this setPosWorld [15297.7,17382.3,22.8508];
	_this setVectorDirAndUp [[-0.722762,0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item512 = objNull;
if (_layer498) then {
	_item512 = createSimpleObject ["Land_Bandage_F",[15306.2,17394.7,19.1911]];
	_this = _item512;
	_objects pushback _this;
	_objectIDs pushback 512;
	_this setPosWorld [15306.2,17394.7,19.1944];
	_this setVectorDirAndUp [[-0.721062,-0.69287,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item513 = objNull;
if (_layer498) then {
	_item513 = createSimpleObject ["Land_Bandage_F",[15306.1,17394.8,19.1896]];
	_this = _item513;
	_objects pushback _this;
	_objectIDs pushback 513;
	_this setPosWorld [15306.1,17394.8,19.1929];
	_this setVectorDirAndUp [[-0.393014,-0.919532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item514 = objNull;
if (_layer498) then {
	_item514 = createVehicle ["BloodSplatter_01_Small_New_F",[15300.1,17394.5,0.549845],[],0,"CAN_COLLIDE"];
	_this = _item514;
	_objects pushback _this;
	_objectIDs pushback 514;
	_this setPosWorld [15300.1,17394.5,18.3056];
	_this setVectorDirAndUp [[-0.746441,0.665452,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\props_f_orange\humanitarian\garbage\data\bloodsplatter_small_fresh_ca.paa"];
};

private _item515 = objNull;
if (_layer498) then {
	_item515 = createSimpleObject ["Land_CampingChair_V2_white_F",[15305.6,17393.7,18.3723]];
	_this = _item515;
	_objects pushback _this;
	_objectIDs pushback 515;
	_this setPosWorld [15305.6,17393.7,18.8788];
	_this setVectorDirAndUp [[-0.393014,-0.919532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item516 = objNull;
if (_layer498) then {
	_item516 = createSimpleObject ["Land_CampingTable_white_F",[15305.8,17394.8,18.3616]];
	_this = _item516;
	_objects pushback _this;
	_objectIDs pushback 516;
	_this setPosWorld [15305.8,17394.8,18.7731];
	_this setVectorDirAndUp [[-0.670973,-0.741482,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item517 = objNull;
if (_layer498) then {
	_item517 = createSimpleObject ["Land_Defibrillator_F",[15305.9,17394.4,19.2474]];
	_this = _item517;
	_objects pushback _this;
	_objectIDs pushback 517;
	_this setPosWorld [15305.9,17394.4,19.2475];
	_this setVectorDirAndUp [[-0.692871,0.721062,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item518 = objNull;
if (_layer498) then {
	_item518 = createSimpleObject ["Land_EmergencyBlanket_02_discarded_F",[15298.5,17393.2,18.8292]];
	_this = _item518;
	_objects pushback _this;
	_objectIDs pushback 518;
	_this setPosWorld [15298.5,17393.2,18.8888];
	_this setVectorDirAndUp [[0.698203,-0.7159,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item519 = objNull;
if (_layer498) then {
	_item519 = createSimpleObject ["Land_EmergencyBlanket_02_stack_F",[15299.3,17397,20.8658]];
	_this = _item519;
	_objects pushback _this;
	_objectIDs pushback 519;
	_this setPosWorld [15299.3,17397,20.9642];
	_this setVectorDirAndUp [[0.850655,-0.525724,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item520 = objNull;
if (_layer498) then {
	_item520 = createSimpleObject ["Land_FoodContainer_01_F",[15300.7,17398.9,18.3539]];
	_this = _item520;
	_objects pushback _this;
	_objectIDs pushback 520;
	_this setPosWorld [15300.7,17398.9,18.5817];
	_this setVectorDirAndUp [[-0.877004,0.480484,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item521 = objNull;
if (_layer498) then {
	_item521 = createSimpleObject ["Land_FoodContainer_01_White_F",[15300.8,17387.5,18.3532]];
	_this = _item521;
	_objects pushback _this;
	_objectIDs pushback 521;
	_this setPosWorld [15300.8,17387.5,18.581];
	_this setVectorDirAndUp [[-0.0398352,0.999206,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item522 = objNull;
if (_layer498) then {
	_item522 = createSimpleObject ["Land_FoodContainer_01_White_F",[15301.4,17398.5,18.3539]];
	_this = _item522;
	_objects pushback _this;
	_objectIDs pushback 522;
	_this setPosWorld [15301.4,17398.5,18.5817];
	_this setVectorDirAndUp [[-0.691097,-0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item523 = objNull;
if (_layer498) then {
	_item523 = createSimpleObject ["Land_IntravenStand_01_1bag_F",[15298.5,17392.2,18.3615]];
	_this = _item523;
	_objects pushback _this;
	_objectIDs pushback 523;
	_this setPosWorld [15298.5,17392.2,19.2929];
	_this setVectorDirAndUp [[0.652323,0.757941,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item524 = objNull;
if (_layer498) then {
	_item524 = createSimpleObject ["Land_IntravenStand_01_2bags_F",[15302.4,17387.4,18.3532]];
	_this = _item524;
	_objects pushback _this;
	_objectIDs pushback 524;
	_this setPosWorld [15302.4,17387.4,19.2846];
	_this setVectorDirAndUp [[0.757941,-0.652323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item525 = objNull;
if (_layer498) then {
	_item525 = createSimpleObject ["Land_IntravenStand_01_empty_F",[15298.9,17389.7,18.3679]];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [15298.9,17389.7,19.2993];
	_this setVectorDirAndUp [[0.757941,-0.652323,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item526 = objNull;
if (_layer498) then {
	_item526 = createSimpleObject ["Land_PainKillers_F",[15306.4,17394.4,19.1713]];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [15306.4,17394.4,19.2138];
	_this setVectorDirAndUp [[-0.944708,0.327914,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item527 = objNull;
if (_layer498) then {
	_item527 = createSimpleObject ["Land_PlasticBucket_01_closed_F",[15299.5,17393.2,18.3615]];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [15299.5,17393.2,18.5842];
	_this setVectorDirAndUp [[-0.999206,-0.0398354,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item528 = objNull;
if (_layer498) then {
	_item528 = createSimpleObject ["Land_PlasticBucket_01_closed_F",[15298.7,17398.7,20.8658]];
	_this = _item528;
	_objects pushback _this;
	_objectIDs pushback 528;
	_this setPosWorld [15298.7,17398.7,21.0885];
	_this setVectorDirAndUp [[0.993993,0.10944,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item529 = objNull;
if (_layer498) then {
	_item529 = createSimpleObject ["Land_PlasticBucket_01_open_F",[15294.6,17390.4,18.4869]];
	_this = _item529;
	_objects pushback _this;
	_objectIDs pushback 529;
	_this setPosWorld [15294.6,17390.4,18.7097];
	_this setVectorDirAndUp [[-0.489124,0.872214,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item530 = objNull;
if (_layer498) then {
	_item530 = createSimpleObject ["Land_PlasticCase_01_medium_idap_F",[15298.8,17397.8,20.8658]];
	_this = _item530;
	_objects pushback _this;
	_objectIDs pushback 530;
	_this setPosWorld [15298.8,17397.8,21.0599];
	_this setVectorDirAndUp [[-0.967192,0.254045,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item531 = objNull;
if (_layer498) then {
	_item531 = createSimpleObject ["Land_PlasticCase_01_small_gray_F",[15299.7,17397.5,20.8658]];
	_this = _item531;
	_objects pushback _this;
	_objectIDs pushback 531;
	_this setPosWorld [15299.7,17397.5,21.0225];
	_this setVectorDirAndUp [[-0.672793,0.739831,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item532 = objNull;
if (_layer498) then {
	_item532 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17417.3,-5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item532;
	_objects pushback _this;
	_objectIDs pushback 532;
	_this setPosWorld [15282.8,17417.3,17.899];
	_this setVectorDirAndUp [[0,0.999986,-0.0053265],[0.00932853,0.00532627,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item533 = objNull;
if (_layer498) then {
	_item533 = createVehicle ["PortableHelipadLight_01_red_F",[15290.5,17409.9,1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item533;
	_objects pushback _this;
	_objectIDs pushback 533;
	_this setPosWorld [15290.5,17409.9,17.8503];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.0146639,0.00799259,0.999861]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item534 = objNull;
if (_layer498) then {
	_item534 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17402,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item534;
	_objects pushback _this;
	_objectIDs pushback 534;
	_this setPosWorld [15282.8,17402,17.9739];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item535 = objNull;
if (_layer498) then {
	_item535 = createVehicle ["PortableHelipadLight_01_red_F",[15275,17409.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item535;
	_objects pushback _this;
	_objectIDs pushback 535;
	_this setPosWorld [15275,17409.7,17.9845];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item536 = objNull;
if (_layer498) then {
	_item536 = createVehicle ["PortableHelipadLight_01_yellow_F",[15282.9,17409.7,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item536;
	_objects pushback _this;
	_objectIDs pushback 536;
	_this setPosWorld [15282.9,17409.7,17.943];
	_this setVectorDirAndUp [[0,0.999978,-0.00666818],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item537 = objNull;
if (_layer498) then {
	_item537 = createVehicle ["Land_PortableCabinet_01_medical_F",[15308.2,17394.1,0.848061],[],0,"CAN_COLLIDE"];
	_this = _item537;
	_objects pushback _this;
	_objectIDs pushback 537;
	_this setPosWorld [15308.2,17394.1,18.8998];
	_this setVectorDirAndUp [[0.625427,0.780283,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this animate ['Drawer_1_move_source',0,true];
	_this animate ['Drawer_2_move_source',0,true];
	_this animate ['Drawer_3_move_source',0,true];
	_this animate ['Drawer_4_move_source',0,true];
	_this animate ['Drawer_5_move_source',0,true];
	_this animate ['Drawer_6_move_source',0,true];
	_this animate ['Drawer_1_hide_source',0,true];
	_this animate ['Drawer_2_hide_source',0,true];
	_this animate ['Drawer_3_hide_source',0,true];
	_this animate ['Drawer_4_hide_source',0,true];
	_this animate ['Drawer_5_hide_source',0,true];
	_this animate ['Drawer_6_hide_source',0,true];
};

private _item538 = objNull;
if (_layer498) then {
	_item538 = createSimpleObject ["Land_Stethoscope_01_F",[15305.3,17395.1,19.1686]];
	_this = _item538;
	_objects pushback _this;
	_objectIDs pushback 538;
	_this setPosWorld [15305.3,17395.1,19.1843];
	_this setVectorDirAndUp [[0.998497,-0.0548137,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item539 = objNull;
if (_layer498) then {
	_item539 = createSimpleObject ["Land_Stretcher_01_F",[15302,17388,18.3532]];
	_this = _item539;
	_objects pushback _this;
	_objectIDs pushback 539;
	_this setPosWorld [15302,17388,18.5948];
	_this setVectorDirAndUp [[0.691097,0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item540 = objNull;
if (_layer498) then {
	_item540 = createSimpleObject ["Land_Stretcher_01_F",[15298.4,17393.2,18.3615]];
	_this = _item540;
	_objects pushback _this;
	_objectIDs pushback 540;
	_this setPosWorld [15298.4,17393.2,18.6031];
	_this setVectorDirAndUp [[-0.722762,0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item541 = objNull;
if (_layer498) then {
	_item541 = createSimpleObject ["Land_Stretcher_01_F",[15297.5,17392.2,18.3615]];
	_this = _item541;
	_objects pushback _this;
	_objectIDs pushback 541;
	_this setPosWorld [15297.5,17392.2,18.6031];
	_this setVectorDirAndUp [[-0.722762,0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item542 = objNull;
if (_layer498) then {
	_item542 = createSimpleObject ["Land_Stretcher_01_F",[15299,17390.9,18.3532]];
	_this = _item542;
	_objects pushback _this;
	_objectIDs pushback 542;
	_this setPosWorld [15299,17390.9,18.5948];
	_this setVectorDirAndUp [[-0.691097,-0.722762,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item543 = objNull;
if (_layer498) then {
	_item543 = createSimpleObject ["Land_Stretcher_01_folded_F",[15294.7,17391,18.4874]];
	_this = _item543;
	_objects pushback _this;
	_objectIDs pushback 543;
	_this setPosWorld [15294.7,17391,18.5553];
	_this setVectorDirAndUp [[-0.993136,0.116965,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item544 = objNull;
if (_layer498) then {
	_item544 = createSimpleObject ["Land_WaterBottle_01_pack_F",[15305.8,17395,19.1666]];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [15305.8,17395,19.2974];
	_this setVectorDirAndUp [[-0.546719,-0.837316,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item545 = objNull;
if (_layer498) then {
	_item545 = createSimpleObject ["Land_WaterBottle_01_pack_F",[15305.5,17395.3,19.1646]];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [15305.5,17395.3,19.2954];
	_this setVectorDirAndUp [[0.667284,-0.744803,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item548 = objNull;
if (_layerRoot) then {
	_item548 = createVehicle ["Land_CampingChair_V2_white_F",[15220.2,17329,0.563881],[],0,"CAN_COLLIDE"];
	_this = _item548;
	_objects pushback _this;
	_objectIDs pushback 548;
	_this setPosWorld [15220.2,17329,19.0577];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000490924],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item549 = objNull;
if (_layerRoot) then {
	_item549 = createVehicle ["Land_CampingChair_V2_white_F",[15219.5,17329.8,0.566322],[],0,"CAN_COLLIDE"];
	_this = _item549;
	_objects pushback _this;
	_objectIDs pushback 549;
	_this setPosWorld [15219.5,17329.8,19.0582];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000490924],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item550 = objNull;
if (_layerRoot) then {
	_item550 = createVehicle ["Land_CampingChair_V2_white_F",[15222,17329.2,0.55938],[],0,"CAN_COLLIDE"];
	_this = _item550;
	_objects pushback _this;
	_objectIDs pushback 550;
	_this setPosWorld [15222,17329.2,19.0563];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000490924],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item551 = objNull;
if (_layerRoot) then {
	_item551 = createVehicle ["Land_CampingChair_V2_white_F",[15220,17331.6,0.566792],[],0,"CAN_COLLIDE"];
	_this = _item551;
	_objects pushback _this;
	_objectIDs pushback 551;
	_this setPosWorld [15220,17331.6,19.0578];
	_this setVectorDirAndUp [[-0.838642,-0.544683,0.000579111],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item552 = objNull;
if (_layerRoot) then {
	_item552 = createVehicle ["Land_CampingChair_V2_white_F",[15221.4,17329.9,0.56171],[],0,"CAN_COLLIDE"];
	_this = _item552;
	_objects pushback _this;
	_objectIDs pushback 552;
	_this setPosWorld [15221.4,17329.9,19.0568];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000490924],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item553 = objNull;
if (_layerRoot) then {
	_item553 = createVehicle ["Land_CampingChair_V2_white_F",[15220.7,17330.7,0.564293],[],0,"CAN_COLLIDE"];
	_this = _item553;
	_objects pushback _this;
	_objectIDs pushback 553;
	_this setPosWorld [15220.7,17330.7,19.0574];
	_this setVectorDirAndUp [[-0.710934,-0.703258,0.000490924],[0.000690534,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item556 = objNull;
if (_layerRoot) then {
	_item556 = _item554 createUnit ["B_Helipilot_F",[15158,17265.7,0],[],0,"CAN_COLLIDE"];
	_item554 selectLeader _item556;
	_this = _item556;
	_objects pushback _this;
	_objectIDs pushback 556;
	_this setPosWorld [15161.3,17261.5,19.0716];
	_this setVectorDirAndUp [[0.537315,-0.843381,0.00108926],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Shawn Thompson";;
	_this setface "WhiteHead_11";;
	_this setspeaker "Male06ENG";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item557 = objNull;
if (_layerRoot) then {
	_item557 = _item554 createUnit ["B_Helipilot_F",[15158,17265.7,0],[],0,"CAN_COLLIDE"];
	_this = _item557;
	_objects pushback _this;
	_objectIDs pushback 557;
	_this setPosWorld [15160.3,17261,19.0724];
	_this setVectorDirAndUp [[0.537315,-0.843381,0.00108926],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Lewis Watson";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male05eng";;
	_this setpitch 1.0272;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item558 = objNull;
if (_layerRoot) then {
	_item558 = _item554 createUnit ["B_helicrew_F",[15158,17265.7,0],[],0,"CAN_COLLIDE"];
	_this = _item558;
	_objects pushback _this;
	_objectIDs pushback 558;
	_this setPosWorld [15160.4,17262.8,19.1478];
	_this setVectorDirAndUp [[0.537315,-0.843381,0.00108926],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Gillis Brown";;
	_this setface "WhiteHead_05";;
	_this setspeaker "male11eng";;
	_this setpitch 1.00996;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item559 = objNull;
if (_layerRoot) then {
	_item559 = _item554 createUnit ["B_helicrew_F",[15158,17265.7,0],[],0,"CAN_COLLIDE"];
	_this = _item559;
	_objects pushback _this;
	_objectIDs pushback 559;
	_this setPosWorld [15159.6,17262.4,19.1485];
	_this setVectorDirAndUp [[0.537315,-0.843381,0.00108926],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Henry Wright";;
	_this setface "WhiteHead_20";;
	_this setspeaker "male10eng";;
	_this setpitch 0.973646;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
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

private _item555 = objNull;
if (_layerRoot) then {
	_item555 = createVehicle ["B_Heli_Transport_01_F",[15158,17265.7,0],[],0,"CAN_COLLIDE"];
	_this = _item555;
	_objects pushback _this;
	_objectIDs pushback 555;
	_this setPosWorld [15158,17265.7,20.0483];
	_this setVectorDirAndUp [[0.537315,-0.843381,0.00108926],[0,0.00129154,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""arifle_MXC_F"",""FirstAidKit"",""Medikit""],[2,8,1]],[[""SmokeShell"",""SmokeShellBlue"",""30Rnd_65x39_caseless_mag""],[2,2,4]],[[""ToolKit"",""ItemGPS""],[1,1]],[[""B_Parachute""],[8]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitengine1"",""hitengine2"",""hitengine"",""hithrotor"",""hitvrotor"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitwinch"",""hittransmission"",""hitlight"",""hithydraulics"",""hitgear"",""hithstabilizerl1"",""hithstabilizerr1"",""hitvstabilizer1"",""hittail"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	if (false) then {[_this] call ace_fastroping_fnc_equipFRIES};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item71 = objNull;
if (_layerRoot) then {
	_item71 = createTrigger ["EmptyDetectorArea10x10",[15299.4,17526.9,0],true];
	_this = _item71;
	_triggers pushback _this;
	_triggerIDs pushback 71;
	_item71 setPosATL [15299.4,17526.9,0];
	_this setTriggerArea [5,23,44.51,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item396 = objNull;
if (_layer181) then {
	_item396 = createTrigger ["EmptyDetectorAreaR50",[14760.4,16093.8,0],true];
	_this = _item396;
	_triggers pushback _this;
	_triggerIDs pushback 396;
	_item396 setPosATL [14760.4,16093.8,0];
	_this setTriggerArea [60,60,139.154,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{player allowDamage false; player setCaptive true;}","call{player allowDamage true; player setCaptive false;}"];
};

private _item397 = objNull;
if (_layer181) then {
	_item397 = createTrigger ["EmptyDetectorArea10x10",[14740.2,16111.8,0],false];
	_this = _item397;
	_triggers pushback _this;
	_triggerIDs pushback 397;
	_item397 setPosATL [14740.2,16111.8,0];
	_this setTriggerArea [18,13.5,313.65,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};

private _item449 = objNull;
if (_layer448 && _layer446) then {
	_item449 = createTrigger ["EmptyDetectorArea10x10",[15055.4,17308.1,0],true];
	_this = _item449;
	_triggers pushback _this;
	_triggerIDs pushback 449;
	_item449 setPosATL [15055.4,17308.1,0];
	_this setTriggerArea [10,10,-136.365,true,5];
	repStation = _this;
};

private _item546 = objNull;
if (_layer498) then {
	_item546 = createTrigger ["EmptyDetectorArea10x10",[15301.8,17393.5,0],true];
	_this = _item546;
	_triggers pushback _this;
	_triggerIDs pushback 546;
	_item546 setPosATL [15301.8,17393.5,0];
	_this setTriggerArea [5,5,134.759,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You heave been fully healed"";  
}",""];
	_this setTriggerTimeout [3,3,3,true];
		aceHealer = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item73;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Kilo 3"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	      //if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item83;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Kilo 2"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	     // if (!is3DEN && !(["","ColorWEST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item149;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	     // if (!is3DEN && !(["","ColorWEST","Alpha 1-4",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-4",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-4",true]'];          ["","ColorWEST","Alpha 1-4",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-4",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-4",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item160;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Logi"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	     // if (!is3DEN && !(["","ColorWEST","Alpha 1-5",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-5",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-5",true]'];          ["","ColorWEST","Alpha 1-5",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-5",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-5",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item419;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Range Master"] call CBA_fnc_setCallsign;
	    //  if (!is3DEN && !(["","ColorWEST","Alpha 2-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 2-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 2-1",true]'];          ["","ColorWEST","Alpha 2-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 2-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 2-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item423;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 2-2"] call CBA_fnc_setCallsign;
	    //  if (!is3DEN && !(["","ColorWEST","Alpha 2-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 2-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 2-2",true]'];          ["","ColorWEST","Alpha 2-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 2-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 2-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item554;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "November"] call CBA_fnc_setCallsign;
	     // if (!is3DEN && !(["","ColorWEST","Alpha 1-3",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-3",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-3",true]'];          ["","ColorWEST","Alpha 1-3",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-3",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-3",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item78 = objNull;
if (_layerRoot) then {
	_item78 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15295.5,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_logics pushback _this;
	_logicIDs pushback 78;
	_this setPosWorld [15295.5,17532.3,16.5773];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15280.9,17389.1,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_logics pushback _this;
	_logicIDs pushback 118;
	_this setPosWorld [15280.9,17389.1,17.9];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00265199,0.00265203,0.999993]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15276.1,17420,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_logics pushback _this;
	_logicIDs pushback 119;
	_this setPosWorld [15276.1,17420,17.8292];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15265,17413.7,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_logics pushback _this;
	_logicIDs pushback 120;
	_this setPosWorld [15265,17413.7,17.8884];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item156 = objNull;
if (_layerRoot) then {
	_item156 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_logics pushback _this;
	_logicIDs pushback 156;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Owner',"gm",true];;
	_this setVariable ['Name',"Game Master",true];;
	_this setVariable ['Addons',3,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item157 = objNull;
if (_layerRoot) then {
	_item157 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_logics pushback _this;
	_logicIDs pushback 157;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Owner',"gmod",true];;
	_this setVariable ['Name',"Game Moderator",true];;
	_this setVariable ['Addons',3,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item158 = objNull;
if (_layerRoot) then {
	_item158 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCuratorAddEditableObjects",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_logics pushback _this;
	_logicIDs pushback 158;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Curator',"",true];;
	_this setVariable ['AddCrew',true,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item159 = objNull;
if (_layerRoot) then {
	_item159 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleEditTerrainObject_F",[15214.9,17329,0],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_logics pushback _this;
	_logicIDs pushback 159;
	_this setPosWorld [15214.9,17329,17.9731];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[1,1,0,false,-1]];
	_this setVariable ["#name",""];
	_this setVariable ["#initServer",""];
	_this setVariable ["#init",""];
	_this setVariable ["#filter",7];
	_this setVariable ["#state",0];
	_this setVariable ["#allowDamage",true];
	_this setVariable ["#doorStates",[21824,0,0]];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item164 = objNull;
if (_layerRoot) then {
	_item164 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCuratorAddEditableObjects",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_logics pushback _this;
	_logicIDs pushback 164;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Curator',"",true];;
	_this setVariable ['AddCrew',true,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item371 = objNull;
if (_layer370 && _layer181) then {
	_item371 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14758.6,16116.1,0],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_logics pushback _this;
	_logicIDs pushback 371;
	_this setPosWorld [14758.6,16116.1,19.1357];
	_this setVectorDirAndUp [[0.554007,-0.832512,-0.000355982],[0.00265199,0.00133721,0.999996]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item400 = objNull;
if (_layerRoot) then {
	_item400 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14756.3,16127.6,0],[],0,"CAN_COLLIDE"];
	_this = _item400;
	_logics pushback _this;
	_logicIDs pushback 400;
	_this setPosWorld [14756.3,16127.6,19.0892];
	_this setVectorDirAndUp [[0,0.999928,-0.0120076],[0,0.0120076,0.999928]];
	sh_end = _this;
	_this setVehicleVarName "sh_end";
};

private _item561 = objNull;
if (_layer498) then {
	_item561 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15307,17393.2,0.694321],[],0,"CAN_COLLIDE"];
	_this = _item561;
	_logics pushback _this;
	_logicIDs pushback 561;
	_this setPosWorld [15307,17393.2,18.3621];
	_this setVectorDirAndUp [[0,0.999934,-0.0115015],[-0.00511379,0.0115013,0.999921]];
};

private _item563 = objNull;
if (_layerRoot) then {
	_item563 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15183.7,17300,0],[],0,"CAN_COLLIDE"];
	_this = _item563;
	_logics pushback _this;
	_logicIDs pushback 563;
	_this setPosWorld [15183.7,17300,17.9182];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer498) then {missionNamespace setVariable ["nato_Hospital",[[_item499,_item500,_item501,_item502,_item503,_item504,_item505,_item506,_item507,_item508,_item509,_item510,_item511,_item512,_item513,_item514,_item515,_item516,_item517,_item518,_item519,_item520,_item521,_item522,_item523,_item524,_item525,_item526,_item527,_item528,_item529,_item530,_item531,_item532,_item533,_item534,_item535,_item536,_item537,_item538,_item539,_item540,_item541,_item542,_item543,_item544,_item545,_item546,_item561],[]]];};
if (_layer464) then {missionNamespace setVariable ["nato_Canteen #1",[[_item465,_item466,_item467,_item468,_item469,_item470,_item471,_item472,_item473,_item474,_item475,_item476,_item477,_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496,_item497],[]]];};
if (_layer452) then {missionNamespace setVariable ["nato_Armory",[[_item453,_item454,_item455,_item456,_item457,_item458,_item459,_item460,_item461,_item462,_item463],[]]];};
if (_layer450) then {missionNamespace setVariable ["nato_Base",[[_item451,_item453,_item454,_item455,_item456,_item457,_item458,_item459,_item460,_item461,_item462,_item463,_item465,_item466,_item467,_item468,_item469,_item470,_item471,_item472,_item473,_item474,_item475,_item476,_item477,_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496,_item497],[]]];};
if (_layer448) then {missionNamespace setVariable ["nato_Repair Station_1",[[_item449],[]]];};
if (_layer446) then {missionNamespace setVariable ["nato_Repair Station",[[_item447,_item449],[]]];};
if (_layer401) then {missionNamespace setVariable ["nato_AT Range",[[_item402,_item403,_item404,_item405],[]]];};
if (_layer370) then {missionNamespace setVariable ["nato_Spawns",[[_item371],[]]];};
if (_layer350) then {missionNamespace setVariable ["nato_Shoothouse Targets",[[_item351,_item352,_item353,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369],[]]];};
if (_layer181) then {missionNamespace setVariable ["nato_Shoothouse",[[_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item198,_item199,_item200,_item201,_item202,_item203,_item204,_item205,_item206,_item207,_item208,_item209,_item210,_item211,_item212,_item213,_item214,_item215,_item216,_item217,_item218,_item219,_item220,_item221,_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item318,_item319,_item320,_item321,_item322,_item323,_item324,_item325,_item326,_item327,_item328,_item329,_item330,_item331,_item332,_item333,_item334,_item335,_item336,_item337,_item338,_item339,_item340,_item341,_item342,_item343,_item344,_item345,_item346,_item347,_item348,_item349,_item351,_item352,_item353,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item371,_item372,_item373,_item374,_item375,_item376,_item377,_item378,_item379,_item380,_item381,_item382,_item383,_item384,_item385,_item386,_item387,_item388,_item389,_item390,_item391,_item392,_item393,_item394,_item395,_item396,_item397,_item398],[]]];};
if (_layer54) then {missionNamespace setVariable ["nato_Checkpoint [BLU]",[[_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item556 && !isNull _item555) then {_item556 moveInDriver _item555;};
if (!isNull _item557 && !isNull _item555) then {_item557 moveInTurret [_item555,[0]];};
if (!isNull _item558 && !isNull _item555) then {_item558 moveInTurret [_item555,[1]];};
if (!isNull _item559 && !isNull _item555) then {_item559 moveInTurret [_item555,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections
if (!isNull _item156 && !isNull _item158) then {_item156 synchronizeObjectsAdd [_item158]; _item158 synchronizeObjectsAdd [_item156];};
if (!isNull _item157 && !isNull _item164) then {_item157 synchronizeObjectsAdd [_item164]; _item164 synchronizeObjectsAdd [_item157];};


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item402) then {
		this = _item402;
		call{this addAction ["PULL","scripts\launch_skeet.sqf"];};
	};
	if !(isnull _item447) then {
		this = _item447;
		call{repStation = this;};
	};
	if !(isnull _item455) then {
		this = _item455;
		call{arsenals pushBack this};
	};
	if !(isnull _item459) then {
		this = _item459;
		call{[this, false] call ace_dragging_fnc_setCarryable; [this, false] call ace_dragging_fnc_setDraggable; arsenals pushBack this;};
	};
	if !(isnull _item462) then {
		this = _item462;
		call{[this, false] call ace_dragging_fnc_setCarryable; [this, false] call ace_dragging_fnc_setDraggable; arsenals pushBack this;};
	};
	if !(isnull _item561) then {
		this = _item561;
		call{if (isServer) then {_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item78) then {_item78 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item118) then {_item118 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item119) then {_item119 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item120) then {_item120 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item156) then {_item156 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item157) then {_item157 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item158) then {_item158 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item159) then {_item159 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item164) then {_item164 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
