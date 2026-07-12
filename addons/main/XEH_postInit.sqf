#include "script_component.hpp"
if (is3DEN || !hasInterface || !ADDON) exitWith {};

[] call FUNC(cacheLoop);

['ace_unconscious', FUNC(medicalAlert)] call CBA_fnc_addEventHandler;
