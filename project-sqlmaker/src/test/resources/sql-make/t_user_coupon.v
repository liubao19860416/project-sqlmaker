insert into t_user_coupon
(
	code,userCode, orderCode,couponCode,promotionCode,verifyCode,
	userMobilePhone,userVehiclePlateNumber,status,description,
	createdDatetime, updatedDatetime,beginDatetime,endDatetime,actived, deleted,useToDealerCode,useToVehicleCode
)		
values
(
	'${code}','${userCode}','${orderCode}', '${D}{couponCode}', '${promotionCode}', '${verifyCode}',
	'${userMobilePhone}', '${userVehiclePlateNumber}',  '${status}', '${description}',
	'${createdDatetime}', ${updatedDatetime}, '${beginDatetime}','${endDatetime}',${actived}, ${deleted}, '${useToDealerCode}', '${useToVehicleCode}'
);
