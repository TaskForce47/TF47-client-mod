#include "script_component.hpp"
/*
Author: Ampers
Return which of the vehicle's selection positions is being looked at by the camera

* Arguments:
* 0: Vehicle <OBJECT>
* 1: Selection Positions <ARRAY>
    [
        [x, y, z],
        [x, y, z],
        ...
    ]
*
* Return Value:
* 0: Result Index <NUMBER>

* Example:
* [_vehicle, _sp] call TF47_dwyl_fnc_findLookedAt
*/

params ["_vehicle", "_sp"];

private _maxDotProduct = -1;
private _indexClosest = -1;
private _cameraVector = positionCameraToWorld [0, 0, 0] vectorFromTo positionCameraToWorld [0, 0, 1];
{
    private _selectionVector = vectorNormalized (positionCameraToWorld [0, 0, 0] vectorFromTo (_vehicle modelToWorldVisual _x));
    private _dotProduct = _cameraVector vectorDotProduct _selectionVector;
    if (_dotProduct > _maxDotProduct) then {
        _maxDotProduct = _dotProduct;
        _indexClosest = _forEachIndex;
    };
} forEach _sp;

_indexClosest
