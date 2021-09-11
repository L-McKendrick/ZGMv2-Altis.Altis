loadComplete = false;
publicVariable "loadoutComplete";

// Initialize Dynamic Groups for server
["Initialize"] call BIS_fnc_dynamicGroups;

// Update weather
if ((paramsArray select 3) == 1) then {
	[] execVM "config_map\realWeatherLocation.sqf";
};

arsenals = [];
bases = ["base_mil", "base_para", "base_guer"];
_factionList = ["aaf_blu","ana","ana_sf","anp_bp","anp","ada_blu","adp_blu","us_cw_early","us_cw_late","us_cw_late_bo","mdf","mdf_sf","tna_blu","tna_sf_blu","tnp_blu","taki_militia","cdf_blu","ctrg_pac","fia","gendarmerie","hidf","nato","nato_pac","nato_w","us_army_90s","us_cia","us_seals","us_army_d","us_army_w","us_socom","us_mc_d","us_mc_w","aaf_ind","ada_ind","adpara_ind","adm_ind","adp_ind","ard_ind","chern_militia","chern_police","kdf_ind","napa","tna_ind","tna_sf_ind","tnp_ind","taki_fighters","un_ind","aja_ind","ldf","saf_sf","saf","saf_early","syndikat","aaf_opf","ada_opf","adp_opf","ade_opf","chdkz","chdkz_winter","chern_commies","ussr_early","ussr_late","ussr_late_sf","tna_opf","tna_sf_opf","tnp_opf","taki_insurgents","csat","csat_pac","russia_emr","russia_emr_d","russia_sf","tla","mas_chi_army","mas_chi_army_n","mas_chi_army_s","mas_chi_army_w"];

//Get faction from lobby parameters
if ((paramsArray select 0) == -1) then {
	selectedFaction = selectRandom _factionList;
} else {
	selectedFaction =  _factionList select (paramsArray select 0);
};
publicVariable "selectedFaction";

hint "Loading faction..."; //Load faction config
_filePath =  "config\factions\" + selectedFaction + ".sqf";
if (fileExists  _filePath) then {
	script_handler = [] execVM _filePath;
} else {
	//if faction config doesn't exist, set to NATO
	["Config for " + selectedFaction + "does not exist!"] remoteExec ["hint"]; 
	selectedFaction = "nato";
	publicVariable "selectedFaction";
	script_handler = [] execVM  "config\factions\nato.sqf";
};

waitUntil { scriptDone script_handler };

if (factionTier == 0) then {FactionRadio = "ACRE_PRC152"} else {FactionRadio = "ACRE_PRC148"};
publicVariable "FactionRadio";
[FactionRadio, "default", 1, "label", "PLATOON NET"] remoteExec ["acre_api_fnc_setPresetChannelField", 0, true];

hint "Loading base..."; //setup Base
_bases = ["base_mil","base_para","base_guer"];
if (paramsArray select 2 == -1) then {
	_filePath =  "config_map\bases\" + selectedFaction + ".sqf";
	if (!(fileExists  _filePath)) then {
		_filePath =  "config_map\bases\" + (_bases select factionTier) + ".sqf";
	}
} else {
	_filePath =  "config_map\bases\" + (_bases select (paramsArray select 2)) + ".sqf"
};
if (!(fileExists _filePath)) then {
	{
	_filePath =  "config_map\bases\" + (_bases select _x) + ".sqf";
	if (fileExists _filePath) exitWith {};
	} forEach [1,0,2];
};

script_handler = [] execVM _filePath;
	
waitUntil { scriptDone script_handler };

// Enable simulation of logics
_logics = allMissionObjects "Logic";
{_x enableSimulationGlobal true} forEach _logics;

// Get faction name from config
_factionClass = getText (configfile >> "CfgVehicles" >> (factionLoadouts select 0) >> "faction");
factionName = getText (configfile >> "CfgFactionClasses" >> _factionClass >> "displayName");
publicVariable "factionName";

hint "Loading arsenal..."; //setup Arsenals 
_baseArsenal = parseSimpleArray (loadfile ("config\baseArsenal_" + str factionTier + ".txt"));
//Initialize arsenal objects, making sure they are empty and immoveable.
{
	[_x, _baseArsenal, true] call ace_arsenal_fnc_initBox; 
	clearBackpackCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearItemCargoGlobal _x;
} forEach arsenals;
_filePath =  "config\arsenals\" + selectedFaction + ".txt";
if (factionHascTab) then {
	_baseArsenalcTab = parseSimpleArray (loadfile "config\baseArsenalcTab.txt");
	{[_x, _baseArsenalcTab, true] call ace_arsenal_fnc_addVirtualItems} forEach arsenals;
};
if (fileExists  _filePath) then {
	_arsenal = parseSimpleArray (loadfile _filePath);
	{[_x, _arsenal, true] call ace_arsenal_fnc_addVirtualItems;} forEach arsenals;
/* } else {
	//if arsenal config doesn't exist, auto generate from faction config
	{
		private ["_cfgArray", "_xPos", "_yPos", "_veh"];

		_cfgArray = "( 
			(getNumber (_x >> 'scope') >= 2) && 
			{
				getText (_x >> 'faction') == (_factionClass) && 
				{ getText (_x >> 'vehicleClass') in ['Men']}
			}
		)" configClasses (configFile >> "CfgVehicles");	
	
	
		//_loadouts = (factionLoadouts apply {getUnitLoadout _x});
		_loadouts = (_cfgArray apply {getUnitLoadout _x});
		_loadouts = str _loadouts splitString "[]," joinString ",";
		_loadouts = parseSimpleArray ("[" + _loadouts + "]");
		_loadouts = _loadouts arrayIntersect _loadouts select {_x isEqualType "" && {_x != ""}};
		[_x, _loadouts, true] call ace_arsenal_fnc_addVirtualItems;
	} forEach arsenals;
*/
};

