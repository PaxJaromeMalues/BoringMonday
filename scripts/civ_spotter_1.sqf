/* ==================================================== */
/* ===      Script for Arma3 by Whiplash.           === */
/* ===  This script is open-source and can be used. === */
/* ===  See comments below for how-to-use.          === */
/* ==================================================== */

// This is run by executing it from a waypoint (Scripted type).
// Civilian spotter script. This is run when a civilian spotter calls and alarms OPFOR.
// Initialize the variables used here in the server_init.sqf

/* ==================================================== */





var_civ_spotter_1 = true;
playSound3D ["A3\Sounds_F\sfx\radio\ambient_radio29.wss", phone_random_1, false, getPosAsl phone_random_1, 1.5, 1, 60];
playSound3D ["A3\Sounds_F\sfx\radio\ambient_radio29.wss", fobE_toc_sattelitePhone_1, false, getPosAsl fobE_toc_sattelitePhone_1, 2, 1, 20];
Sleep 5;

