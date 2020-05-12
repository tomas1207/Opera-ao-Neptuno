_group = (_this select 0);
_group setBehaviour "Safe";
_group setSpeedMode "Limited";
_Distance = 25;
_wapoints = 3;
_leader = leader _group;

for "_i" from 1 to _wapoints do {
_pos = [(getPos _leader select 0)- _Distance * sin(random 359),(getPos _leader select 0)-_Distance * sin(random 359)];

_wp = _group addWaypoint[_pos, 2,_i];
_wp setWaypointType "Move";
[_group,_i] setWaypointTimeout [0 , 2, 4];

};
_pos1 = [(getPos _leader select 0) - _Distance * sin(random 359),(getPos _leader select 0) - _Distance *sin(random 359)];
_wp1 = _group addWaypoint [_leader, 2];
_wp1 setWaypointType "Cycle";

_kill = _leader addEventHandler ["FiredNear",
{
_unit = (_this  select 0);
_group = group _unit;

_group setBehaviour "Combat";
_group setSpeedMode "Normal";
_wpcorrent = currentWaypoint _group;
deleteWaypoint[_group,_wpcorrent];
_unit removeAllEventHandlers "Fired";
}];