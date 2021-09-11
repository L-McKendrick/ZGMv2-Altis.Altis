
removeAllWeapons player;
removeGoggles player;
removeHeadgear player;
removeVest player;
removeUniform player;
removeAllAssignedItems player;
clearAllItemsFromBackpack player;
removeBackpack player;
_loadout = player getVariable "Saved_Loadout";


if (isNil "_loadout") then {player setUnitLoadout(player getVariable["Death_Loadout",[]]);} else {player setUnitLoadout(_loadout);  hint "Saved loadout loaded."};

if (player getVariable["Had_Earplugs_In", false]) then {
player removeItem "ACE_EarPlugs";
player addItem "ACE_EarPlugs";
[player, true] call ace_hearing_fnc_putInEarplugs;
};

_sqd = player getVariable["Last_Group",[]];
if (group player != _sqd) then {player joinSilent _sqd};


//Update ACRE PTT Assignment
waitUntil { ([] call acre_api_fnc_isInitialized) };
["loadRadioDefaultSpatials", []] execVM "sia_f\ACRERadioSetup.sqf";
["reorderRadioMPTT", ["ACRE_PRC343"]] execVM "sia_f\ACRERadioSetup.sqf";