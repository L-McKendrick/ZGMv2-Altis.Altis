// Exit if not serverCommand
if (!isDedicated) exitWith {};

_state = _this select 0;
_city = _this select 1;
_syncTime = _this select 2;

// Set weather to location below
Weather_worldVar = _state;
Weather_cityVar = _city;

// Weather API Key
WeatherAPIKey = "76fe28e135695c92bc859db15970671f";

// Update weather how often in minutes
WeatherUpdateSetting = 60;

// Set time when setting weather
WeatherTimeSetting = _syncTime;


// Clears any current weather
0 setOvercast 0;
0 setrain 0;
0 setfog 0;


// Sets weather here start here

worldNameActual = "Altis";

HZ_ERROR = false;
HZ_REALWEATHERSTATS = [];
HZ_DATAREADY = false;
HZ_TIMEOUT = false;
HZ_DebugMessages = [];
HZ_WeatherLogic = 0;
HZ_Retry = 0;

Weather_DefaultWorldWeatherVar = "";
Weather_fogVar = true;

Weather_keyVar = WeatherAPIKey;
Weather_debugVar = true;
Weather_tabletVar = false;

Weather_updateCycle = WeatherUpdateSetting;
Weather_timeVar = WeatherTimeSetting;


[] execvm "HZ_RealWorldWeather\functions\fn_SetRealtimeWeather.sqf";