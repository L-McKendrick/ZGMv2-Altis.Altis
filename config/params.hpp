
class Params
{
	class Faction
	{
		title = "Faction";
		texts[] = {"Random", "[BLUFOR] 3CB AAF", "[BLUFOR] 3CB Afghan National Army", "[BLUFOR] 3CB Afghan National Army (SF)", "[BLUFOR] 3CB Afghan National Border Patrol", "[BLUFOR] 3CB Afghan National Police", "[BLUFOR] African Desert Army",  "[BLUFOR] African Desert Police",  "[BLUFOR] Cold War US - Early",  "[BLUFOR] Cold War US - Late",  "[BLUFOR] Cold War US - Late (Black Ops)",  "[BLUFOR] 3CB Malden Defense Force",  "[BLUFOR] 3CB Malden Defense Force (SF)",  "[BLUFOR] Takistan National Army",  "[BLUFOR] Takistan National Army (SF)",  "[BLUFOR] Takistan National Police",  "[BLUFOR] Takistan Pro-Government Militia",  "[BLUFOR] CDF",  "[BLUFOR] CDF Para",  "[BLUFOR] CTRG (Pacific)",  "[BLUFOR] FIA",  "[BLUFOR] Gendarmerie",  "[BLUFOR] Horizon Islands Defense Force",  "[BLUFOR] NATO",  "[BLUFOR] NATO (Pacific)",  "[BLUFOR] NATO (Woodland)",  "[BLUFOR] US Army (90s)",  "[BLUFOR] US CIA",  "[BLUFOR] US Navy SEALs (AOR 1)",  "[BLUFOR] USA (Army - D)",  "[BLUFOR] USA (Army - W)",  "[BLUFOR] USA (SOCOM)",  "[BLUFOR] USA (USMC - D)",  "[BLUFOR] USA (USMC - W)", "[INDEP] 3CB AAF", "[INDEP] African Desert Army", "[INDEP] African Desert Paramilitary", "[INDEP] African Desert Militia",  "[INDEP] African Desert Police", "[INDEP] Ardistan Army", "[INDEP] Chernarus Nationalisits Militia", "[INDEP] Chernarus Police Department",  "[INDEP] Kolgujev Defence Force", "[INDEP] NAPA",  "[INDEP] Takistan National Army", "[INDEP] Takistan National Army (SF)", "[INDEP] Takistan National Police", "[INDEP] Takistan Tribal Fighters",  "[INDEP] UN Peacekeepers", "[INDEP] African Jungle Army", "[INDEP] LDF", "[INDEP] SAF (Airborne)", "[INDEP] SAF (Digital)", "[INDEP] SAF (Oakleaf)", "[INDEP] Syndikat", "[OPFOR] 3CB AAF", "[OPFOR] African Desert Army",  "[OPFOR] African Desert Police", "[OPFOR] African Desert Extremists", "[OPFOR] ChDKZ", "[OPFOR] ChDKZ Winter", "[OPFOR] Chernarus Communist Militia", "[OPFOR] Cold War USSR - Early",  "[OPFOR] Cold War USSR - Late",  "[OPFOR] Cold War USSR - Late (Spetsnaz)", "[OPFOR] Takistan National Army", "[OPFOR] Takistan National Army (SF)", "[OPFOR] Takistan Police", "[OPFOR] Takistan Insurgents",  "[OPFOR] CSAT", "[OPFOR] CSAT (Pacific)",  "[OPFOR] Russia (EMR)", "[OPFOR] Russia (EMR Desert)", "[OPFOR] Russia (Recon)", "[OPFOR] Tanoan Liberation Army" };
		values[] = {-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73};
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
	