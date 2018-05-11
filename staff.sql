CREATE TABLE user (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(50) NOT NULL,
  age int NOT NULL,
  phone varchar(11) NOT NULL,
  address varchar(100) NOT NULL,
  role varchar(1) NOT NULL
)