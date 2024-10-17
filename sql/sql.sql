CREATE TABLE `reservation` (
	`reserveNo` INT NOT NULL AUTO_INCREMENT,
	`userNo` INT NULL DEFAULT NULL,
	`restNo` INT NULL DEFAULT NULL,
	`reserveTime` TIMESTAMP NOT NULL,
	PRIMARY KEY (`reserveNo`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
