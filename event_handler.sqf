//This is a custom damage event handler script, created by Steel of King's Rangers for use in Exercise Screaming Seagull
//Feel free to do whatever you want with this. Learn from it and share it. 
//Credit to Lacey of 42 Commando for tons of assistance

//This should be placed on a playable unit to add the custom damage handler

this addEventHandler ["HitPart", {  
    _fatalDamageSources = ["spine1", "spine2", "spine3", "head", "pelvis"]; 
 
    { 
        _x params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"]; 
 
        _placeHit = (_x select 5) select 0; 
 
        if (_placeHit in  _fatalDamageSources) then { 
            hint "Hit fatal area"; 

            _thisSoldier = (_x select 0);
 
            [_thisSoldier, true] call ace_medical_status_fnc_setUnconsciousState;
            
            _thisSoldier addAction ["Wake Up (Requires medic and medical facility)", "scripts\MILES\fnc_attemptWakeUp.sqf", [player, _thisSoldier], 1.5, true, false, "", "true", 5];
        }; 
 
    } forEach _this;  
}];