//This is a custom damage event handler script, created by Steel of King's Rangers for use in Exercise Screaming Seagull
//Feel free to do whatever you want with this. Learn from it and share it. 
//Credit to Lacey of 42 Commando for tons of assistance

params ["_wakerUpper", "_sleepingPerson"];

hint "Attempting wake-up";

//If the sleeping person is in a medical facility
if ([_sleepingPerson] call ace_medical_treatment_fnc_isInMedicalFacility) then {
    //If the person waking up is a medic
    if ([_wakerUpper] call ace_medical_treatment_fnc_isMedic) then {
        //Wake them up
        [_sleepingPerson, false] call ace_medical_status_fnc_setUnconsciousState;
        
        //Remove the wake up option
        removeAllActions _sleepingPerson;

        //Note: They may still need medical attention
    };
};