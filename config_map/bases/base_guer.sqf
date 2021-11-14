// Export of 'base_guer.Altis' by McKendrick on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer497 = (_allWhitelisted || {"furniture" in _layerWhiteList}) && {!("furniture" in _layerBlackList)};
private _layer574 = (_allWhitelisted || {"props" in _layerWhiteList}) && {!("props" in _layerBlackList)};
private _layer477 = (_allWhitelisted || {"fortification" in _layerWhiteList}) && {!("fortification" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item695 = grpNull;
if (_layerRoot) then {
	_item695 = createGroup resistance;
	_this = _item695;
	_groups pushback _this;
	_groupIDs pushback 695;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item696 = objNull;
if (_layerRoot) then {
	_item696 = _item695 createUnit ["I_G_Soldier_lite_F",[8262.12,14863.2,7.62939e-006],[],0,"CAN_COLLIDE"];
	_item695 selectLeader _item696;
	_this = _item696;
	_objects pushback _this;
	_objectIDs pushback 696;
	_this setPosWorld [8262.12,14863.2,124.114];
	_this setVectorDirAndUp [[0.997499,-0.0706793,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Stefanos Strambopoulos";;
	_this setface "GreekHead_A3_06";;
	_this setspeaker "Male03GRE";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item697 = objNull;
if (_layerRoot) then {
	_item697 = _item695 createUnit ["I_G_Soldier_F",[8263.57,14864.4,0],[],0,"CAN_COLLIDE"];
	_this = _item697;
	_objects pushback _this;
	_objectIDs pushback 697;
	_this setPosWorld [8263.57,14864.4,124.148];
	_this setVectorDirAndUp [[0.0150791,-0.999886,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Panagiotis Athanasiadis";;
	_this setface "Ioannou";;
	_this setspeaker "Male06GRE";;
	_this setpitch 0.98;;
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

private _item690 = objNull;
if (_layerRoot) then {
	_item690 = _item695 createUnit ["I_G_Soldier_F",[8211.37,14884.6,0],[],0,"CAN_COLLIDE"];
	_this = _item690;
	_objects pushback _this;
	_objectIDs pushback 690;
	_this setPosWorld [8211.37,14884.7,121.051];
	_this setVectorDirAndUp [[0.890377,-0.455223,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nikos Malas";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male05GRE";;
	_this setpitch 1.02;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item699 = objNull;
if (_layerRoot) then {
	_item699 = _item695 createUnit ["I_G_Soldier_F",[8207.61,14878.5,0],[],0,"CAN_COLLIDE"];
	_this = _item699;
	_objects pushback _this;
	_objectIDs pushback 699;
	_this setPosWorld [8207.61,14878.6,121.051];
	_this setVectorDirAndUp [[-0.13843,-0.990372,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Alexandros Papadopoulos";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male04GRE";;
	_this setpitch 0.96;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT3",["hubsittingchairc_idle1","hubsittingchairc_idle2","hubsittingchairc_idle3","hubsittingchairc_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT3",["hubsittingchairc_idle1","hubsittingchairc_idle2","hubsittingchairc_idle3","hubsittingchairc_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item692 = objNull;
if (_layerRoot) then {
	_item692 = _item695 createUnit ["I_G_Soldier_F",[8196.85,14866.4,0],[],0,"CAN_COLLIDE"];
	_this = _item692;
	_objects pushback _this;
	_objectIDs pushback 692;
	_this setPosWorld [8196.85,14866.5,121.051];
	_this setVectorDirAndUp [[0.986011,-0.166683,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Mimis Manetta";;
	_this setface "GreekHead_A3_05";;
	_this setspeaker "Male05GRE";;
	_this setpitch 1.05;;
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

private _item698 = objNull;
if (_layerRoot) then {
	_item698 = _item695 createUnit ["I_G_Soldier_F",[8194.03,14872.9,0.272003],[],0,"CAN_COLLIDE"];
	_this = _item698;
	_objects pushback _this;
	_objectIDs pushback 698;
	_this setPosWorld [8194.03,14873,121.323];
	_this setVectorDirAndUp [[0.94011,-0.340872,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Giourkas Papadopoulos";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male02GRE";;
	_this setpitch 1;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["LEAN_ON_TABLE",["inbasemoves_table1"],false,true] # 0 isEqualTo '') then      {        ["LEAN_ON_TABLE",["inbasemoves_table1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item701 = objNull;
if (_layerRoot) then {
	_item701 = _item695 createUnit ["I_G_Soldier_F",[8232.89,14848.4,0.470284],[],0,"CAN_COLLIDE"];
	_this = _item701;
	_objects pushback _this;
	_objectIDs pushback 701;
	_this setPosWorld [8232.89,14848.4,123.566];
	_this setVectorDirAndUp [[-0.437852,0.899047,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Kostakis Kammenou";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male02GRE";;
	_this setpitch 1.02;;
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

private _item703 = objNull;
if (_layerRoot) then {
	_item703 = _item695 createUnit ["I_G_Soldier_F",[8279.33,14838.3,0],[],0,"CAN_COLLIDE"];
	_this = _item703;
	_objects pushback _this;
	_objectIDs pushback 703;
	_this setPosWorld [8279.33,14838.4,123.519];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dimitiros Melidoni";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "Male01GRE";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] # 0 isEqualTo '') then      {        ["SIT2",["hubsittingchairb_idle1","hubsittingchairb_idle2","hubsittingchairb_idle3","hubsittingchairb_move1"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item705 = objNull;
if (_layerRoot) then {
	_item705 = _item695 createUnit ["I_G_Soldier_F",[8298.59,14854.7,0],[],0,"CAN_COLLIDE"];
	_this = _item705;
	_objects pushback _this;
	_objectIDs pushback 705;
	_this setPosWorld [8298.59,14854.8,123.716];
	_this setVectorDirAndUp [[-0.63276,0.774348,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Apostolos Gikas";;
	_this setface "GreekHead_A3_03";;
	_this setspeaker "Male01GRE";;
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

private _item707 = objNull;
if (_layerRoot) then {
	_item707 = _item695 createUnit ["I_G_Soldier_F",[8298.51,14829.1,0],[],0,"CAN_COLLIDE"];
	_this = _item707;
	_objects pushback _this;
	_objectIDs pushback 707;
	_this setPosWorld [8298.51,14829.1,123.047];
	_this setVectorDirAndUp [[0.998053,-0.0623724,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Nicolo Verga";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "Male02GRE";;
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

private _item709 = objNull;
if (_layerRoot) then {
	_item709 = _item695 createUnit ["I_G_Soldier_F",[8302.48,14907.5,0],[],0,"CAN_COLLIDE"];
	_this = _item709;
	_objects pushback _this;
	_objectIDs pushback 709;
	_this setPosWorld [8302.48,14907.6,129.521];
	_this setVectorDirAndUp [[0.635566,0.772046,0],[0,0,1]];
	sk_op = _this;
	_this setVehicleVarName "sk_op";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Janos Bouras";;
	_this setface "GreekHead_A3_01";;
	_this setspeaker "Male06GRE";;
	_this setpitch 1.01;;
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

private _item716 = objNull;
if (_layerRoot) then {
	_item716 = _item695 createUnit ["I_G_Soldier_F",[8264.14,14843.5,0.190002],[],0,"CAN_COLLIDE"];
	_this = _item716;
	_objects pushback _this;
	_objectIDs pushback 716;
	_this setPosWorld [8264.14,14843.5,124.233];
	_this setVectorDirAndUp [[-0.972917,0.231153,0],[0,0,1]];
	_this setRank "LIEUTENANT";
	0 remoteExec ['setFeatureType', _this];
	_this allowdamage false;;
	_this setname "Dimitris Karmanlis";;
	_this setface "GreekHead_A3_04";;
	_this setspeaker "Male01GRE";;
	_this setpitch 1.01;;
	parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg"",""ace_hdbracket""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {_this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints;
	      if !(["BRIEFING_POINT_TABLE",["hubbriefing_loop","hubbriefing_loop","hubbriefing_loop","hubbriefing_lookaround1","hubbriefing_lookaround2","hubbriefing_pointattable","hubbriefing_scratch","hubbriefing_stretch","hubbriefing_talkaround"],false,true] # 0 isEqualTo '') then      {        ["BRIEFING_POINT_TABLE",["hubbriefing_loop","hubbriefing_loop","hubbriefing_loop","hubbriefing_lookaround1","hubbriefing_lookaround2","hubbriefing_pointattable","hubbriefing_scratch","hubbriefing_stretch","hubbriefing_talkaround"],false,true] params ['_animSet', '_anims', '_canExit', '_attach'];                _this setVariable ['ENH_ambientAnimations_anims', _anims];        _this disableAI 'ANIM';        if (_attach && !is3DEN) then        {          private _logic = group _this createUnit ['Logic', getPosATL _this, [], 0, 'NONE'];          _this setVariable ['ENH_ambientAnimations_logic', _logic];          [_this, _logic] call BIS_fnc_attachToRelative;        };                ENH_fnc_ambientAnimations_play =        {          params ['_unit'];          private _anim = selectRandom (_unit getVariable ['ENH_ambientAnimations_anims', []]);          [_unit, _anim] remoteExec ['switchMove', 0];        };                ENH_fnc_ambientAnimations_exit =        {          params ['_unit'];          if !(_unit getVariable ['ENH_ambientAnimations_exit', true]) exitWith {false};          _unit setVariable ['ENH_ambientAnimations_exit', true];          detach _unit;          deleteVehicle (_unit getVariable ['ENH_ambientAnimations_logic', objNull]);          [_unit, ''] remoteExec ['switchMove', 0];                    _unit enableAI 'ANIM';                    _unit removeEventHandler ['Killed', _unit getVariable ['ENH_EHKilled',-1]];          _unit removeEventHandler ['Dammaged', _unit getVariable ['ENH_EHDammaged',-1]];          _unit removeEventHandler ['AnimDone', _unit getVariable ['ENH_EHAnimDone',-1]];        };                private _EHAnimDone = _this addEventHandler ['AnimDone',          {            params ['_unit'];            if (alive _unit) then            {              _unit call ENH_fnc_ambientAnimations_play;            }            else            {              _unit call ENH_fnc_ambientAnimations_exit;            };          }        ];        _this setVariable ['ENH_EHAnimDone', _EHAnimDone];                if (_canExit && !is3DEN) then        {          private _EHKilled = _this addEventHandler ['Killed',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHKilled', _EHKilled];          private _EHDammaged = _this addEventHandler ['Dammaged',          {            (_this select 0) call ENH_fnc_ambientAnimations_exit;          }];          _this setVariable ['ENH_EHDammaged', _EHDammaged];          _this spawn          {            scriptName 'ENH_Attribute_AmbientAnimations';            params ['_unit'];            waitUntil            {              sleep 1; (_unit getVariable ['ENH_ambientAnimations_exit', false]) || {behaviour _unit == 'COMBAT'}            };            _unit call ENH_fnc_ambientAnimations_exit;          };        };        _this call ENH_fnc_ambientAnimations_play;      };;
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

private _item478 = objNull;
if (_layer477) then {
	_item478 = createVehicle ["Land_HBarrier_3_F",[8296.96,14862.8,0],[],0,"CAN_COLLIDE"];
	_this = _item478;
	_objects pushback _this;
	_objectIDs pushback 478;
	_this setPosWorld [8296.96,14862.8,124.58];
	_this setVectorDirAndUp [[0.838063,-0.545561,-0.00359552],[-0.00265204,-0.010664,0.99994]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item479 = objNull;
if (_layer477) then {
	_item479 = createVehicle ["Land_HBarrier_3_F",[8295.28,14828.6,0],[],0,"CAN_COLLIDE"];
	_this = _item479;
	_objects pushback _this;
	_objectIDs pushback 479;
	_this setPosWorld [8295.28,14828.6,124.048];
	_this setVectorDirAndUp [[-0.785543,0.617462,0.0407762],[0.0612179,0.0119725,0.998053]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item480 = objNull;
if (_layer477) then {
	_item480 = createVehicle ["Land_HBarrier_3_F",[8179.24,14871,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item480;
	_objects pushback _this;
	_objectIDs pushback 480;
	_this setPosWorld [8179.24,14871,121.519];
	_this setVectorDirAndUp [[-0.926277,0.373496,-0.0501195],[-0.0572388,-0.00798747,0.998329]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item481 = objNull;
if (_layer477) then {
	_item481 = createVehicle ["Land_HBarrier_3_F",[8194.92,14861.3,0],[],0,"CAN_COLLIDE"];
	_this = _item481;
	_objects pushback _this;
	_objectIDs pushback 481;
	_this setPosWorld [8194.92,14861.3,121.818];
	_this setVectorDirAndUp [[-0.917555,0.397605,-0.00154942],[-0.00399675,-0.00532651,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item482 = objNull;
if (_layer477) then {
	_item482 = createVehicle ["Land_HBarrier_3_F",[8210.6,14852.2,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item482;
	_objects pushback _this;
	_objectIDs pushback 482;
	_this setPosWorld [8210.6,14852.2,121.941];
	_this setVectorDirAndUp [[-0.20672,-0.978279,0.0153757],[-0.00133721,0.0159977,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item483 = objNull;
if (_layer477) then {
	_item483 = createVehicle ["Land_HBarrier_3_F",[8233.3,14848,0],[],0,"CAN_COLLIDE"];
	_this = _item483;
	_objects pushback _this;
	_objectIDs pushback 483;
	_this setPosWorld [8233.3,14848,123.928];
	_this setVectorDirAndUp [[-0.0383003,-0.999195,0.0119473],[-0.0704904,0.0146278,0.997405]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item484 = objNull;
if (_layer477) then {
	_item484 = createVehicle ["Land_HBarrier_5_F",[8214.87,14892.6,0],[],0,"CAN_COLLIDE"];
	_this = _item484;
	_objects pushback _this;
	_objectIDs pushback 484;
	_this setPosWorld [8214.87,14892.6,121.791];
	_this setVectorDirAndUp [[-0.107932,0.994158,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item485 = objNull;
if (_layer477) then {
	_item485 = createVehicle ["Land_HBarrier_5_F",[8220.75,14893,0],[],0,"CAN_COLLIDE"];
	_this = _item485;
	_objects pushback _this;
	_objectIDs pushback 485;
	_this setPosWorld [8220.75,14893,121.791];
	_this setVectorDirAndUp [[-0.0365622,0.999331,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item486 = objNull;
if (_layer477) then {
	_item486 = createVehicle ["Land_HBarrier_5_F",[8209.16,14892.4,0],[],0,"CAN_COLLIDE"];
	_this = _item486;
	_objects pushback _this;
	_objectIDs pushback 486;
	_this setPosWorld [8209.16,14892.4,121.791];
	_this setVectorDirAndUp [[0.0128953,0.999917,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item487 = objNull;
if (_layer477) then {
	_item487 = createVehicle ["Land_HBarrier_5_F",[8226.61,14893.3,0],[],0,"CAN_COLLIDE"];
	_this = _item487;
	_objects pushback _this;
	_objectIDs pushback 487;
	_this setPosWorld [8226.61,14893.3,121.791];
	_this setVectorDirAndUp [[-0.0365622,0.999331,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item488 = objNull;
if (_layer477) then {
	_item488 = createVehicle ["Land_HBarrier_5_F",[8237.94,14893.7,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item488;
	_objects pushback _this;
	_objectIDs pushback 488;
	_this setPosWorld [8237.94,14893.7,121.801];
	_this setVectorDirAndUp [[0.262739,0.964864,0.00234001],[-0.00399675,-0.00133687,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item489 = objNull;
if (_layer477) then {
	_item489 = createVehicle ["Land_HBarrier_5_F",[8295.93,14833.2,0],[],0,"CAN_COLLIDE"];
	_this = _item489;
	_objects pushback _this;
	_objectIDs pushback 489;
	_this setPosWorld [8295.93,14833.2,123.896];
	_this setVectorDirAndUp [[0.981546,0.180768,-0.0623739],[0.0612179,0.0119725,0.998053]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item490 = objNull;
if (_layer477) then {
	_item490 = createVehicle ["Land_HBarrier_5_F",[8175.35,14862.6,0],[],0,"CAN_COLLIDE"];
	_this = _item490;
	_objects pushback _this;
	_objectIDs pushback 490;
	_this setPosWorld [8175.35,14862.6,122.142];
	_this setVectorDirAndUp [[0.955723,-0.284393,-0.0755955],[0.0955612,0.0569769,0.993792]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item491 = objNull;
if (_layer477) then {
	_item491 = createVehicle ["Land_HBarrier_5_F",[8245.93,14891.1,0],[],0,"CAN_COLLIDE"];
	_this = _item491;
	_objects pushback _this;
	_objectIDs pushback 491;
	_this setPosWorld [8245.93,14891.1,122.208];
	_this setVectorDirAndUp [[0.355901,0.933579,0.0420158],[-0.11392,-0.00128317,0.993489]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item492 = objNull;
if (_layer477) then {
	_item492 = createVehicle ["Land_HBarrier_5_F",[8232.27,14893.9,0],[],0,"CAN_COLLIDE"];
	_this = _item492;
	_objects pushback _this;
	_objectIDs pushback 492;
	_this setPosWorld [8232.27,14893.9,121.791];
	_this setVectorDirAndUp [[-0.159799,0.98715,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item493 = objNull;
if (_layer477) then {
	_item493 = createVehicle ["Land_HBarrier_5_F",[8206.27,14853.4,0],[],0,"CAN_COLLIDE"];
	_this = _item493;
	_objects pushback _this;
	_objectIDs pushback 493;
	_this setPosWorld [8206.27,14853.4,121.805];
	_this setVectorDirAndUp [[0.274484,0.961558,0.00806095],[-0.0199947,-0.00267387,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item494 = objNull;
if (_layer477) then {
	_item494 = createVehicle ["Land_HBarrier_5_F",[8237.91,14847.4,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [8237.91,14847.4,124.082];
	_this setVectorDirAndUp [[0.184515,0.982484,0.0260533],[-0.0559114,-0.0159725,0.998308]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item495 = objNull;
if (_layer477) then {
	_item495 = createVehicle ["Land_HBarrier_1_F",[8288.88,14820.7,0],[],0,"CAN_COLLIDE"];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [8288.88,14820.7,124.277];
	_this setVectorDirAndUp [[0.617768,0.785758,-0.0307691],[0.0226629,0.0213218,0.999516]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item496 = objNull;
if (_layer477) then {
	_item496 = createVehicle ["Land_HBarrier_1_F",[8174.38,14859,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item496;
	_objects pushback _this;
	_objectIDs pushback 496;
	_this setPosWorld [8174.38,14859,122.433];
	_this setVectorDirAndUp [[-0.961526,-0.230578,0.149338],[0.139942,0.0566766,0.988536]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item575 = objNull;
if (_layer574) then {
	_item575 = createSimpleObject ["Land_Pallet_F",[8193.91,14883.1,121.05]];
	_this = _item575;
	_objects pushback _this;
	_objectIDs pushback 575;
	_this setPosWorld [8193.91,14883.1,121.151];
	_this setVectorDirAndUp [[0.493389,0.869809,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item576 = objNull;
if (_layer574) then {
	_item576 = createSimpleObject ["Land_Pallet_F",[8196.68,14881.4,121.05]];
	_this = _item576;
	_objects pushback _this;
	_objectIDs pushback 576;
	_this setPosWorld [8196.68,14881.4,121.151];
	_this setVectorDirAndUp [[0.493389,0.869809,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item577 = objNull;
if (_layer574) then {
	_item577 = createSimpleObject ["Land_Pallet_F",[8194.69,14884.5,121.05]];
	_this = _item577;
	_objects pushback _this;
	_objectIDs pushback 577;
	_this setPosWorld [8194.69,14884.5,121.151];
	_this setVectorDirAndUp [[0.493389,0.869809,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item578 = objNull;
if (_layer574) then {
	_item578 = createSimpleObject ["Land_Pallet_F",[8197.47,14882.9,121.05]];
	_this = _item578;
	_objects pushback _this;
	_objectIDs pushback 578;
	_this setPosWorld [8197.47,14882.9,121.151];
	_this setVectorDirAndUp [[0.493389,0.869809,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item579 = objNull;
if (_layer574) then {
	_item579 = createSimpleObject ["Land_Pallet_vertical_F",[8290.53,14836.2,123.32]];
	_this = _item579;
	_objects pushback _this;
	_objectIDs pushback 579;
	_this setPosWorld [8290.53,14836.2,124.055];
	_this setVectorDirAndUp [[-0.883064,0.468336,0.0293152],[0.0239934,-0.0173265,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item580 = objNull;
if (_layer574) then {
	_item580 = createVehicle ["Land_Pallets_F",[8289.06,14838.2,0],[],0,"CAN_COLLIDE"];
	_this = _item580;
	_objects pushback _this;
	_objectIDs pushback 580;
	_this setPosWorld [8289.06,14838.2,123.706];
	_this setVectorDirAndUp [[-0.959204,0.281335,0.0279013],[0.0239934,-0.0173265,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item581 = objNull;
if (_layer574) then {
	_item581 = createVehicle ["Land_Pallets_F",[8258.22,14853.1,0],[],0,"CAN_COLLIDE"];
	_this = _item581;
	_objects pushback _this;
	_objectIDs pushback 581;
	_this setPosWorld [8258.22,14853.1,124.414];
	_this setVectorDirAndUp [[0.674276,-0.73846,-0.00535487],[-0.00665923,-0.013331,0.999889]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item582 = objNull;
if (_layer574) then {
	_item582 = createSimpleObject ["Land_BarrelEmpty_F",[8195.67,14881.9,121.05]];
	_this = _item582;
	_objects pushback _this;
	_objectIDs pushback 582;
	_this setPosWorld [8195.67,14881.9,121.455];
	_this setVectorDirAndUp [[-0.0794805,0.996836,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item583 = objNull;
if (_layer574) then {
	_item583 = createSimpleObject ["Land_BarrelEmpty_F",[8260.74,14870.5,123.96]];
	_this = _item583;
	_objects pushback _this;
	_objectIDs pushback 583;
	_this setPosWorld [8260.74,14870.5,124.364];
	_this setVectorDirAndUp [[0,1,0],[-0.05193,0,0.998651]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item584 = objNull;
if (_layer574) then {
	_item584 = createSimpleObject ["Land_BarrelEmpty_F",[8286.02,14833.7,123.412]];
	_this = _item584;
	_objects pushback _this;
	_objectIDs pushback 584;
	_this setPosWorld [8286.02,14833.7,123.817];
	_this setVectorDirAndUp [[0,0.999928,-0.012],[0.0173282,0.0119982,0.999778]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item585 = objNull;
if (_layer574) then {
	_item585 = createSimpleObject ["Land_BarrelEmpty_F",[8285.44,14833.6,123.423]];
	_this = _item585;
	_objects pushback _this;
	_objectIDs pushback 585;
	_this setPosWorld [8285.44,14833.6,123.827];
	_this setVectorDirAndUp [[0,0.999928,-0.012],[0.0173282,0.0119982,0.999778]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item586 = objNull;
if (_layer574) then {
	_item586 = createSimpleObject ["Land_BarrelEmpty_F",[8285.69,14834.2,123.411]];
	_this = _item586;
	_objects pushback _this;
	_objectIDs pushback 586;
	_this setPosWorld [8285.69,14834.2,123.816];
	_this setVectorDirAndUp [[0,0.999928,-0.012],[0.0173282,0.0119982,0.999778]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item587 = objNull;
if (_layer574) then {
	_item587 = createSimpleObject ["Land_BarrelEmpty_F",[8249.91,14845.7,123.895]];
	_this = _item587;
	_objects pushback _this;
	_objectIDs pushback 587;
	_this setPosWorld [8249.91,14845.7,124.298];
	_this setVectorDirAndUp [[0,0.998651,0.0519298],[-0.0638698,-0.0518237,0.996612]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item588 = objNull;
if (_layer574) then {
	_item588 = createSimpleObject ["Land_BarrelEmpty_F",[8250.68,14845.7,123.891]];
	_this = _item588;
	_objects pushback _this;
	_objectIDs pushback 588;
	_this setPosWorld [8250.68,14845.7,124.295];
	_this setVectorDirAndUp [[0,0.998651,0.0519298],[0.00933473,-0.0519275,0.998607]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item589 = objNull;
if (_layer574) then {
	_item589 = createSimpleObject ["Land_BarrelTrash_F",[8194.8,14876.4,121.05]];
	_this = _item589;
	_objects pushback _this;
	_objectIDs pushback 589;
	_this setPosWorld [8194.8,14876.4,121.455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item590 = objNull;
if (_layer574) then {
	_item590 = createSimpleObject ["Land_BarrelTrash_F",[8194.29,14876.8,121.05]];
	_this = _item590;
	_objects pushback _this;
	_objectIDs pushback 590;
	_this setPosWorld [8194.29,14876.8,121.455];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item591 = objNull;
if (_layer574) then {
	_item591 = createSimpleObject ["Land_Bucket_F",[8196.06,14874.3,121.05]];
	_this = _item591;
	_objects pushback _this;
	_objectIDs pushback 591;
	_this setPosWorld [8196.06,14874.3,121.215];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item592 = objNull;
if (_layer574) then {
	_item592 = createSimpleObject ["Land_Bucket_F",[8190.63,14869.4,121.04]];
	_this = _item592;
	_objects pushback _this;
	_objectIDs pushback 592;
	_this setPosWorld [8190.63,14869.4,121.205];
	_this setVectorDirAndUp [[0,0.999992,0.00399666],[-0.00399675,-0.00399663,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item593 = objNull;
if (_layer574) then {
	_item593 = createSimpleObject ["Land_Bucket_F",[8261.3,14870.2,123.988]];
	_this = _item593;
	_objects pushback _this;
	_objectIDs pushback 593;
	_this setPosWorld [8261.3,14870.2,124.153];
	_this setVectorDirAndUp [[0,1,0],[-0.05193,0,0.998651]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item594 = objNull;
if (_layer574) then {
	_item594 = createSimpleObject ["Land_Bucket_F",[8270.4,14871.8,124.179]];
	_this = _item594;
	_objects pushback _this;
	_objectIDs pushback 594;
	_this setPosWorld [8270.4,14871.8,124.344];
	_this setVectorDirAndUp [[0,0.999999,0.00129158],[0,-0.00129158,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item595 = objNull;
if (_layer574) then {
	_item595 = createSimpleObject ["Land_Bucket_F",[8272.67,14864.6,124.389]];
	_this = _item595;
	_objects pushback _this;
	_objectIDs pushback 595;
	_this setPosWorld [8272.67,14864.6,124.555];
	_this setVectorDirAndUp [[0,1,-0.00059802],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item596 = objNull;
if (_layer574) then {
	_item596 = createSimpleObject ["Land_BucketNavy_F",[8260.98,14870,123.971]];
	_this = _item596;
	_objects pushback _this;
	_objectIDs pushback 596;
	_this setPosWorld [8260.98,14870,124.168];
	_this setVectorDirAndUp [[0,1,0],[-0.05193,0,0.998651]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item597 = objNull;
if (_layer574) then {
	_item597 = createSimpleObject ["Land_BucketNavy_F",[8285.05,14834.3,123.421]];
	_this = _item597;
	_objects pushback _this;
	_objectIDs pushback 597;
	_this setPosWorld [8285.05,14834.3,123.618];
	_this setVectorDirAndUp [[0,0.999928,-0.012],[0.0173282,0.0119982,0.999778]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item598 = objNull;
if (_layer574) then {
	_item598 = createSimpleObject ["Land_BucketNavy_F",[8203.1,14855.6,121.035]];
	_this = _item598;
	_objects pushback _this;
	_objectIDs pushback 598;
	_this setPosWorld [8203.1,14855.6,121.231];
	_this setVectorDirAndUp [[0,0.999996,0.00265199],[-0.0053265,-0.00265195,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item599 = objNull;
if (_layer574) then {
	_item599 = createSimpleObject ["Land_Bucket_painted_F",[8188.3,14866.3,120.994]];
	_this = _item599;
	_objects pushback _this;
	_objectIDs pushback 599;
	_this setPosWorld [8188.3,14866.3,121.133];
	_this setVectorDirAndUp [[0,0.999968,0.00800059],[-0.0213272,-0.00799877,0.999741]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item600 = objNull;
if (_layer574) then {
	_item600 = createSimpleObject ["Land_CanisterFuel_F",[8205,14855.3,121.044]];
	_this = _item600;
	_objects pushback _this;
	_objectIDs pushback 600;
	_this setPosWorld [8205,14855.3,121.318];
	_this setVectorDirAndUp [[-0.0495026,0.998773,0.00168114],[-0.0199947,-0.00267387,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item601 = objNull;
if (_layer574) then {
	_item601 = createSimpleObject ["Land_CanisterFuel_F",[8205.03,14855.6,121.046]];
	_this = _item601;
	_objects pushback _this;
	_objectIDs pushback 601;
	_this setPosWorld [8205.03,14855.6,121.319];
	_this setVectorDirAndUp [[0,0.999996,0.0026744],[-0.0199947,-0.00267387,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item602 = objNull;
if (_layer574) then {
	_item602 = createSimpleObject ["Land_CanisterFuel_F",[8205.33,14855,121.05]];
	_this = _item602;
	_objects pushback _this;
	_objectIDs pushback 602;
	_this setPosWorld [8205.33,14855,121.324];
	_this setVectorDirAndUp [[-0.557713,0.829986,-0.00893384],[-0.0199947,-0.00267387,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item603 = objNull;
if (_layer574) then {
	_item603 = createSimpleObject ["Land_CanisterPlastic_F",[8192.23,14872.8,121.05]];
	_this = _item603;
	_objects pushback _this;
	_objectIDs pushback 603;
	_this setPosWorld [8192.23,14872.8,121.398];
	_this setVectorDirAndUp [[0.447322,0.894373,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item604 = objNull;
if (_layer574) then {
	_item604 = createSimpleObject ["Land_CanisterPlastic_F",[8191.96,14872.2,121.05]];
	_this = _item604;
	_objects pushback _this;
	_objectIDs pushback 604;
	_this setPosWorld [8191.96,14872.2,121.398];
	_this setVectorDirAndUp [[0.264294,0.964442,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item605 = objNull;
if (_layer574) then {
	_item605 = createSimpleObject ["Land_CanisterPlastic_F",[8194.76,14864.5,121.036]];
	_this = _item605;
	_objects pushback _this;
	_objectIDs pushback 605;
	_this setPosWorld [8194.76,14864.5,121.384];
	_this setVectorDirAndUp [[-0.881988,0.47127,-0.00101488],[-0.00399675,-0.00532651,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item606 = objNull;
if (_layer574) then {
	_item606 = createSimpleObject ["Land_CanisterPlastic_F",[8288.86,14837.2,123.267]];
	_this = _item606;
	_objects pushback _this;
	_objectIDs pushback 606;
	_this setPosWorld [8288.86,14837.2,123.615];
	_this setVectorDirAndUp [[0,0.99985,0.0173315],[0.0239934,-0.0173265,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item607 = objNull;
if (_layer574) then {
	_item607 = createSimpleObject ["Land_CanisterPlastic_F",[8260.72,14847,124.233]];
	_this = _item607;
	_objects pushback _this;
	_objectIDs pushback 607;
	_this setPosWorld [8260.72,14847,124.58];
	_this setVectorDirAndUp [[0.321274,0.946986,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item608 = objNull;
if (_layer574) then {
	_item608 = createSimpleObject ["Land_CanisterPlastic_F",[8258.98,14853.8,124.11]];
	_this = _item608;
	_objects pushback _this;
	_objectIDs pushback 608;
	_this setPosWorld [8258.98,14853.8,124.458];
	_this setVectorDirAndUp [[-0.518533,-0.854929,-0.0148518],[-0.00665923,-0.013331,0.999889]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item609 = objNull;
if (_layer574) then {
	_item609 = createSimpleObject ["Land_CanisterPlastic_F",[8267.63,14841.9,123.956]];
	_this = _item609;
	_objects pushback _this;
	_objectIDs pushback 609;
	_this setPosWorld [8267.63,14841.9,124.303];
	_this setVectorDirAndUp [[-0.518233,-0.85481,0.0270826],[0.0346456,0.0106577,0.999343]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item610 = objNull;
if (_layer574) then {
	_item610 = createVehicle ["Land_CratesPlastic_F",[8194.03,14871.6,0.273949],[],0,"CAN_COLLIDE"];
	_this = _item610;
	_objects pushback _this;
	_objectIDs pushback 610;
	_this setPosWorld [8194.03,14871.6,121.556];
	_this setVectorDirAndUp [[-0.808589,0.588301,0.00925169],[0.0139774,0.00348668,0.999896]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item611 = objNull;
if (_layer574) then {
	_item611 = createVehicle ["Land_CratesPlastic_F",[8194.33,14863.7,0],[],0,"CAN_COLLIDE"];
	_this = _item611;
	_objects pushback _this;
	_objectIDs pushback 611;
	_this setPosWorld [8194.33,14863.7,121.263];
	_this setVectorDirAndUp [[-0.873884,0.486134,-0.000903319],[-0.00399675,-0.00532651,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item613 = objNull;
if (_layer574) then {
	_item613 = createVehicle ["Land_CratesPlastic_F",[8262.59,14846.3,0.178207],[],0,"CAN_COLLIDE"];
	_this = _item613;
	_objects pushback _this;
	_objectIDs pushback 613;
	_this setPosWorld [8262.59,14846.3,124.465];
	_this setVectorDirAndUp [[0.163016,0.986623,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item614 = objNull;
if (_layer574) then {
	_item614 = createSimpleObject ["Land_FieldToilet_F",[8268.2,14878,123.757]];
	_this = _item614;
	_objects pushback _this;
	_objectIDs pushback 614;
	_this setPosWorld [8268.2,14878,124.977];
	_this setVectorDirAndUp [[0.556012,0.830968,0.0184928],[-0.0133317,-0.0133301,0.999822]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item615 = objNull;
if (_layer574) then {
	_item615 = createSimpleObject ["Land_FieldToilet_F",[8269.35,14877.3,123.974]];
	_this = _item615;
	_objects pushback _this;
	_objectIDs pushback 615;
	_this setPosWorld [8269.35,14877.3,125.194];
	_this setVectorDirAndUp [[0.556012,0.830968,0.0184928],[-0.0133317,-0.0133301,0.999822]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item616 = objNull;
if (_layer574) then {
	_item616 = createSimpleObject ["Land_FieldToilet_F",[8187.93,14867.5,120.995]];
	_this = _item616;
	_objects pushback _this;
	_objectIDs pushback 616;
	_this setPosWorld [8187.93,14867.5,122.214];
	_this setVectorDirAndUp [[0.9153,-0.402521,0.0142542],[-0.0173282,-0.00399606,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item617 = objNull;
if (_layer574) then {
	_item617 = createSimpleObject ["Land_FieldToilet_F",[8188.54,14868.9,121.011]];
	_this = _item617;
	_objects pushback _this;
	_objectIDs pushback 617;
	_this setPosWorld [8188.54,14868.9,122.23];
	_this setVectorDirAndUp [[0.918219,-0.395813,0.0143316],[-0.0173282,-0.00399606,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item618 = objNull;
if (_layer574) then {
	_item618 = createSimpleObject ["Land_Icebox_F",[8196.5,14869.6,121.322]];
	_this = _item618;
	_objects pushback _this;
	_objectIDs pushback 618;
	_this setPosWorld [8196.5,14869.6,121.944];
	_this setVectorDirAndUp [[0.923706,-0.383103,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item619 = objNull;
if (_layer574) then {
	_item619 = createSimpleObject ["Land_MetalBarrel_F",[8203.54,14854.3,121.034]];
	_this = _item619;
	_objects pushback _this;
	_objectIDs pushback 619;
	_this setPosWorld [8203.54,14854.3,121.456];
	_this setVectorDirAndUp [[-0.0314235,0.999503,0.0024833],[-0.0053265,-0.00265195,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item620 = objNull;
if (_layer574) then {
	_item620 = createSimpleObject ["Land_MetalBarrel_F",[8248.14,14850.1,123.993]];
	_this = _item620;
	_objects pushback _this;
	_objectIDs pushback 620;
	_this setPosWorld [8248.14,14850.1,124.414];
	_this setVectorDirAndUp [[-0.820401,-0.565877,-0.0820026],[-0.0638698,-0.0518237,0.996612]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item621 = objNull;
if (_layer574) then {
	_item621 = createSimpleObject ["Land_MetalBarrel_F",[8281.07,14836,123.479]];
	_this = _item621;
	_objects pushback _this;
	_objectIDs pushback 621;
	_this setPosWorld [8281.07,14836,123.901];
	_this setVectorDirAndUp [[-0.343274,0.939229,0.00345834],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item622 = objNull;
if (_layer574) then {
	_item622 = createSimpleObject ["Land_MetalBarrel_F",[8280.44,14836.2,123.489]];
	_this = _item622;
	_objects pushback _this;
	_objectIDs pushback 622;
	_this setPosWorld [8280.44,14836.2,123.912];
	_this setVectorDirAndUp [[-0.949228,0.314201,0.0156176],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item623 = objNull;
if (_layer574) then {
	_item623 = createSimpleObject ["Land_MetalBarrel_F",[8204.29,14854.4,121.038]];
	_this = _item623;
	_objects pushback _this;
	_objectIDs pushback 623;
	_this setPosWorld [8204.29,14854.4,121.461];
	_this setVectorDirAndUp [[-0.847892,0.530159,-0.0031104],[-0.0053265,-0.00265195,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item624 = objNull;
if (_layer574) then {
	_item624 = createSimpleObject ["Land_MetalBarrel_F",[8263.16,14847.5,124.068]];
	_this = _item624;
	_objects pushback _this;
	_objectIDs pushback 624;
	_this setPosWorld [8263.16,14847.5,124.49];
	_this setVectorDirAndUp [[0.329107,-0.944278,-0.00536331],[-0.00665923,-0.00800041,0.999946]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item625 = objNull;
if (_layer574) then {
	_item625 = createSimpleObject ["Land_Metal_rack_F",[8193.02,14874.9,121.05]];
	_this = _item625;
	_objects pushback _this;
	_objectIDs pushback 625;
	_this setPosWorld [8193.02,14874.9,121.95];
	_this setVectorDirAndUp [[-0.923364,0.383925,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item626 = objNull;
if (_layer574) then {
	_item626 = createSimpleObject ["Land_Metal_rack_F",[8192.5,14873.8,121.05]];
	_this = _item626;
	_objects pushback _this;
	_objectIDs pushback 626;
	_this setPosWorld [8192.5,14873.8,121.95];
	_this setVectorDirAndUp [[-0.910835,0.412771,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item627 = objNull;
if (_layer574) then {
	_item627 = createSimpleObject ["Land_Metal_rack_Tall_F",[8199.43,14873.1,121.05]];
	_this = _item627;
	_objects pushback _this;
	_objectIDs pushback 627;
	_this setPosWorld [8199.43,14873.1,121.05];
	_this setVectorDirAndUp [[-0.934146,0.356891,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item628 = objNull;
if (_layer574) then {
	_item628 = createSimpleObject ["Land_Metal_rack_Tall_F",[8199.14,14872.3,121.05]];
	_this = _item628;
	_objects pushback _this;
	_objectIDs pushback 628;
	_this setPosWorld [8199.14,14872.3,121.05];
	_this setVectorDirAndUp [[-0.934146,0.356891,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item629 = objNull;
if (_layer574) then {
	_item629 = createSimpleObject ["Land_Metal_rack_Tall_F",[8198,14869.7,121.05]];
	_this = _item629;
	_objects pushback _this;
	_objectIDs pushback 629;
	_this setPosWorld [8198,14869.7,121.05];
	_this setVectorDirAndUp [[-0.917676,0.397329,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item630 = objNull;
if (_layer574) then {
	_item630 = createSimpleObject ["Land_Metal_rack_Tall_F",[8277.69,14861.6,123.962]];
	_this = _item630;
	_objects pushback _this;
	_objectIDs pushback 630;
	_this setPosWorld [8277.69,14861.6,123.962];
	_this setVectorDirAndUp [[0.840505,-0.540783,-0.0332452],[0.0146639,-0.0386323,0.999146]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item631 = objNull;
if (_layer574) then {
	_item631 = createSimpleObject ["Land_Metal_rack_Tall_F",[8278.14,14862.3,123.983]];
	_this = _item631;
	_objects pushback _this;
	_objectIDs pushback 631;
	_this setPosWorld [8278.14,14862.3,123.983];
	_this setVectorDirAndUp [[0.840505,-0.540783,-0.0332452],[0.0146639,-0.0386323,0.999146]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item632 = objNull;
if (_layer574) then {
	_item632 = createSimpleObject ["Land_Metal_wooden_rack_F",[8189.67,14866.8,121.022]];
	_this = _item632;
	_objects pushback _this;
	_objectIDs pushback 632;
	_this setPosWorld [8189.67,14866.8,122.027];
	_this setVectorDirAndUp [[-0.915202,0.402743,-0.0142517],[-0.0173282,-0.00399606,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item633 = objNull;
if (_layer574) then {
	_item633 = createSimpleObject ["Land_WheelCart_F",[8268.38,14864.4,124.168]];
	_this = _item633;
	_objects pushback _this;
	_objectIDs pushback 633;
	_this setPosWorld [8268.38,14864.4,124.542];
	_this setVectorDirAndUp [[-0.652235,0.757951,0.00996419],[0.00133688,-0.0119948,0.999927]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item634 = objNull;
if (_layer574) then {
	_item634 = createSimpleObject ["Land_WaterTank_F",[8191.88,14875.9,121.05]];
	_this = _item634;
	_objects pushback _this;
	_objectIDs pushback 634;
	_this setPosWorld [8191.88,14875.9,121.735];
	_this setVectorDirAndUp [[-0.92455,0.38106,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (600 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 600, true]};
};

private _item635 = objNull;
if (_layer574) then {
	_item635 = createSimpleObject ["Land_WaterBarrel_F",[8289.36,14836.3,123.349]];
	_this = _item635;
	_objects pushback _this;
	_objectIDs pushback 635;
	_this setPosWorld [8289.36,14836.3,123.916];
	_this setVectorDirAndUp [[0,0.99985,0.0173315],[0.0239934,-0.0173265,0.999562]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item636 = objNull;
if (_layer574) then {
	_item636 = createSimpleObject ["Land_WaterBarrel_F",[8195.72,14882.9,121.05]];
	_this = _item636;
	_objects pushback _this;
	_objectIDs pushback 636;
	_this setPosWorld [8195.72,14882.9,121.617];
	_this setVectorDirAndUp [[-0.0794805,0.996836,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	if (200 != (if (isNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")) then {getNumber (configFile >> 'CfgVehicles' >> typeOf _this >> "acex_field_rations_waterSupply")} else {-1})) then {_this setVariable ["acex_field_rations_currentWaterSupply", 200, true]};
};

private _item637 = objNull;
if (_layer574) then {
	_item637 = createVehicle ["Land_TreeBin_F",[8265.6,14862.2,0],[],0,"CAN_COLLIDE"];
	_this = _item637;
	_objects pushback _this;
	_objectIDs pushback 637;
	_this setPosWorld [8265.6,14862.2,124.178];
	_this setVectorDirAndUp [[0,0.999999,0.00133688],[0.0119949,-0.00133678,0.999927]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item638 = objNull;
if (_layer574) then {
	_item638 = createVehicle ["Land_TentDome_F",[8210.51,14889.6,0],[],0,"CAN_COLLIDE"];
	_this = _item638;
	_objects pushback _this;
	_objectIDs pushback 638;
	_this setPosWorld [8210.51,14889.6,121.669];
	_this setVectorDirAndUp [[-0.999983,-0.00583263,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item639 = objNull;
if (_layer574) then {
	_item639 = createVehicle ["Land_TentDome_F",[8215.14,14889.5,0],[],0,"CAN_COLLIDE"];
	_this = _item639;
	_objects pushback _this;
	_objectIDs pushback 639;
	_this setPosWorld [8215.14,14889.5,121.669];
	_this setVectorDirAndUp [[-0.994657,-0.103237,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item640 = objNull;
if (_layer574) then {
	_item640 = createVehicle ["Land_TentDome_F",[8206.46,14888.7,0],[],0,"CAN_COLLIDE"];
	_this = _item640;
	_objects pushback _this;
	_objectIDs pushback 640;
	_this setPosWorld [8206.46,14888.7,121.669];
	_this setVectorDirAndUp [[-0.715006,-0.699118,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item641 = objNull;
if (_layer574) then {
	_item641 = createVehicle ["Land_TentDome_F",[8190.04,14889,0],[],0,"CAN_COLLIDE"];
	_this = _item641;
	_objects pushback _this;
	_objectIDs pushback 641;
	_this setPosWorld [8190.04,14889,121.665];
	_this setVectorDirAndUp [[-0.767683,-0.640827,0.00169951],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item642 = objNull;
if (_layer574) then {
	_item642 = createVehicle ["Land_TentDome_F",[8188.32,14885.4,0],[],0,"CAN_COLLIDE"];
	_this = _item642;
	_objects pushback _this;
	_objectIDs pushback 642;
	_this setPosWorld [8188.32,14885.4,121.647];
	_this setVectorDirAndUp [[-0.110322,-0.993895,-0.00147041],[-0.0133272,0,0.999911]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item643 = objNull;
if (_layer574) then {
	_item643 = createVehicle ["Land_TentDome_F",[8195.83,14890.4,0],[],0,"CAN_COLLIDE"];
	_this = _item643;
	_objects pushback _this;
	_objectIDs pushback 643;
	_this setPosWorld [8195.83,14890.4,121.665];
	_this setVectorDirAndUp [[-0.99403,-0.109072,-0.00263622],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item644 = objNull;
if (_layer574) then {
	_item644 = createSimpleObject ["Land_WorkStand_F",[8185.65,14873.8,120.989]];
	_this = _item644;
	_objects pushback _this;
	_objectIDs pushback 644;
	_this setPosWorld [8185.65,14873.8,120.995];
	_this setVectorDirAndUp [[-0.926314,0.376559,-0.012042],[-0.0173316,-0.0106625,0.999793]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item645 = objNull;
if (_layer574) then {
	_item645 = createSimpleObject ["Land_WoodenBox_F",[8271.49,14861.7,124.132]];
	_this = _item645;
	_objects pushback _this;
	_objectIDs pushback 645;
	_this setPosWorld [8271.49,14861.7,124.132];
	_this setVectorDirAndUp [[0.549417,0.835497,0.00928783],[0.00133688,-0.0119948,0.999927]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 3] call ace_cargo_fnc_setSize;;
};

private _item646 = objNull;
if (_layer574) then {
	_item646 = createVehicle ["Land_WoodPile_F",[8191.66,14867.7,0],[],0,"CAN_COLLIDE"];
	_this = _item646;
	_objects pushback _this;
	_objectIDs pushback 646;
	_this setPosWorld [8191.66,14867.7,121.298];
	_this setVectorDirAndUp [[-0.908435,0.418021,-0.00196014],[-0.00399675,-0.00399663,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item647 = objNull;
if (_layer574) then {
	_item647 = createSimpleObject ["Land_Suitcase_F",[8297.19,14858.7,123.739]];
	_this = _item647;
	_objects pushback _this;
	_objectIDs pushback 647;
	_this setPosWorld [8297.19,14858.7,123.984];
	_this setVectorDirAndUp [[-0.745255,0.666759,0.00513421],[-0.00265204,-0.010664,0.99994]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item648 = objNull;
if (_layer574) then {
	_item648 = createSimpleObject ["Land_Suitcase_F",[8272.86,14862.1,124.391]];
	_this = _item648;
	_objects pushback _this;
	_objectIDs pushback 648;
	_this setPosWorld [8272.86,14862.1,124.637];
	_this setVectorDirAndUp [[-0.887063,0.461639,-0.0029983],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item649 = objNull;
if (_layer574) then {
	_item649 = createSimpleObject ["Land_Bench_F",[8196.75,14866.6,121.05]];
	_this = _item649;
	_objects pushback _this;
	_objectIDs pushback 649;
	_this setPosWorld [8196.75,14866.6,121.297];
	_this setVectorDirAndUp [[0.389011,0.921233,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item650 = objNull;
if (_layer574) then {
	_item650 = createSimpleObject ["Land_Bricks_V4_F",[8272.52,14870.7,124.177]];
	_this = _item650;
	_objects pushback _this;
	_objectIDs pushback 650;
	_this setPosWorld [8272.52,14870.7,124.177];
	_this setVectorDirAndUp [[0.535809,0.844312,-0.00672919],[0.0146639,-0.00133673,0.999892]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item651 = objNull;
if (_layer574) then {
	_item651 = createSimpleObject ["Land_Bricks_V2_F",[8261.62,14871.3,124.004]];
	_this = _item651;
	_objects pushback _this;
	_objectIDs pushback 651;
	_this setPosWorld [8261.62,14871.3,123.997];
	_this setVectorDirAndUp [[-0.554678,-0.831565,-0.0288433],[-0.05193,0,0.998651]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item652 = objNull;
if (_layer574) then {
	_item652 = createSimpleObject ["Land_Bricks_V1_F",[8271.45,14871.4,124.179]];
	_this = _item652;
	_objects pushback _this;
	_objectIDs pushback 652;
	_this setPosWorld [8271.45,14871.4,124.171];
	_this setVectorDirAndUp [[0.501507,0.865153,0.00111741],[0,-0.00129158,0.999999]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item653 = objNull;
if (_layer574) then {
	_item653 = createSimpleObject ["Land_Sink_F",[8197.15,14882.1,120.912]];
	_this = _item653;
	_objects pushback _this;
	_objectIDs pushback 653;
	_this setPosWorld [8197.15,14882.1,121.529];
	_this setVectorDirAndUp [[0.505467,0.862846,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item654 = objNull;
if (_layer574) then {
	_item654 = createSimpleObject ["Land_Sink_F",[8194.32,14883.8,120.912]];
	_this = _item654;
	_objects pushback _this;
	_objectIDs pushback 654;
	_this setPosWorld [8194.32,14883.8,121.529];
	_this setVectorDirAndUp [[-0.503886,-0.86377,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item655 = objNull;
if (_layer574) then {
	_item655 = createVehicle ["Land_Sacks_heap_F",[8197.94,14873,0.271843],[],0,"CAN_COLLIDE"];
	_this = _item655;
	_objects pushback _this;
	_objectIDs pushback 655;
	_this setPosWorld [8197.94,14873,121.713];
	_this setVectorDirAndUp [[-0.489124,-0.872214,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item656 = objNull;
if (_layer574) then {
	_item656 = createVehicle ["Land_Sacks_goods_F",[8195.83,14867.8,0.272285],[],0,"CAN_COLLIDE"];
	_this = _item656;
	_objects pushback _this;
	_objectIDs pushback 656;
	_this setPosWorld [8195.83,14867.8,121.817];
	_this setVectorDirAndUp [[-0.63119,-0.775628,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item657 = objNull;
if (_layer574) then {
	_item657 = createSimpleObject ["Land_ShelvesWooden_F",[8277.85,14865.3,124.405]];
	_this = _item657;
	_objects pushback _this;
	_objectIDs pushback 657;
	_this setPosWorld [8277.85,14865.3,124.907];
	_this setVectorDirAndUp [[-0.822696,0.568474,-0.00286466],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item658 = objNull;
if (_layer574) then {
	_item658 = createVehicle ["Land_Sack_F",[8196.88,14873.6,0.271828],[],0,"CAN_COLLIDE"];
	_this = _item658;
	_objects pushback _this;
	_objectIDs pushback 658;
	_this setPosWorld [8196.88,14873.6,121.719];
	_this setVectorDirAndUp [[-0.419214,0.907887,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item659 = objNull;
if (_layer574) then {
	_item659 = createSimpleObject ["Land_Rack_F",[8194.51,14866.5,121.044]];
	_this = _item659;
	_objects pushback _this;
	_objectIDs pushback 659;
	_this setPosWorld [8194.51,14866.5,121.86];
	_this setVectorDirAndUp [[-0.919622,0.392798,-0.00210566],[-0.00399675,-0.00399663,0.999984]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item660 = objNull;
if (_layer574) then {
	_item660 = createSimpleObject ["Land_Portable_generator_F",[8202.41,14856.3,121.033]];
	_this = _item660;
	_objects pushback _this;
	_objectIDs pushback 660;
	_this setPosWorld [8202.41,14856.3,121.392];
	_this setVectorDirAndUp [[-0.128885,0.991658,0.00194336],[-0.0053265,-0.00265195,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item661 = objNull;
if (_layer574) then {
	_item661 = createSimpleObject ["Land_Axe_F",[8185.38,14872.4,120.97]];
	_this = _item661;
	_objects pushback _this;
	_objectIDs pushback 661;
	_this setPosWorld [8185.38,14872.4,120.997];
	_this setVectorDirAndUp [[-0.87519,0.483598,-0.0132351],[-0.0173282,-0.00399606,0.999842]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item662 = objNull;
if (_layer574) then {
	_item662 = createSimpleObject ["IG_supplyCrate_F",[8266.34,14842,124]];
	_this = _item662;
	_objects pushback _this;
	_objectIDs pushback 662;
	_this setPosWorld [8266.34,14842,124.892];
	_this setVectorDirAndUp [[0.268177,0.963171,-0.0195692],[0.0346456,0.0106577,0.999343]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item663 = objNull;
if (_layer574) then {
	_item663 = createSimpleObject ["IG_supplyCrate_F",[8266.52,14843.1,123.993]];
	_this = _item663;
	_objects pushback _this;
	_objectIDs pushback 663;
	_this setPosWorld [8266.52,14843.1,124.885];
	_this setVectorDirAndUp [[0.32374,0.946139,-0.00366011],[0.0346456,-0.00798864,0.999368]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	[_this, 6] call ace_cargo_fnc_setSize;;
};

private _item664 = objNull;
if (_layer574) then {
	_item664 = createSimpleObject ["MapBoard_altis_F",[8274.77,14867.3,124.14]];
	_this = _item664;
	_objects pushback _this;
	_objectIDs pushback 664;
	_this setPosWorld [8274.77,14867.3,125.109];
	_this setVectorDirAndUp [[-0.0998822,0.994995,0.00279501],[0.0146639,-0.00133673,0.999892]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"a3\structures_f\civ\infoboards\data\mapboard_altis_co.paa"];
};

private _item714 = objNull;
if (_layer574) then {
	_item714 = createVehicle ["MedicalGarbage_01_FirstAidKit_F",[8194.48,14872,1.088],[],0,"CAN_COLLIDE"];
	_this = _item714;
	_objects pushback _this;
	_objectIDs pushback 714;
	_this setPosWorld [8194.48,14872,122.149];
	_this setVectorDirAndUp [[-0.981168,-0.193156,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item713 = objNull;
if (_layer574) then {
	_item713 = createSimpleObject ["Box_C_UAV_06_medical_F",[8194.14,14871.7,122.138]];
	_this = _item713;
	_objects pushback _this;
	_objectIDs pushback 713;
	_this setPosWorld [8194.14,14871.7,122.238];
	_this setVectorDirAndUp [[0.834188,-0.55148,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this, 1] call ace_cargo_fnc_setSize;;
};

private _item710 = objNull;
if (_layerRoot) then {
	_item710 = createVehicle ["Land_Camping_Light_F",[8290.75,14851.8,0.815605],[],0,"CAN_COLLIDE"];
	_this = _item710;
	_objects pushback _this;
	_objectIDs pushback 710;
	_this setPosWorld [8290.75,14851.8,124.626];
	_this setVectorDirAndUp [[0,0.999992,0.00399666],[-0.00133721,-0.00399666,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item711 = objNull;
if (_layerRoot) then {
	_item711 = createVehicle ["Land_Camping_Light_F",[8204.85,14883,0.864594],[],0,"CAN_COLLIDE"];
	_this = _item711;
	_objects pushback _this;
	_objectIDs pushback 711;
	_this setPosWorld [8204.85,14883,122.033];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this, 0.2] call ace_cargo_fnc_setSize;;
};

private _item730 = objNull;
if (_layerRoot) then {
	_item730 = createVehicle ["CargoNet_01_barrels_F",[8208.93,14854.3,0],[],0,"CAN_COLLIDE"];
	_this = _item730;
	_objects pushback _this;
	_objectIDs pushback 730;
	_this setPosWorld [8208.93,14854.3,121.636];
	_this setVectorDirAndUp [[0.345134,0.938441,-0.0145568],[-0.0013439,0.016004,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	if (1000 != (if (isNumber (configOf _this >> "ace_refuel_fuelCargo")) then {getNumber (configOf _this >> "ace_refuel_fuelCargo")} else {-1})) then {[_this, 1000] call ace_refuel_fnc_makeSource};
	if ([0.3,0.3,0.3] isNotEqualTo (if (isArray (configOf _this >> "ace_refuel_hooks")) then {getArray (configOf _this >> "ace_refuel_hooks") select 0} else {[0, 0, 0]})) then {_this setVariable ['s', [[0.3,0.3,0.3]], true]};
};

private _item731 = objNull;
if (_layerRoot) then {
	_item731 = createVehicle ["Box_NATO_AmmoVeh_F",[8212.04,14855.2,-6.86646e-005],[],0,"CAN_COLLIDE"];
	_this = _item731;
	_objects pushback _this;
	_objectIDs pushback 731;
	_this setPosWorld [8212.04,14855.3,121.885];
	_this setVectorDirAndUp [[-0.756287,0.654139,-0.0114867],[-0.0013439,0.016004,0.999871]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	if (1200 != (if (isNumber (configOf _this >> "ace_rearm_defaultSupply")) then {getNumber (configOf _this >> "ace_rearm_defaultSupply")} else {-1})) then {[_this, 1200] call ace_rearm_fnc_makeSource};
	[_this, 2] call ace_cargo_fnc_setSize;;
};

private _item498 = objNull;
if (_layer497) then {
	_item498 = createSimpleObject ["Land_CampingChair_V2_F",[8189.17,14864.9,121.307]];
	_this = _item498;
	_objects pushback _this;
	_objectIDs pushback 498;
	_this setPosWorld [8189.17,14864.9,121.814];
	_this setVectorDirAndUp [[-0.997038,-0.0762852,0.00981181],[0.0102478,-0.00532627,0.999933]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item499 = objNull;
if (_layer497) then {
	_item499 = createSimpleObject ["Land_CampingChair_V2_F",[8240.75,14885.7,121.07]];
	_this = _item499;
	_objects pushback _this;
	_objectIDs pushback 499;
	_this setPosWorld [8240.75,14885.7,121.577];
	_this setVectorDirAndUp [[0.99221,0.124553,0.00230108],[-0.00265204,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item500 = objNull;
if (_layer497) then {
	_item500 = createSimpleObject ["Land_CampingChair_V2_F",[8235.71,14893.1,121.052]];
	_this = _item500;
	_objects pushback _this;
	_objectIDs pushback 500;
	_this setPosWorld [8235.71,14893.1,121.558];
	_this setVectorDirAndUp [[0.263657,0.964616,0.000699233],[-0.00265204,0,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item501 = objNull;
if (_layer497) then {
	_item501 = createSimpleObject ["Land_CampingChair_V2_F",[8234.69,14893.1,121.05]];
	_this = _item501;
	_objects pushback _this;
	_objectIDs pushback 501;
	_this setPosWorld [8234.69,14893.1,121.556];
	_this setVectorDirAndUp [[-0.194291,0.980944,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item502 = objNull;
if (_layer497) then {
	_item502 = createSimpleObject ["Land_CampingChair_V2_F",[8237.34,14887.1,121.057]];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [8237.34,14887.1,121.564];
	_this setVectorDirAndUp [[-0.794541,0.607199,-0.0037175],[-0.00265204,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item503 = objNull;
if (_layer497) then {
	_item503 = createSimpleObject ["Land_CampingChair_V2_F",[8240.23,14884.5,121.072]];
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [8240.23,14884.5,121.578];
	_this setVectorDirAndUp [[0.535874,-0.84429,0.00366027],[-0.00265204,0.00265203,0.999993]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item504 = objNull;
if (_layer497) then {
	_item504 = createVehicle ["Land_CampingChair_V2_F",[8212.05,14882.3,0],[],0,"CAN_COLLIDE"];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [8212.05,14882.3,121.556];
	_this setVectorDirAndUp [[0.127577,-0.991829,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item505 = objNull;
if (_layer497) then {
	_item505 = createVehicle ["Land_CampingChair_V2_F",[8211.1,14882.1,0],[],0,"CAN_COLLIDE"];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [8211.1,14882.1,121.556];
	_this setVectorDirAndUp [[0.0513801,-0.998679,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item506 = objNull;
if (_layer497) then {
	_item506 = createVehicle ["Land_CampingChair_V2_F",[8207.32,14876.5,0],[],0,"CAN_COLLIDE"];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [8207.32,14876.5,121.556];
	_this setVectorDirAndUp [[0.0840457,-0.996462,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item507 = objNull;
if (_layer497) then {
	_item507 = createVehicle ["Land_CampingChair_V2_F",[8206.29,14876.7,0],[],0,"CAN_COLLIDE"];
	_this = _item507;
	_objects pushback _this;
	_objectIDs pushback 507;
	_this setPosWorld [8206.29,14876.7,121.556];
	_this setVectorDirAndUp [[-0.173444,-0.984844,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item508 = objNull;
if (_layer497) then {
	_item508 = createVehicle ["Land_CampingChair_V2_F",[8205.33,14876.8,0],[],0,"CAN_COLLIDE"];
	_this = _item508;
	_objects pushback _this;
	_objectIDs pushback 508;
	_this setPosWorld [8205.33,14876.8,121.556];
	_this setVectorDirAndUp [[-0.192618,-0.981274,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item509 = objNull;
if (_layer497) then {
	_item509 = createVehicle ["Land_CampingChair_V2_F",[8204.36,14876.9,0],[],0,"CAN_COLLIDE"];
	_this = _item509;
	_objects pushback _this;
	_objectIDs pushback 509;
	_this setPosWorld [8204.36,14876.9,121.556];
	_this setVectorDirAndUp [[-0.029645,-0.99956,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item510 = objNull;
if (_layer497) then {
	_item510 = createVehicle ["Land_CampingChair_V2_F",[8204.68,14879.1,0],[],0,"CAN_COLLIDE"];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [8204.68,14879.1,121.556];
	_this setVectorDirAndUp [[0.0247711,0.999693,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item511 = objNull;
if (_layer497) then {
	_item511 = createVehicle ["Land_CampingChair_V2_F",[8205.49,14878.8,0],[],0,"CAN_COLLIDE"];
	_this = _item511;
	_objects pushback _this;
	_objectIDs pushback 511;
	_this setPosWorld [8205.49,14878.8,121.556];
	_this setVectorDirAndUp [[0.115809,0.993271,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item512 = objNull;
if (_layer497) then {
	_item512 = createVehicle ["Land_CampingChair_V2_F",[8206.48,14878.7,0],[],0,"CAN_COLLIDE"];
	_this = _item512;
	_objects pushback _this;
	_objectIDs pushback 512;
	_this setPosWorld [8206.48,14878.7,121.556];
	_this setVectorDirAndUp [[-0.00530461,0.999986,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item513 = objNull;
if (_layer497) then {
	_item513 = createSimpleObject ["Land_CampingChair_V2_F",[8207.62,14878.7,121.05]];
	_this = _item513;
	_objects pushback _this;
	_objectIDs pushback 513;
	_this setPosWorld [8207.62,14878.7,121.556];
	_this setVectorDirAndUp [[0.117428,0.993081,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item514 = objNull;
if (_layer497) then {
	_item514 = createVehicle ["Land_CampingChair_V2_F",[8205.33,14884.4,0],[],0,"CAN_COLLIDE"];
	_this = _item514;
	_objects pushback _this;
	_objectIDs pushback 514;
	_this setPosWorld [8205.33,14884.4,121.556];
	_this setVectorDirAndUp [[-0.0447284,0.998999,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item515 = objNull;
if (_layer497) then {
	_item515 = createVehicle ["Land_CampingChair_V2_F",[8206.22,14884.3,0],[],0,"CAN_COLLIDE"];
	_this = _item515;
	_objects pushback _this;
	_objectIDs pushback 515;
	_this setPosWorld [8206.22,14884.3,121.556];
	_this setVectorDirAndUp [[0.0465357,0.998917,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item516 = objNull;
if (_layer497) then {
	_item516 = createVehicle ["Land_CampingChair_V2_F",[8207.28,14884.1,0],[],0,"CAN_COLLIDE"];
	_this = _item516;
	_objects pushback _this;
	_objectIDs pushback 516;
	_this setPosWorld [8207.28,14884.1,121.556];
	_this setVectorDirAndUp [[0.0766552,0.997058,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item517 = objNull;
if (_layer497) then {
	_item517 = createVehicle ["Land_CampingChair_V2_F",[8208.29,14884.2,0],[],0,"CAN_COLLIDE"];
	_this = _item517;
	_objects pushback _this;
	_objectIDs pushback 517;
	_this setPosWorld [8208.29,14884.2,121.556];
	_this setVectorDirAndUp [[0.0481637,0.998839,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item518 = objNull;
if (_layer497) then {
	_item518 = createVehicle ["Land_CampingChair_V2_F",[8208.23,14882.2,0],[],0,"CAN_COLLIDE"];
	_this = _item518;
	_objects pushback _this;
	_objectIDs pushback 518;
	_this setPosWorld [8208.23,14882.2,121.556];
	_this setVectorDirAndUp [[0.178234,-0.983988,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item519 = objNull;
if (_layer497) then {
	_item519 = createVehicle ["Land_CampingChair_V2_F",[8206.98,14882.1,0],[],0,"CAN_COLLIDE"];
	_this = _item519;
	_objects pushback _this;
	_objectIDs pushback 519;
	_this setPosWorld [8206.98,14882.1,121.556];
	_this setVectorDirAndUp [[-0.50586,-0.862615,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item520 = objNull;
if (_layer497) then {
	_item520 = createVehicle ["Land_CampingChair_V2_F",[8206.23,14882.3,0],[],0,"CAN_COLLIDE"];
	_this = _item520;
	_objects pushback _this;
	_objectIDs pushback 520;
	_this setPosWorld [8206.23,14882.3,121.556];
	_this setVectorDirAndUp [[-0.0986218,-0.995125,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item521 = objNull;
if (_layer497) then {
	_item521 = createVehicle ["Land_CampingChair_V2_F",[8205.21,14882.4,0],[],0,"CAN_COLLIDE"];
	_this = _item521;
	_objects pushback _this;
	_objectIDs pushback 521;
	_this setPosWorld [8205.21,14882.4,121.556];
	_this setVectorDirAndUp [[-0.0493884,-0.99878,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item522 = objNull;
if (_layer497) then {
	_item522 = createVehicle ["Land_CampingChair_V2_F",[8210.87,14884.1,0],[],0,"CAN_COLLIDE"];
	_this = _item522;
	_objects pushback _this;
	_objectIDs pushback 522;
	_this setPosWorld [8210.87,14884.1,121.556];
	_this setVectorDirAndUp [[0.025164,0.999683,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item523 = objNull;
if (_layer497) then {
	_item523 = createSimpleObject ["Land_CampingChair_V2_F",[8211.25,14884.7,121.05]];
	_this = _item523;
	_objects pushback _this;
	_objectIDs pushback 523;
	_this setPosWorld [8211.25,14884.7,121.556];
	_this setVectorDirAndUp [[-0.853926,0.520394,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item524 = objNull;
if (_layer497) then {
	_item524 = createSimpleObject ["Land_CampingChair_V2_F",[8194.03,14865.5,121.318]];
	_this = _item524;
	_objects pushback _this;
	_objectIDs pushback 524;
	_this setPosWorld [8194.03,14865.5,121.824];
	_this setVectorDirAndUp [[0.494637,0.869061,0.00817815],[-0.00320187,-0.00758762,0.999966]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item525 = objNull;
if (_layer497) then {
	_item525 = createSimpleObject ["Land_CampingChair_V2_F",[8193.41,14863,121.297]];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [8193.41,14863,121.803];
	_this setVectorDirAndUp [[-0.977385,0.211462,-0.00152502],[-0.00320187,-0.00758762,0.999966]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item526 = objNull;
if (_layer497) then {
	_item526 = createSimpleObject ["Land_CampingChair_V2_F",[8280.09,14840.7,123.483]];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [8280.09,14840.7,123.99];
	_this setVectorDirAndUp [[0.336821,0.941532,-0.00833438],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item527 = objNull;
if (_layer497) then {
	_item527 = createSimpleObject ["Land_CampingChair_V2_F",[8281.18,14840.4,123.465]];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [8281.18,14840.4,123.972];
	_this setVectorDirAndUp [[0.70624,0.707832,-0.0141169],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item528 = objNull;
if (_layer497) then {
	_item528 = createSimpleObject ["Land_CampingChair_V2_F",[8280.25,14838.6,123.486]];
	_this = _item528;
	_objects pushback _this;
	_objectIDs pushback 528;
	_this setPosWorld [8280.25,14838.6,123.993];
	_this setVectorDirAndUp [[-0.544639,-0.83859,0.011663],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item529 = objNull;
if (_layer497) then {
	_item529 = createSimpleObject ["Land_CampingChair_V2_F",[8279.35,14838.3,123.518]];
	_this = _item529;
	_objects pushback _this;
	_objectIDs pushback 529;
	_this setPosWorld [8279.35,14838.3,124.024];
	_this setVectorDirAndUp [[0.0231824,-0.99973,0.00174644],[0.0399667,0.00267229,0.999197]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item530 = objNull;
if (_layer497) then {
	_item530 = createSimpleObject ["Land_CampingChair_V2_F",[8291.85,14852.5,123.696]];
	_this = _item530;
	_objects pushback _this;
	_objectIDs pushback 530;
	_this setPosWorld [8291.85,14852.5,124.202];
	_this setVectorDirAndUp [[0.935176,-0.354182,-0.000165016],[-0.00133721,-0.00399666,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item531 = objNull;
if (_layer497) then {
	_item531 = createSimpleObject ["Land_CampingChair_V2_F",[8292.34,14853.2,123.699]];
	_this = _item531;
	_objects pushback _this;
	_objectIDs pushback 531;
	_this setPosWorld [8292.34,14853.2,124.206];
	_this setVectorDirAndUp [[0.835715,-0.549163,-0.0010773],[-0.00133721,-0.00399666,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item532 = objNull;
if (_layer497) then {
	_item532 = createSimpleObject ["Land_CampingChair_V2_F",[8290.84,14850.8,123.688]];
	_this = _item532;
	_objects pushback _this;
	_objectIDs pushback 532;
	_this setPosWorld [8290.84,14850.8,124.194];
	_this setVectorDirAndUp [[0.637408,-0.770523,-0.00222719],[-0.00133721,-0.00399666,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item533 = objNull;
if (_layer497) then {
	_item533 = createSimpleObject ["Land_CampingChair_V2_F",[8298.57,14854.8,123.715]];
	_this = _item533;
	_objects pushback _this;
	_objectIDs pushback 533;
	_this setPosWorld [8298.57,14854.8,124.221];
	_this setVectorDirAndUp [[0.570989,-0.820953,-0.00285859],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item534 = objNull;
if (_layer497) then {
	_item534 = createSimpleObject ["Land_CampingChair_V2_F",[8283.48,14839.1,123.43]];
	_this = _item534;
	_objects pushback _this;
	_objectIDs pushback 534;
	_this setPosWorld [8283.48,14839.1,123.936];
	_this setVectorDirAndUp [[0.283453,0.958829,0.0173691],[-0.00265204,-0.0173281,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item535 = objNull;
if (_layer497) then {
	_item535 = createSimpleObject ["Land_CampingChair_V2_F",[8284.48,14838.6,123.425]];
	_this = _item535;
	_objects pushback _this;
	_objectIDs pushback 535;
	_this setPosWorld [8284.48,14838.6,123.932];
	_this setVectorDirAndUp [[0.705443,0.708625,0.0141522],[-0.00265204,-0.0173281,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item536 = objNull;
if (_layer497) then {
	_item536 = createSimpleObject ["Land_CampingChair_V2_F",[8283.34,14836.7,123.438]];
	_this = _item536;
	_objects pushback _this;
	_objectIDs pushback 536;
	_this setPosWorld [8283.34,14836.7,123.944];
	_this setVectorDirAndUp [[-0.333369,-0.94276,0.00827781],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item537 = objNull;
if (_layer497) then {
	_item537 = createSimpleObject ["Land_CampingChair_V2_F",[8282.6,14837.5,123.448]];
	_this = _item537;
	_objects pushback _this;
	_objectIDs pushback 537;
	_this setPosWorld [8282.6,14837.5,123.955];
	_this setVectorDirAndUp [[-0.301295,-0.9535,0.00775042],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item538 = objNull;
if (_layer497) then {
	_item538 = createSimpleObject ["Land_CampingChair_V2_F",[8288.13,14834.1,123.366]];
	_this = _item538;
	_objects pushback _this;
	_objectIDs pushback 538;
	_this setPosWorld [8288.13,14834.1,123.872];
	_this setVectorDirAndUp [[-0.980996,0.192864,0.02123],[0.023991,0.0119916,0.99964]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item549 = objNull;
if (_layer497) then {
	_item549 = createSimpleObject ["Land_CampingTable_F",[8195.08,14873.7,121.322]];
	_this = _item549;
	_objects pushback _this;
	_objectIDs pushback 549;
	_this setPosWorld [8195.08,14873.7,121.733];
	_this setVectorDirAndUp [[-0.911698,0.410862,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item550 = objNull;
if (_layer497) then {
	_item550 = createSimpleObject ["Land_CampingTable_F",[8194.27,14871.9,121.322]];
	_this = _item550;
	_objects pushback _this;
	_objectIDs pushback 550;
	_this setPosWorld [8194.27,14871.9,121.734];
	_this setVectorDirAndUp [[-0.912991,0.40798,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item551 = objNull;
if (_layer497) then {
	_item551 = createSimpleObject ["Land_CampingTable_F",[8194.16,14863.3,121.483]];
	_this = _item551;
	_objects pushback _this;
	_objectIDs pushback 551;
	_this setPosWorld [8194.16,14863.3,121.894];
	_this setVectorDirAndUp [[-0.923946,0.38252,-0.00165532],[-0.00399675,-0.00532651,0.999978]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item552 = objNull;
if (_layer497) then {
	_item552 = createSimpleObject ["Land_CampingTable_F",[8291.54,14853.2,123.698]];
	_this = _item552;
	_objects pushback _this;
	_objectIDs pushback 552;
	_this setPosWorld [8291.54,14853.2,124.11];
	_this setVectorDirAndUp [[0.845906,-0.533331,-0.00100039],[-0.00133721,-0.00399666,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item553 = objNull;
if (_layer497) then {
	_item553 = createSimpleObject ["Land_CampingTable_F",[8290.48,14851.5,123.69]];
	_this = _item553;
	_objects pushback _this;
	_objectIDs pushback 553;
	_this setPosWorld [8290.48,14851.5,124.102];
	_this setVectorDirAndUp [[0.845906,-0.533331,-0.00100039],[-0.00133721,-0.00399666,0.999991]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item554 = objNull;
if (_layer497) then {
	_item554 = createSimpleObject ["Land_CampingTable_F",[8296.28,14859.5,123.745]];
	_this = _item554;
	_objects pushback _this;
	_objectIDs pushback 554;
	_this setPosWorld [8296.28,14859.5,124.156];
	_this setVectorDirAndUp [[-0.651925,-0.75822,-0.00981522],[-0.00265204,-0.010664,0.99994]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item555 = objNull;
if (_layer497) then {
	_item555 = createSimpleObject ["Land_CampingTable_F",[8280.35,14840,123.481]];
	_this = _item555;
	_objects pushback _this;
	_objectIDs pushback 555;
	_this setPosWorld [8280.35,14840,123.892];
	_this setVectorDirAndUp [[0.447135,0.894409,-0.0101212],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item556 = objNull;
if (_layer497) then {
	_item556 = createSimpleObject ["Land_CampingTable_F",[8289.15,14834,123.292]];
	_this = _item556;
	_objects pushback _this;
	_objectIDs pushback 556;
	_this setPosWorld [8289.15,14834,123.703];
	_this setVectorDirAndUp [[-0.85904,0.511703,0.0144783],[0.023991,0.0119916,0.99964]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item557 = objNull;
if (_layer497) then {
	_item557 = createSimpleObject ["Land_CampingTable_F",[8279.99,14839.3,123.49]];
	_this = _item557;
	_objects pushback _this;
	_objectIDs pushback 557;
	_this setPosWorld [8279.99,14839.3,123.901];
	_this setVectorDirAndUp [[-0.442405,-0.89659,0.0200935],[0.0399667,0.00267229,0.999197]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item558 = objNull;
if (_layer497) then {
	_item558 = createSimpleObject ["Land_CampingTable_F",[8283.63,14838.4,123.428]];
	_this = _item558;
	_objects pushback _this;
	_objectIDs pushback 558;
	_this setPosWorld [8283.63,14838.4,123.839];
	_this setVectorDirAndUp [[0.447135,0.894409,-0.0101212],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item559 = objNull;
if (_layer497) then {
	_item559 = createSimpleObject ["Land_CampingTable_F",[8283.26,14837.7,123.436]];
	_this = _item559;
	_objects pushback _this;
	_objectIDs pushback 559;
	_this setPosWorld [8283.26,14837.7,123.848];
	_this setVectorDirAndUp [[-0.442692,-0.896617,0.0100501],[0.0173282,0.00265165,0.999846]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item560 = objNull;
if (_layer497) then {
	_item560 = createSimpleObject ["Land_CampingTable_small_F",[8190.42,14864.4,121.298]];
	_this = _item560;
	_objects pushback _this;
	_objectIDs pushback 560;
	_this setPosWorld [8190.42,14864.4,121.704];
	_this setVectorDirAndUp [[-0.928979,0.370131,-0.00016606],[-0.00320187,-0.00758762,0.999966]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item561 = objNull;
if (_layer497) then {
	_item561 = createSimpleObject ["Land_CampingTable_small_F",[8297.74,14855.5,123.717]];
	_this = _item561;
	_objects pushback _this;
	_objectIDs pushback 561;
	_this setPosWorld [8297.74,14855.5,124.122];
	_this setVectorDirAndUp [[0.898984,-0.437981,5.12311e-005],[-0.00265204,-0.00532653,0.999982]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item562 = objNull;
if (_layer497) then {
	_item562 = createSimpleObject ["Land_WoodenTable_large_F",[8263.26,14844.9,124.233]];
	_this = _item562;
	_objects pushback _this;
	_objectIDs pushback 562;
	_this setPosWorld [8263.26,14844.9,124.665];
	_this setVectorDirAndUp [[-0.269844,-0.962904,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item563 = objNull;
if (_layer497) then {
	_item563 = createSimpleObject ["Land_WoodenTable_large_F",[8262.68,14842.8,124.233]];
	_this = _item563;
	_objects pushback _this;
	_objectIDs pushback 563;
	_this setPosWorld [8262.68,14842.8,124.665];
	_this setVectorDirAndUp [[-0.256222,-0.966618,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item564 = objNull;
if (_layer497) then {
	_item564 = createSimpleObject ["Land_WoodenTable_large_F",[8238.9,14885.9,121.065]];
	_this = _item564;
	_objects pushback _this;
	_objectIDs pushback 564;
	_this setPosWorld [8238.9,14885.9,121.497];
	_this setVectorDirAndUp [[0.965697,-0.259652,0.0032497],[-0.00265204,0.00265203,0.999993]];
	BIS_briefingTable = _this;
	_this setVehicleVarName "BIS_briefingTable";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item565 = objNull;
if (_layer497) then {
	_item565 = createSimpleObject ["Land_WoodenTable_small_F",[8258.53,14843.5,124.233]];
	_this = _item565;
	_objects pushback _this;
	_objectIDs pushback 565;
	_this setPosWorld [8258.53,14843.5,124.665];
	_this setVectorDirAndUp [[-0.968475,0.249112,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item566 = objNull;
if (_layer497) then {
	_item566 = createSimpleObject ["Land_ChairPlastic_F",[8192.25,14891.5,121.039]];
	_this = _item566;
	_objects pushback _this;
	_objectIDs pushback 566;
	_this setPosWorld [8192.25,14891.5,121.522];
	_this setVectorDirAndUp [[0.981307,0.192449,-0.000510385],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item567 = objNull;
if (_layer497) then {
	_item567 = createSimpleObject ["Land_ChairPlastic_F",[8193.43,14891.5,121.039]];
	_this = _item567;
	_objects pushback _this;
	_objectIDs pushback 567;
	_this setPosWorld [8193.43,14891.5,121.521];
	_this setVectorDirAndUp [[0.998433,0.055958,-0.000148404],[0,0.00265204,0.999996]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item568 = objNull;
if (_layer497) then {
	_item568 = createSimpleObject ["Land_ChairPlastic_F",[8262.07,14863.3,124.112]];
	_this = _item568;
	_objects pushback _this;
	_objectIDs pushback 568;
	_this setPosWorld [8262.07,14863.3,124.594];
	_this setVectorDirAndUp [[0.0320775,0.999483,0.00206326],[-0.0226603,-0.00133653,0.999742]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item569 = objNull;
if (_layer497) then {
	_item569 = createSimpleObject ["Land_ChairPlastic_F",[8263.58,14864.5,124.147]];
	_this = _item569;
	_objects pushback _this;
	_objectIDs pushback 569;
	_this setPosWorld [8263.58,14864.5,124.629];
	_this setVectorDirAndUp [[0.9993,-0.0298196,0.0226104],[-0.0226603,-0.00133653,0.999742]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item570 = objNull;
if (_layer497) then {
	_item570 = createSimpleObject ["Land_ChairWood_F",[8273.82,14865.3,124.392]];
	_this = _item570;
	_objects pushback _this;
	_objectIDs pushback 570;
	_this setPosWorld [8273.82,14865.3,124.392];
	_this setVectorDirAndUp [[0.971308,-0.237803,0.00312297],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item571 = objNull;
if (_layer497) then {
	_item571 = createSimpleObject ["Land_ChairWood_F",[8274.01,14861.9,124.392]];
	_this = _item571;
	_objects pushback _this;
	_objectIDs pushback 571;
	_this setPosWorld [8274.01,14861.9,124.392];
	_this setVectorDirAndUp [[0.523076,0.852285,0.00109554],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item572 = objNull;
if (_layer497) then {
	_item572 = createSimpleObject ["Land_TableDesk_F",[8273.82,14861.6,124.395]];
	_this = _item572;
	_objects pushback _this;
	_objectIDs pushback 572;
	_this setPosWorld [8273.82,14861.6,124.802];
	_this setVectorDirAndUp [[0.535456,0.844562,0.00113815],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item573 = objNull;
if (_layer497) then {
	_item573 = createSimpleObject ["Land_TableDesk_F",[8273.32,14865.6,124.391]];
	_this = _item573;
	_objects pushback _this;
	_objectIDs pushback 573;
	_this setPosWorld [8273.32,14865.6,124.798];
	_this setVectorDirAndUp [[0.827547,-0.561389,0.00287531],[-0.0030688,0.000598017,0.999995]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item680 = objNull;
if (_layer497) then {
	_item680 = createSimpleObject ["Land_WoodenTable_large_F",[8205.7,14883.3,121.05]];
	_this = _item680;
	_objects pushback _this;
	_objectIDs pushback 680;
	_this setPosWorld [8205.7,14883.3,121.482];
	_this setVectorDirAndUp [[-0.998087,0.0618226,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item681 = objNull;
if (_layer497) then {
	_item681 = createSimpleObject ["Land_WoodenTable_large_F",[8207.83,14883.2,121.05]];
	_this = _item681;
	_objects pushback _this;
	_objectIDs pushback 681;
	_this setPosWorld [8207.83,14883.2,121.482];
	_this setVectorDirAndUp [[-0.999362,0.035728,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item683 = objNull;
if (_layer497) then {
	_item683 = createSimpleObject ["Land_WoodenTable_large_F",[8211.61,14883.3,121.05]];
	_this = _item683;
	_objects pushback _this;
	_objectIDs pushback 683;
	_this setPosWorld [8211.61,14883.3,121.482];
	_this setVectorDirAndUp [[-0.985757,-0.168178,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item686 = objNull;
if (_layer497) then {
	_item686 = createSimpleObject ["Land_WoodenTable_large_F",[8207.53,14877.5,121.05]];
	_this = _item686;
	_objects pushback _this;
	_objectIDs pushback 686;
	_this setPosWorld [8207.53,14877.5,121.482];
	_this setVectorDirAndUp [[-0.988116,0.153707,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item687 = objNull;
if (_layer497) then {
	_item687 = createSimpleObject ["Land_WoodenTable_large_F",[8205.37,14877.9,121.05]];
	_this = _item687;
	_objects pushback _this;
	_objectIDs pushback 687;
	_this setPosWorld [8205.37,14877.9,121.482];
	_this setVectorDirAndUp [[-0.981452,0.191707,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};

private _item737 = objNull;
if (_layerRoot) then {
	_item737 = createVehicle ["Box_NATO_Wps_F",[8262.69,14843.2,1.1385],[],0,"CAN_COLLIDE"];
	_this = _item737;
	_objects pushback _this;
	_objectIDs pushback 737;
	_this setPosWorld [8262.69,14843.2,125.286];
	_this setVectorDirAndUp [[0.961934,-0.273282,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_MXC_F"",""SMG_01_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F""],[4,2,2,2,1,1,1]],[[""30Rnd_65x39_caseless_mag"",""16Rnd_9x21_Mag"",""11Rnd_45ACP_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""100Rnd_65x39_caseless_mag"",""ACE_20Rnd_65x47_Scenar_mag"",""ACE_30Rnd_65x47_Scenar_mag"",""ACE_20Rnd_65_Creedmor_mag"",""ACE_30Rnd_65_Creedmor_mag""],[8,1,1,1,2,4,4,4,4]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item738 = objNull;
if (_layerRoot) then {
	_item738 = createVehicle ["Box_NATO_Ammo_F",[8258.7,14843.6,1.31984],[],0,"CAN_COLLIDE"];
	_this = _item738;
	_objects pushback _this;
	_objectIDs pushback 738;
	_this setPosWorld [8258.7,14843.6,125.381];
	_this setVectorDirAndUp [[-0.942764,0.333459,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[],[]],[[""30Rnd_65x39_caseless_mag"",""16Rnd_9x21_Mag"",""11Rnd_45ACP_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""20Rnd_762x51_Mag"",""100Rnd_65x39_caseless_mag"",""1Rnd_HE_Grenade_shell"",""3Rnd_HE_Grenade_shell"",""NLAW_F"",""HandGrenade"",""MiniGrenade"",""ACE_20Rnd_65x47_Scenar_mag"",""ACE_30Rnd_65x47_Scenar_mag"",""ACE_20Rnd_65_Creedmor_mag"",""ACE_30Rnd_65_Creedmor_mag"",""ACE_10Rnd_762x51_M118LR_Mag"",""ACE_20Rnd_762x51_M118LR_Mag"",""ACE_10Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk316_Mod_0_Mag"",""ACE_10Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mk319_Mod_0_Mag"",""ACE_20Rnd_762x51_Mag_Tracer"",""ACE_20Rnd_762x51_Mag_Tracer_Dim"",""ACE_10Rnd_338_300gr_HPBT_Mag"",""ACE_10Rnd_338_API526_Mag"",""ACE_7Rnd_408_305gr_Mag"",""ACE_5Rnd_127x99_Mag"",""ACE_5Rnd_127x99_API_Mag"",""ACE_5Rnd_127x99_AMAX_Mag""],[24,6,6,6,6,6,3,1,1,6,6,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item739 = objNull;
if (_layerRoot) then {
	_item739 = createVehicle ["Box_NATO_WpsLaunch_F",[8263.16,14844.8,1.05084],[],0,"CAN_COLLIDE"];
	_this = _item739;
	_objects pushback _this;
	_objectIDs pushback 739;
	_this setPosWorld [8263.16,14844.8,125.247];
	_this setVectorDirAndUp [[0.969215,-0.246217,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""launch_B_Titan_F"",""launch_B_Titan_short_F"",""launch_NLAW_F"",""launch_MRAWS_sand_F""],[1,1,1,1]],[[""Titan_AA"",""Titan_AT"",""Titan_AP"",""NLAW_F"",""MRAWS_HEAT_F"",""MRAWS_HE_F""],[3,3,3,3,3,3]],[[],[]],[[""B_Kitbag_rgr""],[3]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item718 = objNull;
if (_layerRoot) then {
	_item718 = createVehicle ["Land_InfoStand_V1_F",[8198.22,14868.2,-0.0215912],[],0,"CAN_COLLIDE"];
	_this = _item718;
	_objects pushback _this;
	_objectIDs pushback 718;
	_this setPosWorld [8198.22,14868.2,121.604];
	_this setVectorDirAndUp [[-0.971018,0.239006,0],[0,0,1]];
	hq_button = _this;
	_this setVehicleVarName "hq_button";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
	_this setObjectTextureGlobal [0,"images\tpimg.jpg"];
};

private _item724 = objNull;
if (_layerRoot) then {
	_item724 = createVehicle ["B_supplyCrate_F",[8260.5,14842.7,0.346405],[],0,"CAN_COLLIDE"];
	_this = _item724;
	_objects pushback _this;
	_objectIDs pushback 724;
	_this setPosWorld [8260.5,14842.7,125.063];
	_this setVectorDirAndUp [[0.260724,0.965414,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	[_this,"[[[[""arifle_MXC_F"",""arifle_MXM_F"",""arifle_MX_F"",""arifle_MX_GL_F"",""arifle_MX_SW_F"",""arifle_SDAR_F"",""hgun_P07_F"",""hgun_Pistol_heavy_01_F"",""launch_NLAW_F"",""launch_Titan_F"",""launch_Titan_short_F"",""SMG_01_F"",""srifle_EBR_F"",""srifle_LRR_camo_F"",""srifle_LRR_F"",""FirstAidKit"",""Medikit""],[4,2,8,4,4,2,2,2,2,2,2,2,2,2,2,10,1]],[[""100Rnd_65x39_caseless_mag_Tracer"",""11Rnd_45ACP_Mag"",""16Rnd_9x21_Mag"",""1Rnd_HE_Grenade_shell"",""1Rnd_SmokeBlue_Grenade_shell"",""1Rnd_SmokeGreen_Grenade_shell"",""1Rnd_SmokeOrange_Grenade_shell"",""1Rnd_SmokePurple_Grenade_shell"",""1Rnd_SmokeRed_Grenade_shell"",""1Rnd_SmokeYellow_Grenade_shell"",""1Rnd_Smoke_Grenade_shell"",""20Rnd_556x45_UW_mag"",""20Rnd_762x51_Mag"",""30Rnd_45ACP_Mag_SMG_01"",""30Rnd_556x45_Stanag_red"",""30Rnd_65x39_caseless_mag"",""3Rnd_HE_Grenade_shell"",""7Rnd_408_Mag"",""APERSBoundingMine_Range_Mag"",""APERSMine_Range_Mag"",""APERSTripMine_Wire_Mag"",""ATMine_Range_Mag"",""B_IR_Grenade"",""ClaymoreDirectionalMine_Remote_Mag"",""DemoCharge_Remote_Mag"",""HandGrenade"",""Laserbatteries"",""MiniGrenade"",""NLAW_F"",""SatchelCharge_Remote_Mag"",""SLAMDirectionalMine_Wire_Mag"",""SmokeShell"",""SmokeShellBlue"",""SmokeShellGreen"",""SmokeShellOrange"",""SmokeShellPurple"",""SmokeShellRed"",""SmokeShellYellow"",""Titan_AA"",""Titan_AP"",""Titan_AT"",""UGL_FlareGreen_F"",""UGL_FlareWhite_F""],[16,14,14,15,2,2,2,2,2,2,2,6,24,14,6,52,3,12,5,5,5,5,8,5,5,24,5,24,8,5,5,2,2,2,2,2,2,2,6,6,6,2,2]],[[""Binocular"",""Laserdesignator"",""Rangefinder"",""acc_flashlight"",""acc_pointer_IR"",""ItemGPS"",""MineDetector"",""muzzle_snds_acp"",""muzzle_snds_B"",""muzzle_snds_H"",""muzzle_snds_H_SW"",""muzzle_snds_L"",""optic_Aco"",""optic_Aco_smg"",""optic_dms"",""optic_Hamr"",""optic_Holosight"",""optic_lrps"",""optic_MRD"",""optic_NVS"",""optic_SOS"",""optic_tws"",""optic_tws_mg"",""ToolKit""],[1,1,1,5,5,5,1,5,5,5,1,5,2,2,2,2,2,2,2,2,2,2,2,1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
};

private _item729 = objNull;
if (_layerRoot) then {
	_item729 = createVehicle ["Land_Workbench_01_F",[8206.83,14854.6,-0.000167847],[],0,"CAN_COLLIDE"];
	_this = _item729;
	_objects pushback _this;
	_objectIDs pushback 729;
	_this setPosWorld [8206.82,14854.6,121.575];
	_this setVectorDirAndUp [[-0.279831,-0.960015,-0.00816375],[-0.0199947,-0.00267387,0.999797]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
	_this allowdamage false;;
};

private _item742 = objNull;
if (_layerRoot) then {
	_item742 = createVehicle ["Land_TentLamp_01_standing_F",[8265.52,14845.5,0.185997],[],0,"CAN_COLLIDE"];
	_this = _item742;
	_objects pushback _this;
	_objectIDs pushback 742;
	_this setPosWorld [8265.52,14845.5,124.489];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	[_this,4] execVM 'a3\Props_F_Enoch\Military\Camps\scripts\setTentLamp.sqf';
};

private _item764 = objNull;
if (_layerRoot) then {
	_item764 = createVehicle ["Land_MysteriousBell_01_F",[8283.18,14910.4,0],[],0,"CAN_COLLIDE"];
	_this = _item764;
	_objects pushback _this;
	_objectIDs pushback 764;
	_this setPosWorld [8283.18,14910.4,130.205];
	_this setVectorDirAndUp [[-0.32652,0.94519,0],[0,0,1]];
	0 remoteExec ['setFeatureType', _this];
	_this enableDynamicSimulation true;
};

private _item784 = objNull;
if (_layerRoot) then {
	_item784 = createVehicle ["SkeetMachine",[8285.41,14911.5,0],[],0,"CAN_COLLIDE"];
	_this = _item784;
	_objects pushback _this;
	_objectIDs pushback 784;
	_this setPosWorld [8285.41,14911.5,129.815];
	_this setVectorDirAndUp [[-0.778593,-0.620784,0.0917672],[0.00933759,0.134759,0.990835]];
	sk1 = _this;
	_this setVehicleVarName "sk1";
	0 remoteExec ['setFeatureType', _this];
	_this enableSimulation false;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

private _item720 = objNull;
if (_layerRoot) then {
	_item720 = createTrigger ["EmptyDetectorArea10x10",[8193.58,14870.1,0.285767],true];
	_this = _item720;
	_triggers pushback _this;
	_triggerIDs pushback 720;
	_item720 setPosATL [8193.58,14870.1,0.285767];
	_this setTriggerArea [3,6,203.084,true,5];
	_this setTriggerActivation ["ANYPLAYER","PRESENT",true];
	_this setTriggerStatements ["call{player in thisList}","call{{_x call ace_medical_treatment_fnc_fullHealLocal} forEach thisList;  
hint ""You have been fully healed"";  
}",""];
	_this setTriggerText "Ace Heal";
	_this setTriggerTimeout [3,3,3,true];
	aceHealer = _this;
};

private _item723 = objNull;
if (_layerRoot) then {
	_item723 = createTrigger ["EmptyDetectorArea10x10",[8209.68,14860.6,0],true];
	_this = _item723;
	_triggers pushback _this;
	_triggerIDs pushback 723;
	_item723 setPosATL [8209.68,14860.6,0];
	_this setTriggerArea [10,10,19.6704,true,5];
	repStation = _this;
	_this setTriggerText "Repair Station";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item695;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	hq_ai = _this;
	[_this, "HQ"] call CBA_fnc_setCallsign;
	_this enableDynamicSimulation true;
	      //if (!is3DEN && !(["","ColorGUER","HQ",true] isEqualTo ['', '', '', true])) then      {        [_this, ["","ColorGUER","HQ",true]] spawn        {          scriptName 'ENH_Attribute_GroupMarker';          params ['_group', '["","ColorGUER","HQ",true]'];          ["","ColorGUER","HQ",true] params ['_type', '_color', '_text', '_showGroupSize'];          private _leader = leader _group;          private _marker = createMarker          [            format ['ENH_GroupMarker_["","ColorGUER","HQ",true]', str _group],            _leader          ];          _marker setMarkerType _type;          _marker setMarkerColor _color;          _marker setMarkerText (_text call BIS_fnc_localize);          while {true} do          {            sleep 1;            if (units _group isEqualTo []) exitWith {deleteMarker _marker};            if (_group getVariable ['ENH_GroupMarker_Update', true]) then            {              _marker setMarkerPos _leader;              if (_showGroupSize) then              {                _marker setMarkerText format ['["","ColorGUER","HQ",true] ()', groupId _group, count units _group];              };            };          };        };      };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item719 = objNull;
if (_layerRoot) then {
	_item719 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8205.38,14869.2,0],[],0,"CAN_COLLIDE"];
	_this = _item719;
	_logics pushback _this;
	_logicIDs pushback 719;
	_this setPosWorld [8205.38,14869.2,121.05];
	_this setVectorDirAndUp [[-0.970609,0.24066,0],[0,0,1]];
	spawnPos = _this;
	_this setVehicleVarName "spawnPos";
};

private _item759 = objNull;
if (_layerRoot) then {
	_item759 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8195.14,14873.8,1.08794],[],0,"CAN_COLLIDE"];
	_this = _item759;
	_logics pushback _this;
	_logicIDs pushback 759;
	_this setPosWorld [8195.14,14873.8,122.138];
	_this setVectorDirAndUp [[0,0.999934,-0.0115015],[-0.00511379,0.0115013,0.999921]];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer497) then {missionNamespace setVariable ["base_guer_Furniture",[[_item498,_item499,_item500,_item501,_item502,_item503,_item504,_item505,_item506,_item507,_item508,_item509,_item510,_item511,_item512,_item513,_item514,_item515,_item516,_item517,_item518,_item519,_item520,_item521,_item522,_item523,_item524,_item525,_item526,_item527,_item528,_item529,_item530,_item531,_item532,_item533,_item534,_item535,_item536,_item537,_item538,_item549,_item550,_item551,_item552,_item553,_item554,_item555,_item556,_item557,_item558,_item559,_item560,_item561,_item562,_item563,_item564,_item565,_item566,_item567,_item568,_item569,_item570,_item571,_item572,_item573,_item680,_item681,_item683,_item686,_item687],[]]];};
if (_layer574) then {missionNamespace setVariable ["base_guer_Props",[[_item575,_item576,_item577,_item578,_item579,_item580,_item581,_item582,_item583,_item584,_item585,_item586,_item587,_item588,_item589,_item590,_item591,_item592,_item593,_item594,_item595,_item596,_item597,_item598,_item599,_item600,_item601,_item602,_item603,_item604,_item605,_item606,_item607,_item608,_item609,_item610,_item611,_item613,_item614,_item615,_item616,_item617,_item618,_item619,_item620,_item621,_item622,_item623,_item624,_item625,_item626,_item627,_item628,_item629,_item630,_item631,_item632,_item633,_item634,_item635,_item636,_item637,_item638,_item639,_item640,_item641,_item642,_item643,_item644,_item645,_item646,_item647,_item648,_item649,_item650,_item651,_item652,_item653,_item654,_item655,_item656,_item657,_item658,_item659,_item660,_item661,_item662,_item663,_item664,_item714,_item713],[]]];};
if (_layer477) then {missionNamespace setVariable ["base_guer_Fortification",[[_item478,_item479,_item480,_item481,_item482,_item483,_item484,_item485,_item486,_item487,_item488,_item489,_item490,_item491,_item492,_item493,_item494,_item495,_item496],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item697) then {
		this = _item697;
		call{[this] spawn {sleep 10; removeAllWeapons (_this select 0)};};
	};
	if !(isnull _item624) then {
		this = _item624;
		this setVariable ["BIS_spawnObjects",["TOP","Land_Camping_Light_off_F",1,[0.1,-0.2,0]]];;
	};
	if !(isnull _item549) then {
		this = _item549;
		this setVariable ["BIS_spawnObjects",["TOP","Land_Camping_Light_off_F",1,[-1.0,-0.3,0]]];;
	};
	if !(isnull _item550) then {
		this = _item550;
		this setVariable ["BIS_SurfaceObject","CampingTable_NoRight"];;
	};
	if !(isnull _item551) then {
		this = _item551;
		this setVariable ["BIS_SurfaceObject","CampingTable_NoLeft"];;
	};
	if !(isnull _item562) then {
		this = _item562;
		this setVariable ["BIS_SurfaceObject","ARMORY_WoodenTable"];;
	};
	if !(isnull _item563) then {
		this = _item563;
		this setVariable ["BIS_SurfaceObject","ARMORY_WoodenTable"];;
	};
	if !(isnull _item564) then {
		this = _item564;
		this setVariable ["BIS_spawnObjects",["TOP","Land_Camping_Light_off_F",1,[0.4,0.5,0]]]; this setVariable ["BIS_SurfaceObject","WoodenTable_Empty"];;
	};
	if !(isnull _item565) then {
		this = _item565;
		this setVariable ["BIS_SurfaceObject","ARMORY_WoodenTableSmall"];;
	};
	if !(isnull _item573) then {
		this = _item573;
		this setVariable ["BIS_spawnObjects",["TOP","Land_Camping_Light_off_F",1,[-0.55,0.3,0]]];;
	};
	if !(isnull _item737) then {
		this = _item737;
		call{arsenals pushBack this; [this, false] call ace_dragging_fnc_setCarryable;};
	};
	if !(isnull _item738) then {
		this = _item738;
		call{arsenals pushBack this; [this, false] call ace_dragging_fnc_setCarryable;};
	};
	if !(isnull _item739) then {
		this = _item739;
		call{arsenals pushBack this; [this, false] call ace_dragging_fnc_setCarryable;};
	};
	if !(isnull _item724) then {
		this = _item724;
		call{arsenals pushBack this; [this, false] call ace_dragging_fnc_setCarryable;};
	};
	if !(isnull _item729) then {
		this = _item729;
		call{repStation = this;};
	};
	if !(isnull _item784) then {
		this = _item784;
		call{this addAction ["PULL", "scripts\launch_skeet.sqf"]};
	};
	if !(isnull _item759) then {
		this = _item759;
		call{if (isServer) then {_medcrate = "ACE_medicalSupplyCrate_advanced" createVehicle position this; _medcrate setPosASL (getPosASL this);};};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
