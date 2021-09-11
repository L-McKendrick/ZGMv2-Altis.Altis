
	[ 
		[factionName,"font = 'PuristaSemibold'"],
		["","<br/>"],
		[((roleDescription player splitString "@") select 0),"font = 'PuristaLight'"],
		["","<br/>"],
		[(player call BIS_fnc_locationDescription),"font = 'PuristaMedium'"]
	]  execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";