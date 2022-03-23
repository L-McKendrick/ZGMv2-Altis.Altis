_action = ["TpSL", "Teleport to Squad", "z\ace\addons\arsenal\data\iconPublic.paa", {[_this select 1]execVM "scripts\tp.sqf"}, {true}] call ace_interact_menu_fnc_createAction; 
[hq_button, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToObject;

// Manage Loadouts
{
	_statement = {
			player setVariable["Saved_Loadout",getUnitLoadout player]; 
			hint "Kit saved. Will be loaded on respawn for this mission ONLY."
		};
		
	_action = ["Loadout", "Manage Respawn Kit", "\A3\Ui_F\Data\IGUI\Cfg\Actions\gear_ca.paa", _statement, {true}] call ace_interact_menu_fnc_createAction;
	[_x, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToObject;

	_action = ["SaveKit", "Save Current Kit", "\A3\Ui_F\Data\GUI\Rsc\RscDisplayArcadeMap\icon_save_ca.paa", _statement, {true}] call ace_interact_menu_fnc_createAction; 
	[_x, 0, ["ACE_MainActions", "Loadout"], _action, true] call ace_interact_menu_fnc_addActionToObject;

	_action = ["LoadKit", "Load Saved Kit", "\A3\Ui_F\Data\IGUI\Cfg\Actions\reammo_ca.paa", {player setUnitLoadout(player getVariable["Saved_Loadout",[]]); hint "Saved kit loaded."}, {true}] call ace_interact_menu_fnc_createAction;
	[_x, 0, ["ACE_MainActions", "Loadout"], _action, true] call ace_interact_menu_fnc_addActionToObject;

	_action = ["ClearKit", "Remove Saved Kit", "z\ace\addons\arsenal\data\iconClearContainer.paa", {player setVariable["Saved_Loadout",nil]; hint "Saved kit cleared. Will use kit from death when respawned"}, {true}] call ace_interact_menu_fnc_createAction; 
	[_x, 0, ["ACE_MainActions", "Loadout"], _action, true] call ace_interact_menu_fnc_addActionToObject;

	[_x, false] remoteExecCall ["ace_dragging_fnc_setDraggable"];
	[_x, false] remoteExecCall ["ace_dragging_fnc_setCarryable"];
} forEach (arsenals + [hq_button]);
// Teleport to facilities

_action = ["Facilities", "Visit Facilities", "images\transport_ca.paa", {}, {true}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;

_action = ["Teleport to HQ", "HQ", "", {_player setPos (getPos hq_button);}, {!(_target == hq_button)}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions", "Facilities"], _action, true] call ace_interact_menu_fnc_addActionToClass;

if (!isNil "fr_at_button") then {
	_action = ["Spawn Target", "Spawn Target", "", {["scripts\fr_at.sqf"] remoteExec ["execVM", 2];}, {true}] call ace_interact_menu_fnc_createAction;
	[fr_at_button, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToObject;

	_action = ["Teleport to AT Range", "AT Range", "", {_player setPos (getPos fr_at_button);}, {!(_target == fr_at_button)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F", 0, ["ACE_MainActions", "Facilities"], _action, true] call ace_interact_menu_fnc_addActionToClass;
};

if (!isNil "sh_button") then {
	_action = ["Teleport to Shoothouse", "Shoothouse", "", {_player setPos (getPos sh_button);}, {!(_target == sh_button)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F", 0, ["ACE_MainActions", "Facilities"], _action, true] call ace_interact_menu_fnc_addActionToClass;

	_action = ["Start 'The Pit'", "Start 'The Pit'", "", {["scripts\sh_pit.sqf"] remoteExec ["execVM", 2];}, {!sh_IP}] call ace_interact_menu_fnc_createAction;
	[sh_button, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToObject;

	_action = ["Clear 'The Pit'", "Clear 'The Pit'", "z\ace\addons\arsenal\data\iconClearContainer.paa", {{deleteVehicle _x} forEach nearestObjects [(getPos sh_area), ["SoldierWB"], 30];  
	  {deleteVehicle _x} forEach nearestObjects [(getPos sh_area), ["SoldierGB"], 30];}, {true}] call ace_interact_menu_fnc_createAction;
	[sh_button, 0, ["ACE_MainActions"], _action, true] call ace_interact_menu_fnc_addActionToObject;
};

if (!isNil "s4_button") then {
	_action = ["TpArmory", "Armory", "", {_player setPos (getPos s4_button);}, {!(_target == s4_button)}] call ace_interact_menu_fnc_createAction; 
	["Land_InfoStand_V1_F", 0, ["ACE_MainActions", "Facilities"], _action, true] call ace_interact_menu_fnc_addActionToClass;
};

if (!isNil "repStation") then {
	[    
	 repStation, "Repair Vehicles",    
	"\a3\ui_f\data\IGUI\Cfg\actions\repair_ca.paa",    
	 "\a3\ui_f\data\IGUI\Cfg\actions\repair_ca.paa",    
	  "_this distance _target < 4", "_caller distance _target < 4",    
	  {},    
	  {},    
	  {{_x setDamage 0} forEach (nearestObjects [repStation, ["AllVehicles"], 20])},    
	  {},    
	  [],    
	  5,    
	  997,    
	  false, false    
	] call BIS_fnc_holdActionAdd;
};

if (!isNil "sk1") then {sk1 addAction ["PULL", "scripts\launch_skeet.sqf"]};

// SIA actions 
	_action = ["SIA", "SIA Options", "sia_f\images\sia_tiny.paa", {}, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
	
	_action = ["SIA_AFK", "Go AFK", "\A3\Ui_F\Data\IGUI\Cfg\simpleTasks\types\wait_ca.paa", {execVM "sia_f\goAFK\goAFK.sqf"}, { !(player getVariable["sia_isAFK",false]) }] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA"], _action] call ace_interact_menu_fnc_addActionToClass;

	// SIA Radio Actions
	_action = ["SIA_ConfigACRE", "ACRE Settings", "\A3\Ui_F\Data\IGUI\Cfg\simpleTasks\types\radio_ca.paa", { ["loadRadioDefaultSpatials", []] execVM "sia_f\ACRERadioSetup.sqf"; ["reorderRadioMPTT", ["ACRE_PRC343"]] execVM "sia_f\ACRERadioSetup.sqf"; hint "Loaded saved settings." }, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA"], _action] call ace_interact_menu_fnc_addActionToClass;

{
	private _displayName = (getText (ConfigFile >> "CfgWeapons" >> _x >> "displayName") splitString "AN/") select 0;
	private _configName = _x;
	private _iconPath = getText (configfile >> "CfgWeapons" >> _x >> "picture");
	_action = [("SIA_ConfigACRE_Radios" + _configName), _displayName, _iconPath, {}, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA", "SIA_ConfigACRE"], _action] call ace_interact_menu_fnc_addActionToClass;
	 
	{
	_action = [("SIA_ConfigSpatial_" + _configName + _x),( "Set " + _x +  " As Default"), "", {params ["", "", "_params"]; ["setRadioDefaultSpatial", [_params select 0, _params select 1]] execVM "sia_f\ACRERadioSetup.sqf"}, {true}, {}, [_configName, _x]] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA", "SIA_ConfigACRE", ("SIA_ConfigACRE_Radios" + _configName)], _action] call ace_interact_menu_fnc_addActionToClass;
	} forEach ["LEFT", "CENTER", "RIGHT"];

} forEach ["ACRE_PRC343", "ACRE_PRC148","ACRE_PRC152","ACRE_PRC77","ACRE_PRC117F"];

	_action = ["SIA_loadSpatials", "Load Saved Settings", "", { ["loadRadioDefaultSpatials", []] execVM "sia_f\ACRERadioSetup.sqf"; ["reorderRadioMPTT", ["ACRE_PRC343"]] execVM "sia_f\ACRERadioSetup.sqf"; hint "Loaded saved settings." }, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA", "SIA_ConfigACRE"], _action] call ace_interact_menu_fnc_addActionToClass;

	_action = ["SIA_resetSpatials", "Clear Saved Settings", "", { ["resetRadioDefaultSpatials", []] execVM "sia_f\ACRERadioSetup.sqf" }, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA", "SIA_ConfigACRE"], _action] call ace_interact_menu_fnc_addActionToClass;

	_action = ["SIA_getSpatials", "Print Saved Settings", "", { ["printRadioDefaultSpatials", []] execVM "sia_f\ACRERadioSetup.sqf";  }, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions", "SIA", "SIA_ConfigACRE"], _action] call ace_interact_menu_fnc_addActionToClass;

	