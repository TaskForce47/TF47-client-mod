// testing, update fncs on the fly
//#define PREP(var1) TRIPLES(ADDON,fnc,var1) = { call compile preProcessFileLineNumbers '\MAINPREFIX\PREFIX\SUBPREFIX\COMPONENT_F\functions\DOUBLES(fn,var1).sqf' }

PREP(exit);
PREP(findLookedAt);
PREP(getExits);
PREP(showExits);
