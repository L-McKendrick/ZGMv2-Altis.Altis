// Export of 'fia.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer1004 = (_allWhitelisted || {"skeet machine" in _layerWhiteList}) && {!("skeet machine" in _layerBlackList)};
private _layer610 = (_allWhitelisted || {"furniture" in _layerWhiteList}) && {!("furniture" in _layerBlackList)};
private _layer738 = (_allWhitelisted || {"other props" in _layerWhiteList}) && {!("other props" in _layerBlackList)};
private _layer845 = (_allWhitelisted || {"ai bots" in _layerWhiteList}) && {!("ai bots" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item846 = grpNull;
if (_layer845) then {
	_item846 = createGroup west;
	_this = _item846;
	_groups pushback _this;
	_groupIDs pushback 846;
};

private _item1005 = grpNull;
if (_layerRoot) then {
	_item1005 = createGroup west;
	_this = _item1005;
	_groups pushback _this;
	_groupIDs pushback 1005;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item936 = objNull;
if (_layerRoot) then {
	_item936 = createSimpleObject ["Land_Sun_chair_green_F",[5378.31,17906.7,76.7331]];
	_this = _item936;
	_objects pushback _this;
	_objectIDs pushback 936;
	_this setPosWorld [5378.31,17906.7,76.8756];
	_this setVectorDirAndUp [[0,0.999488,0.031983],[-0.00265204,-0.0319829,0.999485]];
	0 remoteExec ['setFeatureType', _this];
};

private _item849 = objNull;
if (_layer845) then {
	_item849 = _item846 createUnit ["B_G_Soldier_AR_F",[5404.52,17919.6,0],[],0,"CAN_COLLIDE"];
	_item846 selectLeader _item849;
	_this = _item849;
	_objects pushback _this;
	_objectIDs pushback 849;
	_this setPosWorld [5404.52,17919.7,76.9183];
	_this setVectorDirAndUp [[0.969036,-0.246801,0.00758264],[0.00134403,0.0359809,0.999352]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dimitiros Lagos";;
	_this setface "GreekHead_A3_02";;
	_this setspeaker "Male06GRE";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item851 = objNull;
if (_layer845) then {
	_item851 = _item846 createUnit ["B_G_medic_F",[5432.76,17929.1,-0.0059967],[],0,"CAN_COLLIDE"];
	_this = _item851;
	_objects pushback _this;
	_objectIDs pushback 851;
	_this setPosWorld [5432.76,17929.1,77.0618];
	_this setVectorDirAndUp [[0.985842,-0.167312,-0.0110498],[0.00532321,-0.034637,0.999386]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Andreas Mylonaki";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male01GRE";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
	_this setUnitTrait ['Medic', true];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', false];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (1 != -1 && {1 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 1, true]};
};

private _item853 = objNull;
if (_layer845) then {
	_item853 = _item846 createUnit ["B_G_Soldier_exp_F",[5369.54,17933.5,-0.0039978],[],0,"CAN_COLLIDE"];
	_this = _item853;
	_objects pushback _this;
	_objectIDs pushback 853;
	_this setPosWorld [5369.54,17933.6,77.611];
	_this setVectorDirAndUp [[0.727883,-0.674819,-0.121676],[0.170794,0.00656915,0.985285]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Angelos Manago";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male01GRE";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
	_this setUnitTrait ['Medic', false];
	_this setUnitTrait ['Engineer', false];
	_this setUnitTrait ['ExplosiveSpecialist', true];
	_this setUnitTrait ['UAVHacker', false];
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', true, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item859 = objNull;
if (_layer845) then {
	_item859 = _item846 createUnit ["B_G_Soldier_M_F",[5394.98,17886,11.4095],[],0,"CAN_COLLIDE"];
	_this = _item859;
	_objects pushback _this;
	_objectIDs pushback 859;
	_this setPosWorld [5394.98,17886.1,87.9902];
	_this setVectorDirAndUp [[0.81532,-0.579011,0],[0,0,1]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nicolo Haikias";;
	_this setface "Mavros";;
	_this setspeaker "Male05GRE";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item861 = objNull;
if (_layer845) then {
	_item861 = _item846 createUnit ["B_G_Soldier_M_F",[5405.15,17918,0],[],0,"CAN_COLLIDE"];
	_this = _item861;
	_objects pushback _this;
	_objectIDs pushback 861;
	_this setPosWorld [5405.15,17918,76.9775];
	_this setVectorDirAndUp [[-0.0385092,0.998613,-0.0358984],[0.00133688,0.0359765,0.999352]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dimitiros Karmanlis";;
	_this setface "GreekHead_A3_04";;
	_this setspeaker "Male06GRE";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item869 = objNull;
if (_layer845) then {
	_item869 = _item846 createUnit ["B_G_officer_F",[5395.94,17884.9,-0.0039978],[],0,"CAN_COLLIDE"];
	_this = _item869;
	_objects pushback _this;
	_objectIDs pushback 869;
	_this setPosWorld [5395.94,17884.9,76.4837];
	_this setVectorDirAndUp [[-0.302595,0.951809,0.0499592],[0.0559084,-0.0346009,0.997836]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Sotiris Verga";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male01GRE";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item873 = objNull;
if (_layer845) then {
	_item873 = _item846 createUnit ["B_G_Soldier_F",[5374.77,17937.8,5.981],[],0,"CAN_COLLIDE"];
	_this = _item873;
	_objects pushback _this;
	_objectIDs pushback 873;
	_this setPosWorld [5374.77,17937.9,83.451];
	_this setVectorDirAndUp [[0.222723,-0.97449,-0.0276434],[-0.000698132,-0.0285151,0.999593]];
	_this setUnitLoadout [["arifle_TRG21_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],["V_Chestrig_oli",[["30Rnd_556x45_Stanag",3,30],["HandGrenade",1,1],["MiniGrenade",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",1,1]]],[],"H_Shemag_olive","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Stavros Karagianni";;
	_this setface "GreekHead_A3_03";;
	_this setspeaker "Male01GRE";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item875 = objNull;
if (_layer845) then {
	_item875 = _item846 createUnit ["B_G_Soldier_F",[5438.71,17938.5,10.266],[],0,"CAN_COLLIDE"];
	_this = _item875;
	_objects pushback _this;
	_objectIDs pushback 875;
	_this setPosWorld [5438.71,17938.6,87.4826];
	_this setVectorDirAndUp [[0.989686,-0.143251,-0.000210088],[0,-0.00146658,0.999999]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Chrystophoros Isofidou";;
	_this setface "GreekHead_A3_07";;
	_this setspeaker "Male04GRE";;
	_this setpitch 1.05;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item877 = objNull;
if (_layer845) then {
	_item877 = _item846 createUnit ["B_G_Soldier_F",[5378.4,17906.8,0.195],[],0,"CAN_COLLIDE"];
	_this = _item877;
	_objects pushback _this;
	_objectIDs pushback 877;
	_this setPosWorld [5378.4,17906.8,77.0659];
	_this setVectorDirAndUp [[0.0765795,-0.99656,-0.0316898],[-0.0026529,-0.0319867,0.999485]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Chrystophoros Baros";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male03GRE";;
	_this setpitch 0.98;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item879 = objNull;
if (_layer845) then {
	_item879 = _item846 createUnit ["B_G_Soldier_F",[5375.91,17909,-0.0110016],[],0,"CAN_COLLIDE"];
	_this = _item879;
	_objects pushback _this;
	_objectIDs pushback 879;
	_this setPosWorld [5375.91,17909,76.9135];
	_this setVectorDirAndUp [[0.101247,-0.994861,0],[0,0,1]];
	_this setUnitLoadout [["arifle_TRG21_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_BG_Guerilla2_2",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],["V_Pocketed_coyote_F",[["30Rnd_556x45_Stanag",3,30],["HandGrenade",1,1],["MiniGrenade",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",1,1]]],[],"H_Shemag_olive","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Anthis Karmanlis";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male05GRE";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item881 = objNull;
if (_layer845) then {
	_item881 = _item846 createUnit ["B_G_Soldier_F",[5407.05,17919.7,-0.0110016],[],0,"CAN_COLLIDE"];
	_this = _item881;
	_objects pushback _this;
	_objectIDs pushback 881;
	_this setPosWorld [5407.05,17919.7,76.9115];
	_this setVectorDirAndUp [[-0.940429,-0.339925,0.00666078],[-0.00399679,0.0306429,0.999522]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kostas Petridis";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male03GRE";;
	_this setpitch 0.99;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item885 = objNull;
if (_layer845) then {
	_item885 = _item846 createUnit ["B_G_Soldier_F",[5432.15,17916.1,-0.00700378],[],0,"CAN_COLLIDE"];
	_this = _item885;
	_objects pushback _this;
	_objectIDs pushback 885;
	_this setPosWorld [5432.15,17916.1,76.5796];
	_this setVectorDirAndUp [[0.653947,0.756508,0.00700521],[0.00933759,-0.0173298,0.999806]];
	_this setUnitLoadout [["arifle_TRG21_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_C_HunterBody_grn",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],[],[],"H_Shemag_olive","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Panas Ioannou";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male05GRE";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] # 0 isEqualTo '') then      {        ["STAND",["hubstanding_idle1","hubstanding_idle2","hubstanding_idle3"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item893 = objNull;
if (_layer845) then {
	_item893 = _item846 createUnit ["B_G_Soldier_F",[5393.8,17895.8,-0.00800323],[],0,"CAN_COLLIDE"];
	_this = _item893;
	_objects pushback _this;
	_objectIDs pushback 893;
	_this setPosWorld [5393.8,17895.9,76.6801];
	_this setVectorDirAndUp [[0.889813,0.45497,-0.0351506],[0.0319868,0.0146527,0.999381]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Fotini Tavoularis";;
	_this setface "Mavros";;
	_this setspeaker "Male03GRE";;
	_this setpitch 1.04;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item895 = objNull;
if (_layer845) then {
	_item895 = _item846 createUnit ["B_G_Soldier_F",[5378.98,17936.6,-0.012001],[],0,"CAN_COLLIDE"];
	_this = _item895;
	_objects pushback _this;
	_objectIDs pushback 895;
	_this setPosWorld [5378.98,17936.7,77.4475];
	_this setVectorDirAndUp [[0.354388,-0.933653,0.0519803],[-0.0026529,0.054584,0.998506]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Sotiris Karmanlis";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male03GRE";;
	_this setpitch 0.97;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item897 = objNull;
if (_layer845) then {
	_item897 = _item846 createUnit ["B_G_Soldier_lite_F",[5359.19,17894.9,18.135],[],0,"CAN_COLLIDE"];
	_this = _item897;
	_objects pushback _this;
	_objectIDs pushback 897;
	_this setPosWorld [5359.19,17895,94.6212];
	_this setVectorDirAndUp [[0.222719,-0.974355,-0.0320798],[-0.00567229,-0.0342009,0.999399]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Elias Dimitriadis";;
	_this setface "GreekHead_A3_03";;
	_this setspeaker "Male03GRE";;
	_this setpitch 1.03;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item899 = objNull;
if (_layer845) then {
	_item899 = _item846 createUnit ["B_G_Soldier_lite_F",[5380.19,17904.9,0],[],0,"CAN_COLLIDE"];
	_this = _item899;
	_objects pushback _this;
	_objectIDs pushback 899;
	_this setPosWorld [5380.19,17905,76.816];
	_this setVectorDirAndUp [[-0.303068,0.952507,0.0296755],[-0.00265204,-0.0319829,0.999485]];
	_this setUnitLoadout [["arifle_TRG20_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_BG_Guerilla2_1",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],["V_BandollierB_blk",[["30Rnd_556x45_Stanag",1,30],["MiniGrenade",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",1,1]]],[],"H_Cap_oli","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kostakis Lara";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male06GRE";;
	_this setpitch 0.95;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item907 = objNull;
if (_layer845) then {
	_item907 = _item846 createUnit ["B_G_Soldier_lite_F",[5433.35,17917.4,-0.00700378],[],0,"CAN_COLLIDE"];
	_this = _item907;
	_objects pushback _this;
	_objectIDs pushback 907;
	_this setPosWorld [5433.35,17917.4,76.5909];
	_this setVectorDirAndUp [[-0.67408,-0.73863,-0.00650729],[0.00933759,-0.0173298,0.999806]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kostis Papageorgiou";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male03GRE";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item917 = objNull;
if (_layer845) then {
	_item917 = _item846 createUnit ["B_G_Soldier_lite_F",[5384.36,17902.3,-0.00700378],[],0,"CAN_COLLIDE"];
	_this = _item917;
	_objects pushback _this;
	_objectIDs pushback 917;
	_this setPosWorld [5384.36,17902.3,76.7373];
	_this setVectorDirAndUp [[-0.119842,0.992793,0],[0,0,1]];
	_this setUnitLoadout [["arifle_TRG20_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_BG_Guerilla3_1",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],["V_BandollierB_blk",[["30Rnd_556x45_Stanag",1,30],["MiniGrenade",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",1,1]]],[],"H_Cap_oli","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	_this setSkill 0.6;
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kyriakos Xenakis";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male04GRE";;
	_this setpitch 1.03;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] # 0 isEqualTo '') then      {        ["STAND_U2",["hubstandingub_idle1","hubstandingub_idle2","hubstandingub_idle3","hubstandingub_move1"],false,false] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
	if (true) then {_this disableAI 'PATH'};
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

private _item919 = objNull;
if (_layer845) then {
	_item919 = _item846 createUnit ["I_G_resistanceLeader_F",[5400.94,17884.2,0],[],0,"CAN_COLLIDE"];
	_this = _item919;
	_objects pushback _this;
	_objectIDs pushback 919;
	_this setPosWorld [5400.94,17884.2,76.2225];
	_this setVectorDirAndUp [[-0.226814,0.973233,0.0370581],[0.0146601,-0.0346338,0.999293]];
	_this setSkill 0.6;
	_this setRank "CAPTAIN";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Thanos Dimitriadis";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	if (true) then {_this disableAI 'PATH'};
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

private _item959 = objNull;
if (_layerRoot) then {
	_item959 = createVehicle ["B_G_Offroad_01_F",[5429.05,17886.1,0],[],0,"CAN_COLLIDE"];
	_this = _item959;
	_objects pushback _this;
	_objectIDs pushback 959;
	_this setPosWorld [5429.09,17886.1,77.7682];
	_this setVectorDirAndUp [[-0.987419,0.154535,0.0335091],[0.0293202,-0.0293075,0.99914]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hitengine"",""hitbody"",""hitglass1"",""hitglass2"",""hitrglass"",""hitlglass"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""#light_l"",""#light_r"",""#light_l"",""#light_r"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item960 = objNull;
if (_layerRoot) then {
	_item960 = createVehicle ["B_G_Offroad_01_armed_F",[5429.29,17892.5,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item960;
	_objects pushback _this;
	_objectIDs pushback 960;
	_this setPosWorld [5429.3,17892.5,78.4419];
	_this setVectorDirAndUp [[-0.989354,0.145336,0.00755778],[0.00665928,-0.00666772,0.999956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	parseSimpleArray "[[""hitlfwheel"",""hitlf2wheel"",""hitrfwheel"",""hitrf2wheel"",""hitfuel"",""hitengine"",""hitbody"",""hitglass1"",""hitglass2"",""hitrglass"",""hitlglass"",""hitglass3"",""hitglass4"",""hitglass5"",""hitglass6"",""hitlbwheel"",""hitlmwheel"",""hitrbwheel"",""hitrmwheel"",""hithull"",""hitturret"",""hitgun"",""#light_l"",""#light_r"",""#light_l"",""#light_r"",""#light_l"",""#light_r""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	_this setVariable ['s',1];;
	[_this, 4] call ace_cargo_fnc_setSpace;;
};

private _item739 = objNull;
if (_layer738) then {
	_item739 = createSimpleObject ["Land_Bricks_V4_F",[5390.49,17930.5,77.1844]];
	_this = _item739;
	_objects pushback _this;
	_objectIDs pushback 739;
	_this setPosWorld [5390.49,17930.5,77.1844];
	_this setVectorDirAndUp [[0.150772,0.986336,0.0663969],[0.0651939,-0.0769391,0.994902]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item740 = objNull;
if (_layer738) then {
	_item740 = createVehicle ["Land_StallWater_F",[5472.3,17935.5,-0.0112534],[],0,"CAN_COLLIDE"];
	_this = _item740;
	_objects pushback _this;
	_objectIDs pushback 740;
	_this setPosWorld [5472.3,17935.5,76.8345];
	_this setVectorDirAndUp [[-0.312239,-0.946951,0.076099],[0.0293202,0.0704601,0.997084]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (250 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 250, true]};
};

private _item741 = objNull;
if (_layer738) then {
	_item741 = createVehicle ["Land_Rampart_F",[5429.21,17877.8,0.000930786],[],0,"CAN_COLLIDE"];
	_this = _item741;
	_objects pushback _this;
	_objectIDs pushback 741;
	_this setPosWorld [5429.21,17877.8,76.7089];
	_this setVectorDirAndUp [[0.998164,0.0544728,-0.0264883],[0.0306514,-0.077066,0.996555]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item742 = objNull;
if (_layer738) then {
	_item742 = createVehicle ["Land_Rampart_F",[5407.88,17883.1,-0.00811005],[],0,"CAN_COLLIDE"];
	_this = _item742;
	_objects pushback _this;
	_objectIDs pushback 742;
	_this setPosWorld [5407.88,17883.1,76.8714];
	_this setVectorDirAndUp [[0.86003,-0.510197,-0.00687482],[0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item743 = objNull;
if (_layer738) then {
	_item743 = createVehicle ["Land_Rampart_F",[5351.21,17919.1,0.0166931],[],0,"CAN_COLLIDE"];
	_this = _item743;
	_objects pushback _this;
	_objectIDs pushback 743;
	_this setPosWorld [5351.21,17919.1,79.4866];
	_this setVectorDirAndUp [[0.79109,-0.595854,-0.138329],[0.0545853,-0.156472,0.986173]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item744 = objNull;
if (_layer738) then {
	_item744 = createVehicle ["Land_Rampart_F",[5407.88,17886,-0.00811005],[],0,"CAN_COLLIDE"];
	_this = _item744;
	_objects pushback _this;
	_objectIDs pushback 744;
	_this setPosWorld [5407.88,17886,76.8714];
	_this setVectorDirAndUp [[0.129475,0.991582,-0.00103498],[0.00799344,0,0.999968]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item745 = objNull;
if (_layer738) then {
	_item745 = createVehicle ["Land_Rampart_F",[5411.46,17915.3,-0.0069809],[],0,"CAN_COLLIDE"];
	_this = _item745;
	_objects pushback _this;
	_objectIDs pushback 745;
	_this setPosWorld [5411.46,17915.3,77.7172];
	_this setVectorDirAndUp [[0.835883,-0.547833,-0.0343165],[0.0505931,0.0146415,0.998612]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item746 = objNull;
if (_layer738) then {
	_item746 = createVehicle ["Land_Wreck_Truck_dropside_F",[5411.45,17883.2,-0.008461],[],0,"CAN_COLLIDE"];
	_this = _item746;
	_objects pushback _this;
	_objectIDs pushback 746;
	_this setPosWorld [5411.45,17883.2,77.1138];
	_this setVectorDirAndUp [[-0.856278,-0.516491,0.00501919],[0.00666787,-0.00133685,0.999977]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item747 = objNull;
if (_layer738) then {
	_item747 = createVehicle ["Land_ScrapHeap_1_F",[5390.32,17922.6,-0.00800323],[],0,"CAN_COLLIDE"];
	_this = _item747;
	_objects pushback _this;
	_objectIDs pushback 747;
	_this setPosWorld [5390.32,17922.6,77.1982];
	_this setVectorDirAndUp [[-0.909815,0.413781,0.0319796],[0.0399682,0.0106611,0.999144]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item748 = objNull;
if (_layer738) then {
	_item748 = createVehicle ["Land_ScrapHeap_2_F",[5416.43,17917.2,-0.0192032],[],0,"CAN_COLLIDE"];
	_this = _item748;
	_objects pushback _this;
	_objectIDs pushback 748;
	_this setPosWorld [5416.43,17917.2,77.5317];
	_this setVectorDirAndUp [[0.689128,-0.723479,-0.0409943],[-0.0146602,-0.0704799,0.997405]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item749 = objNull;
if (_layer738) then {
	_item749 = createSimpleObject ["Land_WaterBarrel_F",[5362.18,17924.7,77.6892]];
	_this = _item749;
	_objects pushback _this;
	_objectIDs pushback 749;
	_this setPosWorld [5362.18,17924.7,78.2501];
	_this setVectorDirAndUp [[0,0.998785,0.0492734],[0.134759,-0.0488239,0.989675]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item750 = objNull;
if (_layer738) then {
	_item750 = createSimpleObject ["Land_WaterTank_F",[5370.37,17902.6,76.7441]];
	_this = _item750;
	_objects pushback _this;
	_objectIDs pushback 750;
	_this setPosWorld [5370.37,17902.6,77.4288];
	_this setVectorDirAndUp [[-0.997189,-0.0749232,0.00116906],[0.0026744,-0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (600 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 600, true]};
};

private _item751 = objNull;
if (_layer738) then {
	_item751 = createSimpleObject ["Land_WoodenBox_F",[5380.14,17907,76.8754]];
	_this = _item751;
	_objects pushback _this;
	_objectIDs pushback 751;
	_this setPosWorld [5380.14,17907,76.8754];
	_this setVectorDirAndUp [[-0.0458987,0.998439,0.0318276],[-0.00265204,-0.0319829,0.999485]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item752 = objNull;
if (_layer738) then {
	_item752 = createSimpleObject ["Land_WoodenBox_F",[5380.19,17906.1,76.8457]];
	_this = _item752;
	_objects pushback _this;
	_objectIDs pushback 752;
	_this setPosWorld [5380.19,17906.1,76.8457];
	_this setVectorDirAndUp [[-0.0598346,0.997703,0.0317671],[-0.00265204,-0.0319829,0.999485]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item753 = objNull;
if (_layer738) then {
	_item753 = createSimpleObject ["Land_WoodenBox_F",[5376.22,17906.7,76.8466]];
	_this = _item753;
	_objects pushback _this;
	_objectIDs pushback 753;
	_this setPosWorld [5376.22,17906.7,76.8466];
	_this setVectorDirAndUp [[-0.0575512,0.997849,0.0313934],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item754 = objNull;
if (_layer738) then {
	_item754 = createSimpleObject ["Land_WoodenBox_F",[5376.26,17905.9,76.8202]];
	_this = _item754;
	_objects pushback _this;
	_objectIDs pushback 754;
	_this setPosWorld [5376.26,17905.9,76.8202];
	_this setVectorDirAndUp [[-0.0418144,0.998627,0.0315651],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item755 = objNull;
if (_layer738) then {
	_item755 = createSimpleObject ["Land_WorkStand_F",[5397.48,17929.8,76.9506]];
	_this = _item755;
	_objects pushback _this;
	_objectIDs pushback 755;
	_this setPosWorld [5397.48,17929.8,76.9563];
	_this setVectorDirAndUp [[-0.388678,0.920515,0.0397704],[0.0359766,-0.0279689,0.998961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item756 = objNull;
if (_layer738) then {
	_item756 = createVehicle ["Land_Ground_sheet_khaki_F",[5404.59,17900.5,-0.00537872],[],0,"CAN_COLLIDE"];
	_this = _item756;
	_objects pushback _this;
	_objectIDs pushback 756;
	_this setPosWorld [5404.59,17900.5,76.6279];
	_this setVectorDirAndUp [[0.999296,-0.0368844,-0.00685197],[0.00532655,-0.0412973,0.999133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item757 = objNull;
if (_layer738) then {
	_item757 = createVehicle ["Land_Ground_sheet_khaki_F",[5404.61,17901,-0.00537872],[],0,"CAN_COLLIDE"];
	_this = _item757;
	_objects pushback _this;
	_objectIDs pushback 757;
	_this setPosWorld [5404.61,17901,76.6487];
	_this setVectorDirAndUp [[0.999296,-0.0368844,-0.00685197],[0.00532655,-0.0412973,0.999133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item758 = objNull;
if (_layer738) then {
	_item758 = createVehicle ["Land_Ground_sheet_khaki_F",[5404.7,17902.5,-0.00621033],[],0,"CAN_COLLIDE"];
	_this = _item758;
	_objects pushback _this;
	_objectIDs pushback 758;
	_this setPosWorld [5404.7,17902.5,76.7084];
	_this setVectorDirAndUp [[0.999296,-0.0369639,-0.00640942],[0.00532655,-0.0293197,0.999556]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item759 = objNull;
if (_layer738) then {
	_item759 = createVehicle ["Land_Ground_sheet_khaki_F",[5404.72,17903,-0.0062027],[],0,"CAN_COLLIDE"];
	_this = _item759;
	_objects pushback _this;
	_objectIDs pushback 759;
	_this setPosWorld [5404.72,17903,76.723];
	_this setVectorDirAndUp [[0.999296,-0.0369639,-0.00640942],[0.00532655,-0.0293197,0.999556]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item760 = objNull;
if (_layer738) then {
	_item760 = createVehicle ["Land_Sacks_heap_F",[5381.82,17899.5,0.140312],[],0,"CAN_COLLIDE"];
	_this = _item760;
	_objects pushback _this;
	_objectIDs pushback 760;
	_this setPosWorld [5381.82,17899.5,77.1958];
	_this setVectorDirAndUp [[-0.998643,-0.0520709,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item761 = objNull;
if (_layer738) then {
	_item761 = createVehicle ["Land_Sacks_goods_F",[5385.82,17897.8,0.152122],[],0,"CAN_COLLIDE"];
	_this = _item761;
	_objects pushback _this;
	_objectIDs pushback 761;
	_this setPosWorld [5385.82,17897.8,77.2981];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item762 = objNull;
if (_layer738) then {
	_item762 = createVehicle ["Land_Sack_F",[5386.17,17898.9,0.11557],[],0,"CAN_COLLIDE"];
	_this = _item762;
	_objects pushback _this;
	_objectIDs pushback 762;
	_this setPosWorld [5386.17,17898.9,77.2008];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item763 = objNull;
if (_layer738) then {
	_item763 = createVehicle ["TapeSign_F",[5414.81,17897.9,-0.00470734],[],0,"CAN_COLLIDE"];
	_this = _item763;
	_objects pushback _this;
	_objectIDs pushback 763;
	_this setPosWorld [5414.81,17897.9,76.7595];
	_this setVectorDirAndUp [[-0.0715696,-0.996565,-0.0416602],[0.0119996,-0.0426245,0.999019]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item764 = objNull;
if (_layer738) then {
	_item764 = createVehicle ["TapeSign_F",[5418.08,17897.7,-0.00505829],[],0,"CAN_COLLIDE"];
	_this = _item764;
	_objects pushback _this;
	_objectIDs pushback 764;
	_this setPosWorld [5418.08,17897.7,76.746];
	_this setVectorDirAndUp [[-0.0822735,-0.995704,-0.0424831],[0,-0.0426276,0.999091]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item765 = objNull;
if (_layer738) then {
	_item765 = createVehicle ["TapeSign_F",[5421.38,17897.4,-0.00588226],[],0,"CAN_COLLIDE"];
	_this = _item765;
	_objects pushback _this;
	_objectIDs pushback 765;
	_this setPosWorld [5421.38,17897.4,76.7136];
	_this setVectorDirAndUp [[-0.0715656,-0.997111,-0.0254441],[0.0159975,-0.0266537,0.999517]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item766 = objNull;
if (_layer738) then {
	_item766 = createVehicle ["TapeSign_F",[5424.93,17897.2,-0.00621796],[],0,"CAN_COLLIDE"];
	_this = _item766;
	_objects pushback _this;
	_objectIDs pushback 766;
	_this setPosWorld [5424.93,17897.2,76.6728];
	_this setVectorDirAndUp [[-0.0822716,-0.99627,-0.026019],[0.00665928,-0.0266565,0.999622]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item767 = objNull;
if (_layer738) then {
	_item767 = createVehicle ["TapeSign_F",[5405.75,17895.8,-0.00559998],[],0,"CAN_COLLIDE"];
	_this = _item767;
	_objects pushback _this;
	_objectIDs pushback 767;
	_this setPosWorld [5405.75,17895.8,76.7873];
	_this setVectorDirAndUp [[-0.998799,0.0453178,0.01865],[0.0173315,-0.0293158,0.99942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item768 = objNull;
if (_layer738) then {
	_item768 = createVehicle ["TapeSign_F",[5405.68,17892.3,-0.00373077],[],0,"CAN_COLLIDE"];
	_this = _item768;
	_objects pushback _this;
	_objectIDs pushback 768;
	_this setPosWorld [5405.68,17892.3,76.6262];
	_this setVectorDirAndUp [[-0.998249,0.0555866,0.0202143],[0.0173282,-0.051922,0.998501]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item769 = objNull;
if (_layer738) then {
	_item769 = createSimpleObject ["Land_Portable_generator_F",[5405.54,17939.3,77.1119]];
	_this = _item769;
	_objects pushback _this;
	_objectIDs pushback 769;
	_this setPosWorld [5405.54,17939.3,77.471];
	_this setVectorDirAndUp [[-0.910643,-0.413136,0.00694848],[-0.00265204,0.0226602,0.99974]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item770 = objNull;
if (_layer738) then {
	_item770 = createSimpleObject ["Land_Portable_generator_F",[5373.68,17928.3,77.5159]];
	_this = _item770;
	_objects pushback _this;
	_objectIDs pushback 770;
	_this setPosWorld [5373.68,17928.3,77.8751];
	_this setVectorDirAndUp [[0.496254,-0.868154,-0.00628181],[-0.0106641,-0.0133306,0.999854]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item771 = objNull;
if (_layer738) then {
	_item771 = createSimpleObject ["Land_Portable_generator_F",[5369.71,17912.2,76.9755]];
	_this = _item771;
	_objects pushback _this;
	_objectIDs pushback 771;
	_this setPosWorld [5369.71,17912.2,77.3344];
	_this setVectorDirAndUp [[-0.822424,-0.568837,-0.00655635],[0.0159937,-0.0346412,0.999272]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item772 = objNull;
if (_layer738) then {
	_item772 = createSimpleObject ["Land_BottlePlastic_V1_F",[5372.78,17909.7,76.9092]];
	_this = _item772;
	_objects pushback _this;
	_objectIDs pushback 772;
	_this setPosWorld [5372.78,17909.7,77.0091];
	_this setVectorDirAndUp [[0.626412,0.778885,0.0307705],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item773 = objNull;
if (_layer738) then {
	_item773 = createSimpleObject ["Land_BarrelEmpty_F",[5435.89,17950.3,77.5009]];
	_this = _item773;
	_objects pushback _this;
	_objectIDs pushback 773;
	_this setPosWorld [5435.89,17950.3,77.9049];
	_this setVectorDirAndUp [[0,0.998124,0.0612179],[0.0146639,-0.0612114,0.998017]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item774 = objNull;
if (_layer738) then {
	_item774 = createSimpleObject ["Land_BarrelEmpty_F",[5440.16,17944,77.3343]];
	_this = _item774;
	_objects pushback _this;
	_objectIDs pushback 774;
	_this setPosWorld [5440.16,17944,77.739];
	_this setVectorDirAndUp [[0,0.999999,-0.00133721],[-0.0106641,0.00133714,0.999942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item775 = objNull;
if (_layer738) then {
	_item775 = createSimpleObject ["Land_BarrelEmpty_F",[5435.05,17934.2,77.1568]];
	_this = _item775;
	_objects pushback _this;
	_objectIDs pushback 775;
	_this setPosWorld [5435.05,17934.2,77.5612];
	_this setVectorDirAndUp [[-0.328101,0.943894,0.037591],[0.0186626,-0.0333092,0.999271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item776 = objNull;
if (_layer738) then {
	_item776 = createVehicle ["Land_JunkPile_F",[5434.91,17912.5,-0.00721741],[],0,"CAN_COLLIDE"];
	_this = _item776;
	_objects pushback _this;
	_objectIDs pushback 776;
	_this setPosWorld [5434.91,17912.5,76.7655];
	_this setVectorDirAndUp [[0.666402,-0.745363,-0.0185078],[0.0173282,-0.00933333,0.999806]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item777 = objNull;
if (_layer738) then {
	_item777 = createVehicle ["Land_Pallets_F",[5396.58,17931.3,-0.00511169],[],0,"CAN_COLLIDE"];
	_this = _item777;
	_objects pushback _this;
	_objectIDs pushback 777;
	_this setPosWorld [5396.58,17931.3,77.3425];
	_this setVectorDirAndUp [[0.562826,0.826571,0.00287269],[0.0359766,-0.0279689,0.998961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item779 = objNull;
if (_layer738) then {
	_item779 = createVehicle ["Land_Pallets_F",[5380.6,17903.7,-0.00611115],[],0,"CAN_COLLIDE"];
	_this = _item779;
	_objects pushback _this;
	_objectIDs pushback 779;
	_this setPosWorld [5380.6,17903.7,77.0883];
	_this setVectorDirAndUp [[0.161536,0.986348,0.0319911],[-0.00265204,-0.0319829,0.999485]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item780 = objNull;
if (_layer738) then {
	_item780 = createVehicle ["Land_Pallet_MilBoxes_F",[5374.69,17902.3,-0.00413513],[],0,"CAN_COLLIDE"];
	_this = _item780;
	_objects pushback _this;
	_objectIDs pushback 780;
	_this setPosWorld [5374.69,17902.3,77.1711];
	_this setVectorDirAndUp [[0.998154,-0.0604566,-0.00581688],[0.0026744,-0.0519305,0.998647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item781 = objNull;
if (_layer738) then {
	_item781 = createVehicle ["Land_Pallet_MilBoxes_F",[5402.66,17884.2,-0.00527191],[],0,"CAN_COLLIDE"];
	_this = _item781;
	_objects pushback _this;
	_objectIDs pushback 781;
	_this setPosWorld [5402.66,17884.2,76.6401];
	_this setVectorDirAndUp [[-0.953082,-0.302693,0.00348894],[0.0146601,-0.0346419,0.999292]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item783 = objNull;
if (_layer738) then {
	_item783 = createSimpleObject ["Land_Pallet_F",[5404.73,17896.6,76.4581]];
	_this = _item783;
	_objects pushback _this;
	_objectIDs pushback 783;
	_this setPosWorld [5404.73,17896.6,76.5591];
	_this setVectorDirAndUp [[0.0515595,0.998266,0.0283878],[0.0173315,-0.0293158,0.99942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item784 = objNull;
if (_layer738) then {
	_item784 = createSimpleObject ["Land_Pallet_F",[5404.57,17894.3,76.3795]];
	_this = _item784;
	_objects pushback _this;
	_objectIDs pushback 784;
	_this setPosWorld [5404.57,17894.3,76.4803];
	_this setVectorDirAndUp [[0.0515595,0.997368,0.0509683],[0.0173282,-0.051922,0.998501]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item785 = objNull;
if (_layer738) then {
	_item785 = createSimpleObject ["Land_Pallet_F",[5404.53,17891.9,76.2586]];
	_this = _item785;
	_objects pushback _this;
	_objectIDs pushback 785;
	_this setPosWorld [5404.53,17891.9,76.3595];
	_this setVectorDirAndUp [[0.0515595,0.997368,0.0509683],[0.0173282,-0.051922,0.998501]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item786 = objNull;
if (_layer738) then {
	_item786 = createVehicle ["Land_Obstacle_Saddle_F",[5405.97,17901.8,-0.00528717],[],0,"CAN_COLLIDE"];
	_this = _item786;
	_objects pushback _this;
	_objectIDs pushback 786;
	_this setPosWorld [5405.97,17901.8,76.7324];
	_this setVectorDirAndUp [[0.0279157,0.998764,0.0411332],[0.00532655,-0.0412973,0.999133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item787 = objNull;
if (_layer738) then {
	_item787 = createSimpleObject ["Land_MultiMeter_F",[5399.08,17929.7,76.8904]];
	_this = _item787;
	_objects pushback _this;
	_objectIDs pushback 787;
	_this setPosWorld [5399.08,17929.7,76.898];
	_this setVectorDirAndUp [[0,0.999608,0.027987],[0.0359766,-0.0279689,0.998961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item788 = objNull;
if (_layer738) then {
	_item788 = createSimpleObject ["Land_Metal_wooden_rack_F",[5382.98,17901.1,76.8046]];
	_this = _item788;
	_objects pushback _this;
	_objectIDs pushback 788;
	_this setPosWorld [5382.98,17901.1,77.8096];
	_this setVectorDirAndUp [[0.0348995,-0.999391,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item789 = objNull;
if (_layer738) then {
	_item789 = createSimpleObject ["Land_Metal_wooden_rack_F",[5381.74,17901,76.805]];
	_this = _item789;
	_objects pushback _this;
	_objectIDs pushback 789;
	_this setPosWorld [5381.74,17901,77.81];
	_this setVectorDirAndUp [[0.0348995,-0.999391,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item791 = objNull;
if (_layer738) then {
	_item791 = createSimpleObject ["Land_Metal_rack_Tall_F",[5387.65,17903.9,76.7205]];
	_this = _item791;
	_objects pushback _this;
	_objectIDs pushback 791;
	_this setPosWorld [5387.65,17903.9,76.7205];
	_this setVectorDirAndUp [[-0.999216,-0.0396005,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item793 = objNull;
if (_layer738) then {
	_item793 = createVehicle ["Land_IronPipes_F",[5358.88,17923.1,0.00596619],[],0,"CAN_COLLIDE"];
	_this = _item793;
	_objects pushback _this;
	_objectIDs pushback 793;
	_this setPosWorld [5358.88,17923.1,78.7488];
	_this setVectorDirAndUp [[-0.857427,0.494865,0.141165],[0.134759,-0.0488239,0.989675]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item794 = objNull;
if (_layer738) then {
	_item794 = createSimpleObject ["O_MRAP_02_F",[5376.67,17906.4,76.8449]];
	_this = _item794;
	_objects pushback _this;
	_objectIDs pushback 794;
	_this setPosWorld [5376.67,17906.4,79.287];
	_this setVectorDirAndUp [[-0.99885,-0.0467167,-0.0108178],[-0.0093285,-0.0319816,0.999445]];
	BIS_DamagedCar = _this;
	_this setVehicleVarName "BIS_DamagedCar";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item795 = objNull;
if (_layer738) then {
	_item795 = createSimpleObject ["Land_Grinder_F",[5397.54,17931.1,76.9853]];
	_this = _item795;
	_objects pushback _this;
	_objectIDs pushback 795;
	_this setPosWorld [5397.54,17931.1,77.0638];
	_this setVectorDirAndUp [[0.526959,0.849877,0.00481693],[0.0359766,-0.0279689,0.998961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item796 = objNull;
if (_layer738) then {
	_item796 = createSimpleObject ["Land_Grinder_F",[5381.5,17904.4,76.7945]];
	_this = _item796;
	_objects pushback _this;
	_objectIDs pushback 796;
	_this setPosWorld [5381.5,17904.4,76.873];
	_this setVectorDirAndUp [[0.680616,0.732206,0.0252361],[-0.00265204,-0.0319829,0.999485]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item797 = objNull;
if (_layer738) then {
	_item797 = createSimpleObject ["Land_Grinder_F",[5373.46,17909.8,76.9185]];
	_this = _item797;
	_objects pushback _this;
	_objectIDs pushback 797;
	_this setPosWorld [5373.46,17909.8,76.997];
	_this setVectorDirAndUp [[0.680588,0.732061,0.0297779],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item798 = objNull;
if (_layer738) then {
	_item798 = createSimpleObject ["Land_ClutterCutter_small_F",[5370.18,17933.9,77.525]];
	_this = _item798;
	_objects pushback _this;
	_objectIDs pushback 798;
	_this setPosWorld [5370.18,17933.9,77.525];
	_this setVectorDirAndUp [[0,0.999978,-0.00666818],[-0.0186628,0.00666701,0.999804]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item799 = objNull;
if (_layer738) then {
	_item799 = createSimpleObject ["Land_ClutterCutter_small_F",[5371.38,17933.8,77.5478]];
	_this = _item799;
	_objects pushback _this;
	_objectIDs pushback 799;
	_this setPosWorld [5371.38,17933.8,77.5478];
	_this setVectorDirAndUp [[0,0.979282,0.2025],[-0.788995,-0.124416,0.601671]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item800 = objNull;
if (_layer738) then {
	_item800 = createSimpleObject ["Land_Gloves_F",[5398.43,17929.8,76.9145]];
	_this = _item800;
	_objects pushback _this;
	_objectIDs pushback 800;
	_this setPosWorld [5398.43,17929.8,76.9145];
	_this setVectorDirAndUp [[0,0.999608,0.027987],[0.0359766,-0.0279689,0.998961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item801 = objNull;
if (_layer738) then {
	_item801 = createVehicle ["Land_GarbageBags_F",[5338.6,17904.2,-0.0993576],[],0,"CAN_COLLIDE"];
	_this = _item801;
	_objects pushback _this;
	_objectIDs pushback 801;
	_this setPosWorld [5338.6,17904.2,74.6125];
	_this setVectorDirAndUp [[0,0.999488,-0.031983],[0.138647,0.0316741,0.989835]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item802 = objNull;
if (_layer738) then {
	_item802 = createSimpleObject ["Land_FireExtinguisher_F",[5422.3,17933.9,77.1979]];
	_this = _item802;
	_objects pushback _this;
	_objectIDs pushback 802;
	_this setPosWorld [5422.3,17933.9,77.5823];
	_this setVectorDirAndUp [[0,0.999304,0.037308],[-0.05193,-0.0372576,0.997956]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item803 = objNull;
if (_layer738) then {
	_item803 = createSimpleObject ["Land_ExtensionCord_F",[5398.52,17929.7,76.9107]];
	_this = _item803;
	_objects pushback _this;
	_objectIDs pushback 803;
	_this setPosWorld [5398.52,17929.7,76.982];
	_this setVectorDirAndUp [[0,0.999608,0.027987],[0.0359766,-0.0279689,0.998961]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item804 = objNull;
if (_layer738) then {
	_item804 = createSimpleObject ["Land_ExtensionCord_F",[5381.54,17905.1,76.8174]];
	_this = _item804;
	_objects pushback _this;
	_objectIDs pushback 804;
	_this setPosWorld [5381.54,17905.1,76.8889];
	_this setVectorDirAndUp [[0.850044,0.526365,0.0190988],[-0.00265204,-0.0319829,0.999485]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item805 = objNull;
if (_layer738) then {
	_item805 = createSimpleObject ["Land_ExtensionCord_F",[5374.07,17909.2,76.9062]];
	_this = _item805;
	_objects pushback _this;
	_objectIDs pushback 805;
	_this setPosWorld [5374.07,17909.2,76.9776];
	_this setVectorDirAndUp [[0.85001,0.526183,0.0247712],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item806 = objNull;
if (_layer738) then {
	_item806 = createSimpleObject ["Land_DuctTape_F",[5430.61,17933.7,77.2219]];
	_this = _item806;
	_objects pushback _this;
	_objectIDs pushback 806;
	_this setPosWorld [5430.61,17933.7,77.2469];
	_this setVectorDirAndUp [[0,0.999445,0.033315],[0.0186626,-0.0333092,0.999271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item807 = objNull;
if (_layer738) then {
	_item807 = createSimpleObject ["Land_TableDesk_F",[5390.74,17906.3,76.732]];
	_this = _item807;
	_objects pushback _this;
	_objectIDs pushback 807;
	_this setPosWorld [5390.74,17906.3,77.1391];
	_this setVectorDirAndUp [[0.0583735,-0.998295,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item808 = objNull;
if (_layer738) then {
	_item808 = createVehicle ["Land_CratesPlastic_F",[5383.99,17897.2,0.191208],[],0,"CAN_COLLIDE"];
	_this = _item808;
	_objects pushback _this;
	_objectIDs pushback 808;
	_this setPosWorld [5383.99,17897.2,77.0367];
	_this setVectorDirAndUp [[0.148401,0.988927,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item809 = objNull;
if (_layer738) then {
	_item809 = createVehicle ["Land_CratesPlastic_F",[5404.87,17893.1,-0.0039444],[],0,"CAN_COLLIDE"];
	_this = _item809;
	_objects pushback _this;
	_objectIDs pushback 809;
	_this setPosWorld [5404.87,17893.1,76.5445];
	_this setVectorDirAndUp [[0.0689796,0.996333,0.0506122],[0.0173282,-0.051922,0.998501]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item811 = objNull;
if (_layer738) then {
	_item811 = createSimpleObject ["Land_Cargo20_brick_red_F",[5431.33,17904.1,76.383]];
	_this = _item811;
	_objects pushback _this;
	_objectIDs pushback 811;
	_this setPosWorld [5431.33,17904.1,77.7067];
	_this setVectorDirAndUp [[0.251516,0.967643,0.020152],[0.0173315,-0.025321,0.999529]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 50] call ace_cargo_fnc_setSize;;
};

private _item812 = objNull;
if (_layer738) then {
	_item812 = createSimpleObject ["Land_CargoBox_V1_F",[5429.77,17907.2,76.4863]];
	_this = _item812;
	_objects pushback _this;
	_objectIDs pushback 812;
	_this setPosWorld [5429.77,17907.2,77.2183];
	_this setVectorDirAndUp [[0,0.999679,0.0253224],[0.0133313,-0.0253202,0.99959]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 7] call ace_cargo_fnc_setSize;;
};

private _item813 = objNull;
if (_layer738) then {
	_item813 = createSimpleObject ["Land_CanisterPlastic_F",[5432.96,17934.1,77.1938]];
	_this = _item813;
	_objects pushback _this;
	_objectIDs pushback 813;
	_this setPosWorld [5432.96,17934.1,77.5414];
	_this setVectorDirAndUp [[0.414702,0.909677,0.0225777],[0.0186626,-0.0333092,0.999271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item814 = objNull;
if (_layer738) then {
	_item814 = createSimpleObject ["Land_CanisterPlastic_F",[5415.35,17920.2,76.8075]];
	_this = _item814;
	_objects pushback _this;
	_objectIDs pushback 814;
	_this setPosWorld [5415.35,17920.2,77.1544];
	_this setVectorDirAndUp [[0.675183,0.735051,0.0618652],[-0.0146602,-0.0704799,0.997405]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item815 = objNull;
if (_layer738) then {
	_item815 = createSimpleObject ["Land_CanisterPlastic_F",[5381.37,17903,76.8442]];
	_this = _item815;
	_objects pushback _this;
	_objectIDs pushback 815;
	_this setPosWorld [5381.37,17903,77.0984];
	_this setVectorDirAndUp [[0.393814,0.91394,-0.0981004],[0.652074,-0.202556,0.730596]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item816 = objNull;
if (_layer738) then {
	_item816 = createSimpleObject ["Land_CanisterOil_F",[5433.04,17933.7,77.1789]];
	_this = _item816;
	_objects pushback _this;
	_objectIDs pushback 816;
	_this setPosWorld [5433.04,17933.7,77.2992];
	_this setVectorDirAndUp [[0.404169,-0.913894,-0.0380117],[0.0186626,-0.0333092,0.999271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item817 = objNull;
if (_layer738) then {
	_item817 = createSimpleObject ["Land_CanisterOil_F",[5415.03,17920.5,76.8158]];
	_this = _item817;
	_objects pushback _this;
	_objectIDs pushback 817;
	_this setPosWorld [5415.03,17920.5,76.9358];
	_this setVectorDirAndUp [[0.404188,-0.912799,-0.0585604],[-0.0146602,-0.0704799,0.997405]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item818 = objNull;
if (_layer738) then {
	_item818 = createSimpleObject ["Land_CanisterFuel_F",[5430.37,17934.1,77.2397]];
	_this = _item818;
	_objects pushback _this;
	_objectIDs pushback 818;
	_this setPosWorld [5430.37,17934.1,77.513];
	_this setVectorDirAndUp [[0.984316,0.175967,-0.0125177],[0.0186626,-0.0333092,0.999271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item819 = objNull;
if (_layer738) then {
	_item819 = createSimpleObject ["Land_CanisterFuel_F",[5430.66,17934,77.2322]];
	_this = _item819;
	_objects pushback _this;
	_objectIDs pushback 819;
	_this setPosWorld [5430.66,17934,77.5055];
	_this setVectorDirAndUp [[0.753922,0.656918,0.00781697],[0.0186626,-0.0333092,0.999271]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item820 = objNull;
if (_layer738) then {
	_item820 = createSimpleObject ["Land_CanisterFuel_F",[5414.01,17919.8,76.7198]];
	_this = _item820;
	_objects pushback _this;
	_objectIDs pushback 820;
	_this setPosWorld [5414.01,17919.8,76.9923];
	_this setVectorDirAndUp [[0,0.997513,0.0704875],[-0.0505929,-0.0703972,0.996235]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item822 = objNull;
if (_layer738) then {
	_item822 = createSimpleObject ["Land_Bucket_painted_F",[5371.71,17903,76.7476]];
	_this = _item822;
	_objects pushback _this;
	_objectIDs pushback 822;
	_this setPosWorld [5371.71,17903,76.8859];
	_this setVectorDirAndUp [[-0.367129,0.929964,0.0195801],[0.0026744,-0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item823 = objNull;
if (_layer738) then {
	_item823 = createSimpleObject ["Land_Bucket_clean_F",[5369.27,17910.4,76.9151]];
	_this = _item823;
	_objects pushback _this;
	_objectIDs pushback 823;
	_this setPosWorld [5369.27,17910.4,77.0533];
	_this setVectorDirAndUp [[-0.367129,0.929053,0.0455691],[0.00265199,-0.0479444,0.998846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item824 = objNull;
if (_layer738) then {
	_item824 = createSimpleObject ["Land_Bucket_F",[5371.41,17903.3,76.7554]];
	_this = _item824;
	_objects pushback _this;
	_objectIDs pushback 824;
	_this setPosWorld [5371.41,17903.3,76.9207];
	_this setVectorDirAndUp [[-0.367129,0.929964,0.0195801],[0.0026744,-0.0199946,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item825 = objNull;
if (_layer738) then {
	_item825 = createVehicle ["Land_PaperBox_open_empty_F",[5374.01,17929.7,-0.00712585],[],0,"CAN_COLLIDE"];
	_this = _item825;
	_objects pushback _this;
	_objectIDs pushback 825;
	_this setPosWorld [5374.01,17929.7,78.1556];
	_this setVectorDirAndUp [[-0.681172,0.732118,0.00289979],[-0.018666,-0.0213263,0.999598]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item826 = objNull;
if (_layer738) then {
	_item826 = createVehicle ["Land_PaperBox_open_full_F",[5374.22,17935.7,-0.00918579],[],0,"CAN_COLLIDE"];
	_this = _item826;
	_objects pushback _this;
	_objectIDs pushback 826;
	_this setPosWorld [5374.22,17935.7,78.1965];
	_this setVectorDirAndUp [[-0.129567,0.99153,-0.00903039],[-0.0186628,0.00666701,0.999804]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item827 = objNull;
if (_layer738) then {
	_item827 = createVehicle ["Land_PaperBox_closed_F",[5375.38,17928.4,-0.00715637],[],0,"CAN_COLLIDE"];
	_this = _item827;
	_objects pushback _this;
	_objectIDs pushback 827;
	_this setPosWorld [5375.38,17928.4,78.189];
	_this setVectorDirAndUp [[-0.117916,0.992842,0.0189802],[-0.018666,-0.0213263,0.999598]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 11] call ace_cargo_fnc_setSize;;
};

private _item828 = objNull;
if (_layer738) then {
	_item828 = createSimpleObject ["Land_Basket_F",[5384.88,17897.2,76.6077]];
	_this = _item828;
	_objects pushback _this;
	_objectIDs pushback 828;
	_this setPosWorld [5384.88,17897.2,76.9522];
	_this setVectorDirAndUp [[0.456367,0.889792,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item829 = objNull;
if (_layer738) then {
	_item829 = createSimpleObject ["Land_DrillAku_F",[5374.74,17908.7,76.8952]];
	_this = _item829;
	_objects pushback _this;
	_objectIDs pushback 829;
	_this setPosWorld [5374.74,17908.7,77.0371];
	_this setVectorDirAndUp [[0.587902,-0.808675,-0.0203898],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item830 = objNull;
if (_layer738) then {
	_item830 = createSimpleObject ["Box_NATO_Ammo_F",[5434.53,17928.4,77.0224]];
	_this = _item830;
	_objects pushback _this;
	_objectIDs pushback 830;
	_this setPosWorld [5434.53,17928.4,77.3063];
	_this setVectorDirAndUp [[-0.157985,0.98715,0.0240108],[0.018666,-0.0213263,0.999598]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item831 = objNull;
if (_layer738) then {
	_item831 = createSimpleObject ["Land_Ammobox_rounds_F",[5405.11,17900,76.5839]];
	_this = _item831;
	_objects pushback _this;
	_objectIDs pushback 831;
	_this setPosWorld [5405.11,17900,76.6892];
	_this setVectorDirAndUp [[-0.184869,0.981884,0.0415699],[0.00532655,-0.0412973,0.999133]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item832 = objNull;
if (_layer738) then {
	_item832 = createSimpleObject ["Land_Ammobox_rounds_F",[5405.54,17903.6,76.7193]];
	_this = _item832;
	_objects pushback _this;
	_objectIDs pushback 832;
	_this setPosWorld [5405.54,17903.6,76.8206];
	_this setVectorDirAndUp [[0.106836,0.992252,0.0634256],[-0.274096,-0.0319269,0.961172]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item833 = objNull;
if (_layer738) then {
	_item833 = createSimpleObject ["Land_Ammobox_rounds_F",[5405.58,17895.6,76.4164]];
	_this = _item833;
	_objects pushback _this;
	_objectIDs pushback 833;
	_this setPosWorld [5405.58,17895.6,76.5217];
	_this setVectorDirAndUp [[-0.25338,0.966812,0.0327533],[0.0173315,-0.0293158,0.99942]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item834 = objNull;
if (_layer738) then {
	_item834 = createSimpleObject ["Land_Ammobox_rounds_F",[5404.69,17890.8,76.2078]];
	_this = _item834;
	_objects pushback _this;
	_objectIDs pushback 834;
	_this setPosWorld [5404.69,17890.8,76.2993];
	_this setVectorDirAndUp [[-0.236579,0.848888,-0.472673],[-0.287331,0.403599,0.868648]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item835 = objNull;
if (_layer738) then {
	_item835 = createSimpleObject ["MapBoard_altis_F",[5398.7,17884.2,76.3087]];
	_this = _item835;
	_objects pushback _this;
	_objectIDs pushback 835;
	_this setPosWorld [5398.7,17884.2,77.2755];
	_this setVectorDirAndUp [[-0.106208,-0.993935,-0.0285064],[0.0559122,-0.0345928,0.997836]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
};

private _item611 = objNull;
if (_layer610) then {
	_item611 = createSimpleObject ["Land_CampingChair_V2_F",[5367.42,17930.2,77.6388]];
	_this = _item611;
	_objects pushback _this;
	_objectIDs pushback 611;
	_this setPosWorld [5367.42,17930.2,78.1445];
	_this setVectorDirAndUp [[-0.966249,0.25197,0.0536087],[0.0519298,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item612 = objNull;
if (_layer610) then {
	_item612 = createSimpleObject ["Land_CampingChair_V2_F",[5366.69,17929.1,77.6625]];
	_this = _item612;
	_objects pushback _this;
	_objectIDs pushback 612;
	_this setPosWorld [5366.69,17929.1,78.1683];
	_this setVectorDirAndUp [[-0.995075,-0.0852351,0.050612],[0.0519298,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item613 = objNull;
if (_layer610) then {
	_item613 = createSimpleObject ["Land_CampingChair_V2_F",[5368.21,17931.8,77.6188]];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [5368.21,17931.8,78.1246];
	_this setVectorDirAndUp [[-0.787408,0.614471,0.0491412],[0.0519298,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item614 = objNull;
if (_layer610) then {
	_item614 = createSimpleObject ["Land_CampingChair_V2_F",[5368.51,17932.7,77.6527]];
	_this = _item614;
	_objects pushback _this;
	_objectIDs pushback 614;
	_this setPosWorld [5368.51,17932.7,78.1553];
	_this setVectorDirAndUp [[-0.977088,0.199548,0.0740229],[0.0519298,-0.113766,0.992149]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item626 = objNull;
if (_layer610) then {
	_item626 = createSimpleObject ["Land_CampingChair_V2_F",[5400.78,17886.1,76.2864]];
	_this = _item626;
	_objects pushback _this;
	_objectIDs pushback 626;
	_this setPosWorld [5400.78,17886.1,76.7925];
	_this setVectorDirAndUp [[0.396143,-0.917418,-0.0376152],[0.0146601,-0.0346419,0.999292]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item627 = objNull;
if (_layer610) then {
	_item627 = createSimpleObject ["Land_CampingChair_V2_F",[5402.1,17886.2,76.2405]];
	_this = _item627;
	_objects pushback _this;
	_objectIDs pushback 627;
	_this setPosWorld [5402.1,17886.2,76.7463];
	_this setVectorDirAndUp [[0.67894,-0.733429,-0.0334927],[0.049271,0,0.998785]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item628 = objNull;
if (_layer610) then {
	_item628 = createSimpleObject ["Land_CampingChair_V2_F",[5407.75,17935,77.2148]];
	_this = _item628;
	_objects pushback _this;
	_objectIDs pushback 628;
	_this setPosWorld [5407.75,17935,77.7211];
	_this setVectorDirAndUp [[-0.737053,-0.675755,0.0104072],[-0.00665923,0.0226598,0.999721]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item629 = objNull;
if (_layer610) then {
	_item629 = createSimpleObject ["Land_CampingChair_V2_F",[5407.81,17937,77.1712]];
	_this = _item629;
	_objects pushback _this;
	_objectIDs pushback 629;
	_this setPosWorld [5407.81,17937,77.6776];
	_this setVectorDirAndUp [[-0.978111,0.207779,-0.0112248],[-0.00665923,0.0226598,0.999721]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item632 = objNull;
if (_layer610) then {
	_item632 = createSimpleObject ["Land_CampingChair_V2_F",[5372.2,17902,76.7123]];
	_this = _item632;
	_objects pushback _this;
	_objectIDs pushback 632;
	_this setPosWorld [5372.2,17902,77.2181];
	_this setVectorDirAndUp [[-0.420565,-0.906096,-0.0459915],[0.0026744,-0.0519305,0.998647]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item633 = objNull;
if (_layer610) then {
	_item633 = createSimpleObject ["Land_CampingTable_F",[5367.92,17929.5,77.6034]];
	_this = _item633;
	_objects pushback _this;
	_objectIDs pushback 633;
	_this setPosWorld [5367.92,17929.5,78.0144];
	_this setVectorDirAndUp [[-0.959787,0.275567,0.0535873],[0.0519298,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item634 = objNull;
if (_layer610) then {
	_item634 = createSimpleObject ["Land_CampingTable_F",[5369.02,17931.7,77.575]];
	_this = _item634;
	_objects pushback _this;
	_objectIDs pushback 634;
	_this setPosWorld [5369.02,17931.7,77.9859];
	_this setVectorDirAndUp [[-0.76783,0.63882,0.0484477],[0.0519298,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item635 = objNull;
if (_layer610) then {
	_item635 = createSimpleObject ["Land_CampingTable_F",[5386.69,17903.4,76.7288]];
	_this = _item635;
	_objects pushback _this;
	_objectIDs pushback 635;
	_this setPosWorld [5386.69,17903.4,77.1402];
	_this setVectorDirAndUp [[-0.997574,-0.0679915,0.0149653],[0.0159975,-0.0146621,0.999765]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item641 = objNull;
if (_layer610) then {
	_item641 = createSimpleObject ["Land_CampingTable_F",[5401.03,17887,76.293]];
	_this = _item641;
	_objects pushback _this;
	_objectIDs pushback 641;
	_this setPosWorld [5401.03,17887,76.704];
	_this setVectorDirAndUp [[0.42338,-0.905712,-0.0208857],[0.049271,0,0.998785]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item642 = objNull;
if (_layer610) then {
	_item642 = createSimpleObject ["Land_CampingTable_small_F",[5374.13,17909.2,76.9085]];
	_this = _item642;
	_objects pushback _this;
	_objectIDs pushback 642;
	_this setPosWorld [5374.13,17909.2,77.3135];
	_this setVectorDirAndUp [[0.361411,0.931816,0.0331908],[-0.0093285,-0.0319816,0.999445]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item643 = objNull;
if (_layer610) then {
	_item643 = createSimpleObject ["Land_WoodenTable_large_F",[5409.16,17936.6,77.1886]];
	_this = _item643;
	_objects pushback _this;
	_objectIDs pushback 643;
	_this setPosWorld [5409.16,17936.6,77.6209];
	_this setVectorDirAndUp [[-0.0443869,0.999014,0],[0,0,1]];
	BIS_briefingTable = _this;
	_this setVehicleVarName "BIS_briefingTable";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item644 = objNull;
if (_layer610) then {
	_item644 = createSimpleObject ["Land_ChairPlastic_F",[5380.54,17910.2,76.9309]];
	_this = _item644;
	_objects pushback _this;
	_objectIDs pushback 644;
	_this setPosWorld [5380.54,17910.2,77.4123];
	_this setVectorDirAndUp [[0.484519,-0.873203,-0.052521],[0.0146639,-0.0519232,0.998543]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item645 = objNull;
if (_layer610) then {
	_item645 = createSimpleObject ["Land_ChairWood_F",[5390.97,17905.6,76.7121]];
	_this = _item645;
	_objects pushback _this;
	_objectIDs pushback 645;
	_this setPosWorld [5390.97,17905.6,76.7114];
	_this setVectorDirAndUp [[0.67375,-0.738959,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item923 = objNull;
if (_layer610) then {
	_item923 = createVehicle ["Land_CampingChair_V2_F",[5401.53,17889.5,-0.000930786],[],0,"CAN_COLLIDE"];
	_this = _item923;
	_objects pushback _this;
	_objectIDs pushback 923;
	_this setPosWorld [5401.56,17889.5,76.8191];
	_this setVectorDirAndUp [[-0.289777,0.957094,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item924 = objNull;
if (_layer610) then {
	_item924 = createVehicle ["Land_CampingChair_V2_F",[5400.46,17889.2,0.00778961],[],0,"CAN_COLLIDE"];
	_this = _item924;
	_objects pushback _this;
	_objectIDs pushback 924;
	_this setPosWorld [5400.48,17889.2,76.8757];
	_this setVectorDirAndUp [[-0.289777,0.957094,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item925 = objNull;
if (_layer610) then {
	_item925 = createVehicle ["Land_CampingChair_V2_F",[5399.28,17888.9,0.000312805],[],0,"CAN_COLLIDE"];
	_this = _item925;
	_objects pushback _this;
	_objectIDs pushback 925;
	_this setPosWorld [5399.29,17888.8,76.9068];
	_this setVectorDirAndUp [[-0.289777,0.957094,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item926 = objNull;
if (_layer610) then {
	_item926 = createVehicle ["Land_CampingChair_V2_F",[5402.63,17889.7,-0.0154114],[],0,"CAN_COLLIDE"];
	_this = _item926;
	_objects pushback _this;
	_objectIDs pushback 926;
	_this setPosWorld [5402.66,17889.7,76.7548];
	_this setVectorDirAndUp [[0.381531,0.924356,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item987 = objNull;
if (_layerRoot) then {
	_item987 = createVehicle ["CargoNet_01_barrels_F",[5425.68,17882.5,-1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item987;
	_objects pushback _this;
	_objectIDs pushback 987;
	_this setPosWorld [5425.7,17882.5,76.6817];
	_this setVectorDirAndUp [[0,0.999608,0.0279918],[0.0306604,-0.0279786,0.999138]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	if (1000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 1000] call ace_refuel_fnc_makeSource};
	if ([0.3,0.3,0.3] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.3,0.3,0.3]], true]};
};

private _item993 = objNull;
if (_layerRoot) then {
	_item993 = createSimpleObject ["B_G_Offroad_01_F",[5435.79,17930.2,77.0438]];
	_this = _item993;
	_objects pushback _this;
	_objectIDs pushback 993;
	_this setPosWorld [5435.79,17930.2,78.6549];
	_this setVectorDirAndUp [[0.967554,-0.251576,-0.0234418],[0.0186741,-0.0213225,0.999598]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item994 = objNull;
if (_layerRoot) then {
	_item994 = createVehicle ["Land_PortableLight_02_quad_sand_F",[5421.64,17934.9,-0.000328064],[],0,"CAN_COLLIDE"];
	_this = _item994;
	_objects pushback _this;
	_objectIDs pushback 994;
	_this setPosWorld [5421.64,17934.9,78.1429];
	_this setVectorDirAndUp [[0.631963,0.774999,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',0,true];
	_this animateSource ['Light_1_extend_source',1,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
	_this animateSource ['Light_2_pitch_source',0,true];
	_this animateSource ['Light_2_yaw_source',0,true];
	_this animateSource ['Light_2_extend_source',1,true];
	_this setHitpointDamage ['Hit_Light_2',0];;
	_this animateSource ['Light_3_pitch_source',0,true];
	_this animateSource ['Light_3_yaw_source',0,true];
	_this animateSource ['Light_3_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_3',0];;
	_this animateSource ['Light_4_pitch_source',0,true];
	_this animateSource ['Light_4_yaw_source',0,true];
	_this animateSource ['Light_4_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_4',0];;
};

private _item995 = objNull;
if (_layerRoot) then {
	_item995 = createVehicle ["Land_PortableLight_02_single_sand_F",[5404.43,17892,0.19989],[],0,"CAN_COLLIDE"];
	_this = _item995;
	_objects pushback _this;
	_objectIDs pushback 995;
	_this setPosWorld [5404.43,17892,77.0055];
	_this setVectorDirAndUp [[0.5691,0.822268,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item996 = objNull;
if (_layerRoot) then {
	_item996 = createVehicle ["Land_PortableLight_02_single_sand_F",[5369.26,17906.9,0.816887],[],0,"CAN_COLLIDE"];
	_this = _item996;
	_objects pushback _this;
	_objectIDs pushback 996;
	_this setPosWorld [5369.26,17906.9,78.1985];
	_this setVectorDirAndUp [[-0.985476,-0.169816,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item997 = objNull;
if (_layerRoot) then {
	_item997 = createVehicle ["Land_PortableLight_single_F",[5366.61,17935.7,-0.0149689],[],0,"CAN_COLLIDE"];
	_this = _item997;
	_objects pushback _this;
	_objectIDs pushback 997;
	_this setPosWorld [5366.61,17935.7,79.1488];
	_this setVectorDirAndUp [[-0.581154,0.813794,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item998 = objNull;
if (_layerRoot) then {
	_item998 = createVehicle ["Land_PortableLight_02_single_sand_F",[5427.38,17934.6,0.574837],[],0,"CAN_COLLIDE"];
	_this = _item998;
	_objects pushback _this;
	_objectIDs pushback 998;
	_this setPosWorld [5427.38,17934.6,78.3817];
	_this setVectorDirAndUp [[-0.538686,0.842507,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this animateSource ['Light_1_pitch_source',0,true];
	_this animateSource ['Light_1_yaw_source',180,true];
	_this animateSource ['Light_1_extend_source',0,true];
	_this setHitpointDamage ['Hit_Light_1',0];;
};

private _item999 = objNull;
if (_layerRoot) then {
	_item999 = createSimpleObject ["Land_Stretcher_01_olive_F",[5390.98,17903.5,76.8352]];
	_this = _item999;
	_objects pushback _this;
	_objectIDs pushback 999;
	_this setPosWorld [5390.98,17903.5,77.0768];
	_this setVectorDirAndUp [[-0.996984,-0.077611,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
};

private _item1001 = objNull;
if (_layerRoot) then {
	_item1001 = createVehicle ["Box_NATO_Wps_F",[5369.11,17931.7,0.810768],[],0,"CAN_COLLIDE"];
	_this = _item1001;
	_objects pushback _this;
	_objectIDs pushback 1001;
	_this setPosWorld [5369.12,17931.7,78.5745];
	_this setVectorDirAndUp [[0.769551,-0.63674,-0.0485132],[0.0519345,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item1002 = objNull;
if (_layerRoot) then {
	_item1002 = createVehicle ["Box_NATO_Wps_F",[5368,17929.5,0.810776],[],0,"CAN_COLLIDE"];
	_this = _item1002;
	_objects pushback _this;
	_objectIDs pushback 1002;
	_this setPosWorld [5368.01,17929.5,78.6028];
	_this setVectorDirAndUp [[0.963275,-0.26311,-0.0536072],[0.0519345,-0.0133133,0.998562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item975 = objNull;
if (_layerRoot) then {
	_item975 = createVehicle ["Land_InfoStand_V1_F",[5431.81,17930.9,-0.000259399],[],0,"CAN_COLLIDE"];
	_this = _item975;
	_objects pushback _this;
	_objectIDs pushback 975;
	_this setPosWorld [5431.82,17930.9,77.7074];
	_this setVectorDirAndUp [[0.999727,0.0144274,-0.0183606],[0.018666,-0.0213263,0.999598]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item981 = objNull;
if (_layerRoot) then {
	_item981 = createVehicle ["B_supplyCrate_F",[5371.33,17934.6,-0.00235748],[],0,"CAN_COLLIDE"];
	_this = _item981;
	_objects pushback _this;
	_objectIDs pushback 981;
	_this setPosWorld [5371.32,17934.6,78.4409];
	_this setVectorDirAndUp [[0.556286,-0.830838,0.0159242],[-0.0186628,0.00666701,0.999804]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item986 = objNull;
if (_layerRoot) then {
	_item986 = createVehicle ["Land_Workbench_01_F",[5369.35,17907.9,0],[],0,"CAN_COLLIDE"];
	_this = _item986;
	_objects pushback _this;
	_objectIDs pushback 986;
	_this setPosWorld [5369.36,17907.9,77.3565];
	_this setVectorDirAndUp [[-0.99952,-0.0309175,0.00205138],[0.00267059,-0.0199998,0.999796]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this allowdamage false;;
};

private _item1003 = objNull;
if (_layer1004) then {
	_item1003 = createVehicle ["SkeetMachine",[5371.84,17844.7,0],[],0,"CAN_COLLIDE"];
	_this = _item1003;
	_objects pushback _this;
	_objectIDs pushback 1003;
	_this setPosWorld [5371.81,17844.7,73.0831];
	_this setVectorDirAndUp [[-0.438773,0.898578,-0.00594024],[-0.0625437,-0.023944,0.997755]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item1006 = objNull;
if (_layerRoot) then {
	_item1006 = _item1005 createUnit ["B_Soldier_F",[5386.96,17917.3,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_item1005 selectLeader _item1006;
	_this = _item1006;
	_objects pushback _this;
	_objectIDs pushback 1006;
	_this setPosWorld [5386.96,17917.4,76.9136];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this setname "Ed Blackburn";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male07eng";;
	_this setpitch 1.0199;;
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
	hideObjectGlobal _this;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item977 = objNull;
if (_layerRoot) then {
	_item977 = createTrigger ["EmptyDetectorArea10x10",[5390.37,17904.6,0],true];
	_this = _item977;
	_triggers pushback _this;
	_triggerIDs pushback 977;
	_item977 setPosATL [5390.37,17904.6,0];
	_this setTriggerArea [2,2,176.919,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
		aceHealer = _this;
};

private _item980 = objNull;
if (_layerRoot) then {
	_item980 = createTrigger ["EmptyDetectorArea10x10",[5377.97,17920,0],true];
	_this = _item980;
	_triggers pushback _this;
	_triggerIDs pushback 980;
	_item980 setPosATL [5377.97,17920,0];
	_this setTriggerArea [10,10,87.2236,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item846;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Group North"] call CBA_fnc_setCallsign;
	_this setCombatMode "BLUE";
	_this setBehaviour "CARELESS";
	_this enableDynamicSimulation true;
	     // if (!is3DEN && !(["","ColorWEST","Group North",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Group North",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Group North",true]'];          ["","ColorWEST","Group North",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Group North",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Group North",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};
_this = _item1005;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Alpha 1-2"] call CBA_fnc_setCallsign;
	    //  if (!is3DEN && !(["","ColorWEST","Alpha 1-2",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorWEST","Alpha 1-2",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorWEST","Alpha 1-2",true]'];          ["","ColorWEST","Alpha 1-2",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorWEST","Alpha 1-2",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorWEST","Alpha 1-2",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item976 = objNull;
if (_layerRoot) then {
	_item976 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[5418.52,17925.7,-0.006073],[],0,"CAN_COLLIDE"];
	_this = _item976;
	_logics pushback _this;
	_logicIDs pushback 976;
	_this setPosWorld [5418.52,17925.7,76.9588];
	_this setVectorDirAndUp [[0,0.999679,0.0253248],[0.0545839,-0.025287,0.998189]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer1004) then {missionNamespace setVariable ["fia_Skeet Machine",[[_item1003],[]]];};
if (_layer610) then {missionNamespace setVariable ["fia_Furniture",[[_item611,_item612,_item613,_item614,_item626,_item627,_item628,_item629,_item632,_item633,_item634,_item635,_item641,_item642,_item643,_item644,_item645,_item923,_item924,_item925,_item926],[]]];};
if (_layer738) then {missionNamespace setVariable ["fia_Other Props",[[_item739,_item740,_item741,_item742,_item743,_item744,_item745,_item746,_item747,_item748,_item749,_item750,_item751,_item752,_item753,_item754,_item755,_item756,_item757,_item758,_item759,_item760,_item761,_item762,_item763,_item764,_item765,_item766,_item767,_item768,_item769,_item770,_item771,_item772,_item773,_item774,_item775,_item776,_item777,_item779,_item780,_item781,_item783,_item784,_item785,_item786,_item787,_item788,_item789,_item791,_item793,_item794,_item795,_item796,_item797,_item798,_item799,_item800,_item801,_item802,_item803,_item804,_item805,_item806,_item807,_item808,_item809,_item811,_item812,_item813,_item814,_item815,_item816,_item817,_item818,_item819,_item820,_item822,_item823,_item824,_item825,_item826,_item827,_item828,_item829,_item830,_item831,_item832,_item833,_item834,_item835],[]]];};
if (_layer845) then {missionNamespace setVariable ["fia_AI Bots",[[_item849,_item851,_item853,_item859,_item861,_item869,_item873,_item875,_item877,_item879,_item881,_item885,_item893,_item895,_item897,_item899,_item907,_item917,_item919],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item849) then {
		this = _item849;
		call{[this, "STAND","ASIS"] call BIS_fnc_ambientAnim; this setDir 104};
	};
	if !(isnull _item851) then {
		this = _item851;
		call{[this, "WATCH","ASIS"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item853) then {
		this = _item853;
		call{[this, "BRIEFING","ASIS"] call BIS_fnc_ambientAnim; this setDir 132;};
	};
	if !(isnull _item859) then {
		this = _item859;
		call{[this, "WATCH","HEAVY"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item861) then {
		this = _item861;
		call{[this, "GUARD","HEAVY"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item869) then {
		this = _item869;
		call{[this, "STAND_IA","HEAVY"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item873) then {
		this = _item873;
		call{[this, "WATCH","HEAVY"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item875) then {
		this = _item875;
		call{[this, "WATCH","HEAVY"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item877) then {
		this = _item877;
		call{[this,"REPAIR_VEH_PRONE","LIGHT"] call BIS_fnc_ambientAnim; this setDir 175;};
	};
	if !(isnull _item879) then {
		this = _item879;
		call{[this,"REPAIR_VEH_KNEEL","MEDIUM"] call BIS_fnc_ambientAnim; this setDir 174;};
	};
	if !(isnull _item881) then {
		this = _item881;
		call{[this,"STAND"] call BIS_fnc_ambientAnim; this setDir 250;};
	};
	if !(isnull _item893) then {
		this = _item893;
		call{[this,"LEAN","HEAVY"] call BIS_fnc_ambientAnim; this setDir 62};
	};
	if !(isnull _item895) then {
		this = _item895;
		call{[this,"GUARD","HEAVY"] call BIS_fnc_ambientAnim; this setDir 159;};
	};
	if !(isnull _item897) then {
		this = _item897;
		call{[this,"WATCH","HEAVY"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item899) then {
		this = _item899;
		call{[this,"REPAIR_VEH_STAND"] call BIS_fnc_ambientAnim;};
	};
	if !(isnull _item907) then {
		this = _item907;
		call{[this,"STAND"] call BIS_fnc_ambientAnim; this setDir 222};
	};
	if !(isnull _item917) then {
		this = _item917;
		call{this setDir 353};
	};
	if !(isnull _item919) then {
		this = _item919;
		call{[this,"BRIEFING"] call BIS_fnc_ambientAnim; this setIdentity "EPB_I_Stavrou";};
	};
	if !(isnull _item750) then {
		this = _item750;
		this setdir getdir this; [this,0,0] call bis_fnc_setPitchBank;;
	};
	if !(isnull _item791) then {
		this = _item791;
		this setdir getdir this;;
	};
	if !(isnull _item633) then {
		this = _item633;
		this setVariable ["BIS_SurfaceObject","ARMORY_CampingTable"];;
	};
	if !(isnull _item634) then {
		this = _item634;
		this setVariable ["BIS_SurfaceObject","ARMORY_CampingTable"];;
	};
	if !(isnull _item635) then {
		this = _item635;
		this setdir getdir this;;
	};
	if !(isnull _item641) then {
		this = _item641;
		this setdir getdir this;;
	};
	if !(isnull _item643) then {
		this = _item643;
		this setVariable ["BIS_SurfaceObject","WoodenTable_Empty"];;
	};
	if !(isnull _item1001) then {
		this = _item1001;
		call{arsenals pushBack this; [this, false] call ace_dragging_fnc_setCarryable; [this, false] call ace_dragging_fnc_setDraggable; };
	};
	if !(isnull _item1002) then {
		this = _item1002;
		call{arsenals pushBack this; [this, false] call ace_dragging_fnc_setCarryable; [this, false] call ace_dragging_fnc_setDraggable; };
	};
	if !(isnull _item981) then {
		this = _item981;
		call{arsenals pushBack this};
	};
	if !(isnull _item986) then {
		this = _item986;
		call{repStation = this;};
	};
	if !(isnull _item1003) then {
		this = _item1003;
		call{this addAction ["PULL", "scripts\launch_skeet.sqf"]};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
