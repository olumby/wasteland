if (isServer) then {
    diag_log "Server Initializing";
    [] execVM "server\init.sqf";
};

if (!isDedicated) then {
    [] execVM "client\init.sqf";
};

// Third Party Stuff
execVM "external\R3F_LOG\init.sqf";
player execVM "scripts\simpleEP.sqf";
