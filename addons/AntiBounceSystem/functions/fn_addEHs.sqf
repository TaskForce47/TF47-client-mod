params ["_veh"];

if (!isNil "ABS_enableMod" && {!ABS_enableMod}) exitWith {};

if !(_veh getVariable ["ABS_EHs_Added", false]) then {
    
    _EH = _veh addEventHandler ["EpeContactStart", {
        params ["_veh"];
        _veh setVariable ["ABS_contactParams", [velocity _veh, CBA_missionTime], true];
    }];
    
    _veh setVariable ["ABS_ContactStart_EH", _EH, true];
    
    _EH = _veh addEventHandler ["EpeContactEnd", {call ABS_fnc_contact_end}];
    
    _veh setVariable ["ABS_ContactEnd_EH", _EH, true];
    
    _veh setVariable ["ABS_EHs_Added", true, true];
};