hint "Setting up spawns..."; //setup spawn
sleep 1;
{_x setMarkerPos spawnPos} forEach ["respawn_west", "respawn_east", "respawn_guerilla", "respawn_civilian"];

// Check parameter for custom side, if true then update variable.
if ((paramsArray select 1) != -1) then {
	factionSide = ([west, independent, east, civilian] select (paramsArray select 1));
	publicVariable "factionSide";
};

hint "Loading side..."; //Setup Groups
if (factionSide != west) then {
	_SideHQ = createCenter factionSide;
};

hint "Setting up hq_ai..."; //setup Ambient Ai
if (!(isNil "hq_ai")) then {
	hq_ai setBehaviour "CARELESS";
	
	//Apply loadout and identity to each unit
	_tempGrp = createGroup civilian;
	{
		_x enableSimulationGlobal true;
		[_x, false] remoteExec ["allowDamage"];
		
		_loadout = factionLoadouts select random 4;
		
		// Check if unit is officer and apply officer loadout, otherwise apply randomly selected infantry loadout
		if (rank _x == "LIEUTENANT") then {
			// Apply officer loadout from factionLoadouts
			_x setUnitLoadout (factionLoadouts select 9);
			if ((getNumber(configFile >> "CfgWeapons" >> (headgear _x) >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor")) > 0) then {removeHeadgear _x};	
			removeAllWeapons _x; 
			removeVest _x; 
			removeBackpack _x
		} else {
			_x setUnitLoadout (_loadout);
			if (rank _x == "SERGEANT") then {removeAllWeapons _x; removeBackpack _x};
			if (rank _x == "CORPORAL") then {removeBackpack _x; _x removeWeaponGlobal (secondaryWeapon _x)};
		};
		//Remove NVGs
		_x unassignItem (hmd _x);
		_x removeItem (hmd _x);
		
		//Get Identity for faction by creating a unit and copying theirs
		_unit = _tempGrp createUnit [_loadout, [0,0,0], [], 0, "CAN_COLLIDE"];
		_face = face _unit;
		_name = name _unit;
		[_x,_face] remoteExec ["setFace"];
		[_x,_name] remoteExec ["setName"];
		deleteVehicle _unit;
		
	} forEach units hq_ai;
	
	if ((side hq_ai) != factionSide) then {
		_group = createGroup factionSide;
		{[_x] joinSilent _group} forEach units hq_ai;
		_group setGroupIdGlobal ["HQ"];
	};
};

//Check trigger for Ace Heal
// Ace Heal Trigger
if (!isNil "aceHealer") then {aceHealer setTriggerStatements ["this","{[objNull, _x] call ace_medical_treatment_fnc_fullHeal; ['You have been fully healed'] remoteExec ['hint', _x]} forEach thisList",""]};

//Setup shoothouse trigger
if (!isNil "sh_button") then {
	if (isNil "sh_end") then {sh_end = sh_button};

	if (factionSide == east) then {
		_SideHQ = createCenter west;
		shcrew = createGroup west;
		//sh_area setTriggerActivation ["WEST", "PRESENT", true];
	} else {
		_SideHQ = createCenter east;
		shcrew = createGroup east;
	};
	//sh_area setTriggerStatements ["this","",""]
	sh_IP = false;
	publicVariable "sh_IP";;
	publicVariable "sh_area";
};


hint "Broadcasting variables...";// public Variables
publicVariable "spawnPos";
publicVariable "hq_button";
publicVariable "arsenals";
if (!isNil "fr_at_button") then {publicVariable "fr_at_button"};
if (!isNil "sh_button") then {publicVariable "sh_button"};
if (!isNil "s4_button") then {publicVariable "s4_button"};
if (!isNil "repStation") then {publicVariable "repStation"};
if (!isNil "sk1") then {publicVariable "sk1"};

// Revo's TP Function
["enableGlobalMessage", false] call TPD_fnc_teleport; // Disable global message
["addActions", [hq_button]] call TPD_fnc_teleport; // Add actions to given objects for all players

hint "Loading complete."; //Loading finished
loadComplete = true;
publicVariable "loadComplete";