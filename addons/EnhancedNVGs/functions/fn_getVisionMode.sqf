/*
 *	Author: PDT
 *	checks the player's vision mode
 *
 *	Arguments:
 *  None
 *
 *	Return Value:
 *	<BOOL> - true if player is using NVGs; false if not
 *
 * example:
 * call PDT_EnhancedNVG_fnc_getVisionMode;
 */

private _visionMode = currentVisionMode player;

if (_visionMode != 1) exitWith {
  _return = false;
  _return
};

_return = true;
_return
