// Export of 'us_army_d.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer508 = (_allWhitelisted || {"spawn medic crate" in _layerWhiteList}) && {!("spawn medic crate" in _layerBlackList)};
private _layer441 = (_allWhitelisted || {"at range" in _layerWhiteList}) && {!("at range" in _layerBlackList)};
private _layer410 = (_allWhitelisted || {"spawns" in _layerWhiteList}) && {!("spawns" in _layerBlackList)};
private _layer390 = (_allWhitelisted || {"shoothouse targets" in _layerWhiteList}) && {!("shoothouse targets" in _layerBlackList)};
private _layer221 = (_allWhitelisted || {"shoothouse" in _layerWhiteList}) && {!("shoothouse" in _layerBlackList)};
private _layer142 = (_allWhitelisted || {"medical laboratory [blu]" in _layerWhiteList}) && {!("medical laboratory [blu]" in _layerBlackList)};
private _layer81 = (_allWhitelisted || {"checkpoint [blu]" in _layerWhiteList}) && {!("checkpoint [blu]" in _layerBlackList)};
private _layer24 = (_allWhitelisted || {"canteen #1" in _layerWhiteList}) && {!("canteen #1" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item141 = "";
if (_layerRoot) then {
	_item141 = createMarker ["marker_0",[15055.2,17309,0]];
	_this = _item141;
	_markers pushback _this;
	_markerIDs pushback 141;
	_this setMarkerType "b_maint";
	_this setMarkerText "Service";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
	_this setMarkerAlpha 0.752866;
};

private _item158 = "";
if (_layerRoot) then {
	_item158 = createMarker ["marker_1",[15301.7,17392.3,0]];
	_this = _item158;
	_markers pushback _this;
	_markerIDs pushback 158;
	_this setMarkerType "b_med";
	_this setMarkerText "Medical";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
	_this setMarkerAlpha 0.752866;
};

private _item159 = "";
if (_layerRoot) then {
	_item159 = createMarker ["marker",[15196.1,17308.5,0]];
	_this = _item159;
	_markers pushback _this;
	_markerIDs pushback 159;
	_this setMarkerType "b_hq";
	_this setMarkerText "Shafter Joint-AB";
	_this setMarkerShape "ICON";
	_this setMarkerAlpha 0.752866;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item187 = grpNull;
if (_layerRoot) then {
	_item187 = createGroup west;
	_this = _item187;
	_groups pushback _this;
	_groupIDs pushback 187;
};

private _item460 = grpNull;
if (_layerRoot) then {
	_item460 = createGroup west;
	_this = _item460;
	_groups pushback _this;
	_groupIDs pushback 460;
};

private _item540 = grpNull;
if (_layerRoot) then {
	_item540 = createGroup west;
	_this = _item540;
	_groups pushback _this;
	_groupIDs pushback 540;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item12 = objNull;
if (_layerRoot) then {
	_item12 = createVehicle ["Land_HelipadSquare_F",[15136.2,17287.5,0],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [15136.2,17287.5,17.7729];
	_this setVectorDirAndUp [[-0.712611,0.7014,0.0149417],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
};

private _item13 = objNull;
if (_layerRoot) then {
	_item13 = createVehicle ["Land_HelipadSquare_F",[15158.7,17266.1,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item13;
	_objects pushback _this;
	_objectIDs pushback 13;
	_this setPosWorld [15158.7,17266.1,17.9085];
	_this setVectorDirAndUp [[-0.720575,0.693377,-0.000895754],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item14 = objNull;
if (_layerRoot) then {
	_item14 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.1,17295.5,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item14;
	_objects pushback _this;
	_objectIDs pushback 14;
	_this setPosWorld [15136.1,17295.5,17.9634];
	_this setVectorDirAndUp [[0,0.999996,0.00265199],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item15 = objNull;
if (_layerRoot) then {
	_item15 = createVehicle ["PortableHelipadLight_01_blue_F",[15144.1,17287.6,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item15;
	_objects pushback _this;
	_objectIDs pushback 15;
	_this setPosWorld [15144.1,17287.6,17.9172];
	_this setVectorDirAndUp [[0,0.999956,0.00932853],[-0.0093285,-0.00932813,0.999913]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item16 = objNull;
if (_layerRoot) then {
	_item16 = createVehicle ["PortableHelipadLight_01_blue_F",[15136.2,17279.6,4.19617e-005],[],0,"CAN_COLLIDE"];
	_this = _item16;
	_objects pushback _this;
	_objectIDs pushback 16;
	_this setPosWorld [15136.2,17279.6,17.9279];
	_this setVectorDirAndUp [[0,0.999304,-0.0373063],[0.0306514,0.0372888,0.998834]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item17 = objNull;
if (_layerRoot) then {
	_item17 = createVehicle ["PortableHelipadLight_01_blue_F",[15128.2,17287.4,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item17;
	_objects pushback _this;
	_objectIDs pushback 17;
	_this setPosWorld [15128.2,17287.4,17.9174];
	_this setVectorDirAndUp [[0,0.999956,-0.0093285],[0.00532655,0.00932837,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = createVehicle ["PortableHelipadLight_01_green_F",[15136.4,17287.3,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_objects pushback _this;
	_objectIDs pushback 18;
	_this setPosWorld [15136.4,17287.3,17.8785];
	_this setVectorDirAndUp [[0,0.999712,0.023991],[-0.00265204,-0.0239909,0.999709]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item19 = objNull;
if (_layerRoot) then {
	_item19 = createVehicle ["PortableHelipadLight_01_yellow_F",[15166.6,17266.3,0],[],0,"CAN_COLLIDE"];
	_this = _item19;
	_objects pushback _this;
	_objectIDs pushback 19;
	_this setPosWorld [15166.6,17266.3,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.5,17274.1,0],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [15158.5,17274.1,18.0099];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item21 = objNull;
if (_layerRoot) then {
	_item21 = createVehicle ["PortableHelipadLight_01_yellow_F",[15150.6,17266,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [15150.6,17266,18.0181];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = createVehicle ["PortableHelipadLight_01_yellow_F",[15158.9,17258.2,0],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [15158.9,17258.2,18.0207];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = createVehicle ["PortableHelipadLight_01_green_F",[15159,17265.8,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [15159,17265.8,18.0196];
	_this setVectorDirAndUp [[0.819687,-0.572811,0.000739998],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item25 = objNull;
if (_layer24) then {
	_item25 = createVehicle ["Land_Garbage_square5_F",[15148.6,17340.1,0],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [15148.6,17340.1,17.8678];
	_this setVectorDirAndUp [[0.893348,-0.449264,0.00954095],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item26 = objNull;
if (_layer24) then {
	_item26 = createSimpleObject ["Land_GarbageContainer_open_F",[15154.9,17338.9,17.8544]];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [15154.9,17338.9,18.5929];
	_this setVectorDirAndUp [[0.835798,0.549035,0.0014824],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item27 = objNull;
if (_layer24) then {
	_item27 = createSimpleObject ["Land_Sink_F",[15151.2,17334.4,17.8507]];
	_this = _item27;
	_objects pushback _this;
	_objectIDs pushback 27;
	_this setPosWorld [15151.2,17334.4,18.4684];
	_this setVectorDirAndUp [[0.65373,-0.756723,0.00274563],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item28 = objNull;
if (_layer24) then {
	_item28 = createSimpleObject ["Land_CampingTable_F",[15149.5,17337.1,17.84]];
	_this = _item28;
	_objects pushback _this;
	_objectIDs pushback 28;
	_this setPosWorld [15149.5,17337.1,18.2515];
	_this setVectorDirAndUp [[-0.681751,-0.73157,-0.00447653],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item29 = objNull;
if (_layer24) then {
	_item29 = createSimpleObject ["Land_CampingTable_F",[15148.7,17339,17.831]];
	_this = _item29;
	_objects pushback _this;
	_objectIDs pushback 29;
	_this setPosWorld [15148.7,17339,18.2425];
	_this setVectorDirAndUp [[0.685203,0.728338,0.00450848],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item30 = objNull;
if (_layer24) then {
	_item30 = createSimpleObject ["Land_CampingTable_F",[15150.1,17337.7,17.8432]];
	_this = _item30;
	_objects pushback _this;
	_objectIDs pushback 30;
	_this setPosWorld [15150.1,17337.7,18.2548];
	_this setVectorDirAndUp [[0.672007,0.740544,0.000791933],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item31 = objNull;
if (_layer24) then {
	_item31 = createSimpleObject ["Land_CampingTable_F",[15148.1,17338.4,17.8273]];
	_this = _item31;
	_objects pushback _this;
	_objectIDs pushback 31;
	_this setPosWorld [15148.1,17338.4,18.2388];
	_this setVectorDirAndUp [[-0.672698,-0.739904,-0.00439296],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item32 = objNull;
if (_layer24) then {
	_item32 = createVehicle ["Land_CratesShabby_F",[15153.6,17338.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item32;
	_objects pushback _this;
	_objectIDs pushback 32;
	_this setPosWorld [15153.6,17338.7,18.6113];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item33 = objNull;
if (_layer24) then {
	_item33 = createSimpleObject ["Land_WheelieBin_01_F",[15153.6,17339.5,17.8503]];
	_this = _item33;
	_objects pushback _this;
	_objectIDs pushback 33;
	_this setPosWorld [15153.6,17339.5,18.3673];
	_this setVectorDirAndUp [[-0.449346,-0.893358,2.91935e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item34 = objNull;
if (_layer24) then {
	_item34 = createSimpleObject ["Land_WaterCooler_01_old_F",[15152.8,17338.4,17.8496]];
	_this = _item34;
	_objects pushback _this;
	_objectIDs pushback 34;
	_this setPosWorld [15152.8,17338.4,18.5816];
	_this setVectorDirAndUp [[0.449401,0.89333,-2.73832e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item35 = objNull;
if (_layer24) then {
	_item35 = createVehicle ["Land_CratesPlastic_F",[15154.1,17337.9,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item35;
	_objects pushback _this;
	_objectIDs pushback 35;
	_this setPosWorld [15154.1,17337.9,18.0862];
	_this setVectorDirAndUp [[0.314002,-0.94942,0.00210233],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item36 = objNull;
if (_layer24) then {
	_item36 = createVehicle ["Land_Garbage_square5_F",[15152.4,17337.1,0],[],0,"CAN_COLLIDE"];
	_this = _item36;
	_objects pushback _this;
	_objectIDs pushback 36;
	_this setPosWorld [15152.4,17337.1,17.8898];
	_this setVectorDirAndUp [[0.893373,-0.449305,0.00297009],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item37 = objNull;
if (_layer24) then {
	_item37 = createSimpleObject ["Land_CampingTable_F",[15156.4,17333.8,17.8652]];
	_this = _item37;
	_objects pushback _this;
	_objectIDs pushback 37;
	_this setPosWorld [15156.4,17333.8,18.2768];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item38 = objNull;
if (_layer24) then {
	_item38 = createSimpleObject ["Land_BarrelTrash_grey_F",[15145.9,17335.2,17.8172]];
	_this = _item38;
	_objects pushback _this;
	_objectIDs pushback 38;
	_this setPosWorld [15145.9,17335.2,18.222];
	_this setVectorDirAndUp [[0.893362,-0.44929,0.00655431],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
};

private _item39 = objNull;
if (_layer24) then {
	_item39 = createSimpleObject ["Land_CampingTable_F",[15156.8,17333.2,17.8671]];
	_this = _item39;
	_objects pushback _this;
	_objectIDs pushback 39;
	_this setPosWorld [15156.8,17333.2,18.2787];
	_this setVectorDirAndUp [[0.549032,-0.835797,0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item40 = objNull;
if (_layer24) then {
	_item40 = createSimpleObject ["Land_CampingTable_F",[15155.2,17332.2,17.8639]];
	_this = _item40;
	_objects pushback _this;
	_objectIDs pushback 40;
	_this setPosWorld [15155.2,17332.2,18.2754];
	_this setVectorDirAndUp [[0.549789,-0.835302,0.00145807],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item41 = objNull;
if (_layer24) then {
	_item41 = createSimpleObject ["Land_CampingTable_F",[15154.8,17332.8,17.8624]];
	_this = _item41;
	_objects pushback _this;
	_objectIDs pushback 41;
	_this setPosWorld [15154.8,17332.8,18.274];
	_this setVectorDirAndUp [[-0.549031,0.835798,-0.0025737],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item42 = objNull;
if (_layer24) then {
	_item42 = createVehicle ["Land_Garbage_square5_F",[15156.1,17332.1,0],[],0,"CAN_COLLIDE"];
	_this = _item42;
	_objects pushback _this;
	_objectIDs pushback 42;
	_this setPosWorld [15156.1,17332.1,17.9056];
	_this setVectorDirAndUp [[0.893373,-0.449309,0.00236927],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item43 = objNull;
if (_layer24) then {
	_item43 = createSimpleObject ["Land_CampingChair_V2_F",[15148.6,17336.7,17.8333]];
	_this = _item43;
	_objects pushback _this;
	_objectIDs pushback 43;
	_this setPosWorld [15148.6,17336.7,18.3398];
	_this setVectorDirAndUp [[-0.448689,-0.893685,-0.00239499],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item44 = objNull;
if (_layer24) then {
	_item44 = createSimpleObject ["Land_CampingChair_V2_F",[15148,17337.6,17.8273]];
	_this = _item44;
	_objects pushback _this;
	_objectIDs pushback 44;
	_this setPosWorld [15148,17337.6,18.3338];
	_this setVectorDirAndUp [[-0.665214,-0.746641,-0.00432406],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item45 = objNull;
if (_layer24) then {
	_item45 = createSimpleObject ["Land_CampingChair_V2_F",[15147.1,17338.3,17.8189]];
	_this = _item45;
	_objects pushback _this;
	_objectIDs pushback 45;
	_this setPosWorld [15147.1,17338.3,18.3254];
	_this setVectorDirAndUp [[0.97919,-0.202782,0.00810582],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item46 = objNull;
if (_layer24) then {
	_item46 = createSimpleObject ["Land_CampingChair_V2_F",[15149,17340.2,17.831]];
	_this = _item46;
	_objects pushback _this;
	_objectIDs pushback 46;
	_this setPosWorld [15149,17340.2,18.3374];
	_this setVectorDirAndUp [[0.949397,0.314023,0.00592371],[-0.0080009,0.00532633,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item47 = objNull;
if (_layer24) then {
	_item47 = createSimpleObject ["Land_CampingChair_V2_F",[15150.8,17337.6,17.8453]];
	_this = _item47;
	_objects pushback _this;
	_objectIDs pushback 47;
	_this setPosWorld [15150.8,17337.6,18.3517];
	_this setVectorDirAndUp [[0.665219,0.746648,0.000765771],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item48 = objNull;
if (_layer24) then {
	_item48 = createSimpleObject ["Land_CampingChair_V2_F",[15149.6,17339.3,17.8378]];
	_this = _item48;
	_objects pushback _this;
	_objectIDs pushback 48;
	_this setPosWorld [15149.6,17339.3,18.3442];
	_this setVectorDirAndUp [[0.449372,0.893341,0.00240091],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item49 = objNull;
if (_layer24) then {
	_item49 = createSimpleObject ["Land_CampingChair_V2_F",[15150.4,17338.6,17.843]];
	_this = _item49;
	_objects pushback _this;
	_objectIDs pushback 49;
	_this setPosWorld [15150.4,17338.6,18.3495];
	_this setVectorDirAndUp [[0.835856,0.548947,0.00148268],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item50 = objNull;
if (_layer24) then {
	_item50 = createSimpleObject ["Land_CampingChair_V2_F",[15156.6,17334.8,17.8644]];
	_this = _item50;
	_objects pushback _this;
	_objectIDs pushback 50;
	_this setPosWorld [15156.6,17334.8,18.3709];
	_this setVectorDirAndUp [[0.202724,0.979236,-0.000771813],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item51 = objNull;
if (_layer24) then {
	_item51 = createSimpleObject ["Land_CampingChair_V2_F",[15157.5,17333,17.8692]];
	_this = _item51;
	_objects pushback _this;
	_objectIDs pushback 51;
	_this setPosWorld [15157.5,17333,18.3757];
	_this setVectorDirAndUp [[0.746635,-0.665228,0.00286967],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item52 = objNull;
if (_layer24) then {
	_item52 = createSimpleObject ["Land_CampingChair_V2_F",[15149.3,17336,17.8401]];
	_this = _item52;
	_objects pushback _this;
	_objectIDs pushback 52;
	_this setPosWorld [15149.3,17336,18.3465];
	_this setVectorDirAndUp [[-0.949413,-0.313947,-0.00717659],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item53 = objNull;
if (_layer24) then {
	_item53 = createSimpleObject ["Land_CampingChair_V2_F",[15154.7,17333.6,17.8611]];
	_this = _item53;
	_objects pushback _this;
	_objectIDs pushback 53;
	_this setPosWorld [15154.7,17333.6,18.3676];
	_this setVectorDirAndUp [[0.44926,0.893401,-3.20573e-006],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item54 = objNull;
if (_layer24) then {
	_item54 = createSimpleObject ["Land_CampingChair_V2_F",[15156.7,17332.3,17.8679]];
	_this = _item54;
	_objects pushback _this;
	_objectIDs pushback 54;
	_this setPosWorld [15156.7,17332.3,18.3744];
	_this setVectorDirAndUp [[0.549045,-0.835791,0.0014561],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item55 = objNull;
if (_layer24) then {
	_item55 = createSimpleObject ["Land_CampingChair_V2_F",[15153.8,17331.6,17.8602]];
	_this = _item55;
	_objects pushback _this;
	_objectIDs pushback 55;
	_this setPosWorld [15153.8,17331.6,18.3667];
	_this setVectorDirAndUp [[-0.893381,0.449293,-0.00236929],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item56 = objNull;
if (_layer24) then {
	_item56 = createSimpleObject ["Land_CampingChair_V2_F",[15155.1,17331.4,17.8636]];
	_this = _item56;
	_objects pushback _this;
	_objectIDs pushback 56;
	_this setPosWorld [15155.1,17331.4,18.3701];
	_this setVectorDirAndUp [[0.549116,-0.835745,0.00145629],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item57 = objNull;
if (_layer24) then {
	_item57 = createSimpleObject ["Land_CampingChair_V2_F",[15153.9,17333.1,17.8597]];
	_this = _item57;
	_objects pushback _this;
	_objectIDs pushback 57;
	_this setPosWorld [15153.9,17333.1,18.3662];
	_this setVectorDirAndUp [[-0.746689,0.665167,-0.00286973],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item58 = objNull;
if (_layer24) then {
	_item58 = createVehicle ["CamoNet_BLUFOR_open_F",[15152,17334.7,0],[],0,"CAN_COLLIDE"];
	_this = _item58;
	_objects pushback _this;
	_objectIDs pushback 58;
	_this setPosWorld [15152,17334.7,19.0203];
	_this setVectorDirAndUp [[0.691586,0.722293,0.000864022],[-0.0026529,0.0013439,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item59 = objNull;
if (_layer24) then {
	_item59 = createSimpleObject ["Land_Can_V1_F",[15149.3,17337,18.6537]];
	_this = _item59;
	_objects pushback _this;
	_objectIDs pushback 59;
	_this setPosWorld [15149.3,17337,18.6937];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item60 = objNull;
if (_layer24) then {
	_item60 = createSimpleObject ["Land_Canteen_F",[15149.8,17336.7,18.6588]];
	_this = _item60;
	_objects pushback _this;
	_objectIDs pushback 60;
	_this setPosWorld [15149.8,17336.7,18.7891];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item61 = objNull;
if (_layer24) then {
	_item61 = createSimpleObject ["Land_CerealsBox_F",[15148.8,17338.7,18.6478]];
	_this = _item61;
	_objects pushback _this;
	_objectIDs pushback 61;
	_this setPosWorld [15148.8,17338.7,18.8063];
	_this setVectorDirAndUp [[-0.973222,-0.229744,-0.00747969],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item62 = objNull;
if (_layer24) then {
	_item62 = createSimpleObject ["Land_Tableware_01_fork_F",[15149.3,17338.8,18.6519]];
	_this = _item62;
	_objects pushback _this;
	_objectIDs pushback 62;
	_this setPosWorld [15149.3,17338.8,18.6567];
	_this setVectorDirAndUp [[0.813442,0.581618,0.00573073],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item63 = objNull;
if (_layer24) then {
	_item63 = createSimpleObject ["Land_FoodContainer_01_F",[15155,17332.8,18.6786]];
	_this = _item63;
	_objects pushback _this;
	_objectIDs pushback 63;
	_this setPosWorld [15155,17332.8,18.9064];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item64 = objNull;
if (_layer24) then {
	_item64 = createSimpleObject ["Land_Ketchup_01_F",[15155.2,17332.5,18.6795]];
	_this = _item64;
	_objects pushback _this;
	_objectIDs pushback 64;
	_this setPosWorld [15155.2,17332.5,18.7826];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item65 = objNull;
if (_layer24) then {
	_item65 = createVehicle ["Land_LampHalogen_F",[15132.1,17339.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item65;
	_objects pushback _this;
	_objectIDs pushback 65;
	_this setPosWorld [15132.1,17339.7,23.5835];
	_this setVectorDirAndUp [[-0.142908,-0.989736,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item66 = objNull;
if (_layer24) then {
	_item66 = createSimpleObject ["Land_LiquidDispenser_01_F",[15157,17334.1,18.6822]];
	_this = _item66;
	_objects pushback _this;
	_objectIDs pushback 66;
	_this setPosWorld [15157,17334.1,19.057];
	_this setVectorDirAndUp [[0.854321,0.519743,0.0015707],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item67 = objNull;
if (_layer24) then {
	_item67 = createSimpleObject ["Land_Mustard_01_F",[15155.3,17332.6,18.6797]];
	_this = _item67;
	_objects pushback _this;
	_objectIDs pushback 67;
	_this setPosWorld [15155.3,17332.6,18.7829];
	_this setVectorDirAndUp [[0,1,0],[-0.00262947,0,0.999997]];
	0 remoteExec ['setFeatureType', _this];
};

private _item68 = objNull;
if (_layer24) then {
	_item68 = createSimpleObject ["Land_Tableware_01_napkin_F",[15150.2,17337.9,18.6589]];
	_this = _item68;
	_objects pushback _this;
	_objectIDs pushback 68;
	_this setPosWorld [15150.2,17337.9,18.6615];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item69 = objNull;
if (_layer24) then {
	_item69 = createSimpleObject ["Land_Tableware_01_cup_F",[15157.3,17333.9,18.6833]];
	_this = _item69;
	_objects pushback _this;
	_objectIDs pushback 69;
	_this setPosWorld [15157.3,17333.9,18.7337];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item70 = objNull;
if (_layer24) then {
	_item70 = createSimpleObject ["Land_Tableware_01_tray_F",[15149.2,17338.7,18.6507]];
	_this = _item70;
	_objects pushback _this;
	_objectIDs pushback 70;
	_this setPosWorld [15149.2,17338.7,18.6574];
	_this setVectorDirAndUp [[-0.63987,0.768459,-0.00614729],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
};

private _item71 = objNull;
if (_layer24) then {
	_item71 = createVehicle ["Camp",[15170.4,17324.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item71;
	_objects pushback _this;
	_objectIDs pushback 71;
	_this setPosWorld [15170.4,17324.6,19.0292];
	_this setVectorDirAndUp [[-0.694171,0.719804,0.00287684],[0,-0.00399666,0.999992]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item72 = objNull;
if (_layer24) then {
	_item72 = createVehicle ["Camp",[15163.9,17317.9,0],[],0,"CAN_COLLIDE"];
	_this = _item72;
	_objects pushback _this;
	_objectIDs pushback 72;
	_this setPosWorld [15163.9,17317.9,19.0225];
	_this setVectorDirAndUp [[-0.660392,0.750921,0.000852947],[0.00129158,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item73 = objNull;
if (_layer24) then {
	_item73 = createVehicle ["Camp",[15154.4,17322.2,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item73;
	_objects pushback _this;
	_objectIDs pushback 73;
	_this setPosWorld [15154.4,17322.2,19.0269];
	_this setVectorDirAndUp [[0.727602,0.685998,0.000939969],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item74 = objNull;
if (_layer24) then {
	_item74 = createVehicle ["Camp",[15146.8,17330.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item74;
	_objects pushback _this;
	_objectIDs pushback 74;
	_this setPosWorld [15146.8,17330.4,18.9969];
	_this setVectorDirAndUp [[0.727593,0.686003,0.00295825],[-0.0053265,0.00133719,0.999985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item75 = objNull;
if (_layer24) then {
	_item75 = createVehicle ["Camp",[15145.5,17348.9,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item75;
	_objects pushback _this;
	_objectIDs pushback 75;
	_this setPosWorld [15145.5,17348.9,18.9236];
	_this setVectorDirAndUp [[0.712181,-0.701889,0.0122758],[-0.0106641,0.0066678,0.999921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item76 = objNull;
if (_layer24) then {
	_item76 = createVehicle ["Camp",[15138.9,17342.3,0],[],0,"CAN_COLLIDE"];
	_this = _item76;
	_objects pushback _this;
	_objectIDs pushback 76;
	_this setPosWorld [15138.9,17342.3,18.8648];
	_this setVectorDirAndUp [[0.71213,-0.701842,0.0170046],[-0.0159977,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item77 = objNull;
if (_layer24) then {
	_item77 = createSimpleObject ["Land_BottlePlastic_V2_F",[15150.2,17337.9,18.6589]];
	_this = _item77;
	_objects pushback _this;
	_objectIDs pushback 77;
	_this setPosWorld [15150.2,17337.9,18.7897];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00265204,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item78 = objNull;
if (_layer24) then {
	_item78 = createVehicle ["Land_WaterTank_03_F",[15152.5,17335.4,0],[],0,"CAN_COLLIDE"];
	_this = _item78;
	_objects pushback _this;
	_objectIDs pushback 78;
	_this setPosWorld [15152.5,17335.4,18.6474];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item79 = objNull;
if (_layer24) then {
	_item79 = createVehicle ["WaterTrail_01_Old_F",[15157.7,17334.5,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item79;
	_objects pushback _this;
	_objectIDs pushback 79;
	_this setPosWorld [15157.7,17334.5,17.8724];
	_this setVectorDirAndUp [[-0.855882,-0.517171,0.000668118],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item82 = objNull;
if (_layer81) then {
	_item82 = createSimpleObject ["RoadCone_F",[15300.1,17533.2,16.6155]];
	_this = _item82;
	_objects pushback _this;
	_objectIDs pushback 82;
	_this setPosWorld [15300.1,17533.2,16.8834];
	_this setVectorDirAndUp [[0.661324,0.749875,0.0183957],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item83 = objNull;
if (_layer81) then {
	_item83 = createSimpleObject ["RoadCone_F",[15304.8,17539.6,16.5871]];
	_this = _item83;
	_objects pushback _this;
	_objectIDs pushback 83;
	_this setPosWorld [15304.8,17539.6,16.8551];
	_this setVectorDirAndUp [[0.0624047,-0.998047,0.00289629],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item84 = objNull;
if (_layer81) then {
	_item84 = createSimpleObject ["RoadCone_F",[15297.3,17530.2,16.5946]];
	_this = _item84;
	_objects pushback _this;
	_objectIDs pushback 84;
	_this setPosWorld [15297.3,17530.2,16.8626];
	_this setVectorDirAndUp [[-0.998019,-0.0624157,-0.00790185],[-0.0080009,0.00133717,0.999967]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item85 = objNull;
if (_layer81) then {
	_item85 = createSimpleObject ["RoadCone_F",[15293.7,17527,16.6024]];
	_this = _item85;
	_objects pushback _this;
	_objectIDs pushback 85;
	_this setPosWorld [15293.7,17527,16.8703];
	_this setVectorDirAndUp [[0.980169,-0.197839,0.0113012],[-0.00533768,0.0306509,0.999516]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item86 = objNull;
if (_layer81) then {
	_item86 = createSimpleObject ["RoadCone_F",[15302.9,17536.4,16.6004]];
	_this = _item86;
	_objects pushback _this;
	_objectIDs pushback 86;
	_this setPosWorld [15302.9,17536.4,16.8684];
	_this setVectorDirAndUp [[0.749855,-0.661588,0.00440576],[0,0.00665923,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item87 = objNull;
if (_layer81) then {
	_item87 = createSimpleObject ["RoadCone_F",[15304,17541.4,16.5789]];
	_this = _item87;
	_objects pushback _this;
	_objectIDs pushback 87;
	_this setPosWorld [15304,17541.4,16.8469];
	_this setVectorDirAndUp [[0.661603,0.749854,0.000655636],[-0.00399675,0.00265202,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item88 = objNull;
if (_layer81) then {
	_item88 = createSimpleObject ["RoadCone_F",[15311.9,17533.4,16.6923]];
	_this = _item88;
	_objects pushback _this;
	_objectIDs pushback 88;
	_this setPosWorld [15311.9,17533.4,16.96];
	_this setVectorDirAndUp [[0.0624052,-0.996962,0.0466075],[-0.00133721,0.0466149,0.998912]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item89 = objNull;
if (_layer81) then {
	_item89 = createSimpleObject ["RoadCone_F",[15303.9,17524.6,16.7874]];
	_this = _item89;
	_objects pushback _this;
	_objectIDs pushback 89;
	_this setPosWorld [15303.9,17524.6,17.0552];
	_this setVectorDirAndUp [[0.749532,-0.661077,0.0343294],[-0.0293202,0.0186548,0.999396]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item90 = objNull;
if (_layer81) then {
	_item90 = createSimpleObject ["RoadCone_F",[15300.2,17521.5,16.8083]];
	_this = _item90;
	_objects pushback _this;
	_objectIDs pushback 90;
	_this setPosWorld [15300.2,17521.5,17.0761];
	_this setVectorDirAndUp [[-0.749743,0.660892,-0.0332665],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item91 = objNull;
if (_layer81) then {
	_item91 = createSimpleObject ["RoadCone_F",[15308.9,17530.2,16.7809]];
	_this = _item91;
	_objects pushback _this;
	_objectIDs pushback 91;
	_this setPosWorld [15308.9,17530.2,17.0487];
	_this setVectorDirAndUp [[0.0623958,-0.997549,0.0316725],[-0.0173282,0.0306468,0.99938]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item92 = objNull;
if (_layer81) then {
	_item92 = createSimpleObject ["RoadCone_F",[15314.2,17536.2,16.6152]];
	_this = _item92;
	_objects pushback _this;
	_objectIDs pushback 92;
	_this setPosWorld [15314.2,17536.2,16.8832];
	_this setVectorDirAndUp [[-0.833125,-0.55308,0.00221054],[0,0.00399675,0.999992]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item93 = objNull;
if (_layer81) then {
	_item93 = createSimpleObject ["RoadCone_F",[15306.6,17527.6,16.8123]];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [15306.6,17527.6,17.0801];
	_this setVectorDirAndUp [[0.0623784,-0.998048,0.00316434],[-0.0293202,0.00133664,0.999569]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item94 = objNull;
if (_layer81) then {
	_item94 = createVehicle ["Land_CncBarrier_stripes_F",[15298.5,17541.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [15298.5,17541.9,16.9355];
	_this setVectorDirAndUp [[-0.0362552,0.999318,-0.00700201],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item95 = objNull;
if (_layer81) then {
	_item95 = createVehicle ["Land_CncBarrier_stripes_F",[15293.3,17541.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [15293.3,17541.8,16.8884];
	_this setVectorDirAndUp [[-0.076361,0.997053,-0.00736105],[-0.0093285,0.00666789,0.999934]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item96 = objNull;
if (_layer81) then {
	_item96 = createVehicle ["Land_CncBarrier_stripes_F",[15302.2,17541.8,0],[],0,"CAN_COLLIDE"];
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [15302.2,17541.8,16.9564];
	_this setVectorDirAndUp [[-0.0362598,0.999339,-0.00279608],[-0.00399679,0.00265288,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item97 = objNull;
if (_layerRoot) then {
	_item97 = createVehicle ["Land_BarGate_F",[15301.3,17528.9,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item97;
	_objects pushback _this;
	_objectIDs pushback 97;
	_this setPosWorld [15301.3,17528.9,20.7069];
	_this setVectorDirAndUp [[-0.713408,-0.700464,-0.0199829],[-0.0293173,0.00134333,0.999569]];
	gate = _this;
	_this setVehicleVarName "gate";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = createVehicle ["Land_Cargo_Patrol_V1_F",[15323.1,17535.6,6.86646e-005],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [15323.1,17535.6,21.4615];
	_this setVectorDirAndUp [[-0.126062,-0.992022,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = createVehicle ["Land_New_WiredFence_5m_F",[15319,17535.9,0],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [15319,17535.9,17.6874];
	_this setVectorDirAndUp [[0.753463,-0.65749,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item102 = objNull;
if (_layerRoot) then {
	_item102 = createVehicle ["Land_GuardShed",[15295.4,17530.8,0],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_objects pushback _this;
	_objectIDs pushback 102;
	_this setPosWorld [15295.4,17530.8,17.1861];
	_this setVectorDirAndUp [[-0.68727,-0.726402,-0.000757559],[-0.0053265,0.00399669,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = createVehicle ["Land_PortableLight_double_F",[15294.4,17534.6,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [15294.4,17534.6,17.6493];
	_this setVectorDirAndUp [[-0.873944,-0.486026,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = createVehicle ["Land_Sign_WarningMilitaryArea_F",[15305.9,17525.6,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [15305.9,17525.6,17.8666];
	_this setVectorDirAndUp [[-0.74395,-0.668235,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
	_this setObjectTextureGlobal [0,"a3\signs_f\signm\data\signm_warningmilitaryarea_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = createVehicle ["CUP_sign_stop_new",[15296.7,17532.4,-2.16378],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [15296.7,17532.4,16.0448];
	_this setVectorDirAndUp [[-0.682527,-0.73086,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = createVehicle ["Land_LampHalogen_F",[15239.8,17323,-2.86102e-005],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [15239.8,17323,23.9894];
	_this setVectorDirAndUp [[0.181383,0.983413,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = createVehicle ["Land_LampHalogen_F",[15193.9,17276,-3.05176e-005],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [15193.9,17276,23.9154];
	_this setVectorDirAndUp [[0.99211,0.125367,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = createVehicle ["Land_LampHalogen_F",[15182.5,17387,0.000137329],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [15182.5,17387,23.899];
	_this setVectorDirAndUp [[-0.986538,-0.163534,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = createVehicle ["Land_LampHalogen_F",[15116.7,17328.3,0.000335693],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [15116.7,17328.3,23.4271];
	_this setVectorDirAndUp [[-0.976489,-0.215566,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = createVehicle ["Land_New_WiredFence_5m_F",[15191.5,17538.2,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [15191.5,17538.2,16.7624];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = createVehicle ["Land_New_WiredFence_5m_F",[15180.8,17539.9,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [15180.8,17539.9,16.7591];
	_this setVectorDirAndUp [[0.713736,-0.700415,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item128 = objNull;
if (_layerRoot) then {
	_item128 = createVehicle ["Land_New_WiredFence_5m_F",[15187.6,17541.5,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [15187.6,17541.5,16.8122];
	_this setVectorDirAndUp [[0.641608,0.767033,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item129 = objNull;
if (_layerRoot) then {
	_item129 = createVehicle ["Land_RepairDepot_01_civ_F",[15060,17317.3,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [15060,17317.3,19.5616];
	_this setVectorDirAndUp [[-0.730699,0.682598,-0.0118314],[0,0.0173303,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1 != (if (isNumber (configOf _this >> "ace_repair_canRepair")) then {getNumber (configOf _this >> "ace_repair_canRepair")} else {0})) then {_this setVariable ['s', 1, true]};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item130 = objNull;
if (_layerRoot) then {
	_item130 = createSimpleObject ["Land_Pallets_stack_F",[15053.6,17317.8,17.0326]];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [15053.6,17317.8,17.4616];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146643,0.0466113,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item131 = objNull;
if (_layerRoot) then {
	_item131 = createSimpleObject ["Land_DrillAku_F",[15053.3,17317.4,17.9269]];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [15053.3,17317.4,18.0688];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item132 = objNull;
if (_layerRoot) then {
	_item132 = createVehicle ["ACE_Wheel",[15053.9,17317.9,0.881086],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [15053.9,17317.9,18.0702];
	_this setVectorDirAndUp [[0,0.998913,-0.0466163],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item133 = objNull;
if (_layerRoot) then {
	_item133 = createVehicle ["ACE_Wheel",[15054.6,17318,0.260969],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [15054.6,17318,17.4548];
	_this setVectorDirAndUp [[-0.0797611,0.986334,0.144163],[0.974348,0.0466124,0.220165]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item134 = objNull;
if (_layerRoot) then {
	_item134 = createSimpleObject ["Land_Wrench_F",[15053.2,17317.3,17.9306]];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [15053.2,17317.3,17.9331];
	_this setVectorDirAndUp [[0.770311,-0.636347,0.0410186],[-0.0146806,0.0466112,0.998805]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = createSimpleObject ["Land_RefuelingHose_01_F",[15058.9,17296.5,17.3275]];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [15058.9,17296.5,17.4077];
	_this setVectorDirAndUp [[0,0.999996,-0.00265204],[0.00133688,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = createSimpleObject ["Land_CanisterFuel_F",[15058.7,17295.9,17.3288]];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [15058.7,17295.9,17.6023];
	_this setVectorDirAndUp [[0,0.999999,-0.00129187],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item137 = objNull;
if (_layerRoot) then {
	_item137 = createVehicle ["B_Slingload_01_Fuel_F",[15055.1,17297.1,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [15055.1,17297.1,18.6897];
	_this setVectorDirAndUp [[0.72122,-0.692706,0.000894887],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (10000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 10000] call ace_refuel_fnc_makeSource};
	if ([0.55,3.02,-0.5] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.55,3.02,-0.5]], true]};
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = createVehicle ["Oil_Spill_F",[15059,17297,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [15059,17297,17.3261];
	_this setVectorDirAndUp [[0,0.999996,-0.0026529],[0.00134403,0.00265289,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item139 = objNull;
if (_layerRoot) then {
	_item139 = createVehicle ["Box_NATO_AmmoVeh_F",[15047.4,17304.5,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [15047.4,17304.5,18.0467];
	_this setVectorDirAndUp [[0.671275,0.740732,-0.0265764],[0.00133688,0.0346455,0.999399]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item140 = objNull;
if (_layerRoot) then {
	_item140 = createVehicle ["B_Quadbike_01_F",[15043.3,17314.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [15043.2,17314.7,18.4627];
	_this setVectorDirAndUp [[0.743046,-0.667544,0.0476227],[-0.0293202,0.0386199,0.998824]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitengine"",""hitfuel"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitrglass"",""hitlglass"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
};

private _item143 = objNull;
if (_layer142) then {
	_item143 = createVehicle ["Land_Cargo20_white_F",[15288.2,17388.5,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [15288.2,17388.5,19.2094];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item144 = objNull;
if (_layer142) then {
	_item144 = createVehicle ["Land_Cargo20_white_F",[15285.7,17385.9,0.00304794],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [15285.7,17385.9,19.2231];
	_this setVectorDirAndUp [[-0.691094,-0.722755,0.00374957],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item145 = objNull;
if (_layer142) then {
	_item145 = createVehicle ["Land_HBarrier_5_F",[15282.2,17388.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [15282.2,17388.2,18.6394];
	_this setVectorDirAndUp [[-0.72276,0.691099,8.39335e-005],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item146 = objNull;
if (_layer142) then {
	_item146 = createVehicle ["Land_HBarrier_5_F",[15286,17392.2,0.00354576],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [15286,17392.2,18.6213];
	_this setVectorDirAndUp [[-0.722757,0.691103,0.000126477],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item147 = objNull;
if (_layer142) then {
	_item147 = createVehicle ["Land_LampShabby_F",[15303.5,17392.6,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [15303.5,17392.6,21.4985];
	_this setVectorDirAndUp [[0.722762,-0.691097,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item148 = objNull;
if (_layer142) then {
	_item148 = createVehicle ["Land_HBarrier_5_F",[15322.3,17404.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [15322.3,17404.1,17.9601];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item149 = objNull;
if (_layer142) then {
	_item149 = createVehicle ["Land_HBarrier_5_F",[15316.3,17409.8,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [15316.3,17409.8,18.012];
	_this setVectorDirAndUp [[-0.691008,-0.722651,0.0168328],[0.0159975,0.00799242,0.99984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item150 = objNull;
if (_layer142) then {
	_item150 = createVehicle ["Land_HBarrier_5_F",[15310.6,17415.4,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [15310.6,17415.4,18.0781];
	_this setVectorDirAndUp [[-0.690959,-0.722723,0.0157512],[0.0199947,0.00267389,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item151 = objNull;
if (_layer142) then {
	_item151 = createVehicle ["Land_HelipadRescue_F",[15282.9,17409.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [15282.9,17409.7,17.8317];
	_this setVectorDirAndUp [[-0.71644,0.697648,0.00108011],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
};

private _item153 = objNull;
if (_layerRoot) then {
	_item153 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17417.3,-5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [15282.8,17417.3,17.899];
	_this setVectorDirAndUp [[0,0.999986,-0.0053265],[0.00932853,0.00532627,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = createVehicle ["PortableHelipadLight_01_red_F",[15290.5,17409.9,1.90735e-005],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [15290.5,17409.9,17.8503];
	_this setVectorDirAndUp [[0,0.999968,-0.00799344],[0.0146639,0.00799259,0.999861]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = createVehicle ["PortableHelipadLight_01_red_F",[15282.8,17402,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [15282.8,17402,17.9739];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item156 = objNull;
if (_layerRoot) then {
	_item156 = createVehicle ["PortableHelipadLight_01_red_F",[15275,17409.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [15275,17409.7,17.9845];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item157 = objNull;
if (_layerRoot) then {
	_item157 = createVehicle ["PortableHelipadLight_01_yellow_F",[15282.9,17409.7,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [15282.9,17409.7,17.943];
	_this setVectorDirAndUp [[0,0.999978,-0.00666818],[0.00800059,0.00666796,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item160 = objNull;
if (_layerRoot) then {
	_item160 = createVehicle ["Desk",[15214.8,17337.3,0.582422],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [15214.8,17337.3,18.9624];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item161 = objNull;
if (_layerRoot) then {
	_item161 = createSimpleObject ["Land_OfficeCabinet_01_F",[15220,17335.7,18.5513]];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [15220,17335.7,19.3318];
	_this setVectorDirAndUp [[0.750048,0.661383,-0.000517747],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = createSimpleObject ["Land_OfficeChair_01_F",[15215.8,17336.5,18.5544]];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [15215.8,17336.5,19.2289];
	_this setVectorDirAndUp [[0.900738,-0.434362,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item163 = objNull;
if (_layerRoot) then {
	_item163 = createVehicle ["Land_MapBoard_01_Wall_F",[15206.2,17325.7,2.15606],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [15206.2,17325.7,20.6632];
	_this setVectorDirAndUp [[-0.721387,-0.692532,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_default_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item164 = objNull;
if (_layerRoot) then {
	_item164 = createSimpleObject ["MapBoard_seismic_F",[15213.9,17341.3,18.5491]];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [15213.9,17341.3,19.518];
	_this setVectorDirAndUp [[0.464438,0.885605,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f_epc\civ\infoboards\data\mapboard_seismic_co.paa"];
};

private _item165 = objNull;
if (_layerRoot) then {
	_item165 = createVehicle ["Land_CampingChair_V2_white_F",[15220.9,17327.9,0.561464],[],0,"CAN_COLLIDE"];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [15220.9,17327.9,19.0571];
	_this setVectorDirAndUp [[-0.71093,-0.703262,0.000490745],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = createVehicle ["Land_CampingChair_V2_white_F",[15220.1,17328.8,0.564278],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [15220.1,17328.8,19.0578];
	_this setVectorDirAndUp [[-0.753993,-0.656882,0.00052047],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item167 = objNull;
if (_layerRoot) then {
	_item167 = createVehicle ["Land_GymRack_03_F",[15224.5,17316.3,0.550093],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [15224.5,17316.3,19.1306];
	_this setVectorDirAndUp [[0.696921,-0.717148,-0.000481074],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item168 = objNull;
if (_layerRoot) then {
	_item168 = createVehicle ["Land_GymBench_01_F",[15222.8,17314.8,0.555876],[],0,"CAN_COLLIDE"];
	_this = _item168;
	_objects pushback _this;
	_objectIDs pushback 168;
	_this setPosWorld [15222.8,17314.8,19.1386];
	_this setVectorDirAndUp [[0.677791,-0.735255,-0.000467869],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item169 = objNull;
if (_layerRoot) then {
	_item169 = createSimpleObject ["Fridge_01_closed_F",[15216.2,17321.6,18.5543]];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [15216.2,17321.6,19.0728];
	_this setVectorDirAndUp [[0.675017,-0.737802,-0.000465955],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item170 = objNull;
if (_layerRoot) then {
	_item170 = createSimpleObject ["Land_WaterCooler_01_new_F",[15215.6,17320.9,18.5548]];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [15215.6,17320.9,19.2869];
	_this setVectorDirAndUp [[0.675013,-0.737805,-0.000465952],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	if (20 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 20, true]};
};

private _item171 = objNull;
if (_layerRoot) then {
	_item171 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.6,17337.2,19.3764]];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [15214.6,17337.2,19.6311];
	_this setVectorDirAndUp [[-0.908626,0.417584,0.00468656],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item172 = objNull;
if (_layerRoot) then {
	_item172 = createSimpleObject ["Land_PCSet_01_screen_F",[15215,17337.6,19.378]];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [15215,17337.6,19.6326];
	_this setVectorDirAndUp [[-0.461859,0.886953,0.000318814],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item173 = objNull;
if (_layerRoot) then {
	_item173 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15215,17337.2,19.378]];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [15215,17337.2,19.3859];
	_this setVectorDirAndUp [[-0.690211,0.72357,0.00743816],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item174 = objNull;
if (_layerRoot) then {
	_item174 = createSimpleObject ["Land_PCSet_01_mouse_F",[15215.3,17337.5,19.3777]];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [15215.3,17337.5,19.403];
	_this setVectorDirAndUp [[-0.656072,0.754698,0.000452877],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item175 = objNull;
if (_layerRoot) then {
	_item175 = createVehicle ["Desk",[15214.2,17338.1,0.584808],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [15214.2,17338.1,18.9629];
	_this setVectorDirAndUp [[-0.665593,0.746315,0.000459449],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item176 = objNull;
if (_layerRoot) then {
	_item176 = createSimpleObject ["Land_OfficeChair_01_F",[15213.5,17338.7,18.5247]];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [15213.5,17338.7,19.1991];
	_this setVectorDirAndUp [[-0.646559,0.762864,0.00044631],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item177 = objNull;
if (_layerRoot) then {
	_item177 = createSimpleObject ["Land_PCSet_01_screen_F",[15214.4,17338.3,19.3783]];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [15214.4,17338.3,19.633];
	_this setVectorDirAndUp [[0.889608,-0.456712,0.00348723],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item178 = objNull;
if (_layerRoot) then {
	_item178 = createSimpleObject ["Land_PCSet_01_screen_F",[15214,17337.9,19.3774]];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [15214,17337.9,19.6321];
	_this setVectorDirAndUp [[0.422854,-0.906198,-0.00029189],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"images\xpscreen.paa"];
};

private _item179 = objNull;
if (_layerRoot) then {
	_item179 = createSimpleObject ["Land_PCSet_01_keyboard_F",[15214,17338.3,19.3777]];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [15214,17338.3,19.3857];
	_this setVectorDirAndUp [[0.658093,-0.752908,0.00653824],[0.000976388,0.00953701,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item180 = objNull;
if (_layerRoot) then {
	_item180 = createSimpleObject ["Land_PCSet_01_mouse_F",[15213.6,17338,19.3756]];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [15213.6,17338,19.4008];
	_this setVectorDirAndUp [[0.622635,-0.782512,-0.000429796],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item181 = objNull;
if (_layerRoot) then {
	_item181 = createVehicle ["Desk",[15207.3,17328.9,0.59997],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [15207.3,17328.9,18.9682];
	_this setVectorDirAndUp [[0.697416,-0.716666,-0.000481416],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item182 = objNull;
if (_layerRoot) then {
	_item182 = createSimpleObject ["Land_OfficeChair_01_F",[15207.9,17328.3,18.5463]];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [15207.9,17328.3,19.2207];
	_this setVectorDirAndUp [[0.724052,-0.689745,-0.000499803],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item183 = objNull;
if (_layerRoot) then {
	_item183 = createVehicle ["Land_Laptop_unfolded_F",[15207.4,17328.8,1.4194],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [15207.4,17328.8,19.5369];
	_this setVectorDirAndUp [[0.703705,-0.710454,-0.00740374],[0.00556687,-0.00490686,0.999972]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item184 = objNull;
if (_layerRoot) then {
	_item184 = createSimpleObject ["Land_Document_01_F",[15207.1,17328.6,19.3838]];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [15207.1,17328.6,19.3891];
	_this setVectorDirAndUp [[-0.784175,0.620506,0.00652709],[0.000771824,-0.0095431,0.999954]];
	0 remoteExec ['setFeatureType', _this];
};

private _item185 = objNull;
if (_layerRoot) then {
	_item185 = createSimpleObject ["Land_File1_F",[15207.7,17329.3,19.3836]];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [15207.7,17329.3,19.3922];
	_this setVectorDirAndUp [[-0.552097,0.83378,0.000381105],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.835294,0,0,0.0,ca)"];
};

private _item186 = objNull;
if (_layerRoot) then {
	_item186 = createSimpleObject ["Land_PencilYellow_F",[15208,17329.2,19.3835]];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [15208,17329.2,19.3876];
	_this setVectorDirAndUp [[0,1,0],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item188 = objNull;
if (_layerRoot) then {
	_item188 = _item187 createUnit ["B_officer_F",[15207.9,17328.4,0.613001],[],0,"CAN_COLLIDE"];
	_item187 selectLeader _item188;
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [15207.9,17328.4,18.5772];
	_this setVectorDirAndUp [[-0.783867,0.620929,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "John Robinson";;
	_this setface "AfricanHead_03";;
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

private _item189 = objNull;
if (_layerRoot) then {
	_item189 = _item187 createUnit ["B_officer_F",[15213.5,17339.5,0.587999],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [15213.5,17339.5,18.5586];
	_this setVectorDirAndUp [[0.678942,-0.734192,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "James Campbell";;
	_this setface "WhiteHead_18";;
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

private _item190 = objNull;
if (_layerRoot) then {
	_item190 = _item187 createUnit ["B_officer_F",[15213.5,17338.6,0.642],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [15213.5,17338.7,18.6129];
	_this setVectorDirAndUp [[0.774161,-0.632989,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_abu",[]],[],[],"H_HeadSet_black_F","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Matthew Acker";;
	_this setface "WhiteHead_10";;
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

private _item191 = objNull;
if (_layerRoot) then {
	_item191 = _item187 createUnit ["B_officer_F",[15218.8,17315.5,0.563248],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [15218.8,17315.6,18.5538];
	_this setVectorDirAndUp [[-0.854894,-0.518803,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_ocp",[]],[],[],"","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Greer Young";;
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

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = _item187 createUnit ["rhsusf_army_ocp_rifleman_m16",[15219.4,17303.2,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [15219.4,17303.2,17.9749];
	_this setVectorDirAndUp [[0.992134,0.125177,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["VSM_OCP_Crye_SS_tan_pants_Camo",[]],["rhsusf_spcs_ucp",[]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Matthew Martinez";;
	_this setface "WhiteHead_06";;
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

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = _item187 createUnit ["rhsusf_army_ocp_rifleman",[15221.1,17303.7,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [15221.1,17303.7,17.9778];
	_this setVectorDirAndUp [[-0.945587,-0.32537,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_FROG01_d",[]],["rhsusf_spc",[]],[],"rhs_8point_marpatd","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ashton Patel";;
	_this setface "GreekHead_A3_06";;
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

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = _item187 createUnit ["rhsusf_army_ocp_rifleman",[15165.7,17369.2,4.145],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [15165.7,17369.2,22.0473];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Lewis Martinez";;
	_this setface "WhiteHead_10";;
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

private _item110 = objNull;
if (_layerRoot) then {
	_item110 = _item187 createUnit ["B_Soldier_F",[15295.2,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [15295.2,17532.4,16.5766];
	_this setVectorDirAndUp [[0.941339,0.337461,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4_carryhandle","","acc_pointer_IR","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_yellow_F",[]],[],"rhsusf_ach_helmet_headset_ocp","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Gillis Robertson";;
	_this setface "WhiteHead_19";;
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

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = _item187 createUnit ["rhsusf_army_ocp_rifleman",[15324,17536.9,4.346],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [15324,17536.9,20.8611];
	_this setVectorDirAndUp [[0.156159,0.987732,0],[0,0,1]];
	_this setUnitLoadout [["rhs_weap_m4a1_grip3","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],"rhsusf_acc_kac_grip"],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ocp",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",1,30]]],["rhsusf_iotv_ocp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30],["rhs_mag_m67",2,1]]],[],"rhsusf_ach_helmet_ocp","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Max Collins";;
	_this setface "WhiteHead_21";;
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

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = _item187 createUnit ["B_soldier_repair_F",[15210.9,17458.7,-9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [15210.9,17458.7,17.1206];
	_this setVectorDirAndUp [[0.638114,-0.769942,0],[0,0,1]];
	_this setUnitLoadout [[],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["rhs_uniform_acu_oefcp",[]],["V_Safety_orange_F",[]],["B_LegStrapBag_coyote_F",[]],"rhsusf_mich_bare_tan","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "James Jones";;
	_this setface "WhiteHead_20";;
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

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = _item187 createUnit ["B_Soldier_unarmed_F",[15212.1,17457.4,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [15212.1,17457.4,17.1417];
	_this setVectorDirAndUp [[-0.711769,0.702414,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"rhsusf_cvc_green_ess","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Harrison Kelly";;
	_this setface "WhiteHead_01";;
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

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = _item187 createUnit ["rhsusf_army_ocp_rifleman_m4",[15187.2,17525,4.35],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [15187.2,17525,19.7565];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Ryan MacDonald";;
	_this setface "WhiteHead_21";;
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

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = _item187 createUnit ["B_Soldier_lite_F",[15148.6,17336.8,0],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [15148.6,17336.8,17.8348];
	_this setVectorDirAndUp [[0.472971,0.881078,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["VSM_OCP_Crye_SS_grey_pants_Camo",[]],[],[],"","rhs_googles_black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Matthew Edwards";;
	_this setface "WhiteHead_10";;
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

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = _item187 createUnit ["B_Soldier_lite_F",[15150.3,17338.5,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [15150.3,17338.5,17.8443];
	_this setVectorDirAndUp [[-0.74672,-0.665139,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["VSM_OCP_Crye_SS_grey_shirt_Camo",[]],[],[],"H_Cap_usblack","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dixon Warren";;
	_this setface "Barklem";;
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

private _item192 = objNull;
if (_layerRoot) then {
	_item192 = createVehicle ["Land_MapBoard_01_Wall_Altis_F",[15222.9,17333.1,1.76247],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [15222.9,17333.1,20.3012];
	_this setVectorDirAndUp [[0.74264,0.669691,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
	_this setObjectMaterialGlobal [0,""];
};

private _item193 = objNull;
if (_layerRoot) then {
	_item193 = createSimpleObject ["Land_PortableCabinet_01_bookcase_sand_F",[15220.6,17335.1,18.5509]];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
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

private _item199 = objNull;
if (_layerRoot) then {
	_item199 = createVehicle ["Land_PaperBox_closed_F",[15195.5,17278,0],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [15195.5,17278,18.5806];
	_this setVectorDirAndUp [[-0.699658,-0.714477,-0.000922803],[0,-0.00129158,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item201 = objNull;
if (_layerRoot) then {
	_item201 = createVehicle ["CUP_vending_machine",[15217.1,17314.8,0.56875],[],0,"CAN_COLLIDE"];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [15217.1,17314.8,19.5951];
	_this setVectorDirAndUp [[-0.751712,-0.659492,0.000518896],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item204 = objNull;
if (_layerRoot) then {
	_item204 = createVehicle ["rhsusf_m1240a1_m240_usarmy_d",[15168.3,17306.1,-7.43866e-005],[],0,"CAN_COLLIDE"];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [15168.3,17306.2,20.747];
	_this setVectorDirAndUp [[0.709621,-0.704553,0.00657271],[0,0.0093285,0.999956]];
	[_this,"rhs_desert"] call bis_fnc_initVehicle;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp""],[2,2]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[""FirstAidKit"",""ToolKit""],[4,1]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {if (isSimpleObject _this) then {_this setVariable ['bis_fnc_initVehicle_customization',[[],["hide_ogpkover",0,"hide_ogpknet",0,"hide_ogpkbust",0,"hide_rhino",1,"DoorLF",0,"DoorRF",0,"DoorLB",0,"DoorRB",0,"DUKE_Hide",0,"hide_spare",0]]]} else {([_this] + [[],["hide_ogpkover",0,"hide_ogpknet",0,"hide_ogpkbust",0,"hide_rhino",1,"DoorLF",0,"DoorRF",0,"DoorLB",0,"DoorRB",0,"DUKE_Hide",0,"hide_spare",0]] + [true]) call (uinamespace getvariable 'bis_fnc_initVehicle');};};;
	_this setVehicleReportRemoteTargets true;
	_this setVehicleReceiveRemoteTargets true;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hit_rhino"",""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	_this animateDoor ['rhino',0,true];
};

private _item205 = objNull;
if (_layerRoot) then {
	_item205 = createVehicle ["rhsusf_m1025_d",[15178.9,17318.4,5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [15178.9,17318.4,19.833];
	_this setVectorDirAndUp [[0.677332,-0.735676,0.00157643],[-0.00666818,-0.00399657,0.99997]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp""],[2,2]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[""FirstAidKit""],[4]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitwindshield_1"",""hitwindshield_2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitfuel"",""hitlfwheel"",""hitrfwheel"",""hitlf2wheel"",""hitrf2wheel"",""hitengine"",""hithull"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_1"",""#light_hd_2"",""#light_hd_2"",""#light_hd_1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
	//if(0 != 'NoChange')then{ [_this,'unitdecals_1',0] call rhs_fnc_hmmwv_setDecal};
	//if(0 != 'NoChange')then{ [_this,'unitdecals_2',0] call rhs_fnc_hmmwv_setDecal};
	_this animate ['hide_CIP',0,true];
	_this animate ['hide_BFT',0,true];
	_this animate ['hide_Antenna',0,true];
	_this animate ['hide_A2_Parts',0,true];
	_this animateDoor ['Door_LF',0,true];
	_this animateDoor ['ani_window_1',0,true];
	_this animateDoor ['Door_RF',0,true];
	_this animateDoor ['ani_window_2',0,true];
	_this animateDoor ['Door_LB',0,true];
	_this animateDoor ['ani_window_3',0,true];
	_this animateDoor ['Door_RB',0,true];
	_this animateDoor ['ani_window_4',0,true];
	_this animate ['ani_trunk_1',0,true];
};

private _item207 = objNull;
if (_layerRoot) then {
	_item207 = createVehicle ["Land_Pallet_MilBoxes_F",[15195.7,17287.5,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [15195.7,17287.5,18.3901];
	_this setVectorDirAndUp [[0.710492,0.703705,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item209 = objNull;
if (_layerRoot) then {
	_item209 = createVehicle ["CampEast",[15187.9,17366.3,-1.14441e-005],[],0,"CAN_COLLIDE"];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [15187.9,17366.3,19.277];
	_this setVectorDirAndUp [[0.747711,0.664024,0.000857638],[0,-0.00129158,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item220 = objNull;
if (_layerRoot) then {
	_item220 = createVehicle ["Gunrack1",[15191.8,17288.1,0],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [15191.8,17288.1,18.4405];
	_this setVectorDirAndUp [[-0.701891,-0.712283,-0.000906754],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item222 = objNull;
if (_layer221) then {
	_item222 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14725.5,16091.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [14725.5,16091.9,20.9037];
	_this setVectorDirAndUp [[-0.726531,0.687131,-0.00189037],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item223 = objNull;
if (_layer221) then {
	_item223 = createVehicle ["Land_Shoot_House_Wall_F",[14727.3,16079.3,0],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [14727.3,16079.3,20.89];
	_this setVectorDirAndUp [[-0.726531,0.687133,0.000850747],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item224 = objNull;
if (_layer221) then {
	_item224 = createVehicle ["Land_Shoot_House_Wall_F",[14729.9,16089.2,0],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [14729.9,16089.2,20.9152];
	_this setVectorDirAndUp [[0.687131,0.726531,0.00182231],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item225 = objNull;
if (_layer221) then {
	_item225 = createVehicle ["Land_Shoot_House_Wall_F",[14728.4,16090.6,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [14728.4,16090.6,20.9113];
	_this setVectorDirAndUp [[0.687131,0.726531,0.00182231],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item226 = objNull;
if (_layer221) then {
	_item226 = createVehicle ["Land_Shoot_House_Wall_F",[14732.8,16085.1,0],[],0,"CAN_COLLIDE"];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [14732.8,16085.1,20.9161];
	_this setVectorDirAndUp [[-0.726531,0.687134,-5.29141e-005],[-0.00133721,-0.00133688,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item227 = objNull;
if (_layer221) then {
	_item227 = createVehicle ["Land_Shoot_House_Wall_F",[14723.2,16076.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [14723.2,16076.3,20.8726];
	_this setVectorDirAndUp [[0.687131,0.726518,0.00472599],[-0.00265204,-0.00399665,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item228 = objNull;
if (_layer221) then {
	_item228 = createVehicle ["Land_Shoot_House_Wall_F",[14718.8,16080.4,0],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [14718.8,16080.4,20.8781];
	_this setVectorDirAndUp [[0.687131,0.726511,0.00569218],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item229 = objNull;
if (_layer221) then {
	_item229 = createVehicle ["Land_Shoot_House_Wall_F",[14720.3,16079.1,0],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [14720.3,16079.1,20.8758];
	_this setVectorDirAndUp [[0.687131,0.726518,0.00472599],[-0.00265204,-0.00399665,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item230 = objNull;
if (_layer221) then {
	_item230 = createVehicle ["Land_Shoot_House_Wall_F",[14728.7,16080.7,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [14728.7,16080.7,20.8957];
	_this setVectorDirAndUp [[-0.726531,0.687133,0.000850747],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item231 = objNull;
if (_layer221) then {
	_item231 = createVehicle ["Land_Shoot_House_Wall_F",[14731.5,16083.6,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [14731.5,16083.6,20.9091];
	_this setVectorDirAndUp [[-0.726529,0.687136,-0.000104515],[-0.00265204,-0.00265198,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item232 = objNull;
if (_layer221) then {
	_item232 = createVehicle ["Land_Shoot_House_Wall_F",[14724.2,16090.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item232;
	_objects pushback _this;
	_objectIDs pushback 232;
	_this setPosWorld [14724.2,16090.5,20.9038];
	_this setVectorDirAndUp [[-0.726531,0.687131,-0.00189037],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item233 = objNull;
if (_layer221) then {
	_item233 = createVehicle ["Land_Shoot_House_Wall_F",[14732.8,16086.5,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [14732.8,16086.5,20.9179];
	_this setVectorDirAndUp [[0.687133,0.726529,0.00189013],[-0.00133721,-0.00133688,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item234 = objNull;
if (_layer221) then {
	_item234 = createVehicle ["Land_Shoot_House_Wall_F",[14730.1,16082.2,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [14730.1,16082.2,20.9015];
	_this setVectorDirAndUp [[-0.726529,0.687136,-0.000104515],[-0.00265204,-0.00265198,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item235 = objNull;
if (_layer221) then {
	_item235 = createVehicle ["Land_Shoot_House_Wall_F",[14724.6,16076.4,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [14724.6,16076.4,20.8765];
	_this setVectorDirAndUp [[-0.726529,0.687136,0.000819463],[-0.00265204,-0.00399665,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item236 = objNull;
if (_layer221) then {
	_item236 = createVehicle ["Land_Shoot_House_Wall_F",[14717.3,16083.2,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [14717.3,16083.2,20.8889];
	_this setVectorDirAndUp [[-0.726529,0.687134,0.00173328],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item237 = objNull;
if (_layer221) then {
	_item237 = createVehicle ["Land_Shoot_House_Wall_F",[14721.7,16077.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [14721.7,16077.7,20.8742];
	_this setVectorDirAndUp [[0.687131,0.726518,0.00472599],[-0.00265204,-0.00399665,0.999988]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item238 = objNull;
if (_layer221) then {
	_item238 = createVehicle ["Land_Shoot_House_Wall_F",[14732.8,16087.9,0],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [14732.8,16087.9,20.9192];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000938584],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item239 = objNull;
if (_layer221) then {
	_item239 = createVehicle ["Land_Shoot_House_Wall_F",[14730.5,16092.8,0],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [14730.5,16092.8,20.9162];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000938584],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item240 = objNull;
if (_layer221) then {
	_item240 = createVehicle ["Land_Shoot_House_Wall_F",[14729.1,16091.3,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [14729.1,16091.3,20.9132];
	_this setVectorDirAndUp [[-0.726529,0.687133,-0.00192679],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item241 = objNull;
if (_layer221) then {
	_item241 = createVehicle ["Land_Shoot_House_Wall_F",[14731.9,16094.2,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [14731.9,16094.2,20.9165];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000887687],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item242 = objNull;
if (_layer221) then {
	_item242 = createVehicle ["Land_Shoot_House_Wall_F",[14734.1,16092.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [14734.1,16092.2,20.9193];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000887687],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item243 = objNull;
if (_layer221) then {
	_item243 = createVehicle ["Land_Shoot_House_Wall_F",[14717.5,16081.7,0],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [14717.5,16081.7,20.8813];
	_this setVectorDirAndUp [[0.687131,0.726511,0.00569218],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item244 = objNull;
if (_layer221) then {
	_item244 = createVehicle ["Land_Shoot_House_Wall_F",[14718.7,16084.7,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [14718.7,16084.7,20.898];
	_this setVectorDirAndUp [[-0.726531,0.687131,0.00182227],[0,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item245 = objNull;
if (_layer221) then {
	_item245 = createVehicle ["Land_Shoot_House_Wall_F",[14728.2,16097.7,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [14728.2,16097.7,20.8707];
	_this setVectorDirAndUp [[0.726422,-0.687056,0.0162493],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item246 = objNull;
if (_layer221) then {
	_item246 = createVehicle ["Land_Shoot_House_Wall_F",[14726.9,16096.2,-3.62396e-005],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [14726.9,16096.2,20.8825];
	_this setVectorDirAndUp [[0.726529,-0.686957,0.0156817],[-0.00267442,0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item247 = objNull;
if (_layer221) then {
	_item247 = createVehicle ["Land_Shoot_House_Wall_F",[14714.7,16084.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [14714.7,16084.4,20.8842];
	_this setVectorDirAndUp [[0.68706,0.726467,0.0139461],[-0.0146643,-0.00532597,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item248 = objNull;
if (_layer221) then {
	_item248 = createVehicle ["Land_Shoot_House_Wall_F",[14718.7,16087.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [14718.7,16087.7,20.9024];
	_this setVectorDirAndUp [[-0.726531,0.686996,-0.0137411],[0,0.0199977,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item249 = objNull;
if (_layer221) then {
	_item249 = createVehicle ["Land_Shoot_House_Wall_F",[14718.9,16083.2,0],[],0,"CAN_COLLIDE"];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [14718.9,16083.2,20.8927];
	_this setVectorDirAndUp [[-0.687131,-0.726511,-0.00569219],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item250 = objNull;
if (_layer221) then {
	_item250 = createVehicle ["Land_Shoot_House_Wall_F",[14716.1,16083.1,0],[],0,"CAN_COLLIDE"];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [14716.1,16083.1,20.8847];
	_this setVectorDirAndUp [[-0.687131,-0.726511,-0.00569219],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item251 = objNull;
if (_layer221) then {
	_item251 = createVehicle ["Land_Shoot_House_Wall_F",[14715.8,16086,0],[],0,"CAN_COLLIDE"];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [14715.8,16086,20.8998];
	_this setVectorDirAndUp [[-0.687131,-0.726511,-0.00569219],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item252 = objNull;
if (_layer221) then {
	_item252 = createVehicle ["Land_Shoot_House_Wall_F",[14722.8,16089,0],[],0,"CAN_COLLIDE"];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [14722.8,16089,20.9039];
	_this setVectorDirAndUp [[-0.726531,0.687131,-0.00189037],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item253 = objNull;
if (_layer221) then {
	_item253 = createVehicle ["Land_Shoot_House_Wall_F",[14725.5,16093.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item253;
	_objects pushback _this;
	_objectIDs pushback 253;
	_this setPosWorld [14725.5,16093.3,20.9036];
	_this setVectorDirAndUp [[-0.687131,-0.726531,-0.00182231],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item254 = objNull;
if (_layer221) then {
	_item254 = createVehicle ["Land_Shoot_House_Wall_F",[14724.1,16094.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item254;
	_objects pushback _this;
	_objectIDs pushback 254;
	_this setPosWorld [14724.1,16094.7,20.8997];
	_this setVectorDirAndUp [[-0.687131,-0.726531,-0.00182231],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item255 = objNull;
if (_layer221) then {
	_item255 = createVehicle ["Land_Shoot_House_Wall_F",[14722.7,16093.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [14722.7,16093.3,20.8981];
	_this setVectorDirAndUp [[-0.687133,-0.726532,5.26847e-005],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item256 = objNull;
if (_layer221) then {
	_item256 = createVehicle ["Land_Shoot_House_Wall_F",[14732.7,16090.7,0],[],0,"CAN_COLLIDE"];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [14732.7,16090.7,20.9191];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000938584],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item257 = objNull;
if (_layer221) then {
	_item257 = createVehicle ["Land_Shoot_House_Wall_F",[14720.2,16080.5,0],[],0,"CAN_COLLIDE"];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [14720.2,16080.5,20.882];
	_this setVectorDirAndUp [[-0.726529,0.687134,0.00173328],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item258 = objNull;
if (_layer221) then {
	_item258 = createVehicle ["Land_Shoot_House_Wall_F",[14723,16083.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [14723,16083.4,20.8952];
	_this setVectorDirAndUp [[-0.726531,0.687133,0.000850747],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item259 = objNull;
if (_layer221) then {
	_item259 = createVehicle ["Land_Shoot_House_Wall_F",[14722.9,16087.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [14722.9,16087.6,20.9058];
	_this setVectorDirAndUp [[-0.687133,-0.726532,5.26847e-005],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item260 = objNull;
if (_layer221) then {
	_item260 = createVehicle ["Land_Shoot_House_Wall_F",[14724.3,16086.3,0],[],0,"CAN_COLLIDE"];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [14724.3,16086.3,20.9046];
	_this setVectorDirAndUp [[-0.687133,-0.726526,-0.00284559],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item261 = objNull;
if (_layer221) then {
	_item261 = createVehicle ["Land_Shoot_House_Wall_F",[14724.4,16084.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [14724.4,16084.8,20.9009];
	_this setVectorDirAndUp [[-0.726531,0.687133,0.000850747],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item262 = objNull;
if (_layer221) then {
	_item262 = createVehicle ["Land_Shoot_House_Wall_F",[14729.9,16087.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [14729.9,16087.8,20.9153];
	_this setVectorDirAndUp [[0.726529,-0.687133,0.00192679],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item263 = objNull;
if (_layer221) then {
	_item263 = createVehicle ["Land_Shoot_House_Wall_F",[14730.1,16085,0],[],0,"CAN_COLLIDE"];
	_this = _item263;
	_objects pushback _this;
	_objectIDs pushback 263;
	_this setPosWorld [14730.1,16085,20.909];
	_this setVectorDirAndUp [[0.726529,-0.687136,0.000104516],[-0.00265204,-0.00265198,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item264 = objNull;
if (_layer221) then {
	_item264 = createVehicle ["Land_Shoot_House_Wall_F",[14728.6,16085,0],[],0,"CAN_COLLIDE"];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [14728.6,16085,20.9068];
	_this setVectorDirAndUp [[0.687133,0.726526,0.00284559],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item265 = objNull;
if (_layer221) then {
	_item265 = createVehicle ["Land_Shoot_House_Wall_F",[14725.8,16080.5,0],[],0,"CAN_COLLIDE"];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [14725.8,16080.5,20.8913];
	_this setVectorDirAndUp [[0.726531,-0.687133,-0.000850746],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item266 = objNull;
if (_layer221) then {
	_item266 = createVehicle ["Land_Shoot_House_Wall_F",[14728.7,16082.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [14728.7,16082.2,20.8995];
	_this setVectorDirAndUp [[0.687133,0.726526,0.00284559],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item267 = objNull;
if (_layer221) then {
	_item267 = createVehicle ["Land_Shoot_House_Wall_F",[14727.3,16080.7,0],[],0,"CAN_COLLIDE"];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [14727.3,16080.7,20.8937];
	_this setVectorDirAndUp [[0.687133,0.726526,0.00284559],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item268 = objNull;
if (_layer221) then {
	_item268 = createVehicle ["Land_Shoot_House_Wall_F",[14725.8,16081.9,0],[],0,"CAN_COLLIDE"];
	_this = _item268;
	_objects pushback _this;
	_objectIDs pushback 268;
	_this setPosWorld [14725.8,16081.9,20.8951];
	_this setVectorDirAndUp [[0.687133,0.726526,0.00284559],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item269 = objNull;
if (_layer221) then {
	_item269 = createVehicle ["Land_Shoot_House_Wall_F",[14725.7,16086.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item269;
	_objects pushback _this;
	_objectIDs pushback 269;
	_this setPosWorld [14725.7,16086.3,20.9066];
	_this setVectorDirAndUp [[0.726531,-0.687133,-0.000850746],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item270 = objNull;
if (_layer221) then {
	_item270 = createVehicle ["Land_Shoot_House_Wall_F",[14728.5,16089.2,0],[],0,"CAN_COLLIDE"];
	_this = _item270;
	_objects pushback _this;
	_objectIDs pushback 270;
	_this setPosWorld [14728.5,16089.2,20.9114];
	_this setVectorDirAndUp [[0.726529,-0.687133,0.00192679],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item271 = objNull;
if (_layer221) then {
	_item271 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14713.6,16089.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item271;
	_objects pushback _this;
	_objectIDs pushback 271;
	_this setPosWorld [14713.6,16089.5,20.825];
	_this setVectorDirAndUp [[0.726219,-0.68657,0.0350368],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item272 = objNull;
if (_layer221) then {
	_item272 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14719.1,16095.3,0],[],0,"CAN_COLLIDE"];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [14719.1,16095.3,20.8228];
	_this setVectorDirAndUp [[0.726405,-0.686395,0.0346143],[-0.0186628,0.030646,0.999356]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item273 = objNull;
if (_layer221) then {
	_item273 = createVehicle ["Land_Shoot_House_Wall_F",[14720.4,16098.2,0],[],0,"CAN_COLLIDE"];
	_this = _item273;
	_objects pushback _this;
	_objectIDs pushback 273;
	_this setPosWorld [14720.4,16098.2,20.7718];
	_this setVectorDirAndUp [[0.686838,0.726789,0.00561607],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item274 = objNull;
if (_layer221) then {
	_item274 = createVehicle ["Land_Shoot_House_Wall_F",[14712.2,16088,0],[],0,"CAN_COLLIDE"];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [14712.2,16088,20.8463];
	_this setVectorDirAndUp [[-0.726453,0.686352,-0.0344538],[-0.0146643,0.0346418,0.999292]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item275 = objNull;
if (_layer221) then {
	_item275 = createVehicle ["Land_Shoot_House_Wall_F",[14709.1,16099.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [14709.1,16099.3,20.4626];
	_this setVectorDirAndUp [[-0.726219,0.686268,-0.0405262],[-0.0293202,0.0279774,0.999178]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item276 = objNull;
if (_layer221) then {
	_item276 = createVehicle ["Land_Shoot_House_Wall_F",[14710.8,16088,0],[],0,"CAN_COLLIDE"];
	_this = _item276;
	_objects pushback _this;
	_objectIDs pushback 276;
	_this setPosWorld [14710.8,16088,20.8268];
	_this setVectorDirAndUp [[0.68706,0.726444,-0.0151008],[-0.0146643,0.0346418,0.999292]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item277 = objNull;
if (_layer221) then {
	_item277 = createVehicle ["Land_Shoot_House_Wall_F",[14717.5,16100.9,0],[],0,"CAN_COLLIDE"];
	_this = _item277;
	_objects pushback _this;
	_objectIDs pushback 277;
	_this setPosWorld [14717.5,16100.9,20.6316];
	_this setVectorDirAndUp [[0.686838,0.726789,0.00561607],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item278 = objNull;
if (_layer221) then {
	_item278 = createVehicle ["Land_Shoot_House_Wall_F",[14715,16090.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item278;
	_objects pushback _this;
	_objectIDs pushback 278;
	_this setPosWorld [14715,16090.9,20.8362];
	_this setVectorDirAndUp [[-0.726219,0.68657,-0.0350368],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item279 = objNull;
if (_layer221) then {
	_item279 = createVehicle ["Land_Shoot_House_Wall_F",[14712.3,16093.7,0],[],0,"CAN_COLLIDE"];
	_this = _item279;
	_objects pushback _this;
	_objectIDs pushback 279;
	_this setPosWorld [14712.3,16093.7,20.7028];
	_this setVectorDirAndUp [[-0.726219,0.68657,-0.0350368],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item280 = objNull;
if (_layer221) then {
	_item280 = createVehicle ["Land_Shoot_House_Wall_F",[14707.9,16090.7,0],[],0,"CAN_COLLIDE"];
	_this = _item280;
	_objects pushback _this;
	_objectIDs pushback 280;
	_this setPosWorld [14707.9,16090.7,20.689];
	_this setVectorDirAndUp [[0.68706,0.726444,-0.0151008],[-0.0146643,0.0346418,0.999292]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item281 = objNull;
if (_layer221) then {
	_item281 = createVehicle ["Land_Shoot_House_Wall_F",[14706.5,16092.1,0],[],0,"CAN_COLLIDE"];
	_this = _item281;
	_objects pushback _this;
	_objectIDs pushback 281;
	_this setPosWorld [14706.5,16092.1,20.6061];
	_this setVectorDirAndUp [[0.686864,0.726761,-0.00595159],[-0.0279873,0.034632,0.999008]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item282 = objNull;
if (_layer221) then {
	_item282 = createVehicle ["Land_Shoot_House_Wall_F",[14705,16093.5,0],[],0,"CAN_COLLIDE"];
	_this = _item282;
	_objects pushback _this;
	_objectIDs pushback 282;
	_this setPosWorld [14705,16093.5,20.5179];
	_this setVectorDirAndUp [[0.686864,0.726761,-0.00595159],[-0.0279873,0.034632,0.999008]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item283 = objNull;
if (_layer221) then {
	_item283 = createVehicle ["Land_Shoot_House_Wall_F",[14705,16094.9,0],[],0,"CAN_COLLIDE"];
	_this = _item283;
	_objects pushback _this;
	_objectIDs pushback 283;
	_this setPosWorld [14705,16094.9,20.4678];
	_this setVectorDirAndUp [[-0.726247,0.686016,-0.0441276],[-0.0279873,0.034632,0.999008]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item284 = objNull;
if (_layer221) then {
	_item284 = createVehicle ["Land_Shoot_House_Wall_F",[14706.3,16096.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item284;
	_objects pushback _this;
	_objectIDs pushback 284;
	_this setPosWorld [14706.3,16096.4,20.4619];
	_this setVectorDirAndUp [[-0.72619,0.686241,-0.0414929],[-0.0306514,0.0279763,0.999139]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item285 = objNull;
if (_layer221) then {
	_item285 = createVehicle ["Land_Shoot_House_Wall_F",[14707.7,16097.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item285;
	_objects pushback _this;
	_objectIDs pushback 285;
	_this setPosWorld [14707.7,16097.8,20.463];
	_this setVectorDirAndUp [[-0.726219,0.686268,-0.0405262],[-0.0293202,0.0279774,0.999178]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item286 = objNull;
if (_layer221) then {
	_item286 = createVehicle ["Land_Shoot_House_Wall_F",[14714.6,16103.7,0],[],0,"CAN_COLLIDE"];
	_this = _item286;
	_objects pushback _this;
	_objectIDs pushback 286;
	_this setPosWorld [14714.6,16103.7,20.4845];
	_this setVectorDirAndUp [[0.686811,0.726831,0.00265667],[-0.0306533,0.0253132,0.99921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item287 = objNull;
if (_layer221) then {
	_item287 = createVehicle ["Land_Shoot_House_Wall_F",[14710.5,16100.7,0],[],0,"CAN_COLLIDE"];
	_this = _item287;
	_objects pushback _this;
	_objectIDs pushback 287;
	_this setPosWorld [14710.5,16100.7,20.4592];
	_this setVectorDirAndUp [[-0.726273,0.686217,-0.0404197],[-0.0266571,0.0306405,0.999175]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item288 = objNull;
if (_layer221) then {
	_item288 = createVehicle ["Land_Shoot_House_Wall_F",[14717.7,16093.9,0],[],0,"CAN_COLLIDE"];
	_this = _item288;
	_objects pushback _this;
	_objectIDs pushback 288;
	_this setPosWorld [14717.7,16093.9,20.8081];
	_this setVectorDirAndUp [[-0.726405,0.687115,-0.0144779],[-0.0186628,0.00133698,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item289 = objNull;
if (_layer221) then {
	_item289 = createVehicle ["Land_Shoot_House_Wall_F",[14723.9,16101.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item289;
	_objects pushback _this;
	_objectIDs pushback 289;
	_this setPosWorld [14723.9,16101.8,20.7732];
	_this setVectorDirAndUp [[-0.726422,0.687056,-0.0162493],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item290 = objNull;
if (_layer221) then {
	_item290 = createVehicle ["Land_Shoot_House_Wall_F",[14722.5,16100.4,0],[],0,"CAN_COLLIDE"];
	_this = _item290;
	_objects pushback _this;
	_objectIDs pushback 290;
	_this setPosWorld [14722.5,16100.4,20.7884];
	_this setVectorDirAndUp [[-0.726529,0.686957,-0.0156817],[-0.00267442,0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item291 = objNull;
if (_layer221) then {
	_item291 = createVehicle ["Land_Shoot_House_Wall_F",[14721.1,16098.9,0],[],0,"CAN_COLLIDE"];
	_this = _item291;
	_objects pushback _this;
	_objectIDs pushback 291;
	_this setPosWorld [14721.1,16098.9,20.7774];
	_this setVectorDirAndUp [[-0.726219,0.68657,-0.0350368],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item292 = objNull;
if (_layer221) then {
	_item292 = createVehicle ["Land_Shoot_House_Wall_F",[14719,16101,0],[],0,"CAN_COLLIDE"];
	_this = _item292;
	_objects pushback _this;
	_objectIDs pushback 292;
	_this setPosWorld [14719,16101,20.6723];
	_this setVectorDirAndUp [[-0.726219,0.68657,-0.0350368],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item293 = objNull;
if (_layer221) then {
	_item293 = createVehicle ["Land_Shoot_House_Wall_F",[14719.6,16105.8,0],[],0,"CAN_COLLIDE"];
	_this = _item293;
	_objects pushback _this;
	_objectIDs pushback 293;
	_this setPosWorld [14719.6,16105.8,20.5778];
	_this setVectorDirAndUp [[-0.726247,0.686347,-0.0386434],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item294 = objNull;
if (_layer221) then {
	_item294 = createVehicle ["Land_Shoot_House_Wall_F",[14721.7,16103.9,0],[],0,"CAN_COLLIDE"];
	_this = _item294;
	_objects pushback _this;
	_objectIDs pushback 294;
	_this setPosWorld [14721.7,16103.9,20.6867];
	_this setVectorDirAndUp [[-0.726247,0.686347,-0.0386434],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item295 = objNull;
if (_layer221) then {
	_item295 = createVehicle ["Land_Shoot_House_Wall_F",[14726.8,16099.1,0],[],0,"CAN_COLLIDE"];
	_this = _item295;
	_objects pushback _this;
	_objectIDs pushback 295;
	_this setPosWorld [14726.8,16099.1,20.8382];
	_this setVectorDirAndUp [[0.726422,-0.687056,0.0162493],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item296 = objNull;
if (_layer221) then {
	_item296 = createVehicle ["Land_Shoot_House_Wall_F",[14725.4,16097.6,0],[],0,"CAN_COLLIDE"];
	_this = _item296;
	_objects pushback _this;
	_objectIDs pushback 296;
	_this setPosWorld [14725.4,16097.6,20.8512];
	_this setVectorDirAndUp [[0.726529,-0.686957,0.0156817],[-0.00267442,0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item297 = objNull;
if (_layer221) then {
	_item297 = createVehicle ["Land_Shoot_House_Wall_F",[14719.2,16093.9,0],[],0,"CAN_COLLIDE"];
	_this = _item297;
	_objects pushback _this;
	_objectIDs pushback 297;
	_this setPosWorld [14719.2,16093.9,20.8345];
	_this setVectorDirAndUp [[0.687014,0.726548,0.0118523],[-0.0186628,0.00133698,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item298 = objNull;
if (_layer221) then {
	_item298 = createVehicle ["Land_Shoot_House_Wall_F",[14720.6,16092.5,0],[],0,"CAN_COLLIDE"];
	_this = _item298;
	_objects pushback _this;
	_objectIDs pushback 298;
	_this setPosWorld [14720.6,16092.5,20.8634];
	_this setVectorDirAndUp [[0.687014,0.726548,0.0118523],[-0.0186628,0.00133698,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item299 = objNull;
if (_layer221) then {
	_item299 = createVehicle ["Land_Shoot_House_Wall_F",[14709.4,16089.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item299;
	_objects pushback _this;
	_objectIDs pushback 299;
	_this setPosWorld [14709.4,16089.4,20.7579];
	_this setVectorDirAndUp [[0.68706,0.726444,-0.0151008],[-0.0146643,0.0346418,0.999292]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item300 = objNull;
if (_layer221) then {
	_item300 = createVehicle ["Land_Shoot_House_Wall_F",[14722,16094,0],[],0,"CAN_COLLIDE"];
	_this = _item300;
	_objects pushback _this;
	_objectIDs pushback 300;
	_this setPosWorld [14722,16094,20.8871];
	_this setVectorDirAndUp [[0.687014,0.726548,0.0118523],[-0.0186628,0.00133698,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item301 = objNull;
if (_layer221) then {
	_item301 = createVehicle ["Land_Shoot_House_Wall_F",[14713.5,16085.5,0],[],0,"CAN_COLLIDE"];
	_this = _item301;
	_objects pushback _this;
	_objectIDs pushback 301;
	_this setPosWorld [14713.5,16085.5,20.8729];
	_this setVectorDirAndUp [[0.68706,0.726467,0.0139461],[-0.0146643,-0.00532597,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item302 = objNull;
if (_layer221) then {
	_item302 = createVehicle ["Land_Shoot_House_Wall_F",[14715,16089.5,0],[],0,"CAN_COLLIDE"];
	_this = _item302;
	_objects pushback _this;
	_objectIDs pushback 302;
	_this setPosWorld [14715,16089.5,20.8648];
	_this setVectorDirAndUp [[0.687134,0.726386,-0.0145289],[0,0.0199977,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item303 = objNull;
if (_layer221) then {
	_item303 = createVehicle ["Land_Shoot_House_Wall_F",[14712.3,16086.6,0],[],0,"CAN_COLLIDE"];
	_this = _item303;
	_objects pushback _this;
	_objectIDs pushback 303;
	_this setPosWorld [14712.3,16086.6,20.8607];
	_this setVectorDirAndUp [[0.68706,0.726467,0.0139461],[-0.0146643,-0.00532597,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item304 = objNull;
if (_layer221) then {
	_item304 = createVehicle ["Land_Shoot_House_Wall_F",[14713.2,16103.6,0],[],0,"CAN_COLLIDE"];
	_this = _item304;
	_objects pushback _this;
	_objectIDs pushback 304;
	_this setPosWorld [14713.2,16103.6,20.4448];
	_this setVectorDirAndUp [[-0.726273,0.68627,-0.0395057],[-0.0266571,0.0293097,0.999215]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item305 = objNull;
if (_layer221) then {
	_item305 = createVehicle ["Land_Shoot_House_Wall_F",[14714.4,16086,0],[],0,"CAN_COLLIDE"];
	_this = _item305;
	_objects pushback _this;
	_objectIDs pushback 305;
	_this setPosWorld [14714.4,16086,20.8884];
	_this setVectorDirAndUp [[0.726453,-0.68718,0.00699389],[-0.0146643,-0.00532597,0.999878]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item306 = objNull;
if (_layer221) then {
	_item306 = createVehicle ["Land_Shoot_House_Wall_F",[14721.9,16092.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item306;
	_objects pushback _this;
	_objectIDs pushback 306;
	_this setPosWorld [14721.9,16092.6,20.8879];
	_this setVectorDirAndUp [[0.726405,-0.687114,0.0144779],[-0.0186628,0.00133698,0.999825]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item307 = objNull;
if (_layer221) then {
	_item307 = createVehicle ["Land_Shoot_House_Wall_F",[14718.9,16086.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [14718.9,16086.2,20.902];
	_this setVectorDirAndUp [[0.687134,0.726528,0.00192675],[0,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item308 = objNull;
if (_layer221) then {
	_item308 = createVehicle ["Land_Shoot_House_Wall_F",[14716.1,16102.3,0],[],0,"CAN_COLLIDE"];
	_this = _item308;
	_objects pushback _this;
	_objectIDs pushback 308;
	_this setPosWorld [14716.1,16102.3,20.5614];
	_this setVectorDirAndUp [[0.686838,0.726789,0.00561607],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item309 = objNull;
if (_layer221) then {
	_item309 = createVehicle ["Land_Shoot_House_Wall_F",[14716.9,16100.2,0],[],0,"CAN_COLLIDE"];
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [14716.9,16100.2,20.6307];
	_this setVectorDirAndUp [[-0.726405,0.686395,-0.0346143],[-0.0186628,0.030646,0.999356]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item310 = objNull;
if (_layer221) then {
	_item310 = createVehicle ["Land_Shoot_House_Wall_F",[14715.5,16098.7,0],[],0,"CAN_COLLIDE"];
	_this = _item310;
	_objects pushback _this;
	_objectIDs pushback 310;
	_this setPosWorld [14715.5,16098.7,20.6497];
	_this setVectorDirAndUp [[-0.726405,0.686395,-0.0346143],[-0.0186628,0.030646,0.999356]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item311 = objNull;
if (_layer221) then {
	_item311 = createVehicle ["Land_Shoot_House_Wall_F",[14714.1,16097.3,2.28882e-005],[],0,"CAN_COLLIDE"];
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [14714.1,16097.3,20.6614];
	_this setVectorDirAndUp [[-0.726273,0.686217,-0.0404197],[-0.0266571,0.0306405,0.999175]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item312 = objNull;
if (_layer221) then {
	_item312 = createVehicle ["Land_Shoot_House_Wall_F",[14712.7,16097.3,0],[],0,"CAN_COLLIDE"];
	_this = _item312;
	_objects pushback _this;
	_objectIDs pushback 312;
	_this setPosWorld [14712.7,16097.3,20.6248];
	_this setVectorDirAndUp [[0.686838,0.72681,-0.000196226],[-0.0293202,0.0279774,0.999178]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item313 = objNull;
if (_layer221) then {
	_item313 = createVehicle ["Land_Shoot_House_Wall_F",[14710.8,16092.2,0],[],0,"CAN_COLLIDE"];
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [14710.8,16092.2,20.6895];
	_this setVectorDirAndUp [[0.726219,-0.68657,0.0350368],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item314 = objNull;
if (_layer221) then {
	_item314 = createVehicle ["Land_Shoot_House_Wall_F",[14710.8,16093.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item314;
	_objects pushback _this;
	_objectIDs pushback 314;
	_this setPosWorld [14710.8,16093.6,20.6602];
	_this setVectorDirAndUp [[-0.686838,-0.726789,-0.00561605],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item315 = objNull;
if (_layer221) then {
	_item315 = createVehicle ["Land_Shoot_House_Wall_F",[14709.3,16095,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [14709.3,16095,20.59];
	_this setVectorDirAndUp [[-0.686838,-0.726789,-0.00561605],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item316 = objNull;
if (_layer221) then {
	_item316 = createVehicle ["Land_Shoot_House_Wall_F",[14709.3,16096.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item316;
	_objects pushback _this;
	_objectIDs pushback 316;
	_this setPosWorld [14709.3,16096.4,20.5496];
	_this setVectorDirAndUp [[0.726219,-0.686268,0.0405262],[-0.0293202,0.0279774,0.999178]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item317 = objNull;
if (_layer221) then {
	_item317 = createVehicle ["Land_Shoot_House_Wall_F",[14713.7,16093.7,0],[],0,"CAN_COLLIDE"];
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [14713.7,16093.7,20.7444];
	_this setVectorDirAndUp [[-0.686838,-0.726789,-0.00561605],[-0.0293202,0.0199861,0.99937]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item318 = objNull;
if (_layer221) then {
	_item318 = createVehicle ["Land_Shoot_House_Wall_F",[14720.5,16095.3,0],[],0,"CAN_COLLIDE"];
	_this = _item318;
	_objects pushback _this;
	_objectIDs pushback 318;
	_this setPosWorld [14720.5,16095.3,20.848];
	_this setVectorDirAndUp [[0.687014,0.726583,-0.00945137],[-0.0186628,0.030646,0.999356]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item319 = objNull;
if (_layer221) then {
	_item319 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14728.2,16099.1,0],[],0,"CAN_COLLIDE"];
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [14728.2,16099.1,20.8625];
	_this setVectorDirAndUp [[-0.68703,-0.726585,-0.00803673],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item320 = objNull;
if (_layer221) then {
	_item320 = createVehicle ["Land_Shoot_House_Wall_F",[14742.1,16108,0],[],0,"CAN_COLLIDE"];
	_this = _item320;
	_objects pushback _this;
	_objectIDs pushback 320;
	_this setPosWorld [14742.1,16108,20.8682];
	_this setVectorDirAndUp [[0.687134,0.72653,-0.000938584],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item321 = objNull;
if (_layer221) then {
	_item321 = createVehicle ["Land_Shoot_House_Wall_F",[14735.2,16100.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [14735.2,16100.7,20.8988];
	_this setVectorDirAndUp [[0.687128,0.726534,0.00177477],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item322 = objNull;
if (_layer221) then {
	_item322 = createVehicle ["Land_Shoot_House_Wall_F",[14735.1,16106.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item322;
	_objects pushback _this;
	_objectIDs pushback 322;
	_this setPosWorld [14735.1,16106.4,20.8461];
	_this setVectorDirAndUp [[0.687046,0.726579,0.00712253],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item323 = objNull;
if (_layer221) then {
	_item323 = createVehicle ["Land_Shoot_House_Wall_F",[14732.4,16103.4,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item323;
	_objects pushback _this;
	_objectIDs pushback 323;
	_this setPosWorld [14732.4,16103.4,20.8686];
	_this setVectorDirAndUp [[0.687128,0.72647,-0.00984357],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item324 = objNull;
if (_layer221) then {
	_item324 = createVehicle ["Land_Shoot_House_Wall_F",[14740.6,16109.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item324;
	_objects pushback _this;
	_objectIDs pushback 324;
	_this setPosWorld [14740.6,16109.3,20.8664];
	_this setVectorDirAndUp [[0.687134,0.72653,-0.000938584],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item325 = objNull;
if (_layer221) then {
	_item325 = createVehicle ["Land_Shoot_House_Wall_F",[14736.9,16090.9,0],[],0,"CAN_COLLIDE"];
	_this = _item325;
	_objects pushback _this;
	_objectIDs pushback 325;
	_this setPosWorld [14736.9,16090.9,20.921];
	_this setVectorDirAndUp [[0.687134,0.72653,-0.000938584],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item326 = objNull;
if (_layer221) then {
	_item326 = createVehicle ["Land_Shoot_House_Wall_F",[14734.2,16090.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item326;
	_objects pushback _this;
	_objectIDs pushback 326;
	_this setPosWorld [14734.2,16090.8,20.9211];
	_this setVectorDirAndUp [[0.687134,0.72653,-0.000938584],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item327 = objNull;
if (_layer221) then {
	_item327 = createVehicle ["Land_Shoot_House_Wall_F",[14739.2,16110.7,0],[],0,"CAN_COLLIDE"];
	_this = _item327;
	_objects pushback _this;
	_objectIDs pushback 327;
	_this setPosWorld [14739.2,16110.7,20.853];
	_this setVectorDirAndUp [[0.687134,0.726422,-0.0125895],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item328 = objNull;
if (_layer221) then {
	_item328 = createVehicle ["Land_Shoot_House_Wall_F",[14739.2,16110.7,0],[],0,"CAN_COLLIDE"];
	_this = _item328;
	_objects pushback _this;
	_objectIDs pushback 328;
	_this setPosWorld [14739.2,16110.7,20.853];
	_this setVectorDirAndUp [[0.687134,0.726422,-0.0125895],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item329 = objNull;
if (_layer221) then {
	_item329 = createVehicle ["Land_Shoot_House_Wall_F",[14739.7,16092.3,0],[],0,"CAN_COLLIDE"];
	_this = _item329;
	_objects pushback _this;
	_objectIDs pushback 329;
	_this setPosWorld [14739.7,16092.3,20.9161];
	_this setVectorDirAndUp [[-0.726531,0.687134,5.2438e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item330 = objNull;
if (_layer221) then {
	_item330 = createVehicle ["Land_Shoot_House_Wall_F",[14733.8,16102.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item330;
	_objects pushback _this;
	_objectIDs pushback 330;
	_this setPosWorld [14733.8,16102.1,20.8912];
	_this setVectorDirAndUp [[0.687128,0.726534,0.00177477],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item331 = objNull;
if (_layer221) then {
	_item331 = createVehicle ["Land_Shoot_House_Wall_F",[14746.5,16103.8,0],[],0,"CAN_COLLIDE"];
	_this = _item331;
	_objects pushback _this;
	_objectIDs pushback 331;
	_this setPosWorld [14746.5,16103.8,20.8698];
	_this setVectorDirAndUp [[0.687131,0.726528,-0.0027938],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item332 = objNull;
if (_layer221) then {
	_item332 = createVehicle ["Land_Shoot_House_Wall_F",[14741.1,16093.8,0],[],0,"CAN_COLLIDE"];
	_this = _item332;
	_objects pushback _this;
	_objectIDs pushback 332;
	_this setPosWorld [14741.1,16093.8,20.9123];
	_this setVectorDirAndUp [[-0.726531,0.687134,5.2438e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item333 = objNull;
if (_layer221) then {
	_item333 = createVehicle ["Land_Shoot_House_Wall_F",[14745.2,16098.2,0],[],0,"CAN_COLLIDE"];
	_this = _item333;
	_objects pushback _this;
	_objectIDs pushback 333;
	_this setPosWorld [14745.2,16098.2,20.892];
	_this setVectorDirAndUp [[-0.726526,0.687139,0.00015738],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item334 = objNull;
if (_layer221) then {
	_item334 = createVehicle ["Land_Shoot_House_Wall_F",[14746.6,16099.6,0],[],0,"CAN_COLLIDE"];
	_this = _item334;
	_objects pushback _this;
	_objectIDs pushback 334;
	_this setPosWorld [14746.6,16099.6,20.8807];
	_this setVectorDirAndUp [[-0.726526,0.687139,0.00015738],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item335 = objNull;
if (_layer221) then {
	_item335 = createVehicle ["Land_Shoot_House_Wall_F",[14731.1,16096.3,0],[],0,"CAN_COLLIDE"];
	_this = _item335;
	_objects pushback _this;
	_objectIDs pushback 335;
	_this setPosWorld [14731.1,16096.3,20.9083];
	_this setVectorDirAndUp [[0.687134,0.726521,-0.00386987],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item336 = objNull;
if (_layer221) then {
	_item336 = createVehicle ["Land_Shoot_House_Wall_F",[14731.8,16095.7,0],[],0,"CAN_COLLIDE"];
	_this = _item336;
	_objects pushback _this;
	_objectIDs pushback 336;
	_this setPosWorld [14731.8,16095.7,20.912];
	_this setVectorDirAndUp [[0.687134,0.726521,-0.00386987],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item337 = objNull;
if (_layer221) then {
	_item337 = createVehicle ["Land_Shoot_House_Wall_F",[14738.3,16090.9,0],[],0,"CAN_COLLIDE"];
	_this = _item337;
	_objects pushback _this;
	_objectIDs pushback 337;
	_this setPosWorld [14738.3,16090.9,20.9199];
	_this setVectorDirAndUp [[-0.726531,0.687134,5.2438e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item338 = objNull;
if (_layer221) then {
	_item338 = createVehicle ["Land_Shoot_House_Wall_F",[14738,16103.6,0],[],0,"CAN_COLLIDE"];
	_this = _item338;
	_objects pushback _this;
	_objectIDs pushback 338;
	_this setPosWorld [14738,16103.6,20.8976];
	_this setVectorDirAndUp [[0.687128,0.726506,-0.00661607],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item339 = objNull;
if (_layer221) then {
	_item339 = createVehicle ["Land_Shoot_House_Wall_F",[14740.6,16109.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item339;
	_objects pushback _this;
	_objectIDs pushback 339;
	_this setPosWorld [14740.6,16109.3,20.8664];
	_this setVectorDirAndUp [[0.687134,0.72653,-0.000938584],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item340 = objNull;
if (_layer221) then {
	_item340 = createVehicle ["Land_Shoot_House_Wall_F",[14747.9,16102.5,0],[],0,"CAN_COLLIDE"];
	_this = _item340;
	_objects pushback _this;
	_objectIDs pushback 340;
	_this setPosWorld [14747.9,16102.5,20.8678];
	_this setVectorDirAndUp [[0.687131,0.726524,-0.00374906],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item341 = objNull;
if (_layer221) then {
	_item341 = createVehicle ["Land_Shoot_House_Wall_F",[14740.9,16100.9,0],[],0,"CAN_COLLIDE"];
	_this = _item341;
	_objects pushback _this;
	_objectIDs pushback 341;
	_this setPosWorld [14740.9,16100.9,20.8984];
	_this setVectorDirAndUp [[0.687128,0.726514,-0.00564998],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item342 = objNull;
if (_layer221) then {
	_item342 = createVehicle ["Land_Shoot_House_Wall_F",[14742.3,16105.3,0],[],0,"CAN_COLLIDE"];
	_this = _item342;
	_objects pushback _this;
	_objectIDs pushback 342;
	_this setPosWorld [14742.3,16105.3,20.8718];
	_this setVectorDirAndUp [[0.687134,0.72653,-0.000938584],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item343 = objNull;
if (_layer221) then {
	_item343 = createVehicle ["Land_Shoot_House_Wall_F",[14739.4,16102.2,0],[],0,"CAN_COLLIDE"];
	_this = _item343;
	_objects pushback _this;
	_objectIDs pushback 343;
	_this setPosWorld [14739.4,16102.2,20.8988];
	_this setVectorDirAndUp [[0.687128,0.726514,-0.00564998],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item344 = objNull;
if (_layer221) then {
	_item344 = createVehicle ["Land_Shoot_House_Wall_F",[14742.3,16099.5,0],[],0,"CAN_COLLIDE"];
	_this = _item344;
	_objects pushback _this;
	_objectIDs pushback 344;
	_this setPosWorld [14742.3,16099.5,20.8982];
	_this setVectorDirAndUp [[0.687128,0.726514,-0.00564998],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item345 = objNull;
if (_layer221) then {
	_item345 = createVehicle ["Land_Shoot_House_Wall_F",[14741,16095.2,0],[],0,"CAN_COLLIDE"];
	_this = _item345;
	_objects pushback _this;
	_objectIDs pushback 345;
	_this setPosWorld [14741,16095.2,20.9105];
	_this setVectorDirAndUp [[0.687133,0.726529,-0.00189014],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item346 = objNull;
if (_layer221) then {
	_item346 = createVehicle ["Land_Shoot_House_Wall_F",[14743.8,16098.1,0],[],0,"CAN_COLLIDE"];
	_this = _item346;
	_objects pushback _this;
	_objectIDs pushback 346;
	_this setPosWorld [14743.8,16098.1,20.8979];
	_this setVectorDirAndUp [[0.687128,0.726514,-0.00564998],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item347 = objNull;
if (_layer221) then {
	_item347 = createVehicle ["Land_Shoot_House_Wall_F",[14736.5,16105,0],[],0,"CAN_COLLIDE"];
	_this = _item347;
	_objects pushback _this;
	_objectIDs pushback 347;
	_this setPosWorld [14736.5,16105,20.8766];
	_this setVectorDirAndUp [[0.687046,0.726579,0.00712253],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item348 = objNull;
if (_layer221) then {
	_item348 = createVehicle ["Land_Shoot_House_Wall_F",[14731.8,16097.1,0],[],0,"CAN_COLLIDE"];
	_this = _item348;
	_objects pushback _this;
	_objectIDs pushback 348;
	_this setPosWorld [14731.8,16097.1,20.9044];
	_this setVectorDirAndUp [[-0.726531,0.687124,-0.00366002],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item349 = objNull;
if (_layer221) then {
	_item349 = createVehicle ["Land_Shoot_House_Wall_F",[14733.2,16098.5,0],[],0,"CAN_COLLIDE"];
	_this = _item349;
	_objects pushback _this;
	_objectIDs pushback 349;
	_this setPosWorld [14733.2,16098.5,20.8967];
	_this setVectorDirAndUp [[-0.726531,0.687124,-0.00366002],[0,0.0053265,0.999986]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item350 = objNull;
if (_layer221) then {
	_item350 = createVehicle ["Land_Shoot_House_Wall_F",[14734.5,16100,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [14734.5,16100,20.897];
	_this setVectorDirAndUp [[-0.726526,0.687129,-0.0038226],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item351 = objNull;
if (_layer221) then {
	_item351 = createVehicle ["Land_Shoot_House_Wall_F",[14737.9,16107.9,0],[],0,"CAN_COLLIDE"];
	_this = _item351;
	_objects pushback _this;
	_objectIDs pushback 351;
	_this setPosWorld [14737.9,16107.9,20.8753];
	_this setVectorDirAndUp [[-0.726526,0.687139,-0.000756356],[0.00399666,0.00532646,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item352 = objNull;
if (_layer221) then {
	_item352 = createVehicle ["Land_Shoot_House_Wall_F",[14733.5,16109.1,0],[],0,"CAN_COLLIDE"];
	_this = _item352;
	_objects pushback _this;
	_objectIDs pushback 352;
	_this setPosWorld [14733.5,16109.1,20.8065];
	_this setVectorDirAndUp [[-0.726438,0.687062,-0.0152827],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item353 = objNull;
if (_layer221) then {
	_item353 = createVehicle ["Land_Shoot_House_Wall_F",[14739.2,16109.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item353;
	_objects pushback _this;
	_objectIDs pushback 353;
	_this setPosWorld [14739.2,16109.3,20.8664];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000887687],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item354 = objNull;
if (_layer221) then {
	_item354 = createVehicle ["Land_Shoot_House_Wall_F",[14748,16101.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [14748,16101.1,20.8715];
	_this setVectorDirAndUp [[-0.726529,0.687136,0.00010444],[0.00265199,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item355 = objNull;
if (_layer221) then {
	_item355 = createVehicle ["Land_Shoot_House_Wall_F",[14740.8,16102.3,0],[],0,"CAN_COLLIDE"];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [14740.8,16102.3,20.893];
	_this setVectorDirAndUp [[-0.726526,0.687139,0.00015738],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item356 = objNull;
if (_layer221) then {
	_item356 = createVehicle ["Land_Shoot_House_Wall_F",[14743.8,16096.7,0],[],0,"CAN_COLLIDE"];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [14743.8,16096.7,20.9034];
	_this setVectorDirAndUp [[-0.726526,0.687139,0.00015738],[0.00399666,0.00399671,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item357 = objNull;
if (_layer221) then {
	_item357 = createVehicle ["Land_Shoot_House_Wall_F",[14739.6,16096.6,0],[],0,"CAN_COLLIDE"];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [14739.6,16096.6,20.9106];
	_this setVectorDirAndUp [[0.687133,0.726529,-0.00189014],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item358 = objNull;
if (_layer221) then {
	_item358 = createVehicle ["Land_Shoot_House_Wall_F",[14736.3,16113.5,0],[],0,"CAN_COLLIDE"];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [14736.3,16113.5,20.7763];
	_this setVectorDirAndUp [[0.686936,0.726708,0.00389245],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item359 = objNull;
if (_layer221) then {
	_item359 = createVehicle ["Land_Shoot_House_Wall_F",[14723,16113.7,0],[],0,"CAN_COLLIDE"];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [14723,16113.7,20.4589];
	_this setVectorDirAndUp [[-0.726273,0.686373,-0.0376757],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item360 = objNull;
if (_layer221) then {
	_item360 = createVehicle ["Land_Shoot_House_Wall_F",[14726.7,16100.5,0],[],0,"CAN_COLLIDE"];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [14726.7,16100.5,20.83];
	_this setVectorDirAndUp [[0.68703,0.726584,0.00803674],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item361 = objNull;
if (_layer221) then {
	_item361 = createVehicle ["Land_Shoot_House_Wall_F",[14733.4,16116.2,0],[],0,"CAN_COLLIDE"];
	_this = _item361;
	_objects pushback _this;
	_objectIDs pushback 361;
	_this setPosWorld [14733.4,16116.2,20.6598];
	_this setVectorDirAndUp [[0.686936,0.726708,0.00389245],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item362 = objNull;
if (_layer221) then {
	_item362 = createVehicle ["Land_Shoot_House_Wall_F",[14721,16106,0],[],0,"CAN_COLLIDE"];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [14721,16106,20.6105];
	_this setVectorDirAndUp [[0.686864,0.726785,-0.000142995],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item363 = objNull;
if (_layer221) then {
	_item363 = createVehicle ["Land_Shoot_House_Wall_F",[14730.9,16104.8,0],[],0,"CAN_COLLIDE"];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [14730.9,16104.8,20.8386];
	_this setVectorDirAndUp [[0.687128,0.72647,-0.00984357],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item364 = objNull;
if (_layer221) then {
	_item364 = createVehicle ["Land_Shoot_House_Wall_F",[14733.5,16113.5,0],[],0,"CAN_COLLIDE"];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [14733.5,16113.5,20.7133];
	_this setVectorDirAndUp [[0.687046,0.726576,-0.00741047],[-0.0159977,0.0253219,0.999551]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item365 = objNull;
if (_layer221) then {
	_item365 = createVehicle ["Land_Shoot_House_Wall_F",[14721.6,16112.2,0],[],0,"CAN_COLLIDE"];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [14721.6,16112.2,20.456];
	_this setVectorDirAndUp [[-0.72616,0.68627,-0.0415454],[-0.031983,0.0266434,0.999133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item366 = objNull;
if (_layer221) then {
	_item366 = createVehicle ["Land_Shoot_House_Wall_F",[14729.9,16119.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [14729.9,16119.6,20.4911];
	_this setVectorDirAndUp [[0.686811,0.726836,-0.000249477],[-0.0306514,0.0293064,0.9991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item367 = objNull;
if (_layer221) then {
	_item367 = createVehicle ["Land_Shoot_House_Wall_F",[14725.7,16116.6,0],[],0,"CAN_COLLIDE"];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [14725.7,16116.6,20.4578];
	_this setVectorDirAndUp [[-0.726247,0.686398,-0.0377304],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item368 = objNull;
if (_layer221) then {
	_item368 = createVehicle ["Land_Shoot_House_Wall_F",[14727.1,16118.1,0],[],0,"CAN_COLLIDE"];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [14727.1,16118.1,20.4557];
	_this setVectorDirAndUp [[-0.726247,0.686131,-0.0422998],[-0.0279873,0.0319705,0.999097]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item369 = objNull;
if (_layer221) then {
	_item369 = createVehicle ["Land_Shoot_House_Wall_F",[14723.9,16103.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [14723.9,16103.2,20.7505];
	_this setVectorDirAndUp [[0.68703,0.72659,-0.00746229],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item370 = objNull;
if (_layer221) then {
	_item370 = createVehicle ["Land_Shoot_House_Wall_F",[14732.2,16109.1,0],[],0,"CAN_COLLIDE"];
	_this = _item370;
	_objects pushback _this;
	_objectIDs pushback 370;
	_this setPosWorld [14732.2,16109.1,20.7849];
	_this setVectorDirAndUp [[0.687046,0.726579,0.00712253],[-0.0159977,0.00532582,0.999858]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item371 = objNull;
if (_layer221) then {
	_item371 = createVehicle ["Land_Shoot_House_Wall_F",[14725.3,16101.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [14725.3,16101.8,20.798];
	_this setVectorDirAndUp [[0.68703,0.726584,0.00803674],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item372 = objNull;
if (_layer221) then {
	_item372 = createVehicle ["Land_Shoot_House_Wall_F",[14729.4,16106.2,0],[],0,"CAN_COLLIDE"];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [14729.4,16106.2,20.7963];
	_this setVectorDirAndUp [[0.686889,0.726739,0.00572226],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item373 = objNull;
if (_layer221) then {
	_item373 = createVehicle ["Land_Shoot_House_Wall_F",[14726.5,16109,0],[],0,"CAN_COLLIDE"];
	_this = _item373;
	_objects pushback _this;
	_objectIDs pushback 373;
	_this setPosWorld [14726.5,16109,20.6694];
	_this setVectorDirAndUp [[0.686889,0.726739,0.00572226],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item374 = objNull;
if (_layer221) then {
	_item374 = createVehicle ["Land_Shoot_House_Wall_F",[14722.4,16104.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [14722.4,16104.6,20.6873];
	_this setVectorDirAndUp [[0.686864,0.726785,-0.000142995],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item375 = objNull;
if (_layer221) then {
	_item375 = createVehicle ["Land_Shoot_House_Wall_F",[14725.7,16115.2,0],[],0,"CAN_COLLIDE"];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [14725.7,16115.2,20.4946];
	_this setVectorDirAndUp [[0.686864,0.726785,0.000826828],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item376 = objNull;
if (_layer221) then {
	_item376 = createVehicle ["Land_Shoot_House_Wall_F",[14728.6,16112.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [14728.6,16112.5,20.6435];
	_this setVectorDirAndUp [[0.686864,0.726785,0.000826828],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item377 = objNull;
if (_layer221) then {
	_item377 = createVehicle ["Land_Shoot_House_Wall_F",[14718.8,16109.3,0],[],0,"CAN_COLLIDE"];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [14718.8,16109.3,20.4603];
	_this setVectorDirAndUp [[-0.726247,0.686347,-0.0386434],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item378 = objNull;
if (_layer221) then {
	_item378 = createVehicle ["Land_Shoot_House_Wall_F",[14726.7,16101.9,0],[],0,"CAN_COLLIDE"];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [14726.7,16101.9,20.8218];
	_this setVectorDirAndUp [[-0.726422,0.687056,-0.0162493],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item379 = objNull;
if (_layer221) then {
	_item379 = createVehicle ["Land_Shoot_House_Wall_F",[14730.9,16103.5,0],[],0,"CAN_COLLIDE"];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [14730.9,16103.5,20.8615];
	_this setVectorDirAndUp [[-0.726526,0.68698,-0.0148101],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item380 = objNull;
if (_layer221) then {
	_item380 = createVehicle ["Land_Shoot_House_Wall_F",[14730.8,16106.3,0],[],0,"CAN_COLLIDE"];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [14730.8,16106.3,20.8124];
	_this setVectorDirAndUp [[-0.726526,0.68698,-0.0148101],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item381 = objNull;
if (_layer221) then {
	_item381 = createVehicle ["Land_Shoot_House_Wall_F",[14732.1,16107.7,0],[],0,"CAN_COLLIDE"];
	_this = _item381;
	_objects pushback _this;
	_objectIDs pushback 381;
	_this setPosWorld [14732.1,16107.7,20.7935];
	_this setVectorDirAndUp [[-0.726526,0.68698,-0.0148101],[-0.00399675,0.017328,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item382 = objNull;
if (_layer221) then {
	_item382 = createVehicle ["Land_Shoot_House_Wall_F",[14733.4,16114.9,0],[],0,"CAN_COLLIDE"];
	_this = _item382;
	_objects pushback _this;
	_objectIDs pushback 382;
	_this setPosWorld [14733.4,16114.9,20.6819];
	_this setVectorDirAndUp [[-0.726322,0.686728,-0.0293387],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item383 = objNull;
if (_layer221) then {
	_item383 = createVehicle ["Land_Shoot_House_Wall_F",[14728.5,16119.5,0],[],0,"CAN_COLLIDE"];
	_this = _item383;
	_objects pushback _this;
	_objectIDs pushback 383;
	_this setPosWorld [14728.5,16119.5,20.4489];
	_this setVectorDirAndUp [[-0.72619,0.686185,-0.0424065],[-0.0306514,0.0293064,0.9991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item384 = objNull;
if (_layer221) then {
	_item384 = createVehicle ["Land_Shoot_House_Wall_F",[14726.7,16100.5,0],[],0,"CAN_COLLIDE"];
	_this = _item384;
	_objects pushback _this;
	_objectIDs pushback 384;
	_this setPosWorld [14726.7,16100.5,20.83];
	_this setVectorDirAndUp [[0.68703,0.726584,0.00803674],[-0.0173282,0.0053257,0.999836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item385 = objNull;
if (_layer221) then {
	_item385 = createVehicle ["Land_Shoot_House_Wall_F",[14737.7,16112.1,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item385;
	_objects pushback _this;
	_objectIDs pushback 385;
	_this setPosWorld [14737.7,16112.1,20.8291];
	_this setVectorDirAndUp [[-0.687133,-0.726422,0.0125895],[0,0.0173282,0.99985]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item386 = objNull;
if (_layer221) then {
	_item386 = createVehicle ["Land_Shoot_House_Wall_F",[14727.2,16113.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item386;
	_objects pushback _this;
	_objectIDs pushback 386;
	_this setPosWorld [14727.2,16113.9,20.5688];
	_this setVectorDirAndUp [[0.686864,0.726785,0.000826828],[-0.0279894,0.0253152,0.999288]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item387 = objNull;
if (_layer221) then {
	_item387 = createVehicle ["Land_Shoot_House_Wall_F",[14732.1,16117.4,0],[],0,"CAN_COLLIDE"];
	_this = _item387;
	_objects pushback _this;
	_objectIDs pushback 387;
	_this setPosWorld [14732.1,16117.4,20.6082];
	_this setVectorDirAndUp [[-0.686935,-0.726708,-0.00389243],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item388 = objNull;
if (_layer221) then {
	_item388 = createVehicle ["Land_Shoot_House_Wall_F",[14728,16107.6,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item388;
	_objects pushback _this;
	_objectIDs pushback 388;
	_this setPosWorld [14728,16107.6,20.7332];
	_this setVectorDirAndUp [[0.686889,0.726739,0.00572226],[-0.0266571,0.0173255,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item389 = objNull;
if (_layer221) then {
	_item389 = createVehicle ["Land_Shoot_House_Wall_F",[14728.1,16103.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item389;
	_objects pushback _this;
	_objectIDs pushback 389;
	_this setPosWorld [14728.1,16103.3,20.8199];
	_this setVectorDirAndUp [[-0.726422,0.686553,-0.0309044],[-0.0173316,0.0266531,0.999494]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item391 = objNull;
if (_layer390 && _layer221) then {
	_item391 = createVehicle ["Sign_Arrow_F",[14730.7,16094.9,0],[],0,"CAN_COLLIDE"];
	_this = _item391;
	_objects pushback _this;
	_objectIDs pushback 391;
	_this setPosWorld [14730.7,16094.9,19.6134];
	_this setVectorDirAndUp [[-0.676033,-0.736871,0.000951943],[0,0.00129187,0.999999]];
	sh_spawn_1 = _this;
	_this setVehicleVarName "sh_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item392 = objNull;
if (_layer390 && _layer221) then {
	_item392 = createVehicle ["Sign_Arrow_F",[14741.1,16096.9,0],[],0,"CAN_COLLIDE"];
	_this = _item392;
	_objects pushback _this;
	_objectIDs pushback 392;
	_this setPosWorld [14741.1,16096.9,19.6058];
	_this setVectorDirAndUp [[-0.723205,0.690633,4.33137e-005],[0.00133688,0.00133721,0.999998]];
	sh_spawn_2 = _this;
	_this setVehicleVarName "sh_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item393 = objNull;
if (_layer390 && _layer221) then {
	_item393 = createVehicle ["Sign_Arrow_F",[14734.8,16103.7,0],[],0,"CAN_COLLIDE"];
	_this = _item393;
	_objects pushback _this;
	_objectIDs pushback 393;
	_this setPosWorld [14734.8,16103.7,19.5709];
	_this setVectorDirAndUp [[-0.687288,-0.726319,0.00984032],[-0.00399675,0.017328,0.999842]];
	sh_spawn_4 = _this;
	_this setVehicleVarName "sh_spawn_4";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item394 = objNull;
if (_layer390 && _layer221) then {
	_item394 = createVehicle ["Sign_Arrow_F",[14724.8,16106.2,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item394;
	_objects pushback _this;
	_objectIDs pushback 394;
	_this setPosWorld [14724.8,16106.2,19.386];
	_this setVectorDirAndUp [[0.701794,-0.711698,0.0311479],[-0.0173316,0.0266531,0.999494]];
	sh_spawn_5 = _this;
	_this setVehicleVarName "sh_spawn_5";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item395 = objNull;
if (_layer390 && _layer221) then {
	_item395 = createVehicle ["Sign_Arrow_F",[14730.6,16100.8,0],[],0,"CAN_COLLIDE"];
	_this = _item395;
	_objects pushback _this;
	_objectIDs pushback 395;
	_this setPosWorld [14730.6,16100.8,19.5823];
	_this setVectorDirAndUp [[0.694498,-0.719485,0.00383239],[0,0.0053265,0.999986]];
	sh_spawn_6 = _this;
	_this setVehicleVarName "sh_spawn_6";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item396 = objNull;
if (_layer390 && _layer221) then {
	_item396 = createVehicle ["Sign_Arrow_F",[14714.9,16088,0],[],0,"CAN_COLLIDE"];
	_this = _item396;
	_objects pushback _this;
	_objectIDs pushback 396;
	_this setPosWorld [14714.9,16088,19.5905];
	_this setVectorDirAndUp [[-0.765519,0.642444,-0.0353073],[-0.0293202,0.0199861,0.99937]];
	sh_spawn_7 = _this;
	_this setVehicleVarName "sh_spawn_7";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item397 = objNull;
if (_layer390 && _layer221) then {
	_item397 = createVehicle ["Sign_Arrow_F",[14716.5,16096.5,0],[],0,"CAN_COLLIDE"];
	_this = _item397;
	_objects pushback _this;
	_objectIDs pushback 397;
	_this setPosWorld [14716.5,16096.5,19.4355];
	_this setVectorDirAndUp [[0.738909,-0.672925,0.0344347],[-0.0186628,0.030646,0.999356]];
	sh_spawn_8 = _this;
	_this setVehicleVarName "sh_spawn_8";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item398 = objNull;
if (_layer390 && _layer221) then {
	_item398 = createVehicle ["Sign_Arrow_F",[14724.5,16092.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item398;
	_objects pushback _this;
	_objectIDs pushback 398;
	_this setPosWorld [14724.5,16092.5,19.5993];
	_this setVectorDirAndUp [[0.746407,-0.665487,0.00188801],[-0.00133721,0.00133721,0.999998]];
	sh_spawn_9 = _this;
	_this setVehicleVarName "sh_spawn_9";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item399 = objNull;
if (_layer390 && _layer221) then {
	_item399 = createVehicle ["Sign_Arrow_F",[14720.4,16093.8,0],[],0,"CAN_COLLIDE"];
	_this = _item399;
	_objects pushback _this;
	_objectIDs pushback 399;
	_this setPosWorld [14720.4,16093.8,19.5558];
	_this setVectorDirAndUp [[-0.728554,0.684834,-0.014515],[-0.0186628,0.00133698,0.999825]];
	sh_spawn_10 = _this;
	_this setVehicleVarName "sh_spawn_10";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item400 = objNull;
if (_layer390 && _layer221) then {
	_item400 = createVehicle ["Sign_Arrow_F",[14726.9,16097.5,0],[],0,"CAN_COLLIDE"];
	_this = _item400;
	_objects pushback _this;
	_objectIDs pushback 400;
	_this setPosWorld [14726.9,16097.5,19.5541];
	_this setVectorDirAndUp [[0.686315,0.727194,-0.0127071],[-0.00267442,0.0199946,0.999797]];
	sh_spawn_11 = _this;
	_this setVehicleVarName "sh_spawn_11";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item401 = objNull;
if (_layer390 && _layer221) then {
	_item401 = createVehicle ["Sign_Arrow_F",[14723.7,16079.9,0],[],0,"CAN_COLLIDE"];
	_this = _item401;
	_objects pushback _this;
	_objectIDs pushback 401;
	_this setPosWorld [14723.7,16079.9,19.5847];
	_this setVectorDirAndUp [[-0.685233,-0.728319,-0.00284781],[-0.00133721,-0.00265199,0.999996]];
	sh_spawn_12 = _this;
	_this setVehicleVarName "sh_spawn_12";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item402 = objNull;
if (_layer390 && _layer221) then {
	_item402 = createVehicle ["Sign_Arrow_F",[14725.2,16112.8,0],[],0,"CAN_COLLIDE"];
	_this = _item402;
	_objects pushback _this;
	_objectIDs pushback 402;
	_this setPosWorld [14725.2,16112.8,19.239];
	_this setVectorDirAndUp [[-0.687049,-0.72661,0.00104999],[-0.0266548,0.0266476,0.999289]];
	sh_spawn_13 = _this;
	_this setVehicleVarName "sh_spawn_13";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item403 = objNull;
if (_layer390 && _layer221) then {
	_item403 = createVehicle ["Sign_Arrow_F",[14717,16091.5,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item403;
	_objects pushback _this;
	_objectIDs pushback 403;
	_this setPosWorld [14717,16091.5,19.5239];
	_this setVectorDirAndUp [[-0.687293,-0.726235,0.0145259],[0,0.0199977,0.9998]];
	sh_spawn_14 = _this;
	_this setVehicleVarName "sh_spawn_14";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item404 = objNull;
if (_layer390 && _layer221) then {
	_item404 = createVehicle ["Sign_Arrow_F",[14737.7,16109.6,0],[],0,"CAN_COLLIDE"];
	_this = _item404;
	_objects pushback _this;
	_objectIDs pushback 404;
	_this setPosWorld [14737.7,16109.6,19.5644];
	_this setVectorDirAndUp [[-0.687288,-0.726355,0.0066159],[0.00399666,0.00532646,0.999978]];
	sh_spawn_15 = _this;
	_this setVehicleVarName "sh_spawn_15";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item405 = objNull;
if (_layer390 && _layer221) then {
	_item405 = createVehicle ["Sign_Arrow_F",[14739.5,16095.1,0],[],0,"CAN_COLLIDE"];
	_this = _item405;
	_objects pushback _this;
	_objectIDs pushback 405;
	_this setPosWorld [14739.5,16095.1,19.6105];
	_this setVectorDirAndUp [[0.686316,0.727301,-0.00189008],[0.00133688,0.00133721,0.999998]];
	sh_spawn_16 = _this;
	_this setVehicleVarName "sh_spawn_16";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item406 = objNull;
if (_layer390 && _layer221) then {
	_item406 = createVehicle ["Sign_Arrow_F",[14734.3,16098.1,0],[],0,"CAN_COLLIDE"];
	_this = _item406;
	_objects pushback _this;
	_objectIDs pushback 406;
	_this setPosWorld [14734.3,16098.1,19.5966];
	_this setVectorDirAndUp [[0.686317,0.727292,-0.00387398],[0,0.0053265,0.999986]];
	sh_spawn_17 = _this;
	_this setVehicleVarName "sh_spawn_17";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item407 = objNull;
if (_layer390 && _layer221) then {
	_item407 = createVehicle ["Sign_Arrow_F",[14708.1,16093.9,-1.14441e-005],[],0,"CAN_COLLIDE"];
	_this = _item407;
	_objects pushback _this;
	_objectIDs pushback 407;
	_this setPosWorld [14708.1,16093.9,19.2805];
	_this setVectorDirAndUp [[0.686243,0.727215,-0.0151395],[-0.0146643,0.0346418,0.999292]];
	sh_spawn_18 = _this;
	_this setVehicleVarName "sh_spawn_18";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item408 = objNull;
if (_layer390 && _layer221) then {
	_item408 = createVehicle ["Sign_Arrow_F",[14726.2,16089.5,0],[],0,"CAN_COLLIDE"];
	_this = _item408;
	_objects pushback _this;
	_objectIDs pushback 408;
	_this setPosWorld [14726.2,16089.5,19.6055];
	_this setVectorDirAndUp [[-0.676032,-0.736872,8.13555e-005],[-0.00133721,0.00133721,0.999998]];
	sh_spawn_3 = _this;
	_this setVehicleVarName "sh_spawn_3";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item409 = objNull;
if (_layer390 && _layer221) then {
	_item409 = createVehicle ["Sign_Arrow_F",[14720.3,16083.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item409;
	_objects pushback _this;
	_objectIDs pushback 409;
	_this setPosWorld [14720.3,16083.3,19.592];
	_this setVectorDirAndUp [[-0.687293,-0.726377,-0.00192635],[0,-0.00265199,0.999996]];
	sh_spawn_19 = _this;
	_this setVehicleVarName "sh_spawn_19";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0,0,0.75,ca)"];
};

private _item412 = objNull;
if (_layer221) then {
	_item412 = createVehicle ["Land_Shoot_House_Wall_F",[14711.8,16102.2,0],[],0,"CAN_COLLIDE"];
	_this = _item412;
	_objects pushback _this;
	_objectIDs pushback 412;
	_this setPosWorld [14711.8,16102.2,20.4514];
	_this setVectorDirAndUp [[-0.726273,0.686217,-0.0404197],[-0.0266571,0.0306405,0.999175]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item413 = objNull;
if (_layer221) then {
	_item413 = createVehicle ["Land_Shoot_House_Wall_F",[14726,16077.8,0],[],0,"CAN_COLLIDE"];
	_this = _item413;
	_objects pushback _this;
	_objectIDs pushback 413;
	_this setPosWorld [14726,16077.8,20.8843];
	_this setVectorDirAndUp [[-0.726531,0.687133,0.000850747],[-0.00133721,-0.00265199,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item414 = objNull;
if (_layer221) then {
	_item414 = createVehicle ["Land_Shoot_House_Wall_F",[14716.3,16092.4,0],[],0,"CAN_COLLIDE"];
	_this = _item414;
	_objects pushback _this;
	_objectIDs pushback 414;
	_this setPosWorld [14716.3,16092.4,20.8075];
	_this setVectorDirAndUp [[-0.726531,0.686996,-0.0137411],[0,0.0199977,0.9998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item415 = objNull;
if (_layer221) then {
	_item415 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14724.1,16091.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item415;
	_objects pushback _this;
	_objectIDs pushback 415;
	_this setPosWorld [14724.1,16091.8,20.9019];
	_this setVectorDirAndUp [[0.687133,0.726532,-5.26835e-005],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item416 = objNull;
if (_layer221) then {
	_item416 = createVehicle ["Land_Shoot_House_Wall_F",[14722.7,16094.7,0],[],0,"CAN_COLLIDE"];
	_this = _item416;
	_objects pushback _this;
	_objectIDs pushback 416;
	_this setPosWorld [14722.7,16094.7,20.8961];
	_this setVectorDirAndUp [[0.726531,-0.687131,0.00189037],[-0.00133721,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item417 = objNull;
if (_layer221) then {
	_item417 = createVehicle ["Land_Shoot_House_Wall_F",[14723.1,16112.3,0],[],0,"CAN_COLLIDE"];
	_this = _item417;
	_objects pushback _this;
	_objectIDs pushback 417;
	_this setPosWorld [14723.1,16112.3,20.5005];
	_this setVectorDirAndUp [[0.68689,0.726761,-0.00105826],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item418 = objNull;
if (_layer221) then {
	_item418 = createVehicle ["Land_Shoot_House_Panels_Window_F",[14725.5,16096.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item418;
	_objects pushback _this;
	_objectIDs pushback 418;
	_this setPosWorld [14725.5,16096.3,20.8775];
	_this setVectorDirAndUp [[0.665679,0.746123,-0.0131408],[-0.00267442,0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item419 = objNull;
if (_layer221) then {
	_item419 = createVehicle ["Land_Shoot_House_Wall_F",[14724.3,16115.2,0],[],0,"CAN_COLLIDE"];
	_this = _item419;
	_objects pushback _this;
	_objectIDs pushback 419;
	_this setPosWorld [14724.3,16115.2,20.4565];
	_this setVectorDirAndUp [[-0.726273,0.686373,-0.0376757],[-0.0266548,0.0266476,0.999289]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item420 = objNull;
if (_layer221) then {
	_item420 = createVehicle ["Land_Shoot_House_Wall_F",[14720.2,16110.8,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item420;
	_objects pushback _this;
	_objectIDs pushback 420;
	_this setPosWorld [14720.2,16110.8,20.458];
	_this setVectorDirAndUp [[-0.726247,0.686187,-0.0413872],[-0.0279894,0.0306394,0.999139]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item421 = objNull;
if (_layer221) then {
	_item421 = createVehicle ["Land_Shoot_House_Wall_F",[14742.5,16095.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item421;
	_objects pushback _this;
	_objectIDs pushback 421;
	_this setPosWorld [14742.5,16095.3,20.9085];
	_this setVectorDirAndUp [[-0.726531,0.687134,5.2438e-005],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item422 = objNull;
if (_layer221) then {
	_item422 = createVehicle ["Land_Shoot_House_Wall_F",[14745,16105.2,0],[],0,"CAN_COLLIDE"];
	_this = _item422;
	_objects pushback _this;
	_objectIDs pushback 422;
	_this setPosWorld [14745,16105.2,20.8719];
	_this setVectorDirAndUp [[0.687131,0.726528,-0.0027938],[0.00265199,0.00133721,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item423 = objNull;
if (_layer221) then {
	_item423 = createVehicle ["Land_Shoot_House_Wall_F",[14734.9,16113.4,0],[],0,"CAN_COLLIDE"];
	_this = _item423;
	_objects pushback _this;
	_objectIDs pushback 423;
	_this setPosWorld [14734.9,16113.4,20.7429];
	_this setVectorDirAndUp [[-0.726322,0.686728,-0.0293387],[-0.0239937,0.0173266,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item424 = objNull;
if (_layer221) then {
	_item424 = createVehicle ["Land_Shoot_House_Wall_F",[14743.6,16105.1,0],[],0,"CAN_COLLIDE"];
	_this = _item424;
	_objects pushback _this;
	_objectIDs pushback 424;
	_this setPosWorld [14743.6,16105.1,20.872];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000887687],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item425 = objNull;
if (_layer221) then {
	_item425 = createVehicle ["Land_Shoot_House_Wall_F",[14742.2,16106.7,0],[],0,"CAN_COLLIDE"];
	_this = _item425;
	_objects pushback _this;
	_objectIDs pushback 425;
	_this setPosWorld [14742.2,16106.7,20.8699];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000887687],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item426 = objNull;
if (_layer221) then {
	_item426 = createVehicle ["Land_Shoot_House_Wall_F",[14734.2,16086.5,0],[],0,"CAN_COLLIDE"];
	_this = _item426;
	_objects pushback _this;
	_objectIDs pushback 426;
	_this setPosWorld [14734.2,16086.5,20.9198];
	_this setVectorDirAndUp [[-0.726531,0.687134,-5.29141e-005],[-0.00133721,-0.00133688,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item427 = objNull;
if (_layer221) then {
	_item427 = createVehicle ["Land_Shoot_House_Wall_F",[14736.9,16089.4,0],[],0,"CAN_COLLIDE"];
	_this = _item427;
	_objects pushback _this;
	_objectIDs pushback 427;
	_this setPosWorld [14736.9,16089.4,20.9229];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000887687],[0,0.00129187,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item428 = objNull;
if (_layer221) then {
	_item428 = createVehicle ["Land_Shoot_House_Wall_F",[14735.5,16088,0],[],0,"CAN_COLLIDE"];
	_this = _item428;
	_objects pushback _this;
	_objectIDs pushback 428;
	_this setPosWorld [14735.5,16088,20.9229];
	_this setVectorDirAndUp [[-0.726531,0.687133,-0.000938584],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item429 = objNull;
if (_layer221) then {
	_item429 = createVehicle ["Land_Shoot_House_Wall_F",[14730.9,16118.6,0],[],0,"CAN_COLLIDE"];
	_this = _item429;
	_objects pushback _this;
	_objectIDs pushback 429;
	_this setPosWorld [14730.9,16118.6,20.5455];
	_this setVectorDirAndUp [[-0.686935,-0.726703,0.00482223],[-0.0239937,0.0293117,0.999282]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item430 = objNull;
if (_layer221) then {
	_item430 = createVehicle ["Land_Shoot_House_Wall_F",[14714.7,16105,0],[],0,"CAN_COLLIDE"];
	_this = _item430;
	_objects pushback _this;
	_objectIDs pushback 430;
	_this setPosWorld [14714.7,16105,20.4505];
	_this setVectorDirAndUp [[-0.72619,0.686349,-0.0396652],[-0.0306533,0.0253132,0.99921]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item431 = objNull;
if (_layer221) then {
	_item431 = createVehicle ["Land_Shoot_House_Wall_F",[14716,16106.5,0],[],0,"CAN_COLLIDE"];
	_this = _item431;
	_objects pushback _this;
	_objectIDs pushback 431;
	_this setPosWorld [14716,16106.5,20.4544];
	_this setVectorDirAndUp [[-0.726219,0.686374,-0.0386953],[-0.0293202,0.0253119,0.99925]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item432 = objNull;
if (_layer221) then {
	_item432 = createVehicle ["Land_Shoot_House_Wall_F",[14717.4,16108,0],[],0,"CAN_COLLIDE"];
	_this = _item432;
	_objects pushback _this;
	_objectIDs pushback 432;
	_this setPosWorld [14717.4,16108,20.4574];
	_this setVectorDirAndUp [[-0.726247,0.686347,-0.0386434],[-0.0279873,0.0266466,0.999253]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item433 = objNull;
if (_layer221) then {
	_item433 = createVehicle ["Land_InfoStand_V1_F",[14749.5,16117.3,-0.000368118],[],0,"CAN_COLLIDE"];
	_this = _item433;
	_objects pushback _this;
	_objectIDs pushback 433;
	_this setPosWorld [14749.5,16117.3,19.7292];
	_this setVectorDirAndUp [[-0.669545,-0.74277,0.00188834],[0.00133688,0.00133721,0.999998]];
	sh_button = _this;
	_this setVehicleVarName "sh_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item434 = objNull;
if (_layer221) then {
	_item434 = createVehicle ["Land_Scaffolding_New_F",[14742.7,16109.4,0],[],0,"CAN_COLLIDE"];
	_this = _item434;
	_objects pushback _this;
	_objectIDs pushback 434;
	_this setPosWorld [14742.7,16109.4,21.9397];
	_this setVectorDirAndUp [[-0.733656,0.679521,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item435 = objNull;
if (_layer221) then {
	_item435 = createVehicle ["VR_Area_01_circle_4_yellow_F",[14749.6,16117.3,0.00895691],[],0,"CAN_COLLIDE"];
	_this = _item435;
	_objects pushback _this;
	_objectIDs pushback 435;
	_this setPosWorld [14749.6,16117.3,19.1635];
	_this setVectorDirAndUp [[-0.679775,-0.73342,0],[0,0,1]];
	sh_button_area = _this;
	_this setVehicleVarName "sh_button_area";
	0 remoteExec ['setFeatureType', _this];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item438 = objNull;
if (_layer221) then {
	_item438 = createVehicle ["Land_Shoot_House_Wall_F",[14736.6,16100.7,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item438;
	_objects pushback _this;
	_objectIDs pushback 438;
	_this setPosWorld [14736.6,16100.7,20.9043];
	_this setVectorDirAndUp [[-0.726526,0.687129,-0.0038226],[-0.00399675,0.0013372,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item439 = objNull;
if (_layerRoot) then {
	_item439 = createVehicle ["Land_ClutterCutter_large_F",[14749.6,16117.5,0],[],0,"CAN_COLLIDE"];
	_this = _item439;
	_objects pushback _this;
	_objectIDs pushback 439;
	_this setPosWorld [14749.6,16117.5,19.1539];
	_this setVectorDirAndUp [[0.703556,-0.71064,9.70974e-006],[0.00133688,0.00133721,0.999998]];
	0 remoteExec ['setFeatureType', _this];
};

private _item442 = objNull;
if (_layer441) then {
	_item442 = createVehicle ["Land_InfoStand_V1_F",[14771.6,16059.4,0],[],0,"CAN_COLLIDE"];
	_this = _item442;
	_objects pushback _this;
	_objectIDs pushback 442;
	_this setPosWorld [14771.6,16059.3,18.8303];
	_this setVectorDirAndUp [[0.519871,-0.852895,-0.0480004],[0.0266657,-0.0399606,0.998845]];
	fr_at_button = _this;
	_this setVehicleVarName "fr_at_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,""];
};

private _item443 = objNull;
if (_layer441) then {
	_item443 = createVehicle ["Sign_Arrow_Large_Blue_F",[14997.9,15637.5,12.7987],[],0,"CAN_COLLIDE"];
	_this = _item443;
	_objects pushback _this;
	_objectIDs pushback 443;
	_this setPosWorld [14997.9,15637.5,0.750232];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	fr_at_spawn = _this;
	_this setVehicleVarName "fr_at_spawn";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item444 = objNull;
if (_layer441) then {
	_item444 = createVehicle ["Sign_Arrow_Large_Blue_F",[14917.4,15788,-2.38419e-007],[],0,"CAN_COLLIDE"];
	_this = _item444;
	_objects pushback _this;
	_objectIDs pushback 444;
	_this setPosWorld [14917.4,15788,3.14403];
	_this setVectorDirAndUp [[0,0.99953,-0.0306514],[-0.0159977,0.0306474,0.999402]];
	fr_at_spawn_1 = _this;
	_this setVehicleVarName "fr_at_spawn_1";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item445 = objNull;
if (_layer441) then {
	_item445 = createVehicle ["Sign_Arrow_Large_Blue_F",[15114.4,15441.2,38.5304],[],0,"CAN_COLLIDE"];
	_this = _item445;
	_objects pushback _this;
	_objectIDs pushback 445;
	_this setPosWorld [15114.4,15441.2,0.750232];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	fr_at_spawn_2 = _this;
	_this setVehicleVarName "fr_at_spawn_2";
	0 remoteExec ['setFeatureType', _this];
	if !(is3DEN) then {_this hideobjectglobal true;};;
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,1,0.75,ca)"];
};

private _item446 = objNull;
if (_layerRoot) then {
	_item446 = createVehicle ["ShootingPos_F",[14764.1,16051.9,0],[],0,"CAN_COLLIDE"];
	_this = _item446;
	_objects pushback _this;
	_objectIDs pushback 446;
	_this setPosWorld [14764.1,16051.9,17.9642];
	_this setVectorDirAndUp [[0.479243,-0.873873,-0.0816782],[0.0293202,-0.077069,0.996595]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item447 = objNull;
if (_layerRoot) then {
	_item447 = createVehicle ["ShootingPos_F",[14768.5,16054.3,0],[],0,"CAN_COLLIDE"];
	_this = _item447;
	_objects pushback _this;
	_objectIDs pushback 447;
	_this setPosWorld [14768.5,16054.3,18.0614];
	_this setVectorDirAndUp [[0.479439,-0.875117,-0.0656394],[-0.00665923,-0.078422,0.996898]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item448 = objNull;
if (_layerRoot) then {
	_item448 = createVehicle ["ShootingPos_F",[14772.9,16056.7,0],[],0,"CAN_COLLIDE"];
	_this = _item448;
	_objects pushback _this;
	_objectIDs pushback 448;
	_this setPosWorld [14772.9,16056.7,18.1291];
	_this setVectorDirAndUp [[0.479279,-0.87609,-0.0525099],[0.0266571,-0.0452706,0.998619]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item449 = objNull;
if (_layerRoot) then {
	_item449 = createVehicle ["ShootingPos_F",[14777.2,16059,0],[],0,"CAN_COLLIDE"];
	_this = _item449;
	_objects pushback _this;
	_objectIDs pushback 449;
	_this setPosWorld [14777.2,16059,18.0833];
	_this setVectorDirAndUp [[0.479139,-0.876445,-0.0476425],[0.0359766,-0.0346232,0.998753]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item450 = objNull;
if (_layerRoot) then {
	_item450 = createVehicle ["ShootingPos_F",[14781.2,16061.3,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item450;
	_objects pushback _this;
	_objectIDs pushback 450;
	_this setPosWorld [14781.2,16061.3,17.9703];
	_this setVectorDirAndUp [[0.478699,-0.877082,-0.0396728],[0.0559122,-0.014641,0.998328]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item451 = objNull;
if (_layerRoot) then {
	_item451 = createVehicle ["Land_ShootingPos_Roof_01_F",[14771.7,16071.7,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item451;
	_objects pushback _this;
	_objectIDs pushback 451;
	_this setPosWorld [14771.7,16071.7,19.6777];
	_this setVectorDirAndUp [[0.549146,-0.835726,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item452 = objNull;
if (_layerRoot) then {
	_item452 = createVehicle ["Land_MysteriousBell_01_F",[14774.7,16073.7,0],[],0,"CAN_COLLIDE"];
	_this = _item452;
	_objects pushback _this;
	_objectIDs pushback 452;
	_this setPosWorld [14774.7,16073.7,19.3172];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item453 = objNull;
if (_layerRoot) then {
	_item453 = createVehicle ["Gunrack1",[14768.5,16069.5,0],[],0,"CAN_COLLIDE"];
	_this = _item453;
	_objects pushback _this;
	_objectIDs pushback 453;
	_this setPosWorld [14768.5,16069.5,19.2013];
	_this setVectorDirAndUp [[-0.701533,-0.712637,0.000605604],[0.031983,-0.0306357,0.999019]];
	0 remoteExec ['setFeatureType', _this];
};

private _item454 = objNull;
if (_layerRoot) then {
	_item454 = createVehicle ["TargetP_Inf_F",[14871.9,15878.9,0.0062933],[],0,"CAN_COLLIDE"];
	_this = _item454;
	_objects pushback _this;
	_objectIDs pushback 454;
	_this setPosWorld [14871.9,15878.9,6.9688];
	_this setVectorDirAndUp [[0.690077,-0.722245,0.0464313],[-0.115228,-0.0463057,0.992259]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item455 = objNull;
if (_layerRoot) then {
	_item455 = createVehicle ["TargetP_Inf_F",[14796.4,15845.8,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item455;
	_objects pushback _this;
	_objectIDs pushback 455;
	_this setPosWorld [14796.4,15845.8,8.11314];
	_this setVectorDirAndUp [[0.34787,-0.935537,0.0612916],[0.00666787,0.0678419,0.997674]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item456 = objNull;
if (_layerRoot) then {
	_item456 = createVehicle ["TargetP_Inf_F",[14798.5,15943.9,0],[],0,"CAN_COLLIDE"];
	_this = _item456;
	_objects pushback _this;
	_objectIDs pushback 456;
	_this setPosWorld [14798.5,15943.9,11.3372];
	_this setVectorDirAndUp [[-0.377259,-0.924999,-0.0453108],[0.0399667,-0.0651418,0.997075]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item457 = objNull;
if (_layerRoot) then {
	_item457 = createVehicle ["TargetP_Inf_F",[14871.5,15962.2,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item457;
	_objects pushback _this;
	_objectIDs pushback 457;
	_this setPosWorld [14871.5,15962.2,9.41859];
	_this setVectorDirAndUp [[0.920107,-0.391564,-0.00904442],[-0.00265204,-0.0293201,0.999567]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item458 = objNull;
if (_layerRoot) then {
	_item458 = createVehicle ["TargetP_Inf_F",[14834,15903.5,0.00663567],[],0,"CAN_COLLIDE"];
	_this = _item458;
	_objects pushback _this;
	_objectIDs pushback 458;
	_this setPosWorld [14834,15903.5,8.37296];
	_this setVectorDirAndUp [[0.131981,-0.989629,0.0567023],[0.0995034,0.0701405,0.992562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item459 = objNull;
if (_layerRoot) then {
	_item459 = createVehicle ["SkeetMachine",[14753.1,16044.4,0],[],0,"CAN_COLLIDE"];
	_this = _item459;
	_objects pushback _this;
	_objectIDs pushback 459;
	_this setPosWorld [14753.1,16044.3,18.4505];
	_this setVectorDirAndUp [[-0.805135,0.588967,0.0698272],[0.0466181,-0.054525,0.997424]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
};

private _item461 = objNull;
if (_layerRoot) then {
	_item461 = _item460 createUnit ["B_RangeMaster_F",[14751.9,16044.5,0],[],0,"CAN_COLLIDE"];
	_item460 selectLeader _item461;
	_this = _item461;
	_objects pushback _this;
	_objectIDs pushback 461;
	_this setPosWorld [14751.9,16044.5,18.0525];
	_this setVectorDirAndUp [[0.706205,0.708007,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["rhs_uniform_acu_oefcp",[["FirstAidKit",1]]],["V_Safety_orange_F",[]],[],"H_Cap_headphones","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	sk_op = _this;
	_this setVehicleVarName "sk_op";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Matthew Wilson";;
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

private _item462 = objNull;
if (_layerRoot) then {
	_item462 = createVehicle ["Land_SignM_WarningMilitaryArea_english_F",[14753,16080.2,0],[],0,"CAN_COLLIDE"];
	_this = _item462;
	_objects pushback _this;
	_objectIDs pushback 462;
	_this setPosWorld [14753,16080.2,20.2459];
	_this setVectorDirAndUp [[-0.645738,0.763559,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item463 = objNull;
if (_layerRoot) then {
	_item463 = createVehicle ["TargetP_Inf_F",[14770.5,15922.4,0],[],0,"CAN_COLLIDE"];
	_this = _item463;
	_objects pushback _this;
	_objectIDs pushback 463;
	_this setPosWorld [14770.5,15922.4,11.9607];
	_this setVectorDirAndUp [[-0.264683,-0.96026,-0.0885618],[0.00399666,-0.0929286,0.995665]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item464 = objNull;
if (_layerRoot) then {
	_item464 = createVehicle ["Land_InfoStand_V1_F",[15215.7,17314.2,0],[],0,"CAN_COLLIDE"];
	_this = _item464;
	_objects pushback _this;
	_objectIDs pushback 464;
	_this setPosWorld [15215.7,17314.2,18.5536];
	_this setVectorDirAndUp [[0.712127,0.70204,0.00378476],[-0.00399675,-0.00133687,0.999991]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item465 = objNull;
if (_layerRoot) then {
	_item465 = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[15301.9,17395.1,0],[],0,"CAN_COLLIDE"];
	_this = _item465;
	_objects pushback _this;
	_objectIDs pushback 465;
	_this setPosWorld [15301.9,17395.1,16.6625];
	_this setVectorDirAndUp [[-0.697301,-0.716506,0.0197803],[0.0146639,0.0133302,0.999804]];
	0 remoteExec ['setFeatureType', _this];
	_this setVariable ["ace_medical_isMedicalFacility", true, true];;
};

private _item466 = objNull;
if (_layerRoot) then {
	_item466 = createVehicle ["rhsusf_M1230a1_usarmy_d",[15312.1,17403.9,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item466;
	_objects pushback _this;
	_objectIDs pushback 466;
	_this setPosWorld [15312.1,17404,20.5214];
	_this setVectorDirAndUp [[0.708669,-0.705518,-0.00572234],[0.0239934,0.0159931,0.999584]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle""],[2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""FirstAidKit"",""ToolKit"",""Medikit""],[20,1,2]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitduke2"",""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hitglass16"",""hitglass17"",""hitglass18"",""hitglass19"",""hitglass20"",""hitglass21"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1"",""#cabin_light2"",""#cabin_light3""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	_this setVariable ["ace_medical_isMedicalVehicle", true, true];
	_this animate ['DUKE_Hide',0,true];if(0 isEqualTo 1)then{_this removeWeaponTurret ['rhsusf_weap_duke',[-1]]};;
	_this animateDoor ['DoorB',0,true];
	_this animateDoor ['DoorL',0,true];
	_this animateDoor ['DoorR',0,true];
};

private _item467 = objNull;
if (_layerRoot) then {
	_item467 = createVehicle ["rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy",[15213.7,17460.2,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item467;
	_objects pushback _this;
	_objectIDs pushback 467;
	_this setPosWorld [15213.6,17460.3,19.2542];
	_this setVectorDirAndUp [[-0.691291,0.722397,-0.0160812],[-0.0093285,0.0133311,0.999868]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit""],[2,4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""ToolKit""],[1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light1""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item468 = objNull;
if (_layerRoot) then {
	_item468 = createVehicle ["rhsusf_M977A4_AMMO_usarmy_d",[15220.8,17466.8,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item468;
	_objects pushback _this;
	_objectIDs pushback 468;
	_this setPosWorld [15220.8,17466.8,19.1009];
	_this setVectorDirAndUp [[0.682024,-0.731176,0.0150029],[-0.011995,0.00932783,0.999885]];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit""],[2,4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""ToolKit""],[1]],[[""rhsusf_falconii""],[1]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitfuel"",""hitengine"",""hitbody"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitlbwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hitrbwheel"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitrglass"",""hitlglass"",""hitglass5"",""hitglass6"",""hithull"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#cabin_light""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	_this setVariable ['s',1];;
	[_this, 8] call ace_cargo_fnc_setSpace;;
};

private _item469 = objNull;
if (_layerRoot) then {
	_item469 = createVehicle ["Gunrack2",[14753.6,16045.7,0],[],0,"CAN_COLLIDE"];
	_this = _item469;
	_objects pushback _this;
	_objectIDs pushback 469;
	_this setPosWorld [14753.6,16045.7,18.3889];
	_this setVectorDirAndUp [[0.107865,-0.992396,-0.0592916],[0.0466181,-0.054525,0.997424]];
	0 remoteExec ['setFeatureType', _this];
};

private _item494 = objNull;
if (_layerRoot) then {
	_item494 = createVehicle ["Flag_US_F",[15196.3,17345.4,0],[],0,"CAN_COLLIDE"];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [15196.3,17345.4,21.8891];
	_this setVectorDirAndUp [[-0.768496,-0.639855,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item495 = objNull;
if (_layerRoot) then {
	_item495 = createVehicle ["Gunrack1",[15194.6,17290.4,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [15194.6,17290.4,18.4442];
	_this setVectorDirAndUp [[-0.701891,-0.712283,-0.000906754],[-0.00129187,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
};

private _item498 = objNull;
if (_layerRoot) then {
	_item498 = createVehicle ["rhsusf_m1151_m2_v2_usarmy_d",[15173.1,17312.7,0],[],0,"CAN_COLLIDE"];
	_this = _item498;
	_objects pushback _this;
	_objectIDs pushback 498;
	_this setPosWorld [15173.1,17312.7,19.6723];
	_this setVectorDirAndUp [[0.680207,-0.732998,0.00570652],[-0.0026529,0.00532321,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""rhs_weap_M136_hedp"",""FirstAidKit""],[2,2,4]],[[""rhs_m136_hedp_mag"",""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhsusf_100Rnd_556x45_soft_pouch"",""rhs_mag_M441_HE"",""rhs_mag_m714_White"",""rhs_mag_m662_red"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[2,20,8,16,4,2,4,2,2,4]],[[],[]],[[""rhsusf_falconii""],[2]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitglass15"",""hit_rhino"",""hithull"",""hitfuel"",""hitengine"",""hitduke1"",""hitduke2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitbody"",""hitrglass"",""hitlglass"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hitturret"",""hitgun"",""#light_l"",""#light_l"",""#light_r"",""#light_r"",""#light_l"",""#light_r"",""#light_r"",""#light_l""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item502 = objNull;
if (_layerRoot) then {
	_item502 = createVehicle ["Land_CamoNetVar_NATO_EP1",[15194.5,17288.4,0],[],0,"CAN_COLLIDE"];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [15194.5,17288.4,19.062];
	_this setVectorDirAndUp [[0.709287,-0.704919,0.000916076],[-0.00129154,0,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item509 = objNull;
if (_layerRoot) then {
	_item509 = createVehicle ["Land_CampingChair_V2_white_F",[15219.4,17329.6,0.566936],[],0,"CAN_COLLIDE"];
	_this = _item509;
	_objects pushback _this;
	_objectIDs pushback 509;
	_this setPosWorld [15219.4,17329.6,19.0584];
	_this setVectorDirAndUp [[-0.71093,-0.703262,0.000490745],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item510 = objNull;
if (_layerRoot) then {
	_item510 = createVehicle ["Land_CampingChair_V2_white_F",[15218.5,17330.4,0.56983],[],0,"CAN_COLLIDE"];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [15218.5,17330.4,19.059];
	_this setVectorDirAndUp [[-0.753993,-0.656882,0.00052047],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item523 = objNull;
if (_layerRoot) then {
	_item523 = createVehicle ["RHS_A10",[15111.4,17250.7,0.0739994],[],0,"CAN_COLLIDE"];
	_this = _item523;
	_objects pushback _this;
	_objectIDs pushback 523;
	_this setPosWorld [15111.4,17250.8,18.8647];
	_this setVectorDirAndUp [[0.742385,-0.669973,-0.000725564],[0.000977341,0,1]];
	_this setPylonLoadout [1,"rhs_mag_ANALQ131"];
	_this setPylonLoadout [2,"rhs_mag_M151_7_USAF_LAU131"];
	_this setPylonLoadout [3,"rhs_mag_agm65d"];
	_this setPylonLoadout [4,"rhs_mag_gbu12"];
	_this setPylonLoadout [5,"rhs_mag_gbu12"];
	_this setPylonLoadout [6,""];
	_this setPylonLoadout [7,"rhs_mag_gbu12"];
	_this setPylonLoadout [8,"rhs_mag_gbu12"];
	_this setPylonLoadout [9,"rhs_mag_agm65d"];
	_this setPylonLoadout [10,"rhs_mag_M151_7_USAF_LAU131"];
	_this setPylonLoadout [11,"rhs_mag_aim9m_2"];
	_this setPylonLoadout [12,"rhsusf_ANALE40_CMFlare_Chaff_Magazine_x16"];
	_this lock 2;
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""FirstAidKit""],[2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m18_green"",""rhs_mag_m18_yellow"",""rhs_mag_m18_red"",""rhs_mag_m18_purple"",""rhs_mag_an_m8hc""],[4,2,2,2,2,2]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hithull"",""hitavionics"",""hitengine"",""hitengine2"",""hitfuel"",""hitfuel_left"",""hitfuel_right"",""hitfuel2"",""hitlaileron_link"",""hitraileron_link"",""hitlaileron"",""hitraileron"",""hitcontrolrear"",""hitlcelevator"",""hitrelevator"",""hitlcrudder"",""hitrrudder"",""hitglass1"",""warningelevator"",""warningaileron"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitpylon5"",""hitpylon6"",""hitpylon7"",""hitpylon8"",""hitpylon9"",""hitpylon10"",""hitpylon11"",""#l svetlo"",""#l svetlo""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
};

private _item524 = objNull;
if (_layerRoot) then {
	_item524 = createVehicle ["Land_CampingChair_V2_white_F",[15221.9,17328.9,0.559233],[],0,"CAN_COLLIDE"];
	_this = _item524;
	_objects pushback _this;
	_objectIDs pushback 524;
	_this setPosWorld [15221.9,17328.9,19.0564];
	_this setVectorDirAndUp [[-0.71093,-0.703262,0.000490745],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item525 = objNull;
if (_layerRoot) then {
	_item525 = createVehicle ["Land_CampingChair_V2_white_F",[15221.1,17329.8,0.562157],[],0,"CAN_COLLIDE"];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [15221.1,17329.8,19.057];
	_this setVectorDirAndUp [[-0.753993,-0.656882,0.00052047],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item526 = objNull;
if (_layerRoot) then {
	_item526 = createVehicle ["Land_CampingChair_V2_white_F",[15220.3,17330.7,0.564857],[],0,"CAN_COLLIDE"];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [15220.3,17330.7,19.0576];
	_this setVectorDirAndUp [[-0.71093,-0.703262,0.000490745],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item527 = objNull;
if (_layerRoot) then {
	_item527 = createVehicle ["Land_CampingChair_V2_white_F",[15219.5,17331.5,0.567696],[],0,"CAN_COLLIDE"];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [15219.5,17331.5,19.0582];
	_this setVectorDirAndUp [[-0.753993,-0.656882,0.00052047],[0.000690285,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item542 = objNull;
if (_layerRoot) then {
	_item542 = _item540 createUnit ["rhsusf_army_ocp_helipilot",[15157.4,17266.2,0],[],0,"CAN_COLLIDE"];
	_item540 selectLeader _item542;
	_this = _item542;
	_objects pushback _this;
	_objectIDs pushback 542;
	_this setPosWorld [15160.8,17263.1,19.3206];
	_this setVectorDirAndUp [[0.806217,-0.591617,0.00187856],[-0.0013439,0.0013439,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Charles Johnson";;
	_this setface "WhiteHead_20";;
	_this setspeaker "Male07ENG";;
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

private _item543 = objNull;
if (_layerRoot) then {
	_item543 = _item540 createUnit ["rhsusf_army_ocp_helipilot",[15157.4,17266.2,0],[],0,"CAN_COLLIDE"];
	_this = _item543;
	_objects pushback _this;
	_objectIDs pushback 543;
	_this setPosWorld [15161.4,17263.9,19.3208];
	_this setVectorDirAndUp [[0.806217,-0.591617,0.00187856],[-0.0013439,0.0013439,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Liam Williams";;
	_this setface "AfricanHead_01";;
	_this setspeaker "male01eng";;
	_this setpitch 1.03719;;
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

private _item544 = objNull;
if (_layerRoot) then {
	_item544 = _item540 createUnit ["rhsusf_army_ocp_helicrew",[15157.4,17266.2,0],[],0,"CAN_COLLIDE"];
	_this = _item544;
	_objects pushback _this;
	_objectIDs pushback 544;
	_this setPosWorld [15160.6,17264.8,19.5776];
	_this setVectorDirAndUp [[0.806217,-0.591617,0.00187856],[-0.0013439,0.0013439,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ryan Blackburn";;
	_this setface "WhiteHead_13";;
	_this setspeaker "male08eng";;
	_this setpitch 0.97996;;
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

private _item545 = objNull;
if (_layerRoot) then {
	_item545 = _item540 createUnit ["rhsusf_army_ocp_helicrew",[15157.4,17266.2,0],[],0,"CAN_COLLIDE"];
	_this = _item545;
	_objects pushback _this;
	_objectIDs pushback 545;
	_this setPosWorld [15159.7,17263.5,19.5594];
	_this setVectorDirAndUp [[0.806217,-0.591617,0.00187856],[-0.0013439,0.0013439,0.999998]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Corey Wright";;
	_this setface "Barklem";;
	_this setspeaker "male06eng";;
	_this setpitch 0.990541;;
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

private _item541 = objNull;
if (_layerRoot) then {
	_item541 = createVehicle ["RHS_UH60M_d",[15157.4,17266.2,0],[],0,"CAN_COLLIDE"];
	_this = _item541;
	_objects pushback _this;
	_objectIDs pushback 541;
	_this setPosWorld [15157.4,17266.2,20.6241];
	_this setVectorDirAndUp [[0.806217,-0.591617,0.00187856],[-0.0013439,0.0013439,0.999998]];
	_this setPylonLoadout [1,"rhsusf_M130_CMFlare_Chaff_Magazine_x2"];
	0 remoteExec ['setFeatureType', _this];
	[_this,"[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit"",""Medikit""],[2,10,2]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[12,4,2,2,4]],[[],[]],[[""B_Parachute""],[4]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVehicleReportOwnPosition true;
	parseSimpleArray "[[""hithull"",""hitengine1"",""hitengine2"",""hitengine"",""hittail"",""hitvrotor"",""hithrotor"",""hitwinch"",""hitglass7"",""hithydraulics"",""hittransmission"",""hithstabilizerl1"",""hithstabilizerr1"",""hitpylon1"",""hitpylon2"",""hitpylon3"",""hitpylon4"",""hitfuel"",""hitavionics"",""hitmissiles"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass14"",""hitrglass"",""hitlglass"",""hitengine3"",""hitlight"",""hitgear"",""hitvstabilizer1"",""hitpitottube"",""hitstaticport"",""hitstarter1"",""hitstarter2"",""hitstarter3"",""#p svetlo"",""#l svetlo"",""#cabin_light"",""#cargo_light_1"",""#cargo_light_2""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	[_this, 8] call ace_cargo_fnc_setSpace;;
	[_this] call ace_fastroping_fnc_equipFRIES;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = createTrigger ["EmptyDetectorArea10x10",[15299.4,17526.9,0],true];
	_this = _item98;
	_triggers pushback _this;
	_triggerIDs pushback 98;
	_item98 setPosATL [15299.4,17526.9,0];
	_this setTriggerArea [5,23,44.51,true,5];
	_this setTriggerActivation ["WEST","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{gate animate [""Door_1_rot"", 1]}","call{gate animate [""Door_1_rot"", 0]}"];
};

private _item202 = objNull;
if (_layerRoot) then {
	_item202 = createTrigger ["EmptyDetectorArea10x10",[15301.4,17394.5,0.0907421],true];
	_this = _item202;
	_triggers pushback _this;
	_triggerIDs pushback 202;
	_item202 setPosATL [15301.4,17394.5,0.0907421];
	_this setTriggerArea [8,5,132.928,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} foreach thislist }",""];
	_this setTriggerTimeout [15,15,15,true];
		aceHealer = _this;
};

private _item436 = objNull;
if (_layer221) then {
	_item436 = createTrigger ["EmptyDetectorAreaR50",[14750.4,16085.4,1.90735e-006],true];
	_this = _item436;
	_triggers pushback _this;
	_triggerIDs pushback 436;
	_item436 setPosATL [14750.4,16085.4,1.90735e-006];
	_this setTriggerArea [60,60,216.48,true,50];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{player allowDamage false; player setCaptive true;}","call{player allowDamage true; player setCaptive false;}"];
};

private _item437 = objNull;
if (_layer221) then {
	_item437 = createTrigger ["EmptyDetectorArea10x10",[14726.5,16097.4,0],true];
	_this = _item437;
	_triggers pushback _this;
	_triggerIDs pushback 437;
	_item437 setPosATL [14726.5,16097.4,0];
	_this setTriggerArea [18,13.5,313.068,true,5];
	_this setTriggerActivation ["EAST","PRESENT",true];
	sh_area = _this;
};

private _item496 = objNull;
if (_layerRoot) then {
	_item496 = createTrigger ["EmptyDetectorArea10x10",[15057,17307.6,0],true];
	_this = _item496;
	_triggers pushback _this;
	_triggerIDs pushback 496;
	_item496 setPosATL [15057,17307.6,0];
	_this setTriggerArea [8,7,223.832,true,5];
	repStation = _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item187;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	     // if (!is3DEN && !(["","ColorWEST","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","HQ",true]'];          ["","ColorWEST","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item460;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Rangemaster"] call CBA_fnc_setCallsign;
	      //if (!is3DEN && !(["","ColorWEST","",false] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","",false]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","",false]'];          ["","ColorWEST","",false] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","",false]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","",false] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item540;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "November"] call CBA_fnc_setCallsign;
	     // if (!is3DEN && !(["","ColorWEST","Alpha 1-1",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-1",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-1",true]'];          ["","ColorWEST","Alpha 1-1",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-1",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-1",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item80 = objNull;
if (_layer24) then {
	_item80 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15152.1,17333.1,0.589996],[],0,"CAN_COLLIDE"];
	_this = _item80;
	_logics pushback _this;
	_logicIDs pushback 80;
	_this setPosWorld [15152.1,17333.1,18.4447];
	_this setVectorDirAndUp [[0.649395,-0.760451,0],[0,0,1]];
	_this setVariable ["objectArea",[10,20,139.504,true,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15295.5,17532.3,0],[],0,"CAN_COLLIDE"];
	_this = _item101;
	_logics pushback _this;
	_logicIDs pushback 101;
	_this setPosWorld [15295.5,17532.3,16.5773];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0080009,0.00133717,0.999967]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15268,17416.2,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_logics pushback _this;
	_logicIDs pushback 152;
	_this setPosWorld [15268,17416.2,17.8794];
	_this setVectorDirAndUp [[0.323727,-0.946148,0.00207645],[0.00133688,0.00265204,0.999996]];
	_this setVariable ["objectArea",[8,5,161.112,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item194 = objNull;
if (_layerRoot) then {
	_item194 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_logics pushback _this;
	_logicIDs pushback 194;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Owner',"gm",true];;
	_this setVariable ['Name',"Game Master",true];;
	_this setVariable ['Addons',3,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item195 = objNull;
if (_layerRoot) then {
	_item195 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCurator_F",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_logics pushback _this;
	_logicIDs pushback 195;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Owner',"gmod",true];;
	_this setVariable ['Name',"Game Moderator",true];;
	_this setVariable ['Addons',3,true];;
	_this setVariable ['Forced',0,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item196 = objNull;
if (_layerRoot) then {
	_item196 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCuratorAddEditableObjects",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_logics pushback _this;
	_logicIDs pushback 196;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Curator',"",true];;
	_this setVariable ['AddCrew',true,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item197 = objNull;
if (_layerRoot) then {
	_item197 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleEditTerrainObject_F",[15214.9,17329,0],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_logics pushback _this;
	_logicIDs pushback 197;
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

private _item198 = objNull;
if (_layerRoot) then {
	_item198 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleEditTerrainObject_F",[15288.7,17472.8,0],[],0,"CAN_COLLIDE"];
	_this = _item198;
	_logics pushback _this;
	_logicIDs pushback 198;
	_this setPosWorld [15288.7,17472.8,17.6031];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[1,1,0,false,-1]];
	_this setVariable ["#name",""];
	_this setVariable ["#initServer",""];
	_this setVariable ["#init",""];
	_this setVariable ["#filter",7];
	_this setVariable ["#state",0];
	_this setVariable ["#allowDamage",true];
	_this setVariable ["#doorStates",[21845,0,0]];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item200 = objNull;
if (_layerRoot) then {
	_item200 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleCuratorAddEditableObjects",[0,0,186.054],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_logics pushback _this;
	_logicIDs pushback 200;
	_this setPosWorld [0,0,0.0841986];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['Curator',"",true];;
	_this setVariable ['AddCrew',true,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item208 = objNull;
if (_layerRoot) then {
	_item208 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[15188.7,17366.2,5.44572],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_logics pushback _this;
	_logicIDs pushback 208;
	_this setPosWorld [15188.7,17366.2,23.3707];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[5,5,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item411 = objNull;
if (_layer410 && _layer221) then {
	_item411 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14744.9,16102,0],[],0,"CAN_COLLIDE"];
	_this = _item411;
	_logics pushback _this;
	_logicIDs pushback 411;
	_this setPosWorld [14744.9,16102,19.2027];
	_this setVectorDirAndUp [[0.562441,-0.826837,0.00105676],[0.00399666,0.00399671,0.999984]];
	sh_spawn = _this;
	_this setVehicleVarName "sh_spawn";
};

private _item440 = objNull;
if (_layerRoot) then {
	_item440 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[14744.5,16113.5,0],[],0,"CAN_COLLIDE"];
	_this = _item440;
	_logics pushback _this;
	_logicIDs pushback 440;
	_this setPosWorld [14744.5,16113.5,19.17];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	sh_end = _this;
	_this setVehicleVarName "sh_end";
};

private _item507 = objNull;
if (_layer508) then {
	_item507 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15297.9,17396,0.0890579],[],0,"CAN_COLLIDE"];
	_this = _item507;
	_logics pushback _this;
	_logicIDs pushback 507;
	_this setPosWorld [15297.9,17396,17.8556];
	_this setVectorDirAndUp [[0,0.999934,-0.0115015],[-0.00511379,0.0115013,0.999921]];
};

private _item504 = objNull;
if (_layer508) then {
	_item504 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15300.2,17398.2,0.0917931],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_logics pushback _this;
	_logicIDs pushback 504;
	_this setPosWorld [15300.2,17398.2,17.7938];
	_this setVectorDirAndUp [[0,0.999934,-0.0115015],[-0.00511379,0.0115013,0.999921]];
};

private _item513 = objNull;
if (_layerRoot) then {
	_item513 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15204,17307.8,0],[],0,"CAN_COLLIDE"];
	_this = _item513;
	_logics pushback _this;
	_logicIDs pushback 513;
	_this setPosWorld [15204,17307.8,17.935];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.00133721,0.00133721,0.999998]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer508) then {missionNamespace setVariable ["us_army_d_Spawn Medic Crate",[[_item507,_item504],[]]];};
if (_layer441) then {missionNamespace setVariable ["us_army_d_AT Range",[[_item442,_item443,_item444,_item445],[]]];};
if (_layer410) then {missionNamespace setVariable ["us_army_d_Spawns",[[_item411],[]]];};
if (_layer390) then {missionNamespace setVariable ["us_army_d_Shoothouse Targets",[[_item391,_item392,_item393,_item394,_item395,_item396,_item397,_item398,_item399,_item400,_item401,_item402,_item403,_item404,_item405,_item406,_item407,_item408,_item409],[]]];};
if (_layer221) then {missionNamespace setVariable ["us_army_d_Shoothouse",[[_item222,_item223,_item224,_item225,_item226,_item227,_item228,_item229,_item230,_item231,_item232,_item233,_item234,_item235,_item236,_item237,_item238,_item239,_item240,_item241,_item242,_item243,_item244,_item245,_item246,_item247,_item248,_item249,_item250,_item251,_item252,_item253,_item254,_item255,_item256,_item257,_item258,_item259,_item260,_item261,_item262,_item263,_item264,_item265,_item266,_item267,_item268,_item269,_item270,_item271,_item272,_item273,_item274,_item275,_item276,_item277,_item278,_item279,_item280,_item281,_item282,_item283,_item284,_item285,_item286,_item287,_item288,_item289,_item290,_item291,_item292,_item293,_item294,_item295,_item296,_item297,_item298,_item299,_item300,_item301,_item302,_item303,_item304,_item305,_item306,_item307,_item308,_item309,_item310,_item311,_item312,_item313,_item314,_item315,_item316,_item317,_item318,_item319,_item320,_item321,_item322,_item323,_item324,_item325,_item326,_item327,_item328,_item329,_item330,_item331,_item332,_item333,_item334,_item335,_item336,_item337,_item338,_item339,_item340,_item341,_item342,_item343,_item344,_item345,_item346,_item347,_item348,_item349,_item350,_item351,_item352,_item353,_item354,_item355,_item356,_item357,_item358,_item359,_item360,_item361,_item362,_item363,_item364,_item365,_item366,_item367,_item368,_item369,_item370,_item371,_item372,_item373,_item374,_item375,_item376,_item377,_item378,_item379,_item380,_item381,_item382,_item383,_item384,_item385,_item386,_item387,_item388,_item389,_item391,_item392,_item393,_item394,_item395,_item396,_item397,_item398,_item399,_item400,_item401,_item402,_item403,_item404,_item405,_item406,_item407,_item408,_item409,_item411,_item412,_item413,_item414,_item415,_item416,_item417,_item418,_item419,_item420,_item421,_item422,_item423,_item424,_item425,_item426,_item427,_item428,_item429,_item430,_item431,_item432,_item433,_item434,_item435,_item436,_item437,_item438],[]]];};
if (_layer142) then {missionNamespace setVariable ["us_army_d_Medical Laboratory [BLU]",[[_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151],[]]];};
if (_layer81) then {missionNamespace setVariable ["us_army_d_Checkpoint [BLU]",[[_item82,_item83,_item84,_item85,_item86,_item87,_item88,_item89,_item90,_item91,_item92,_item93,_item94,_item95,_item96],[]]];};
if (_layer24) then {missionNamespace setVariable ["us_army_d_Canteen #1",[[_item25,_item26,_item27,_item28,_item29,_item30,_item31,_item32,_item33,_item34,_item35,_item36,_item37,_item38,_item39,_item40,_item41,_item42,_item43,_item44,_item45,_item46,_item47,_item48,_item49,_item50,_item51,_item52,_item53,_item54,_item55,_item56,_item57,_item58,_item59,_item60,_item61,_item62,_item63,_item64,_item65,_item66,_item67,_item68,_item69,_item70,_item71,_item72,_item73,_item74,_item75,_item76,_item77,_item78,_item79,_item80],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item542 && !isNull _item541) then {_item542 moveInDriver _item541;};
if (!isNull _item543 && !isNull _item541) then {_item543 moveInTurret [_item541,[0]];};
if (!isNull _item544 && !isNull _item541) then {_item544 moveInTurret [_item541,[1]];};
if (!isNull _item545 && !isNull _item541) then {_item545 moveInTurret [_item541,[2]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections
if (!isNull _item194 && !isNull _item196) then {_item194 synchronizeObjectsAdd [_item196]; _item196 synchronizeObjectsAdd [_item194];};
if (!isNull _item195 && !isNull _item200) then {_item195 synchronizeObjectsAdd [_item200]; _item200 synchronizeObjectsAdd [_item195];};


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item129) then {
		this = _item129;
		call{repStation = this
};
	};
	if !(isnull _item207) then {
		this = _item207;
		call{arsenals pushBack this;};
	};
	if !(isnull _item220) then {
		this = _item220;
		call{arsenals pushBack this};
	};
	if !(isnull _item442) then {
		this = _item442;
		call{this addAction ["PULL","launch_skeet.sqf"];};
	};
	if !(isnull _item453) then {
		this = _item453;
		call{arsenals pushBack this};
	};
	if !(isnull _item459) then {
		this = _item459;
		call{this addAction ["PULL","launch_skeet.sqf"];};
	};
	if !(isnull _item469) then {
		this = _item469;
		call{arsenals pushBack this};
	};
	if !(isnull _item495) then {
		this = _item495;
		call{arsenals pushBack this};
	};
	if !(isnull _item507) then {
		this = _item507;
		call{if (isServer) then {_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};};
	};
	if !(isnull _item504) then {
		this = _item504;
		call{if (isServer) then {_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item80) then {_item80 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item101) then {_item101 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item152) then {_item152 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item194) then {_item194 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item195) then {_item195 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item196) then {_item196 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item197) then {_item197 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item198) then {_item198 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item200) then {_item200 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item208) then {_item208 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
