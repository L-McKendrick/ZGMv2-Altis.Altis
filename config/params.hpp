
class Params
{
	class Faction
	{
		title = "Faction";
		texts[] = {"Random", "[BLUFOR] US Army", "[BLUFOR] US Navy SEALs", "[BLUFOR] US MACV SOG", "[OPFOR] NVA" };
		values[] = {-1,0,1,2,3};
		default = -1;
	};
	class customSide
	{
		title = "Set faction side (WIP)";
		texts[] = {"Default", "Blufor","Independent","Opfor","Civlian"};
		values[] = {-1,0,1,2,3};
		default = -1;
	}
	class customBase
	{
		title = "Select Custom Base";
		texts[] = {"Default", "Military","Paramilitary","Guerilla"};
		values[] = {-1,0,1,2};
		default = -1;
	}
	class RealWeather
	{
		title = "Load real weather?";
		texts[] = {"False", "True"};
		values[] = {0,1};
		default = 0;
	};
	class SyncTime
	{
		title = "Sync real time?";
		texts[] = {"False", "True"};
		values[] = {0,1};
		default = 0;
	};
};
	