#include "script_component.hpp"

params ["_unit", "_isUnconscious"];
private _player = [] call CBA_fnc_currentUnit;
private _isMedic = _player call ace_common_fnc_isMedic;
private _isPlayer = _unit == _player;

if (diwako_dui_vitals_medicAlert) then {
    if (_isMedic && !_isPlayer && _isUnconscious && (_unit in units _player)) then 
    {
    	playSoundUI ["diwako_dui_medAlert", 0.5];
    };
};
