// Player

setupPlayer = compile preprocessFileLineNumbers "client\functions\setupPlayer.sqf";
spawnDialog = compile preprocessFileLineNumbers "client\dialogs\spawnDialog.sqf";
spawnPlayer = compile preprocessFileLineNumbers "client\functions\spawnPlayer.sqf";
spawnPlayerRandom = compile preprocessFileLineNumbers "client\functions\spawnPlayerRandom.sqf";
spawnPlayerOnLocation = compile preprocessFileLineNumbers "client\functions\spawnPlayerOnLocation.sqf";
gearPlayerUp = compile preprocessFileLineNumbers "client\functions\gearPlayerUp.sqf";

// Vehicles
spawnVehicle = compile preprocessFileLineNumbers "client\functions\vehicleSpawn.sqf";

// Vehicle Store
vehicleStoreFilter = compile preprocessFileLineNumbers "client\dialogs\vehicleStore\vehicleStoreFilter.sqf";
vehicleStoreSelection = compile preprocessFileLineNumbers "client\dialogs\vehicleStore\vehicleStoreSelection.sqf";
vehicleStoreVariation = compile preprocessFileLineNumbers "client\dialogs\vehicleStore\vehicleStoreVariation.sqf";
buyVehicle = compile preprocessFileLineNumbers "client\dialogs\vehicleStore\buyVehicle.sqf";
