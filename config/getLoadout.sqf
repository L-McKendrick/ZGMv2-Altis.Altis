if (!hasInterface) exitWith {};

//r, at, ar, tl, medic, sl, heli_pilot, jet_pilot, crewman, pl, sniper, spotter
sleep 1;

private _roles = ["r", "at", "ar", "tl", "medic", "sl", "heli_pilot", "jet_pilot", "crewman", "pl", "sniper", "spotter"];
private _role = player getVariable "role";
private _index = _roles find _role; 

private _faction = selectedFaction;
private _filePath =  "config\factions\" + _faction + ".sqf";
[] execVM _filePath;

private _loadout = factionLoadouts select _index;

if (typeName _loadout == "STRING") then { player setUnitLoadout _loadout } else { 
	player setUnitLoadout (_loadout select 0);
	
	private _y = [];
	{
		if (typeName _x == "ARRAY") then {
			_y = _x;
			{[_x, _y, false] call ace_arsenal_fnc_addVirtualItems} forEach arsenals;
		} else {
			_y = (getUnitLoadout _x);
			_y = str _y splitString "[]," joinString ",";
			_y = parseSimpleArray ("[" + _y + "]");
			_y = _y arrayIntersect _y select {_x isEqualType "" && {_x != ""}};
			{[_x, _y, false] call ace_arsenal_fnc_addVirtualItems} forEach arsenals;
		};
	} forEach _loadout;
};

// Remove and add other necessary items
player unassignItem "ItemGPS";
player unassignItem "ItemRadio";
player removeItem "ItemRadio";
player unassignItem "ItemRadioAcreFlagged";
player removeItem "ItemRadioAcreFlagged";
player removeItem "ItemGPS";
player removeItem "ACE_EarPlugs";
player addItem "ACE_EarPlugs";

// Update loadout for the Zeus
if (groupId (group player) == "Command") then {
	removeAllWeapons player;
	removeBackpack player;
	removeVest player;
	// Remove helmet if wearing one
	if ((getNumber(configFile >> "CfgWeapons" >> (headgear player) >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor")) > 0) then {removeHeadgear player};	
	player setVariable ["role", "zeus"];
	player allowDamage false;
	player setUnitRank "CAPTAIN";
	//Remove NVGs
	player unassignItem (hmd player);
	player removeItem (hmd player);
};
	
if (groupId (group player) == "Northstar") then {
	if ((getNumber(configFile >> "CfgWeapons" >> (headgear player) >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor")) > 0) then {removeHeadgear player};	
	player unassignItem (hmd player);
	player removeItem (hmd player);		
	switch (side player) do
	{
		case west :
		{
		player addItem "B_UavTerminal";
		};
		case east :
		{
		player addItem "O_UavTerminal";
		};
		case independent :
		{
		player addItem "I_UavTerminal";
		};
		case default
		{
		player addItem "B_UavTerminal";
		}
	};	
};
// Redundant sleep
sleep 1;

player removeItem "ACRE_PRC343";
// Add player's loadout to local arsenal
_loadout = (getUnitLoadout player);
_loadout = str _loadout splitString "[]," joinString ",";
_loadout = parseSimpleArray ("[" + _loadout + "]");
_loadout = _loadout arrayIntersect _loadout select {_x isEqualType "" && {_x != ""}};
{[_x, _loadout, false] call ace_arsenal_fnc_addVirtualItems} forEach arsenals;

_radio = "ACRE_PRC343";
// Check if player has room for a radio, if not then make room and give radio.
if (!(player canAdd _radio)) then { _uniform = uniformContainer player; clearMagazineCargo _uniform };
player addItem _radio;

// Give radios to player with lead roles
if (_role == "tl" || _role == "sl" || _role == "pl" || _role == "sniper" || _role == "zeus") then {
	player addItem FactionRadio;
};

waitUntil { ([] call acre_api_fnc_isInitialized) };
["loadRadioDefaultSpatials",[]] execVM "sia_f\ACRERadioSetup.sqf";
