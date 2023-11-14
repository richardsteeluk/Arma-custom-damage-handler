//This is a custom damage event handler script, created by Steel of King's Rangers for use in Exercise Screaming Seagull
//Feel free to do whatever you want with this. Learn from it and share it. 

//This should be placed on a playable unit to add the custom damage handler

this addEventHandler ["HitPart", { 
    {
        _x params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];

        _placeHit = _x select 5;

        if ((_placeHit select 0) == "spine1") then {
            hint "Hit spine1";
        };

    } forEach _this; 
}];