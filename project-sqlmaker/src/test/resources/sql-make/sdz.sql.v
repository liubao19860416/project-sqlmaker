/*==============================================================*
 * 劲情-SDZJQ 1.6 *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('aff7f6a42f454ef3a29ec269d64ba574', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 5000, 'km', 2.5, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('571f89a603624275b04477d390ffe18d', '${dealerCode}', 'aff7f6a42f454ef3a29ec269d64ba574', '换机油(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('9e897a0863b34c92b835fed4c35e2aa6', '${dealerCode}', '571f89a603624275b04477d390ffe18d',  'SDZGCN000600D4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZGCN000600D4';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZGCN000600D4', '${dealerCode}', '普通机油(4L)',  118.62, 118.62,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('e6a7ebe462324acfbffb7581ce692ba0', '${dealerCode}', 'aff7f6a42f454ef3a29ec269d64ba574', '换机油(4L)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('1f413dce991743ef8449313de10b1713', '${dealerCode}', 'e6a7ebe462324acfbffb7581ce692ba0',  'SDZGCE052195Z4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZGCE052195Z4';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZGCE052195Z4', '${dealerCode}', '嘉实多全合成机油(4L)',  448.00, 448.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('bc8f3eeca6ce486fbfc0ef9c0440bb75', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('dd1d4fe86bd944489014a8d038bacbdc', '${dealerCode}', 'bc8f3eeca6ce486fbfc0ef9c0440bb75', '机油滤清器(铁)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('6277feea9c9a48229a354300d4c7a8fe', '${dealerCode}', 'dd1d4fe86bd944489014a8d038bacbdc',  'SDZ03C115561B', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C115561B';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C115561B', '${dealerCode}', '机油滤清器(铁)',  88.50, 88.50,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8e32bba7e49648ceac4cb936159cdb7f', '${dealerCode}', 'bc8f3eeca6ce486fbfc0ef9c0440bb75', '机油滤清器(纸)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a96067c1a77644b6b9a36cea53c5ccb6', '${dealerCode}', '8e32bba7e49648ceac4cb936159cdb7f',  'SDZ03C115562A', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C115562A';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C115562A', '${dealerCode}', '机油滤清器(纸)',  63.88, 63.88,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('a7d6a22f432046999bd1e5f313c2653b', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 10000, 'km', 1, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8bd721a8aad64cfca8ce7cec50c77b88', '${dealerCode}', 'a7d6a22f432046999bd1e5f313c2653b', '更换空气滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('75aa6dcdb1224903998ebfa36d3e7b40', '${dealerCode}', '8bd721a8aad64cfca8ce7cec50c77b88',  'SDZ03C129620F', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C129620F';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C129620F', '${dealerCode}', '滤芯',  68.45, 68.45,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('566f554025dd4d9d807cabf6b9e81040', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 10000, 'km', 1, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b4f8ab5275da4ba3ba2c3109a2338422', '${dealerCode}', '566f554025dd4d9d807cabf6b9e81040', '更换空调滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('bd26b3814e3946eb96cf3d79b04d1c91', '${dealerCode}', 'b4f8ab5275da4ba3ba2c3109a2338422',  'SDZ6Q0819653', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ6Q0819653';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ6Q0819653', '${dealerCode}', '空调滤清器滤芯',  78.51, 78.51,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('878a253b4ebe4ca48733f29480e008ae', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 25000, 'km', 1.5, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('67b661cd26324a07b786c2ccb421b0ae', '${dealerCode}', '878a253b4ebe4ca48733f29480e008ae', '更换燃油滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('24a447303a594064a2a224284f4b04be', '${dealerCode}', '67b661cd26324a07b786c2ccb421b0ae',  'SDZ6Q0201051J', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ6Q0201051J';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ6Q0201051J', '${dealerCode}', '滤清器总成',  110.39, 110.39,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('b1b96a7910e54b5db563bb0170c27fc8', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 20000, 'km', 4, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('908906101f124f9da256a32dafd028ea', '${dealerCode}', 'b1b96a7910e54b5db563bb0170c27fc8', '更换火花塞', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('e189b9c6f35a45cd878ea4768198bd02', '${dealerCode}', '908906101f124f9da256a32dafd028ea',  'SDZ101905601B', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ101905601B';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ101905601B', '${dealerCode}', '火花塞',  47.15, 47.15,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('c7d8f5cd1f2e4805bfac66aa9a5076c6', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 35000, 'km', 7.5, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4267c812aae04e9f961f0b9547a92f92', '${dealerCode}', 'c7d8f5cd1f2e4805bfac66aa9a5076c6', '更换变速箱油', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5fe2808bbdc84764a3c5f9b32d15585c', '${dealerCode}', '4267c812aae04e9f961f0b9547a92f92',  'SDZGCN055025Z2(1L)', 'must', 6, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZGCN055025Z2(1L)';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZGCN055025Z2(1L)', '${dealerCode}', '自动变速箱传动液(1L)',  200.32, 200.32,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('4c941bd1b7cc45579189eb11dcc17f9e', '更换正时皮带及涨紧器', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZJQ----16L,', '*', 40000, 'km', 38, 'introduce9.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a4924676bba748faa50b035ddbeea5d1', '${dealerCode}', '4c941bd1b7cc45579189eb11dcc17f9e', '更换正时皮带及涨紧器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('87b3683ad7964b63ad4433392e43e1c8', '${dealerCode}', 'a4924676bba748faa50b035ddbeea5d1',  'SDZ03C109507M', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C109507M';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C109507M', '${dealerCode}', '正时皮带及涨紧器',  89.36, 89.36,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('50f5c291d4624b3aa1a762e253975257', '${dealerCode}', 'a4924676bba748faa50b035ddbeea5d1',  'SDZ1JD260849C', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1JD260849C';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1JD260849C', '${dealerCode}', '正时皮带及涨紧器',  114.08, 114.08,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a7c5062f091342b2bb38047d985d30fe', '${dealerCode}', 'a4924676bba748faa50b035ddbeea5d1',  'SDZ1JD145299A', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1JD145299A';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1JD145299A', '${dealerCode}', '正时皮带及涨紧器',  114.08, 114.08,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

/*==============================================================*
 * 朗逸-SDZLY----16L *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('2945813200594ef9a927ced117260788', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 5000, 'km', 2.5, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('9b8b57c06b8d4236b15a78bb78163afa', '${dealerCode}', '2945813200594ef9a927ced117260788', '普通机油(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('9e9661495f8a4150a2bca6171389b5ea', '${dealerCode}', '9b8b57c06b8d4236b15a78bb78163afa',  'SDZGCN000600D4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('7242b13459b2491fbb291dfac4342ac1', '${dealerCode}', '2945813200594ef9a927ced117260788', '嘉实多全合成机油(4L)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d4deb87d3b13405d9ef608f36e05ee95', '${dealerCode}', '7242b13459b2491fbb291dfac4342ac1',  'SDZGCE052195Z4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('e49c171ed9044e8da4cb22a0c1ab7bdf', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('3e7e17db11e84709a9314e3a1f1317c8', '${dealerCode}', 'e49c171ed9044e8da4cb22a0c1ab7bdf', '机油滤清器(纸)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ca96a2cc047a47ad80a2f08af4d1d359', '${dealerCode}', '3e7e17db11e84709a9314e3a1f1317c8',  'SDZ03C115562A', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('87d85bc5b6034fcea48b1cbd44bcaf7a', '${dealerCode}', 'e49c171ed9044e8da4cb22a0c1ab7bdf', '机油滤清器(铁)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('02da7019108e4dd09920a8d3661d6a19', '${dealerCode}', '87d85bc5b6034fcea48b1cbd44bcaf7a',  'SDZ03C115561B', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('2743890a4f1044099e990482dc18c56c', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 10000, 'km', 1, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ba3fcb5d180b41e6a773278928bf5aa9', '${dealerCode}', '2743890a4f1044099e990482dc18c56c', '滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('3de99418a484424d91777399adceeaaf', '${dealerCode}', 'ba3fcb5d180b41e6a773278928bf5aa9',  'SDZ036129620M', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ036129620M';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ036129620M', '${dealerCode}', '滤芯',  52.65, 52.65,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('d2b995d260f345e6ae1dca930a3bb160', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 10000, 'km', 1, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('28c9c0183e254fed8a8537ed2c1c63f0', '${dealerCode}', 'd2b995d260f345e6ae1dca930a3bb160', '空调滤清器滤芯(1)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5760e4aec48641f1b2a98cf51b5ec787', '${dealerCode}', '28c9c0183e254fed8a8537ed2c1c63f0',  'SDZ1J0819644A', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1J0819644A';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1J0819644A', '${dealerCode}', '空调滤清器滤芯(1)',  63.88, 63.88,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('cf4ed29e2cea475ab92091bbc0dea16c', '${dealerCode}', 'd2b995d260f345e6ae1dca930a3bb160', '空调滤清器滤芯(2)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4bf4aa9222b9492aa18ccd0996292595', '${dealerCode}', 'cf4ed29e2cea475ab92091bbc0dea16c',  'SDZ1J0819644A（91.26）', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1J0819644A（91.26）';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1J0819644A（91.26）', '${dealerCode}', '空调滤清器滤芯(2)',  91.26, 91.26,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('2b9863cfcbba44b882daf1d6f729df96', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 30000, 'km', 1.5, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d28847173fc540a4890165c7111d8057', '${dealerCode}', '2b9863cfcbba44b882daf1d6f729df96', '滤清器总成(1)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('50521b3703c74428ad31d794212c05fa', '${dealerCode}', 'd28847173fc540a4890165c7111d8057',  'SDZ180201511', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ180201511';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ180201511', '${dealerCode}', '滤清器总成(1)',  33.46, 33.46,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('e2e23d8b795b4f9a80e7b207c94c5bb2', '${dealerCode}', '2b9863cfcbba44b882daf1d6f729df96', '滤清器总成(2)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a15b223703ec4c9c919185034952328f', '${dealerCode}', 'e2e23d8b795b4f9a80e7b207c94c5bb2',  'SDZZ00218002', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZZ00218002';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZZ00218002', '${dealerCode}', '滤清器总成(2)',  33.46, 33.46,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('6acda2f5ac724db4a1da69a4307b3efa', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 25000, 'km', 4, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('047e6907f9494bccb715142fd6c932a8', '${dealerCode}', '6acda2f5ac724db4a1da69a4307b3efa', '火花塞(1)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5901fc050ac04e6f9c6727f3e70255b8', '${dealerCode}', '047e6907f9494bccb715142fd6c932a8',  'SDZ101905601B', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('734d8e85567b4364b3eece7638743581', '${dealerCode}', '6acda2f5ac724db4a1da69a4307b3efa', '火花塞(2)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('eed05f9213ff47ef9510214c5b09ad1b', '${dealerCode}', '734d8e85567b4364b3eece7638743581',  'SDZ101905601F', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ101905601F';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ101905601F', '${dealerCode}', '火花塞(2)',  65.81, 65.81,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('585933fb185f4c84a6f5297af25bb1a3', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 60000, 'km', 7.5, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b76e810c7bc24e79a102bcc6f1884600', '${dealerCode}', '585933fb185f4c84a6f5297af25bb1a3', '自动变速箱传动液 (1L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('56d5c35ba00446b6a0a75b896979e3fd', '${dealerCode}', 'b76e810c7bc24e79a102bcc6f1884600',  'SDZGCN055025Z2(1L)', 'must', 6, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('b285cabb177747a2a6d1a4bdad179c52', '更换正时皮带及涨紧器', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----16L,', '*', 80000, 'km', 8, 'introduce9.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('483d880377dc4c47a7c0733c86206999', '${dealerCode}', 'b285cabb177747a2a6d1a4bdad179c52', '正时皮带及涨紧器(1)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('dff9ad8a0b1d403791e9274f47956596', '${dealerCode}', '483d880377dc4c47a7c0733c86206999',  'SDZ03C109158B', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C109158B';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C109158B', '${dealerCode}', '正时皮带及涨紧器(1)',  220.54, 220.54,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b9d6c7a994f742eab34f5ea00bf917b3', '${dealerCode}', 'b285cabb177747a2a6d1a4bdad179c52', '正时皮带及涨紧器(2)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4da17912651444d1a4d4a4f7c1348843', '${dealerCode}', 'b9d6c7a994f742eab34f5ea00bf917b3',  'SDZ03C109507R', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C109507R';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C109507R', '${dealerCode}', '正时皮带及涨紧器(2)',  174.79, 174.79,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('e41003471b5b41cfbd02d837728e6b1e', '${dealerCode}', 'b285cabb177747a2a6d1a4bdad179c52', '正时皮带及涨紧器(3)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('aa145dcfde7148d0bd893a1b6dd4ea4d', '${dealerCode}', 'e41003471b5b41cfbd02d837728e6b1e',  'SDZ1JD145299A（135.56）', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1JD145299A（135.56）';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1JD145299A（135.56）', '${dealerCode}', '正时皮带及涨紧器(3)',  135.56, 135.56,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('163f858c1e604d138c2bb82c7d0f25b6', '${dealerCode}', 'b285cabb177747a2a6d1a4bdad179c52', '正时皮带及涨紧器(4)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('cae35cdc1e3044378a0acaf0ea4f7253', '${dealerCode}', '163f858c1e604d138c2bb82c7d0f25b6',  'SDZ1JD260849C', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

/*==============================================================*
 * 朗逸-SDZLY----20L *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('278e7546443c48c18ad3da57d02f5e55', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 5000, 'km', 2.5, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5147d5abafa24ca2aa00087c7033c395', '${dealerCode}', '278e7546443c48c18ad3da57d02f5e55', '普通机油(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('817201e64a3747959a260c291c5de77b', '${dealerCode}', '5147d5abafa24ca2aa00087c7033c395',  'SDZGCN000600D4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8a624e9bd08b4f3ab8268985e2323b18', '${dealerCode}', '278e7546443c48c18ad3da57d02f5e55', '嘉实多全合成机油(4L)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('7c48c9200f3f4a2ab7e6212f5dbf8c1f', '${dealerCode}', '8a624e9bd08b4f3ab8268985e2323b18',  'SDZGCE052195Z4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('98df3ede9cd243019757f8ec0d2853e6', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4b187602a0f8455482f5a693a04a0d8b', '${dealerCode}', '98df3ede9cd243019757f8ec0d2853e6', '机油滤清器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4fa50aae0e6347e481d090f7c5c31811', '${dealerCode}', '4b187602a0f8455482f5a693a04a0d8b',  'SDZ06A115561E', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ06A115561E';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ06A115561E', '${dealerCode}', '机油滤清器',  27.38, 27.38,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('4959fb259cba4bc2bf4ec8edafadc7e8', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 10000, 'km', 1, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4c668880f4ef4b8888aabf19553ff41b', '${dealerCode}', '4959fb259cba4bc2bf4ec8edafadc7e8', '滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('30b301237e074f808d28d1e6dcfe77a0', '${dealerCode}', '4c668880f4ef4b8888aabf19553ff41b',  'SDZ1J0129620A', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1J0129620A';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1J0129620A', '${dealerCode}', '滤芯',  54.76, 54.76,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('646c501d98de4b219a5ceb45282e871d', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 10000, 'km', 1, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('6f5d28c2df1d4707816f152d86afbfc3', '${dealerCode}', '646c501d98de4b219a5ceb45282e871d', '空调滤清器滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8acf3a04e9e44381930988edf32ab9a5', '${dealerCode}', '6f5d28c2df1d4707816f152d86afbfc3',  'SDZ1J0819644A（91.26）', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('78db8f41b49d4b148a922a2b8b2ed8b7', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 30000, 'km', 1.5, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4cd076c3981c4725a8acb01c3b0b9e7f', '${dealerCode}', '78db8f41b49d4b148a922a2b8b2ed8b7', '滤清器总成', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ed9c8b2be5c648faa6dbeac1d87c0d25', '${dealerCode}', '4cd076c3981c4725a8acb01c3b0b9e7f',  'SDZ180201511', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('4c9f9e60fd4b48768b4fe990dad6e1bc', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 25000, 'km', 4, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d9078e7ad09640e9abe8be49d916c7df', '${dealerCode}', '4c9f9e60fd4b48768b4fe990dad6e1bc', '火花塞', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b871a758865f4eee93953534a651b9e1', '${dealerCode}', 'd9078e7ad09640e9abe8be49d916c7df',  'SDZ101905601B', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('4589f4031faf4fe4bdcf6c6409ccf94b', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 60000, 'km', 7.5, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('64d07c36a10a4efc9db0c5d857b3da07', '${dealerCode}', '4589f4031faf4fe4bdcf6c6409ccf94b', '自动变速箱传动液 (1L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('865b83d8a4f6460aa6757f4e68685784', '${dealerCode}', '64d07c36a10a4efc9db0c5d857b3da07',  'SDZGCN055025Z2(1L)', 'must', 6, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('a101d27cfceb4ed895b2b7f8449a3977', '更换正时皮带及涨紧器', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY----20L,', '*', 80000, 'km', 8, 'introduce9.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('0d0310051a8544a6bb704e298341f02f', '${dealerCode}', 'a101d27cfceb4ed895b2b7f8449a3977', '正时皮带及涨紧器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('82f7509438054c36a37f088a443866c2', '${dealerCode}', '0d0310051a8544a6bb704e298341f02f',  'SDZ06A109119M', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ06A109119M';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ06A109119M', '${dealerCode}', '正时皮带及涨紧器(1)',  137.45, 137.45,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('bf709b487df14020a2a849cf6bb024db', '${dealerCode}', 'a101d27cfceb4ed895b2b7f8449a3977', '正时皮带及涨紧器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d4c2c56a52b242c5aa55762419557a7e', '${dealerCode}', 'bf709b487df14020a2a849cf6bb024db',  'SDZ06A109479F', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ06A109479F';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ06A109479F', '${dealerCode}', '正时皮带及涨紧器(2)',  442.41, 442.41,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('cd959e82aa514ee09cf4504561c5c8b4', '${dealerCode}', 'a101d27cfceb4ed895b2b7f8449a3977', '正时皮带及涨紧器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('9825489e1d984a2da89225af22c892c4', '${dealerCode}', 'cd959e82aa514ee09cf4504561c5c8b4',  'SDZ06A260849B', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ06A260849B';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ06A260849B', '${dealerCode}', '正时皮带及涨紧器(3)',  85.00, 85.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('f5d2a5a70aa248359796ac9c75e07017', '${dealerCode}', 'a101d27cfceb4ed895b2b7f8449a3977', '正时皮带及涨紧器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8cfd2cd9c86e4ff491c30d37436ceb22', '${dealerCode}', 'f5d2a5a70aa248359796ac9c75e07017',  'SDZ06A903315M', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ06A903315M';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ06A903315M', '${dealerCode}', '正时皮带及涨紧器(4)',  171.63, 171.63,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

/*==============================================================*
 * 朗逸-SDZLY--12--- *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('27cc42d30f3646e79961447625e1c67d', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 5000, 'km', 2.5, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('045c1b56c3874ad989ed3f9ac0a28b72', '${dealerCode}', '27cc42d30f3646e79961447625e1c67d', '普通机油(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('11ee44ba6df34b58b322994d96fde8ce', '${dealerCode}', '045c1b56c3874ad989ed3f9ac0a28b72',  'SDZGCN000600D4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('6f03fa493ac1427481aee4c8c5f51f5f', '${dealerCode}', '27cc42d30f3646e79961447625e1c67d', '嘉实多全合成机油(4L)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d8ed320976654edea6ac422aa136a245', '${dealerCode}', '6f03fa493ac1427481aee4c8c5f51f5f',  'SDZGCE052195Z4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('c98d1aed80c54f43a404b6f5b8aebda2', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('85810b66f750435e9e01ca7daeb6567e', '${dealerCode}', 'c98d1aed80c54f43a404b6f5b8aebda2', '机油滤清器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('2a62855208be46189a2a2f665941b554', '${dealerCode}', '85810b66f750435e9e01ca7daeb6567e',  'SDZ04E115561C', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04E115561C';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04E115561C', '${dealerCode}', '机油滤清器',  44.45, 44.45,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('edd18d49dcfc4498ac8d3d64c6d55e4e', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 10000, 'km', 1, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8aeb31f102c0481282755140f56db1a1', '${dealerCode}', 'edd18d49dcfc4498ac8d3d64c6d55e4e', '滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('c1c38954ca554c0299d4bbf584808de0', '${dealerCode}', '8aeb31f102c0481282755140f56db1a1',  'SDZ04E129620C', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04E129620C';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04E129620C', '${dealerCode}', '滤芯',  68.97, 68.97,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('0ef5bb5be3e0468f91c0152cba9d45dc', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 10000, 'km', 1, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('89c805c4eb4a4edea7437f8cb6b15e57', '${dealerCode}', '0ef5bb5be3e0468f91c0152cba9d45dc', '空调滤清器滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('26ac1105b10140dda5194dccc5e43500', '${dealerCode}', '89c805c4eb4a4edea7437f8cb6b15e57',  'SDZ6R0819653', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ6R0819653';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ6R0819653', '${dealerCode}', '空调滤清器滤芯',  100.10, 100.10,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('437bc625d1ad4100a78b88b440805bdb', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 30000, 'km', 1.5, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('2eeefc0ade6a4707b8e0ca0469f608c0', '${dealerCode}', '437bc625d1ad4100a78b88b440805bdb', '滤清器总成', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4ee9fd1b165140ab9728bb09450f1b44', '${dealerCode}', '2eeefc0ade6a4707b8e0ca0469f608c0',  'SDZ180201511', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('45fbafcd615d4e98807a5549d5dfd8b8', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 25000, 'km', 4, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('2de70d8a2b9d49968e3aecd71bec190d', '${dealerCode}', '45fbafcd615d4e98807a5549d5dfd8b8', '火花塞', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('e0f8052f673e4a779940e7fc1f3be139', '${dealerCode}', '2de70d8a2b9d49968e3aecd71bec190d',  'SDZ04C905616', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04C905616';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04C905616', '${dealerCode}', '火花塞',  55.52, 55.52,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('626c889f055d4af49a742f1d05ea917f', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 60000, 'km', 7.5, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('3ccba89bee8241c69171a4d1acfba038', '${dealerCode}', '626c889f055d4af49a742f1d05ea917f', '自动变速箱传动液 (1L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('77f7d0eb849f4c509932a40997e514fb', '${dealerCode}', '3ccba89bee8241c69171a4d1acfba038',  'SDZGCN055025Z2(1L)', 'must', 6, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('ffa08c81c9c44e66b507d526a07d442f', '更换正时皮带及涨紧器', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--12---,', '*', 80000, 'km', 8, 'introduce9.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('9b8b77ea66bc4a8b88672bb01d067a66', '${dealerCode}', 'ffa08c81c9c44e66b507d526a07d442f', '正时皮带及涨紧器(1)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ee6a7393d6c84b2a9658f04a0cd52a45', '${dealerCode}', '9b8b77ea66bc4a8b88672bb01d067a66',  'SDZ04E109119H', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04E109119H';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04E109119H', '${dealerCode}', '正时皮带及涨紧器(1)',  141.00, 141.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('47c6d7dbec244b60a17d6abb5f0db4e1', '${dealerCode}', 'ffa08c81c9c44e66b507d526a07d442f', '正时皮带及涨紧器(2)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('da0e05f57ae844c1bed28057479e5194', '${dealerCode}', '47c6d7dbec244b60a17d6abb5f0db4e1',  'SDZ04E109479C', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04E109479C';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04E109479C', '${dealerCode}', '正时皮带及涨紧器(2)',  442.58, 442.58,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('1b34db746b57460fa0262e6ced55f0b0', '${dealerCode}', 'ffa08c81c9c44e66b507d526a07d442f', '正时皮带及涨紧器(3)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a67ba33a2b8c474db2390e8d8739c2c4', '${dealerCode}', '1b34db746b57460fa0262e6ced55f0b0',  'SDZ04E145933E', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04E145933E';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04E145933E', '${dealerCode}', '正时皮带及涨紧器(3)',  79.70, 79.70,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a0713733e1d74fbe88255a38de93b350', '${dealerCode}', 'ffa08c81c9c44e66b507d526a07d442f', '正时皮带及涨紧器(4)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('7220179f75b24f11b9e38a3b5410a0aa', '${dealerCode}', 'a0713733e1d74fbe88255a38de93b350',  'SDZ04E145299P', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ04E145299P';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ04E145299P', '${dealerCode}', '正时皮带及涨紧器(4)',  133.91, 133.91,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

/*==============================================================*
 * 朗逸-SDZLY--SI14T *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('f8d4a295beed4dd4b72a76f71632f69a', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 5000, 'km', 2.5, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('0e64a32010fd4c1fb156ef1762a28752', '${dealerCode}', 'f8d4a295beed4dd4b72a76f71632f69a', '普通机油(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('f7ccdc39bdc44ac09eb0a75be3c49bd9', '${dealerCode}', '0e64a32010fd4c1fb156ef1762a28752',  'SDZGCN052167Z4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZGCN052167Z4';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZGCN052167Z4', '${dealerCode}', '普通机油(4L)',  204.05, 204.05,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('fd8105cf4f864f59b21f32630bbac8e8', '${dealerCode}', 'f8d4a295beed4dd4b72a76f71632f69a', '嘉实多全合成机油(4L)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('696c815080754de59a3a931b1b16b4fd', '${dealerCode}', 'fd8105cf4f864f59b21f32630bbac8e8',  'SDZGCE052195Z4', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('7b50e2b052d642f6b4b6887f63d18d4b', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('3a79c75d47464d9184942ff44fbf69d2', '${dealerCode}', '7b50e2b052d642f6b4b6887f63d18d4b', '机油滤清器', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('7b7b14dc478a4f878a2f7421fd80e8ba', '${dealerCode}', '3a79c75d47464d9184942ff44fbf69d2',  'SDZ03C115561E', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C115561E';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C115561E', '${dealerCode}', '机油滤清器',  85.64, 85.64,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('e982ed971b7145f08be2d15af351758b', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 10000, 'km', 1, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8b80b399e8d3485e9e0245933050a36c', '${dealerCode}', 'e982ed971b7145f08be2d15af351758b', '滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d6b2aa6145544fb38321c1b5297d7d0b', '${dealerCode}', '8b80b399e8d3485e9e0245933050a36c',  'SDZ180129620', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ180129620';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ180129620', '${dealerCode}', '滤芯',  54.76, 54.76,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('2d468febc6ef4c7f93d55762d1f50fdc', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 10000, 'km', 1, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('726f9be70a3e415ab77c084ad8475994', '${dealerCode}', '2d468febc6ef4c7f93d55762d1f50fdc', '空调滤清器滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('06106cd024e546d8a55cf52cd94bc8a5', '${dealerCode}', '726f9be70a3e415ab77c084ad8475994',  'SDZ1J0819644A（91.26）', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('65ba284ee90c4b7b9b51b7368510d1d9', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 30000, 'km', 1.5, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('03a4ec2db00549bda5dea1da121ee2bc', '${dealerCode}', '65ba284ee90c4b7b9b51b7368510d1d9', '滤清器总成', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('f05fc5a11943439e82297b06c5e8c666', '${dealerCode}', '03a4ec2db00549bda5dea1da121ee2bc',  'SDZ1K0201051K', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1K0201051K';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1K0201051K', '${dealerCode}', '滤清器总成',  110.39, 110.39,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('a5224cc8bf22495f85a257de14adc5b8', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 25000, 'km', 4, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('3a3e754484b34797b943cccf2a033e2d', '${dealerCode}', 'a5224cc8bf22495f85a257de14adc5b8', '火花塞', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('220e482e2afd453e870ebefff3923b88', '${dealerCode}', '3a3e754484b34797b943cccf2a033e2d',  'SDZ03C905601', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C905601';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C905601', '${dealerCode}', '火花塞',  76.38, 76.38,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('e8e2295f8cb84610893d471b17ffafa3', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 60000, 'km', 7.5, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('e1f10b8438844ecaac3afe6887add657', '${dealerCode}', 'e8e2295f8cb84610893d471b17ffafa3', '自动变速箱传动液 (1L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('6c71cbbc83294c90b57245073f4c06fa', '${dealerCode}', 'e1f10b8438844ecaac3afe6887add657',  'SDZGCN052512Z2(1L)', 'must', 6, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZGCN052512Z2(1L)';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZGCN052512Z2(1L)', '${dealerCode}', '自动变速箱传动液(1L)',  65.87, 65.87,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('c455d6d0a32e465f8ff5a5ef8ca8910c', '更换正时皮带及涨紧器', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',SDZLY--SI14T,', '*', 80000, 'km', 8, 'introduce9.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('02654ad1e1d2415ab0897c35e2a8ce34', '${dealerCode}', 'c455d6d0a32e465f8ff5a5ef8ca8910c', '正时皮带及涨紧器(1)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d2bc12b97ba54f6195e40f0f12f09ef8', '${dealerCode}', '02654ad1e1d2415ab0897c35e2a8ce34',  'SDZ03C109158B', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a2ca4294a45646f3b87308fb749cfc96', '${dealerCode}', 'c455d6d0a32e465f8ff5a5ef8ca8910c', '正时皮带及涨紧器(2)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('1aeebb62cac54e979b47acf07c411fb8', '${dealerCode}', 'a2ca4294a45646f3b87308fb749cfc96',  'SDZ03C109507R', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('972732d3cc2b4f298075152fd98c22b8', '${dealerCode}', 'c455d6d0a32e465f8ff5a5ef8ca8910c', '正时皮带及涨紧器(3)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('269654e28db6417e96f5cc74e7b5a069', '${dealerCode}', '972732d3cc2b4f298075152fd98c22b8',  'SDZ03C145299Q', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ03C145299Q';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ03C145299Q', '${dealerCode}', '正时皮带及涨紧器(3)',  753.97, 753.97,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('091db2f315644e149598633f588a5c8c', '${dealerCode}', 'c455d6d0a32e465f8ff5a5ef8ca8910c', '正时皮带及涨紧器(4)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('37df92cf8e4048e8b216283f6e84bf95', '${dealerCode}', '091db2f315644e149598633f588a5c8c',  'SDZ1JD260849D', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='SDZ1JD260849D';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('SDZ1JD260849D', '${dealerCode}', '正时皮带及涨紧器(4)',  114.08, 114.08,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

