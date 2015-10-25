insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('${code}', '${name}', '${D}{dealerCode}', ${fitToMinKm}, ${fitToMaxKm}, ${fitToMinDaysUsed}, ${fitToMaxDaysUsed}, '${fitToEmissionVolume}', '${fitToVehicleScope}', '${fitToCity}', ${periodValue}, '${periodUnit}', ${laborHour}, '${docURL}', '${description}', ${actived}, ${deleted}, ${createdDatetime}, ${updatedDatetime});
