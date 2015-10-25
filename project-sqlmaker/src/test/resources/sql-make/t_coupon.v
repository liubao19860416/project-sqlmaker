insert into t_coupon
(
	code, name, moneyAmount, color1,color2,ruleBrief,ruleDetail,validInDays,description,ruleString,
	fitToMaxKm,fitToMinKm,fitToMaxDaysUsed,fitToMinDaysUsed,fitToEmissionVolume,fitToVehicleScope,fitToCity,
	useKmValue,typeCode,beginDatetime,endDatetime,createdDatetime, updatedDatetime, actived,deleted
)		
values
(
	'${code}', '${name}','${moneyAmount}', '${color1}', '${color2}', '${ruleBrief}','${ruleDetail}','${validInDays}','${description}','${ruleString}',
	'${fitToMaxKm}', '${fitToMinKm}', '${fitToMaxDaysUsed}', '${fitToMinDaysUsed}', '${fitToEmissionVolume}','${fitToVehicleScope}','${fitToCity}',
	'${useKmValue}','${typeCode}','${beginDatetime}', '${endDatetime}', '${createdDatetime}', '${updatedDatetime}', ${actived},${deleted}
);
