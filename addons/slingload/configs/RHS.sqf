//RHS Helicopter Slingload Config

// RHS_CH_47F_base
if (isClass (configFile >> "CfgVehicles" >> "RHS_CH_47F_base")) then {
    // forward
    _positionForward = [0,2.5518,-3.03];
    _statement = {[_target, _player, [0,2.5518,-3.03]] call TF47_slingload_fnc_attachCargo};
    _actionForward = ["TF47_slingload_attachCargoForward", _displayName, _icon, _statement, _condition, {}, _cargoHookNameForward, _positionForward, 5.0] call ace_interact_menu_fnc_createAction;
    // aft
    _positionAft = [0,-3.39819,-3.035];
    _statement = {[_target, _player, [0,-3.39819,-3.035]] call TF47_slingload_fnc_attachCargo};
    _actionAft = ["TF47_slingload_attachCargoAft", _displayName, _icon, _statement, _condition, {}, _cargoHookNameAft, _positionAft, 5.0] call ace_interact_menu_fnc_createAction;
    ["RHS_CH_47F_base", 0, [], _actionForward, true] call ace_interact_menu_fnc_addActionToClass;
    ["RHS_CH_47F_base", 0, [], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["RHS_CH_47F_base", 0, [], _actionAft, true] call ace_interact_menu_fnc_addActionToClass;
};

// rhsusf_CH53E_USMC
if (isClass (configFile >> "CfgVehicles" >> "rhsusf_CH53E_USMC")) then {
    // forward
    _positionForward = [0,+1.524+3.92882,-4.13195];
    _statement = {[_target, _player, [0,+1.524+3.92882,-4.13195]] call TF47_slingload_fnc_attachCargo};
    _actionForward = ["TF47_slingload_attachCargoForward", _displayName, _icon, _statement, _condition, {}, _cargoHookNameForward, _positionForward, 5.0] call ace_interact_menu_fnc_createAction;
    // aft
    _positionAft = [0,-1.524+3.92882,-4.13195];
    _statement = {[_target, _player, [0,-1.524+3.92882,-4.13195]] call TF47_slingload_fnc_attachCargo};
    _actionAft = ["TF47_slingload_attachCargoAft", _displayName, _icon, _statement, _condition, {}, _cargoHookNameAft, _positionAft, 5.0] call ace_interact_menu_fnc_createAction;
    ["rhsusf_CH53E_USMC", 0, [], _actionForward, true] call ace_interact_menu_fnc_addActionToClass;
    ["rhsusf_CH53E_USMC", 0, [], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["rhsusf_CH53E_USMC", 0, [], _actionAft, true] call ace_interact_menu_fnc_addActionToClass;
};

// rhsusf_MELB
if (isClass (configFile >> "CfgVehicles" >> "RHS_MELB_base")) then {
    _statement = TF47_slingload_fnc_attachCargo;
    _position = "slingload0";
    ["RHS_MELB_base", 0, [], _action, true] call ace_interact_menu_fnc_addActionToClass;
    ["RHS_MELB_AH6M",0,["TF47_slingload_attachCargo"]] call ace_interact_menu_fnc_removeActionFromClass;
};