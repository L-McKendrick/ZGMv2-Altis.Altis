//"the Pit" minigame

//Flag that shoot house is in progress
sh_IP = true;
publicVariable "sh_IP";

//Unit to use
_trgt = selectRandom ["O_Soldier_F", "O_V_Soldier_hex_F", "O_R_Patrol_Soldier_AR_F", "I_C_Soldier_Bandit_5_F", "I_E_Soldier_Pathfinder_F", "I_soldier_F", "B_CTRG_Soldier_tna_F"];
//players group
_players = nearestObjects [sh_button_area, ["Man"], 4];
if (count _players > 4) then {_players resize 4};
{
[_x, true] remoteExec ["allowDamage"];
[_x, false] remoteExec ["setCaptive"];
_x setPos getPos sh_spawn;
} forEach _players;
//group of targets;
_trgts = [];

//Gets spawns
_spots = nearestObjects [sh_button, ["Sign_Arrow_F"], 50];
_spots = _spots call BIS_fnc_arrayShuffle;
_spots resize 8;

//Clear shoothouse
//{deleteVehicle _x} forEach nearestObjects [(getPos sh_button), [_trgt], 150];

//spawn Units
_i = 0;
for [{ _i = 0 }, { _i < (count _spots)}, { _i = _i + 1 }] do {
	_trgt createUnit [
	(_spots select _i), 
	shcrew,
	"this disableAI 'PATH'; this setUnitPos 'MIDDLE'; _trgts pushBack this;"
]};

//End game when all are targets down
waitUntil {sleep 1; {alive _x} count _trgts == 0 || {alive _x} count _players == 0};
{deleteVehicle _x} forEach nearestObjects [(getPos sh_button), [_trgt], 50];
{if (_x inArea sh_area) then {
_x setPos getPos sh_end; 
[_x, false] remoteExec ["allowDamage"];
[_x, true] remoteExec ["setCaptive"];
[objNull, _x] call ace_medical_treatment_fnc_fullHeal;
}} forEach _players;

//Flag that shoot house is no longer in progress
sh_IP = false;
publicVariable "sh_IP";
