

_rusian = [getMarkerPos "IntelSpawn01", OPFOR, ["CUP_O_RUS_Soldier_TL", "CUP_O_RUS_Soldier_GL", "CUP_O_RUS_Soldier_Marksman", "CUP_O_RUS_SpecOps_Scout","CUP_O_RUS_SpecOps","
CUP_O_RUS_SpecOps_SD"]] call BIS_fnc_spawnGroup; 

_nul = [ _rusian, getMarkerPos "IntelSpawn01", 25] call BIS_fnc_taskPatrol;
