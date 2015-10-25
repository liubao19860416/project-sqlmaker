insert into t_dealer_vehicle
(  dealerCode,      vehicleCode,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
( '${D}{dealerCode}', '${vehicleCode}', ${actived}, ${deleted}, ${createdDatetime}, ${updatedDatetime});
