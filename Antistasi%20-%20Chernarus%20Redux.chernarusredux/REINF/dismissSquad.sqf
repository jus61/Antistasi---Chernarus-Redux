//if (!isServer) exitWith{};
private ["_groups","_hr","_resourcesFIA","_wp","_grupo","_veh","_salir"];

_groups = _this select 0;
_hr = 0;
_resourcesFIA = 0;
_salir = false;
{
if ((groupID _x == "MineF") or (groupID _x == "Watch") or (isPlayer(leader _x))) then {_salir = true};
} forEach _groups;

if (_salir) exitWith {hint "You cannot dismiss player led, Watchpost, Roadblocks or Minefield building squads"};

{
if (_x getVariable ["esNATO",false]) then {_salir = true};
} forEach _groups;

if (_salir) exitWith {hint "You cannot dismiss NATO groups"};

_pos = getMarkerPos "respawn_guerrila";

{
stavros sideChat format ["%2, I'm sending %1 back to base", _x,name petros];
stavros hcRemoveGroup _x;
_wp = _x addWaypoint [_pos, 0];
_wp setWaypointType "MOVE";
sleep 3} forEach _groups;

sleep 100;

{_grupo = _x;
{

if (alive _x) then
	{
	_hr = _hr + 1;
	_resourcesFIA = _resourcesFIA + (server getVariable (typeOf _x));
	if (isNil "_resourcesFIA") then {diag_log format ["Antistasi Error en unitprice: %!",typeOf _x]};
	if (!isNull (assignedVehicle _x)) then
		{
		_veh = assignedVehicle _x;
		if ((typeOf _veh) in vehFIA) then
			{
			_resourcesFIA = _resourcesFIA + ([(typeOf _veh)] call vehiclePrice);
			if (count attachedObjects _veh > 0) then
				{
				_subVeh = (attachedObjects _veh) select 0;
				_resourcesFIA = _resourcesFIA + ([(typeOf _subVeh)] call vehiclePrice);
				deleteVehicle _subVeh;
				};
			deleteVehicle _veh;
			};
		};
	_mochi = backpack _x;
	if (_mochi != "") then
		{
		switch (_mochi) do
			{
			case MortStaticSDKB: {_resourcesFIA = _resourcesFIA + ([SDKMortar] call vehiclePrice)};
			case AAStaticSDKB: {_resourcesFIA = _resourcesFIA + ([staticAABuenos] call vehiclePrice)};
			case MGStaticSDKB: {_resourcesFIA = _resourcesFIA + ([SDKMGStatic] call vehiclePrice)};
			case ATStaticSDKB: {_resourcesFIA = _resourcesFIA + ([staticATBuenos] call vehiclePrice)};
			};
		};
	};
deleteVehicle _x;
} forEach units _grupo;
deleteGroup _grupo;} forEach _groups;
_nul = [_hr,_resourcesFIA] remoteExec ["resourcesFIA",2];


