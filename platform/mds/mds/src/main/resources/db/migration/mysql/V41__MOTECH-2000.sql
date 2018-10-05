ALTER TABLE Field ADD uiChanged bit(1) NOT NULL default 0;
ALTER TABLE Entity ADD abstractClass  bit(1) NOT NULL default 0;
ALTER TABLE Entity ADD superClass   varchar(255) DEFAULT NULL;
ALTER TABLE Lookup ADD methodName   varchar(255) DEFAULT NULL;


CREATE TABLE `ConfigSettings` (
`id` bigint(20) NOT NULL,
`afterTimeUnit` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
`afterTimeValue` int(11) NOT NULL,
`deleteMode` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
`emptyTrash` bit(1) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

