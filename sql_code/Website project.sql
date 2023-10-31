CREATE DATABASE `shopping website`;

	
CREATE TABLE `User` (
    Uid INT AUTO_INCREMENT,
    Fname VARCHAR(255),
    Lname VARCHAR(255),
    
	country VARCHAR(64),
	`state` VARCHAR(64),
	city VARCHAR(64),
	street TEXT,
	zip_code VARCHAR(10),
	
    phone VARCHAR(15),
    email VARCHAR(255) NOT NULL,
    pssword VARCHAR(128) NOT NULL,
    Ucreation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY(Uid),
    
    UNIQUE(phone),
    UNIQUE(email)
);

CREATE TABLE Product (
	Pid INT AUTO_INCREMENT,
    Pname VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Pdesc TEXT DEFAULT "No information",
    Vid INT NOT NULL,
	inventory INT NOT NULL DEFAULT 1,
	
	Pcreation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Pmodification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	weight VARCHAR(255),
	dimension VARCHAR(255),

    PRIMARY KEY(Pid),
	FOREIGN KEY(Vid) REFERENCES `User`(Uid)
    	ON DELETE CASCADE
);

CREATE TABLE has_image (
	id INT NOT NULL AUTO_INCREMENT,
    Pid INT NOT NULL,
	name VARCHAR(255) NOT NULL,
	extension VARCHAR(255) NOT NULL,
    Pimage LONGBLOB NOT NULL,
    
    FOREIGN KEY (Pid) REFERENCES Product(Pid)
    	ON DELETE CASCADE,
		
	PRIMARY KEY(id)
);

CREATE TABLE category(
    Pid INT NOT NULL,
    Cname VARCHAR(255) NOT NULL,
    
    FOREIGN KEY(Pid) REFERENCES Product(Pid)
    	ON DELETE CASCADE,
    
    PRIMARY KEY(Pid, Cname)
    );
	
CREATE TABLE shopping_cart (
    Uid INT NOT NULL,
    Pid INT NOT NULL,

    quantity INT NOT NULL DEFAULT 1,
    
    FOREIGN KEY(Uid) REFERENCES `User`(Uid)
    	ON DELETE CASCADE,
    FOREIGN KEY(Pid) REFERENCES Product(Pid)
    	ON DELETE CASCADE,
    
    PRIMARY KEY(Uid, Pid)
    );
	
CREATE TABLE `Order` (
    Oid INT AUTO_INCREMENT,
    Uid INT NOT NULL,
	Vid INT	NOT NULL CHECK (Vid != Uid),
    Pid INT NOT NULL,
    quantity INT NOT NULL,
    
    FOREIGN KEY(Uid) REFERENCES `User`(Uid)
    	ON DELETE CASCADE,
    FOREIGN KEY(Vid) REFERENCES `User`(Uid)
    	ON DELETE CASCADE,
    FOREIGN KEY(Pid) REFERENCES Product(Pid)
    	ON DELETE CASCADE,
    PRIMARY KEY(Oid)
    );