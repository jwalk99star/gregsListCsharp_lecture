CREATE TABLE 
  IF NOT EXISTS accounts(
    id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    name varchar(255) COMMENT 'User Name',
    email varchar(255) COMMENT 'User Email',
    picture varchar(255) COMMENT 'User Picture'
  ) default charset utf8 COMMENT '';

CREATE TABLE 
  houses(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    multiLevel BOOLEAN DEFAULT false COMMENT 'Single level unless specified.',
    built DATE NOT NULL,
    bedrooms SMALLINT UNSIGNED DEFAULT 0,
    bathrooms SMALLINT UNSIGNED DEFAULT 0
  ) default charset utf8 COMMENT '';

  INSERT INTO houses(name, multiLevel, built, bedrooms, bathrooms)
  VALUES('Death Star', true, '1977-5-4', 1000, 5),
        ('Death Star II', true, '1983-5-4', 2000, 8)
        ;


SELECT * FROM houses WHERE bathrooms > 6;

DELETE FROM houses WHERE id = 1;

SELECT * FROM houses;