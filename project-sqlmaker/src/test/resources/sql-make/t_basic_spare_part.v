delete from t_basic_spare_part where ownerCode='${D}{dealerCode}' and code='${sparePartCode}';
insert into t_basic_spare_part
	(code,         ownerCode,       name,       price,  discountPrice, imageURL, description, actived, deleted, createdDatetime,    updatedDatetime)
	values
	('${sparePartCode}', '${D}{dealerCode}', '${name}',  ${price}, ${price},    null,     '${description}', 1,    0,       CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
