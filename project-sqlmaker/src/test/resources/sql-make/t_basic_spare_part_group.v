 insert into t_basic_spare_part_group
(code,   ownerCode,    maintenanceCode,  name,     minSelected,    maxSelected,  defaultSelected,  description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('${code}', '${D}{dealerCode}', '${parentCode}', '${name}', ${minSelected}, ${maxSelected}, ${defaultSelected}, '${description}', 1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );
