["TF47_slingload_localise", {
    params ["_heli"];
    private _heliOwner = owner _heli;
    {
        if (_heliOwner != owner _x) then {
            _x setOwner _heliOwner;
        };
    } forEach (ropes _heli + ropeAttachedObjects _heli);
}] call CBA_fnc_addEventHandler;

["TF47_slingload_adjustRope", {
    params ["_rope", "_speed", "_length", "_relative"];
    ropeUnwind [_rope, _speed, _length, _relative];
}] call CBA_fnc_addEventHandler;

["Helicopter", "InitPost", {
    params ["_heli"];
    if (local _heli) then {
        _heli addItemCargoGlobal ["TF47_slingload_CargoSling", 4];
    };
    _heli addEventHandler ["RopeAttach", {
        //params ["_heli", "_rope", "_object"];
        ["TF47_slingload_localise", [_this # 0]] call CBA_fnc_serverEvent;
    }];
}, true, [], true] call CBA_fnc_addClassEventHandler;

["Helicopter", "Local", {
    params ["_heli", "_isLocal"];
    if _isLocal then {["TF47_slingload_localise", [_heli]] call CBA_fnc_serverEvent;};
}, true] call CBA_fnc_addClassEventHandler;

["TF47_slingload_apexFitting", "Deleted", {
    params ["_apexFitting"];
    private _cargo = _apexFitting getVariable ["TF47_slingload_cargo4Fitting", objNull];
    if !(isNull _cargo) then {
        _cargo setVariable ["TF47_slingload_ropes4Cargo", [], true];
    };
}, true] call CBA_fnc_addClassEventHandler;

["TF47_slingload_apexFitting", "Killed", {
    params ["_apexFitting"];
    deleteVehicle _apexFitting;
}, true] call CBA_fnc_addClassEventHandler;

["TF47_slingload_apexFitting", "Init", {
    (_this # 0) addEventHandler ["RopeBreak", {
        params ["_apexFitting"];
        if (
            (ropeAttachedObjects _apexFitting isEqualTo [])
            ||
            {ropes _apexFitting isEqualTo []}
        ) then {
            deleteVehicle _apexFitting;
        };
    }];
}, true, [], true] call CBA_fnc_addClassEventHandler;
