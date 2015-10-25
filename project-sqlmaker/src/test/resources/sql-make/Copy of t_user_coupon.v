insert into t_user_coupon
(
	code,userCode, orderCode,couponCode,promotionCode,verifyCode,
	userMobilePhone,userVehiclePlateNumber,validInDays,status,description,
	createdDatetime, updatedDatetime,actived, deleted
)		
values
(
	'${code}', '${userCode}','${orderCode}', '${D}{couponCode}', '${promotionCode}', '${verifyCode}',
	'${userMobilePhone}', '${userVehiclePlateNumber}', '${validInDays}', '${status}', '${description}',
	${createdDatetime}, ${updatedDatetime}, ${actived}, ${deleted}
);
