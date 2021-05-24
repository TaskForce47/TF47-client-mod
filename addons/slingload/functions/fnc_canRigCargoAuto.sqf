#include "script_component.hpp"
/*
 * Author: Ampersand
 * check if unit is able to rig cargo for sling load
 *
 * Arguments:
 * 0: Cargo <OBJECT>
 * 1: Unit <OBJECT>
 *
 * Return Value:
 * 0: Success <BOOLEAN>
 *
 * ExTF47le:
 * [_cargo, _unit] call TF47_slingload_fnc_canRigCargoAuto
 * [(curatorSelected # 0 # 0), player] call TF47_slingload_fnc_canRigCargoAuto
 */

params ["_cargo", "_unit"];

if !("TF47_slingload_CargoSling" in (_unit call ace_common_fnc_uniqueItems)) exitWith {false};

if ((typeOf _cargo) isEqualTo "TF47_slingload_apexFitting") exitWith {false};
if GVAR(pfeh_running) exitWith {false};

!(getArray (configFile >> "CfgVehicles" >> typeOf _cargo >> "slingLoadCargoMemoryPoints") isEqualTo [])
