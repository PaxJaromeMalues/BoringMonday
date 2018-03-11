/* ==================================================== */
/* ===      Script for Arma3 by Whiplash.           === */
/* ===  This script is open-source and can be used. === */
/* ===  See comments below for how-to-use.          === */
/* ==================================================== */

// Initiates client-side scripts and sets other things like viewdistance etc.
// JIP and non-JIP are defined separately.

/* ==================================================== */





/* ************************************************************************************************************************************************************************************* */
/* ****		Client Commands	    ******************************************************************************************************************************************************** */
/* ************************************************************************************************************************************************************************************* */


// ***************************** //
// ****		non-JIP		******** // ********************************************************************************************************************************** //
// ***************************** //

if (!(isNull player)) then {

	//Set View Distance
	setViewDistance 4000;
    
	// Radios!
	0 fadeRadio 0;		//mute in-game radio commands
	enableRadio false;
	enableSentences false;
		
	//Execute Game Scripts
	nonJIP = [] execVM "briefing.sqf";
//	nonJIP = [] execVM "scripts\acre_init.sqf";
	nonJIP = [] execVM "scripts\client_side\acre.sqf";
};

// ***************************** //
// ****		JIP		************ // ********************************************************************************************************************************** //
// ***************************** //

if (!isServer && isNull player) then {
	
	waitUntil {!isNull player};

	//Set View Distance
	setViewDistance 4000;
	
	//Misc. Radio/Weapon
	0 fadeRadio 0;		//mute in-game radio commands
	enableRadio false;
	enableSentences false;
		
	//Execute Game Scripts
	JIP = [] execVM "briefing.sqf";
//	JIP = [] execVM "scripts\acre_init.sqf";
	JIP = [] execVM "scripts\client_side\acre.sqf";
	JIP = [] execVM "scripts\initTeleportToSL.sqf";		// uncomment if teleport is needed
};


// ***************************** //
// ****		Scripts		******** // ********************************************************************************************************************************** //
// ***************************** //

// Things to be executed by everyone go below here
[] execVM "scripts\client_side\addaction_init.sqf";
[] execVM "scripts\server_side\killerchair.sqf";


// ***************************** //
// ****		END		************ // ********************************************************************************************************************************** //
// ***************************** //
