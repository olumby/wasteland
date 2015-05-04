/*
 * Open the vehicle store, should be called from addAction.
 * Args:
 *     string    store name
 */

_storeName = _this select 3 select 0;

#include "vehicleStore_defines.hpp"

createDialog "VehicleStore";
vehicleStoreDialogOpen = true;

_display = uiNamespace getVariable "UK_VehicleStoreDialog";

_vehicleList = _display displayCtrl vehicle_list;
_vehicleListFilter = _display displayCtrl vehicle_list_filter;
_buyButton = _display displayCtrl buy_vehicle_button;

_buyButton ctrlEnable false;

{
    _row = _vehicleListFilter lbAdd _x;
    _vehicleListFilter lbSetData [_row, _x];
} foreach ["All","Car","Utility","Armored","Air","Autonomous"];

{
    _class = _x select 0;
    _picture = getText (configFile >> "cfgVehicles" >> _class >> "picture");
    _name = getText (configFile >> "cfgVehicles" >> _class >> "displayName");
    _price = str (_x select 1);

    _row = _vehicleList lnbAddRow["", _price, _name];
    _vehicleList lnbSetPicture[[_row,0], _picture];
    _vehicleList lnbSetData[[_row, 0], _class];
    _vehicleList lnbSetData[[_row, 1], _price];
    _vehicleList lnbSetData[[_row, 2], _storeName];
} forEach (call vehicleStoreContent);

_vehicleListFilter lbSetCurSel 0;
