/* ==================================================== */
/* ===      Script for Arma3 by Whiplash.           === */
/* ===  This script is open-source and can be used. === */
/* ===  See comments below for how-to-use.          === */
/* ==================================================== */

// Init script. This script initiates the mission and calls client and server scripts.

/* ==================================================== */





if (!isDedicated) then {
    
    []execVM "scripts\init_client.sqf";
    //whip_fnc_acreInit = compile preprocessFile "scripts\client_side\acre.sqf";
    
};

if (isServer) then {
    
    [] execVM "scripts\init_server.sqf";
	
};


/* ************************************************************************************************************************************************************************************* */
/* ****		END		******************************************************************************************************************************************************************** */
/* ************************************************************************************************************************************************************************************* */

finishMissionInit;

