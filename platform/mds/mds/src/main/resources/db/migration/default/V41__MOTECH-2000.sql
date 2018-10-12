ALTER TABLE Field ADD uiChanged bit(1) NOT NULL default 0;
ALTER TABLE Entity ADD abstractClass  bit(1) NOT NULL default 0;
ALTER TABLE Entity ADD superClass   varchar(255) DEFAULT NULL;
ALTER TABLE Lookup ADD methodName   varchar(255) DEFAULT NULL;
