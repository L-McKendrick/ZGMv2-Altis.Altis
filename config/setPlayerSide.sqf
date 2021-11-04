_unit = _this select 0;

// Get callsign of player's squads
//_callsign = groupId (group _unit);
_callsign = _unit getVariable "squad";

// Create variable name for new group
_groupVar = _callsign splitString " " joinString "";
//_groupVar = "AlphaLead";

// Get group
_group = missionNamespace getVariable[_groupVar, grpNull];

// Check if group exists
if (isNull _group) then {
	//create group with var
	_group = createGroup factionSide;
missionNamespace setVariable [_groupVar, _group];
	_group setGroupIdGlobal [_callsign];
};

[_unit] joinSilent _group;

// Assign leader as leader
_role = (_unit getVariable "role");
if (_role == "sl" || _role == "tl" || _role == "sniper") then {
	//_group selectLeader _unit;
	[group _unit, _unit] remoteExec ["selectLeader", groupOwner group _unit];
};

//Check if Dynamic groups is initialized
if (["IsInitialized", []] call BIS_fnc_dynamicGroups) then {
	// Register group in Dynamic groups system;
	if (!(["IsGroupRegistered", [_group]] call BIS_fnc_dynamicGroups)) then
	{
		hint "false";
		private _leader = leader _group;
		private _data = [nil, _callsign, true];

		["RegisterGroup", [_group, _leader, _data]] call BIS_fnc_dynamicGroups;
	} else { hint "true" };
};

// Set insignia for player
private _insignia = "";
[_unit,_insignia] call BIS_fnc_setUnitInsignia;