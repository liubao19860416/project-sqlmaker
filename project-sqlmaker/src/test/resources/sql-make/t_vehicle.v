 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('${code}', '${name}',  '${shortName}' ,  '-' , '${emissionVolume}','1970-01-01 10:00:00' ,  0 ,   '${description}',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );
