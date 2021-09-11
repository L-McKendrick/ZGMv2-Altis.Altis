// Checks if player has already saved a load out, if not then saves current loadout


_loadout = getUnitLoadout player;

player setVariable["Death_Loadout", _loadout];
player setVariable["Last_Group",group player];
if ((player getVariable "role") == "zeus") then {setPlayerRespawnTime 3};
if (!isNil "sh_area") then { if (player inArea sh_area) then {setPlayerRespawnTime 3} };
player setVariable["Had_Earplugs_In", ([player] call ace_hearing_fnc_hasEarPlugsIn)];