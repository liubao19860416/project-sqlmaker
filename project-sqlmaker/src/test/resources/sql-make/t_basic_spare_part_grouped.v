 insert into t_basic_spare_part_grouped
(code,   ownerCode,   sparePartGroupCode, sparePartCode,    selectMode,       amount,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('${code}', '${D}{dealerCode}', '${parentCode}',  '${sparePartCode}', '${selectMode}', ${amount}, '${description}',   1,       0,    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );
