/*==============================================================*
 * 保养券规则 *
 *==============================================================*/
insert into t_coupon
(
	code, name, moneyAmount, color1,color2,ruleBrief,ruleDetail,validInDays,description,ruleString,
	fitToMaxKm,fitToMinKm,fitToMaxDaysUsed,fitToMinDaysUsed,fitToEmissionVolume,fitToVehicleScope,fitToCity,
	useKmValue,typeCode,beginDatetime,endDatetime,createdDatetime, updatedDatetime, actived,deleted
)		
values
(
	'c3fc8add42444e9c8e833bdf7ef98827', '保养代金券','50', '#bffea9', '#6CB153', '50元保养代金券','车主凭保养券券码，通过保养管家下单到店保养享50元抵扣。','0','保养管家2015年2月底用户调研保养券规则','',
	'10000000', '0', '100000', '0', '*',',BUK,CAD,XFL,MG-,RW-,',',310100,',
	'-1','2','2015-06-01 00:00:00', '2015-12-31 23:59:59', '2015-01-01 00:00:00', '2015-01-01 00:00:00', 1,0
);

