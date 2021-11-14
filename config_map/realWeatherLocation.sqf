_state = "Greece";  //THIS NEEDS TO BE SET MANUALLY PER MAP
_city = "Limnos";	//THIS NEEDS TO BE SET MANUALLY PER MAP
_doSyncTime = false;
if ((paramsArray select 4) == 1) then {_doSyncTime = true};
[_state, _city, _doSyncTime] execVM "scripts\realWeather.sqf";
