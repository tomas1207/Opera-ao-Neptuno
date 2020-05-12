power1 setDamage 1;

_array = [ Lamp, lamp01, lamp02, lamp03,lamp04 ,Lamp_1,Lamp_2,Lamp_3,Lamp_4 ,Lamp_5 ,Lamp_6 ,Lamp_7,Lamp_8];
_i = 0;

while {_i < count _array} do {
	hint format ["%1", _array select _i];
	_array select _i setDamage 0.95;
	_i = _i + 1;
};

_types = ["Lamps_Base_F", "PowerLines_base_F","Land_LampDecor_F","Land_LampHalogen_F","Land_LampHarbour_F","Land_LampShabby_F","Land_NavigLight","Land_runway_edgelight","Land_PowerPoleWooden_L_F"];
_onoff = 0.95;


for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
   // lightsmaker is a marker I placed. 1000 is the distance
   _lamps = getMarkerPos "LightsOFF" nearObjects [_types select _i, 1000];
   _lamps = getMarkerPos "LightsOFF_1" nearObjects [_types select _i, 1000];
   sleep 1;
   {_x setDamage _onoff} forEach _lamps;
};