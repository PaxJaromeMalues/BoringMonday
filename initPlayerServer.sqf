/* ==================================================== */
/* ===      Script for Arma3 by Whiplash.           === */
/* ===  This script is open-source and can be used. === */
/* ===  See comments below for how-to-use.          === */
/* ==================================================== */

// Credits to Pax for most of this.

/* ==================================================== */





if ((paramsArray select 2) == 1) then {
    
    {
        if (!isnull (getassignedcuratorunit _x)) then {
            _unit = getassignedcuratorunit _x;
            if (isnull (getassignedcuratorlogic _unit)) then {
                unassignCurator _x;
                sleep 1;
                _unit assignCurator _x;
            
//                _x addCuratorEditableObjects [allMissionObjects "Man", true];
//                _x addCuratorEditableObjects [allUnits "ALL", true];
//                _x addCuratorEditableObjects [[ali], true];
//                _x addCuratorAddons activatedAddons;
            };
        };
    } foreach allcurators;

    {
        _x addCuratorEditableObjects [allMissionObjects "Man", true];
        _x addCuratorEditableObjects [allMissionObjects "Car", true];
        _x addCuratorAddons ["JO_Insurgent","A3_Modules_F_Curator_Misc","ace_explosives","A3_Structures_F_Wrecks","UK3CB_BAF_Units_MTP"];
    } forEach allCurators;
    
};