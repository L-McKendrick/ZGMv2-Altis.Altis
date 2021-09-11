_vehType = selectRandom ["rhs_btr60_vdv"];
_loc = selectRandom [fr_at_spawn, fr_at_spawn_1, fr_at_spawn_2];
{deleteVehicle _x} forEach nearestObjects [(getPos fr_at_spawn), ["rhs_btr60_vdv"], 250];
_veh = createVehicle [_vehType, _loc];
_veh setVehicleLock "LOCKED";