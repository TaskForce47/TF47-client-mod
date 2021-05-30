#include "script_component.hpp"
/*
 * Author: DerZade, mjc4wilton
 * Returns the cargo container of a unit's chestpack. Note that this is only a prop and does not contain any items. Items which
 * were added with vanilla commands like 'addWeaponCargo' etc.  will be ignored. You have to use the provided functions instead.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Cargo container or objNull <OBJECT>
 *
 * Example:
 * [player] call bocr_main_fnc_chestpackContainer;
 *
 * Public: No
 */
params ["_unit"];

if (isNil "_unit") exitWith {["No proper argument(s) given."] call BIS_fnc_error};
private _var = _unit getVariable [QGVAR(chestpack), nil];
private _chestpack = (_var select 0) select 1;

//return objNull
if (isNil "_var" or isNil "_chestpack") exitWith {objNull};

//return object
_chestpack
