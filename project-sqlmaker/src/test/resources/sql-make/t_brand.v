insert into t_brand
(code,       name,      shortName,     level,      parentCode,   fullPath,     description,   actived,     deleted,    createdDatetime,    updatedDatetime)
values
('${code}', '${name}','${shortName}', ${level}, '${parentCode}', '${fullPath}','${description}', ${actived}, ${deleted}, ${createdDatetime}, ${updatedDatetime});
