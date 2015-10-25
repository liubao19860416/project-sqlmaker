/*==============================================================*
 *==============================================================*/
insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZ', '大众','大众', 1.0, '', 'SDZ','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZPST', '帕萨特','帕萨特', 2.0, 'SDZ', 'SDZ/SDZPST','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPST-SI14T', '大众 帕萨特1.4TSI－2014款以后',  '1.4TSI－2014款以后' ,  '-' , '1.4T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPST-SI18T', '大众 帕萨特1.8TS－2014款以后',  '1.8TS－2014款以后' ,  '-' , '3.6L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPST-SI20T', '大众 帕萨特2.0TSI－2014款以后',  '2.0TSI－2014款以后' ,  '-' , '2.0T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPST-V628L', '大众 帕萨特2.8V6－2014款以后',  '2.8V6－2014款以后' ,  '-' , '2.8L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZPLY', '帕萨特领驭','帕萨特领驭', 2.0, 'SDZ', 'SDZ/SDZPLY','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLY---18T', '大众 帕萨特领驭1.8T',  '帕萨特领驭1.8T' ,  '-' , '1.8T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLY---20L', '大众 帕萨特领驭2.0',  '帕萨特领驭2.0' ,  '-' , '2.0L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLY-V628L', '大众 帕萨特领驭2.8v6',  '帕萨特领驭2.8v6' ,  '-' , '2.8L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZSTN', '普桑','普桑', 2.0, 'SDZ', 'SDZ/SDZSTN','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZSTN------', '大众 普桑',  '普桑' ,  '-' , '','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZS3K', '大众 普桑3000','普桑3000', 2.0, 'SDZ', 'SDZ/SDZS3K','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZS3K------', '大众 普桑3000',  '普桑3000' ,  '-' , '','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZPLO', 'POLO','POLO', 2.0, 'SDZ', 'SDZ/SDZPLO','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLO01014L', '大众 2010年以前-POLO1.4',  '2010年以前-POLO1.4' ,  '-' , '1.4L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLO01016L', '大众 2010年以前－POLO1.6',  '2010年以前－POLO1.6' ,  '-' , '1.6L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLO-1014L', '大众 2010款及以后－POLO1.4',  '2010款及以后－POLO1.4' ,  '-' , '1.4L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZPLO-1016L', '大众 2010款及以后－POLO1.6',  '2010款及以后－POLO1.6' ,  '-' , '1.6L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZJQ-', '劲情','劲情', 2.0, 'SDZ', 'SDZ/SDZJQ-','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZJQ----14L', '大众 劲情1.4',  '劲情1.4' ,  '-' , '1.4L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZJQ----16L', '大众 劲情1.6',  '劲情1.6' ,  '-' , '1.6L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZLY-', '朗逸','朗逸', 2.0, 'SDZ', 'SDZ/SDZLY-','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZLY----16L', '大众 朗逸1.6',  '朗逸1.6' ,  '-' , '1.6L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZLY----20L', '大众 朗逸2.0',  '朗逸2.0' ,  '-' , '2.0L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZLY--SI14T', '大众 朗逸1.4TSI',  '朗逸1.4TSI' ,  '-' , '1.4T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZLY--12---', '大众 2012款以后－朗逸',  '2012款以后－朗逸' ,  '-' , '','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZNST', '新桑塔纳','新桑塔纳', 2.0, 'SDZ', 'SDZ/SDZNST','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZNST-12---', '大众 2012款以后－新桑塔纳',  '2012款以后－新桑塔纳' ,  '-' , '','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZTA-', '途安','途安', 2.0, 'SDZ', 'SDZ/SDZTA-','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZTA----18T', '大众 途安1.8T',  '途安1.8T' ,  '-' , '1.8T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZTA----20L', '大众  途安2.0',  '途安2.0' ,  '-' , '2.0L','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZTA--SI14T', '大众 途安1.4TSI',  '途安1.4TSI' ,  '-' , '1.4T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('SDZTG-', '途观','途观', 2.0, 'SDZ', 'SDZ/SDZTG-','', 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZTG--SI14T', '大众 途观1.4TSI',  '途观1.4TSI' ,  '-' , '1.4T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZTG----18T', '大众 途观1.8T',  '途观1.8T' ,  '-' , '1.8T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

 insert into t_vehicle
(code,     name,    shortName   ,  gear,  emissionVolume,    onMarketDatetime,    turbo,   description,     actived, deleted, createdDatetime,   updatedDatetime)
values
('SDZTG----20T', '大众 途观2.0T',  '途观2.0T' ,  '-' , '2.0T','1970-01-01 10:00:00' ,  0 ,   '',        1,       0,      CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );


update t_brand set parentCode=null where level=1 and parentCode='';