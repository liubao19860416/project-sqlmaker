/*==============================================================*
 * 昂科威 2.0T *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('9330b071f52849a9bf58ba02ad9ae5fb', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 5000, 'km', 2, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('651bae7c1d00477c912cbe3beff55936', '${dealerCode}', '9330b071f52849a9bf58ba02ad9ae5fb', '美孚机油 (6L)', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('7568908406764cef920c516d0a8a2270', '${dealerCode}', '651bae7c1d00477c912cbe3beff55936',  'BUK93736606', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93736606';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93736606', '${dealerCode}', '美孚机油 4L',  458, 458,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('8989f896593b416990dde4a92ed5f786', '${dealerCode}', '651bae7c1d00477c912cbe3beff55936',  'BUK93736605', 'must', 2, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93736605';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93736605', '${dealerCode}', '美孚机油 1L',  117, 117,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('453c58affb2f4a0eb468632308154017', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('0da9376882a145e092974fe3d581621c', '${dealerCode}', '453c58affb2f4a0eb468632308154017', '机油滤清器总成', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('db40b509b8b54c47ab295f53041849bd', '${dealerCode}', '0da9376882a145e092974fe3d581621c',  'BUK12640445', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK12640445';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK12640445', '${dealerCode}', '机油滤清器总成',  112, 112,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('5b64445a0add419d9dbfd84b28830ddd', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 10000, 'km', 0.5, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('55ef229d615546338adcf63773561b7c', '${dealerCode}', '5b64445a0add419d9dbfd84b28830ddd', '空气滤芯', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('051668de22454b11baa97e5a22e29870', '${dealerCode}', '55ef229d615546338adcf63773561b7c',  'BUK22971580', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK22971580';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK22971580', '${dealerCode}', '空气滤芯',  98, 98,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('f09a0dc04d254bf7a84973bbf8358525', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 10000, 'km', 0.5, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('832a622007bd4235be3d6868d67c2169', '${dealerCode}', 'f09a0dc04d254bf7a84973bbf8358525', '空调滤芯', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('7929857a5c5d44aea9e9aaeb25c69a3b', '${dealerCode}', '832a622007bd4235be3d6868d67c2169',  'BUK13356916', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK13356916';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK13356916', '${dealerCode}', '空调滤芯',  234, 234,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('ce35681a20f64664a111c58f65cc2b1d', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 10000, 'km', 1, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('25586c6755ec46e9a16bafd19592367b', '${dealerCode}', 'ce35681a20f64664a111c58f65cc2b1d', '汽油滤芯', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5b7326b24ff44814a044db2e21f299a4', '${dealerCode}', '25586c6755ec46e9a16bafd19592367b',  'BUK22821145', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK22821145';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK22821145', '${dealerCode}', '汽油滤芯',  77, 77,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('ff95d70c3f3a491e9403694b09e64ffe', '更换转向助力液', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 50000, 'km', 2, 'introduce6.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4aa07d6a631b4c6690659eacd09b9800', '${dealerCode}', 'ff95d70c3f3a491e9403694b09e64ffe', '动力转向液', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('2cdd2318e350491c8660e352ff0ec9e4', '${dealerCode}', '4aa07d6a631b4c6690659eacd09b9800',  'BUK93735412', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93735412';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93735412', '${dealerCode}', '动力转向液',  51, 51,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('8963eaba93204ec78b4bd036bcc86e18', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 30000, 'km', 2, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('33da37ea1a144796be6c9f5fc76ca50d', '${dealerCode}', '8963eaba93204ec78b4bd036bcc86e18', '火花塞', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d62e3ae65eaa4b98b2eee0b39e96300a', '${dealerCode}', '33da37ea1a144796be6c9f5fc76ca50d',  'BUK12647827', 'checked', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK12647827';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK12647827', '${dealerCode}', '火花塞',  34, 34,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('e4269728982943f7ab9e3f0213874c4e', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKAKW---20T,', '*', 80000, 'km', 2, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('1d57be0362dc4de7ab24903d75a58a16', '${dealerCode}', 'e4269728982943f7ab9e3f0213874c4e', '自动变速箱传动液（5L）', 1, 1, 1, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('d8730676ac44465f90803e9c6c7002db', '${dealerCode}', '1d57be0362dc4de7ab24903d75a58a16',  'BUK93735412（198）', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93735412（198）';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93735412（198）', '${dealerCode}', '自动变速箱传动液 4L',  198, 198,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ba318ca603a546819645b3c781857fb7', '${dealerCode}', '1d57be0362dc4de7ab24903d75a58a16',  'BUK93735413', 'checked', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93735413';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93735413', '${dealerCode}', '自动变速箱传动液 1L',  51, 51,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

/*==============================================================*
 * 林荫大道-BUKLDD-3.6L *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('689a7d448f0e4521aac4eae8abf90540', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 5000, 'km', 2, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('1032763894c04addb80a6d9c9a71dd51', '${dealerCode}', '689a7d448f0e4521aac4eae8abf90540', '换机油(4L+1L*3)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('95ee3065cd6e40dfb5ee9e11ff7cd200', '${dealerCode}', '1032763894c04addb80a6d9c9a71dd51',  'BUK93736605', 'must', 3, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('803ebb40c02b43a69899502d2389a497', '${dealerCode}', '1032763894c04addb80a6d9c9a71dd51',  'BUK93736606', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('364d116657604590acf82e507234eac2', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('c9d9f65050ca4eaeb3f9766f0154a0c8', '${dealerCode}', '364d116657604590acf82e507234eac2', '更换机油滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('72d50d8ea6294c17bf162d67e8d57cd3', '${dealerCode}', 'c9d9f65050ca4eaeb3f9766f0154a0c8',  'BUK25177917', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK25177917';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK25177917', '${dealerCode}', '机油滤清器总成',  110.00, 110.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('01e0bb47aa8f4028be1164666dbaf071', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 10000, 'km', 0.5, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('24a757296567450a938d16ecbafc1af0', '${dealerCode}', '01e0bb47aa8f4028be1164666dbaf071', '更换空气滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4df83221808142979a738aea7da04e04', '${dealerCode}', '24a757296567450a938d16ecbafc1af0',  'BUK92066873', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK92066873';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK92066873', '${dealerCode}', '空气滤芯',  390.00, 390.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('48d35377cbbf4ccf965a518f6fe2b004', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 10000, 'km', 0.5, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5b909730fe4440aab231faed14468e96', '${dealerCode}', '48d35377cbbf4ccf965a518f6fe2b004', '更换空调滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('c6d7f2ccf8d34666b38263704e662e5d', '${dealerCode}', '5b909730fe4440aab231faed14468e96',  'BUK92184248', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK92184248';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK92184248', '${dealerCode}', '空调滤清器滤芯',  156.00, 156.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('91e1d61a1db94d6b8f26a47b66e75359', '更换转向助力液', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 50000, 'km', 2, 'introduce6.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('07b4236cd0d94da98c1531092c40b6d6', '${dealerCode}', '91e1d61a1db94d6b8f26a47b66e75359', '更换转向助力液', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('01e997e40f264c91a4debccb6ed0950c', '${dealerCode}', '07b4236cd0d94da98c1531092c40b6d6',  'BUK93735412', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('607c8975d0804c95956641be9e15fb07', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 30000, 'km', 2, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('456f74731f424b8f97cb072c5697e8f6', '${dealerCode}', '607c8975d0804c95956641be9e15fb07', '更换火花塞', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ef912ae3c19f4539aaa4b61511cec83d', '${dealerCode}', '456f74731f424b8f97cb072c5697e8f6',  'BUK12597464', 'must', 6, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK12597464';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK12597464', '${dealerCode}', '火花塞',  104.00, 104.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('59ce7b4395164298b0843aac58281162', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKLDD---36L,', '*', 80000, 'km', 2, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('a54baa8fc082411fbcc65ac5c64fc021', '${dealerCode}', '59ce7b4395164298b0843aac58281162', '更换变速箱油', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('411f15ce09e54abb9d5149648309e353', '${dealerCode}', 'a54baa8fc082411fbcc65ac5c64fc021',  'BUK93735413（198.00）', 'must', 2, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93735413（198.00）';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93735413（198.00）', '${dealerCode}', '自动变速箱传动液',  198.00, 198.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

/*==============================================================*
 * 英朗 1.8L *
 *==============================================================*/
insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('af3f9bba13f244669c2067755d67c0fa', '换机油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 5000, 'km', 2.0, 'introduce1.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b85fecb193674dfab39a2910bab50abb', '${dealerCode}', 'af3f9bba13f244669c2067755d67c0fa', '普通机油(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('95fad9daf4bb44e3a4a2378aefe2a6c1', '${dealerCode}', 'b85fecb193674dfab39a2910bab50abb',  'BUK93736599', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK93736599';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK93736599', '${dealerCode}', '普通机油(4L)',  198, 198,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('46239c1b25db498ea81af7639f32f17b', '${dealerCode}', 'af3f9bba13f244669c2067755d67c0fa', '美孚机油(4L)', 1, 1, false, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('4109ea226b104217a0ac303f4e55becf', '${dealerCode}', '46239c1b25db498ea81af7639f32f17b',  'BUK93736606', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('5988df3cae9d46bcb61d0b5d8ba63377', '更换机油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 5000, 'km', 0.5, 'introduce2.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b7caa3f7ac5c4ea58bd7b3a13c389c6f', '${dealerCode}', '5988df3cae9d46bcb61d0b5d8ba63377', '机油滤清器总成', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('9fe7288026864f2783c17121fa19f657', '${dealerCode}', 'b7caa3f7ac5c4ea58bd7b3a13c389c6f',  'BUK55594651', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK55594651';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK55594651', '${dealerCode}', '机油滤清器总成',  65.00, 65.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('d107da492fa94ea9a9043c437519c359', '更换空气滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 10000, 'km', 0.5, 'introduce3.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('fa5e308c4f1a4bde8b777bb4760c0f78', '${dealerCode}', 'd107da492fa94ea9a9043c437519c359', '空气滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('6b9be9d07a434d7ab87d8440c29e8c08', '${dealerCode}', 'fa5e308c4f1a4bde8b777bb4760c0f78',  'BUK13272719', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK13272719';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK13272719', '${dealerCode}', '空气滤芯',  78.00, 78.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('d877087fa1184574b2e8b5b549998bc1', '更换空调滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 10000, 'km', 0.5, 'introduce4.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5be98e23ec99421eb2b9751ee1f14fd3', '${dealerCode}', 'd877087fa1184574b2e8b5b549998bc1', '空调滤清器滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5ed5bc2c9da74441ae1e2a23cbe2cd76', '${dealerCode}', '5be98e23ec99421eb2b9751ee1f14fd3',  'BUK90928329', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK90928329';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK90928329', '${dealerCode}', '空调滤清器滤芯',  132.00, 132.00,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('d5b4d24ad1ab4cfba706c9b7cefabfe7', '更换燃油滤芯', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 20000, 'km', 1, 'introduce5.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('3f0848eda5944ff4904a50380e473e1d', '${dealerCode}', 'd5b4d24ad1ab4cfba706c9b7cefabfe7', '汽油滤芯', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b266f68ecb944449abbe74e904623d75', '${dealerCode}', '3f0848eda5944ff4904a50380e473e1d',  'BUK22821145', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('4007d93c5c7640a9834cf6f6108aa325', '更换转向助力液', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 50000, 'km', 2, 'introduce6.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('c4dff7a29e1247a59c9fcc6b726f9ae5', '${dealerCode}', '4007d93c5c7640a9834cf6f6108aa325', '动力转向液', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('fa12c6d820bd4dd292ad037a19194ab2', '${dealerCode}', 'c4dff7a29e1247a59c9fcc6b726f9ae5',  'BUK93735412', 'must', 2, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('e4f07fe8bd6e424c987c3e1a1b862af0', '更换火花塞', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 30000, 'km', 2, 'introduce7.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('5337a09f5da549bf9b36eb1ddd52471b', '${dealerCode}', 'e4f07fe8bd6e424c987c3e1a1b862af0', '火花塞', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('67341a2df551444fb0e3a85cf7159d45', '${dealerCode}', '5337a09f5da549bf9b36eb1ddd52471b',  'BUK55585534', 'must', 4, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK55585534';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK55585534', '${dealerCode}', '火花塞',  67, 67,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('27a62b91b2d349f8b1557d58ccb76d4d', '更换变速箱油', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 80000, 'km', 2, 'introduce8.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('39eba904549948d9ade05ab1f3ea437b', '${dealerCode}', '27a62b91b2d349f8b1557d58ccb76d4d', '自动变速箱传动液(4L)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('c9436e7e6c5042bf88821c2515bb53b3', '${dealerCode}', '39eba904549948d9ade05ab1f3ea437b',  'BUK93735413（198.00）', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('ac9661f0c42d49bb9d9909d06d0dcbd7', '${dealerCode}', '39eba904549948d9ade05ab1f3ea437b',  'BUK93735412', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_basic_maintenance
(code,       name,      maintenanceOwnerCode,      fitToMinKm,    fitToMaxKm,   fitToMinDaysUsed,     fitToMaxDaysUsed,     fitToEmissionVolume,      fitToVehicleScope,      fitToCity,      periodValue,     periodUnit,    laborHour,     docURL,      description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('395f9ff0e57846debffda1a985e26dc4', '正时皮带及涨紧器', '${dealerCode}', 0, 10000000, 0, 100000, '*', ',BUKYL----18L,', '*', 80000, 'km', 30, 'introduce9.html', '', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('92bf4f000aca450190c71a05409e197e', '${dealerCode}', '395f9ff0e57846debffda1a985e26dc4', '正时皮带及涨紧器(一套)', 1, 1, true, '', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('47ffa8718e234ab59d47c3e67fc31173', '${dealerCode}', '92bf4f000aca450190c71a05409e197e',  'BUK24422964', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK24422964';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK24422964', '${dealerCode}', '正时皮带及涨紧器(1)',  199, 199,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('b85b3fd0401448ee80d76e7b63a7c337', '${dealerCode}', '92bf4f000aca450190c71a05409e197e',  'BUK55574864', 'must', 1, '',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

delete from t_basic_spare_part where ownerCode='${dealerCode}' and code='BUK55574864';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('BUK55574864', '${dealerCode}', '正时皮带及涨紧器(1)',  434, 434,    null,     '', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

