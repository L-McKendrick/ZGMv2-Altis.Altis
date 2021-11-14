// Export of 'base_mil.Cam_Lao_Nam' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer229 = (_allWhitelisted || {"sia zgm essentials" in _layerWhiteList}) && {!("sia zgm essentials" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layer229) then {
	_item0 = createVehicle ["Land_InfoStand_V1_F",[15752.8,7127.48,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_objects pushback _this;
	_objectIDs pushback 0;
	_this setPosWorld [15752.8,7127.48,15.5554];
	_this setVectorDirAndUp [[0.991026,0.133668,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item230 = objNull;
if (_layer229) then {
	_item230 = createVehicle ["vn_b_ammobox_09",[15754.3,7149.98,0],[],0,"CAN_COLLIDE"];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [15754.1,7149.28,14.9776];
	_this setVectorDirAndUp [[0.999999,0.00103839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item231 = objNull;
if (_layer229) then {
	_item231 = createVehicle ["vn_b_ammobox_09",[15701.4,7128.03,0],[],0,"CAN_COLLIDE"];
	_this = _item231;
	_objects pushback _this;
	_objectIDs pushback 231;
	_this setPosWorld [15701.1,7127.33,14.9776];
	_this setVectorDirAndUp [[-0.999941,-0.0108187,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item233 = objNull;
if (_layer229) then {
	_item233 = createVehicle ["vn_b_ammobox_01",[15700.6,7150.27,0],[],0,"CAN_COLLIDE"];
	_this = _item233;
	_objects pushback _this;
	_objectIDs pushback 233;
	_this setPosWorld [15700.7,7150.16,14.98];
	_this setVectorDirAndUp [[0.0603691,0.998176,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item234 = objNull;
if (_layer229) then {
	_item234 = createVehicle ["vn_b_ammobox_01",[15700.4,7130.59,0],[],0,"CAN_COLLIDE"];
	_this = _item234;
	_objects pushback _this;
	_objectIDs pushback 234;
	_this setPosWorld [15700.4,7130.48,14.98];
	_this setVectorDirAndUp [[0.0603691,0.998176,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item235 = objNull;
if (_layer229) then {
	_item235 = createVehicle ["vn_b_ammobox_01",[15758.5,7132.8,0],[],0,"CAN_COLLIDE"];
	_this = _item235;
	_objects pushback _this;
	_objectIDs pushback 235;
	_this setPosWorld [15758.6,7132.68,14.98];
	_this setVectorDirAndUp [[0.0603691,0.998176,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item236 = objNull;
if (_layer229) then {
	_item236 = createVehicle ["vn_b_ammobox_01",[15752.9,7122.97,0],[],0,"CAN_COLLIDE"];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [15752.9,7122.85,14.98];
	_this setVectorDirAndUp [[0.0603691,0.998176,0],[0,0,1]];
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item237 = objNull;
if (_layerRoot) then {
	_item237 = createVehicle ["vn_b_wheeled_m54_ammo",[15719.9,6866.09,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [15719.9,6866.09,17.0075];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this lock 2;
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[""vn_m_wrench_01"",""vn_m_shovel_01"",""vn_m_axe_01"",""vn_m_machete_02"",""vn_mx991_m1911"",""vn_mx991_red"",""vn_m1911"",""vn_m16"",""vn_m60"",""vn_m72"",""vn_m79""],[1,1,1,1,1,1,5,5,5,5,5]],[[""vn_m1911_mag"",""vn_m16_20_mag"",""vn_m60_100_mag"",""vn_m72_mag"",""vn_m61_grenade_mag"",""vn_m18_red_mag"",""vn_m18_white_mag"",""vn_m18_green_mag"",""vn_m18_yellow_mag"",""vn_m18_purple_mag"",""vn_mine_m18_mag"",""vn_40mm_m381_he_mag"",""vn_40mm_m583_flare_w_mag"",""vn_40mm_m680_smoke_w_mag"",""vn_b_item_bugjuice_01"",""vn_b_item_cigs_01"",""vn_b_item_gunoil_01"",""vn_b_item_lighter_01"",""vn_b_item_rations_01""],[20,20,20,5,20,20,20,20,20,20,20,80,20,20,1,5,10,1,10]],[[""vn_b_item_firstaidkit"",""vn_b_item_medikit_01"",""vn_b_item_toolkit"",""vn_b_item_trapkit""],[20,1,1,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {parseSimpleArray "[[""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitengine"",""hitfuel1"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hit_sparewheel"",""#l_svetlo"",""#p_svetlo""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	_this setVariable ['s',1];;
	[_this, 20] call ace_cargo_fnc_setSpace;;
};

private _item238 = objNull;
if (_layerRoot) then {
	_item238 = createVehicle ["vn_b_wheeled_m54_repair",[15743.3,6864.02,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [15743.3,6864.02,16.8158];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this lock 2;
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[""vn_m1911"",""vn_m16"",""vn_m72"",""vn_m79""],[1,1,1,1]],[[""vn_m1911_mag"",""vn_m16_20_mag"",""vn_m72_mag"",""vn_m61_grenade_mag"",""vn_m18_red_mag"",""vn_m18_white_mag"",""vn_m18_green_mag"",""vn_m18_yellow_mag"",""vn_m18_purple_mag"",""vn_mine_m18_mag"",""vn_40mm_m381_he_mag"",""vn_40mm_m583_flare_w_mag"",""vn_40mm_m680_smoke_w_mag""],[6,6,1,6,6,6,6,6,6,2,8,12,12]],[[""vn_b_item_firstaidkit"",""vn_b_item_toolkit""],[10,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {parseSimpleArray "[[""hitglass7"",""hitglass8"",""hitglass9"",""hitglass10"",""hitglass11"",""hitglass12"",""hitglass13"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitengine"",""hitfuel1"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hit_sparewheel"",""#l_svetlo"",""#p_svetlo""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	_this setVariable ['s',1];;
	[_this, 20] call ace_cargo_fnc_setSpace;;
};

private _item239 = objNull;
if (_layerRoot) then {
	_item239 = createVehicle ["vn_b_wheeled_m54_fuel",[15766.3,6864.32,0],[],0,"CAN_COLLIDE"];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [15766.3,6864.32,16.8867];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this lock 2;
	0 remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	[_this,"[[[[""vn_m1911"",""vn_m16"",""vn_m72"",""vn_m79""],[1,1,1,1]],[[""vn_m1911_mag"",""vn_m16_20_mag"",""vn_m72_mag"",""vn_m61_grenade_mag"",""vn_m18_red_mag"",""vn_m18_white_mag"",""vn_m18_green_mag"",""vn_m18_yellow_mag"",""vn_m18_purple_mag"",""vn_mine_m18_mag"",""vn_40mm_m381_he_mag"",""vn_40mm_m583_flare_w_mag"",""vn_40mm_m680_smoke_w_mag""],[6,6,1,6,6,6,6,6,6,2,8,12,12]],[[""vn_b_item_firstaidkit"",""vn_b_item_toolkit""],[3,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (local _this) then {parseSimpleArray "[[""hitfuel2"",""hitglass1"",""hitglass2"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitbody"",""hitengine"",""hitfuel1"",""hitlfwheel"",""hitlf2wheel"",""hitlmwheel"",""hitrfwheel"",""hitrf2wheel"",""hitrmwheel"",""hit_sparewheel"",""#l_svetlo"",""#p_svetlo""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (4542 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 4542] call ace_refuel_fnc_makeSource};
	if ([-1.15,-2.3,0.28] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[-1.15,-2.3,0.28]], true]};
	_this setVariable ['s',1];;
	[_this, 20] call ace_cargo_fnc_setSpace;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item2 = objNull;
if (_layer229) then {
	_item2 = createTrigger ["EmptyDetectorArea10x10",[15682.9,7286.64,0.0137043],false];
	_this = _item2;
	_triggers pushback _this;
	_triggerIDs pushback 2;
	_item2 setPosATL [15682.9,7286.64,0.0137043];
	_this setTriggerArea [6,6,2.80756,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{this}","call{{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; [""You have been fully healed""] remoteExec [""hint"", _x]} forEach thisList; }",""];
	aceHealer = _this;
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item3 = objNull;
if (_layer229) then {
	_item3 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[15746.7,7126.68,0],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_logics pushback _this;
	_logicIDs pushback 3;
	_this setPosWorld [15746.7,7126.68,14.98];
	_this setVectorDirAndUp [[0.804026,0.594595,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item240 = objNull;
if (_layerRoot) then {
	_item240 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_logistics",[15777.4,6903.06,0],[],0,"CAN_COLLIDE"];
	_this = _item240;
	_logics pushback _this;
	_logicIDs pushback 240;
	_this setPosWorld [15777.4,6903.06,14.98];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_masterarm",[15744.6,6891,0],[],0,"CAN_COLLIDE"];
	_this = _item241;
	_logics pushback _this;
	_logicIDs pushback 241;
	_this setPosWorld [15744.6,6891,14.98];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ['ammo_vehicles',"[]",true];;
	_this setVariable ['fuel_vehicles',"[]",true];;
	_this setVariable ['repair_vehicles',"[]",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_ambient_audio",[14246.1,6294.52,0],[],0,"CAN_COLLIDE"];
	_this = _item242;
	_logics pushback _this;
	_logicIDs pushback 242;
	_this setPosWorld [14246.1,6294.52,111.213];
	_this setVectorDirAndUp [[0,0.923946,-0.382522],[-0.142525,0.378617,0.914514]];
	_this setVariable ["objectArea",[2150,2150,0,false,50]];
	_this setVariable ['audio_classname',"vn_battle_ambient_medium_sound_1",true];;
	_this setVariable ['custom_audio_classname_1',"",true];;
	_this setVariable ['custom_audio_classname_2',"",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item243 = objNull;
if (_layerRoot) then {
	_item243 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_ambient_audio",[15087.4,8470.93,0],[],0,"CAN_COLLIDE"];
	_this = _item243;
	_logics pushback _this;
	_logicIDs pushback 243;
	_this setPosWorld [15087.4,8470.93,58.3514];
	_this setVectorDirAndUp [[0,0.923946,-0.382522],[-0.142525,0.378617,0.914514]];
	_this setVariable ["objectArea",[2150,2150,0,false,50]];
	_this setVariable ['audio_classname',"vn_battle_ambient_light_sound_1",true];;
	_this setVariable ['custom_audio_classname_1',"",true];;
	_this setVariable ['custom_audio_classname_2',"",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_ambient_audio",[17453.4,9222.59,0],[],0,"CAN_COLLIDE"];
	_this = _item244;
	_logics pushback _this;
	_logicIDs pushback 244;
	_this setPosWorld [17453.4,9222.59,9.28929];
	_this setVectorDirAndUp [[0,0.923946,-0.382522],[-0.142525,0.378617,0.914514]];
	_this setVariable ["objectArea",[550,550,0,false,50]];
	_this setVariable ['audio_classname',"vn_ambient_city_sound_1",true];;
	_this setVariable ['custom_audio_classname_1',"",true];;
	_this setVariable ['custom_audio_classname_2',"",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item245 = objNull;
if (_layerRoot) then {
	_item245 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_ambient_audio",[16413.1,3688.79,0],[],0,"CAN_COLLIDE"];
	_this = _item245;
	_logics pushback _this;
	_logicIDs pushback 245;
	_this setPosWorld [16413.1,3688.79,26.38];
	_this setVectorDirAndUp [[0,0.923946,-0.382522],[-0.142525,0.378617,0.914514]];
	_this setVariable ["objectArea",[450,450,0,false,50]];
	_this setVariable ['audio_classname',"vn_ambient_city_sound_1",true];;
	_this setVariable ['custom_audio_classname_1',"",true];;
	_this setVariable ['custom_audio_classname_2',"",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_ambient_audio",[19888.9,6988.66,0],[],0,"CAN_COLLIDE"];
	_this = _item246;
	_logics pushback _this;
	_logicIDs pushback 246;
	_this setPosWorld [19888.9,6988.66,4.96];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[650,650,0,false,50]];
	_this setVariable ['audio_classname',"vn_ambient_city_sound_1",true];;
	_this setVariable ['custom_audio_classname_1',"",true];;
	_this setVariable ['custom_audio_classname_2',"",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};

private _item247 = objNull;
if (_layerRoot) then {
	_item247 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["vn_module_ambient_audio",[13205.8,13458.9,0.108847],[],0,"CAN_COLLIDE"];
	_this = _item247;
	_logics pushback _this;
	_logicIDs pushback 247;
	_this setPosWorld [13205.8,13458.9,1.54885];
	_this setVectorDirAndUp [[0,1,0.000976388],[0.00411396,-0.000976379,0.999991]];
	_this setVariable ["objectArea",[750,750,0,false,50]];
	_this setVariable ['audio_classname',"vn_ambient_city_sound_1",true];;
	_this setVariable ['custom_audio_classname_1',"",true];;
	_this setVariable ['custom_audio_classname_2',"",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer229) then {missionNamespace setVariable ["base_mil_SIA ZGM Essentials",[[_item0,_item2,_item3,_item230,_item231,_item233,_item234,_item235,_item236],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections
if (!isNull _item237 && !isNull _item241) then {_item237 synchronizeObjectsAdd [_item241]; _item241 synchronizeObjectsAdd [_item237];};
if (!isNull _item238 && !isNull _item241) then {_item238 synchronizeObjectsAdd [_item241]; _item241 synchronizeObjectsAdd [_item238];};
if (!isNull _item239 && !isNull _item241) then {_item239 synchronizeObjectsAdd [_item241]; _item241 synchronizeObjectsAdd [_item239];};


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item230) then {
		this = _item230;
		call{arsenals pushBack this};
	};
	if !(isnull _item231) then {
		this = _item231;
		call{arsenals pushBack this};
	};
	if !(isnull _item233) then {
		this = _item233;
		call{arsenals pushBack this};
	};
	if !(isnull _item234) then {
		this = _item234;
		call{arsenals pushBack this};
	};
	if !(isnull _item235) then {
		this = _item235;
		call{arsenals pushBack this};
	};
	if !(isnull _item236) then {
		this = _item236;
		call{arsenals pushBack this};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item240) then {_item240 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item241) then {_item241 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item242) then {_item242 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item243) then {_item243 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item244) then {_item244 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item245) then {_item245 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item246) then {_item246 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item247) then {_item247 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
