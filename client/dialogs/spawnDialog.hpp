/*
 * The main spawn screen
 */

#include "spawnDialog_defines.hpp"

class spawnDialog
{
    idd = spawn_dialog;
    movingEnable = false;
    enableSimulation = true;
    onLoad = "uiNamespace setVariable [""UK_SpawnDialog"", _this select 0]";

    class Controls
    {
        class spawnScreen: RscFrame
        {
            idc = spawn_screen;
            text = "Spawn Selection";

            #define screenW (0.6 * 3/4)
            #define screenH 0.5
            #define screenX CENTER(1, screenW)
            #define screenY CENTER(1, screenH)

            w = screenW;
            h = screenH;
            x = screenX;
            y = screenY;
        };
        class randomSpawnButton: RscButton
        {
            idc = random_spawn_button;
            text = "Random";
            x = 0.3625 * safezoneW + safezoneX;
            y = 0.401 * safezoneH + safezoneY;
            w = 0.0458333 * safezoneW;
            h = 0.03 * safezoneH;
        };

        class spawnLocationsList: RscListBox
        {
            idc = spawn_locations_list;
            text = "Two"; //--- ToDo: Localize;
            x = 0.477083 * safezoneW + safezoneX;
            y = 0.401 * safezoneH + safezoneY;
            w = 0.0458333 * safezoneW;
            h = 0.03 * safezoneH;
        };
        class spawnLocationsButton: RscButton
        {
            idc = spawn_locations_button;
            text = "Spawn"; //--- ToDo: Localize;
            x = 0.591667 * safezoneW + safezoneX;
            y = 0.401 * safezoneH + safezoneY;
            w = 0.0458333 * safezoneW;
            h = 0.03 * safezoneH;
        };
    };
};
