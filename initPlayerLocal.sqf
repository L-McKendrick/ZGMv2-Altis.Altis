if (!hasInterface) exitWith {};

execVM "scripts\miscInfo.sqf";
2 cutText ["", "BLACK", 0.1];

waitUntil {!isNull player};

[player, false] remoteExec ["enableSimulationGlobal", 2];

3 cutText ["Loading...","PLAIN DOWN",-1,true]; 
waitUntil {sleep 0.1; loadComplete == true};
sleep 0.1;

[[player],"config\setPlayerSide.sqf"] remoteExec ["execVM", 2];  


_script_handler = [] execVM  "config\getLoadout.sqf";
waitUntil { scriptDone _script_handler };

// Teleport player to starting position
player allowDamage false;
[player, getPosASL spawnPos] remoteExec ["setPosASl", 2];

// Redundant sleep
sleep 1;

//Enable simulation and fade in player's screen
[player, true] remoteExec ["enableSimulationGlobal", 2];
player setVelocity [0, 0, 0];
2 cutText ["", "BLACK IN", .5];
3 cutText ["","PLAIN DOWN",-1,true]; 

// Wait until player is loaded in and 'awake'
waitUntil {sleep 0.1; speed player > 0};

// Redundant sleep
sleep 1;

// Ensure player is vulernable		
player allowDamage true;

// Add arsenal reminder
["ace_arsenal_displayClosed", {["loadRadioDefaultSpatials",[]] execVM "sia_f\ACRERadioSetup.sqf"}] call CBA_fnc_addEventHandler;

// Print info to diary and screen

//1 cutText ["You are playing as: " + factionName + "\n Side: " + (str factionSide) + "\nRole Selected: " + (toUpper ((roleDescription player splitString "@") select 0)),"PLAIN DOWN",-1,true];
execVM "scripts\introText.sqf";
["scripts\orbat.sqf"] remoteExec ["execVM"];

// Initialize group manager
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups; 
["SetPrivateState", [group player, false]] call BIS_fnc_dynamicGroups; // locks group by default

execVM "scripts\buttons.sqf"; 
[player] call ace_medical_treatment_fnc_fullHealLocal;