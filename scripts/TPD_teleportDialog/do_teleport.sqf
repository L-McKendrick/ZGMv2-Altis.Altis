_p = _this select 0;
_t = _this select 1;

//Check if sl is on foot
if (vehicle _t == _t) then {	
	//Teleport player	1m behind squad
	_LX = (getpos _t select 0) +
					(1*sin ((getDir _t) -180));
	_LY = (getpos _t select 1) +
					(1*cos ((getDir _t) -180));
	_LZ = (getpos _t select 2);
	_p setpos [_LX,_LY,_LZ];
			
	
} else {
	//Move into vehicle, or print vehicle is full
	if ((vehicle _t) emptyPositions "cargo"==0) then
		{1 cutText ["Teleport failed\nNo room in the squad's vehicle!","PLAIN DOWN",-1,true]}
	else
	{			
		_p moveInCargo vehicle _t;
	};
};