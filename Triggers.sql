#Triggers
#Trigers are a collection of code which are automatcilay exeucuted when 
#we perform any operation like insert,update or delete
#they executed with operation as we passed our query in trigger

#Types
-- Before Insert , they First Insert into Trigger Table then real
-- After Insert  , they first insert into real table then trigger table
-- Before Update , they first update into trigger table then real
-- After Update  , they first update in real table then trigger table
-- Before Delete , // Delete
-- After Delete  , // Delete

# NEW vs OLD
#NEW will fetch the latest value which added in a table where we apply trigger
#Old will fetch the value which we update or delete from a table where we apply a trigger

############### Before Insert ###############
CREATE TABLE DB(
ID INT,
LOCATION VARCHAR(250)
);

DELIMITER //
	CREATE
    TRIGGER BI BEFORE INSERT
    ON SALE
    FOR EACH ROW
    BEGIN
		INSERT INTO DB(ID,LOCATION)
        VALUES(NEW.ID,NEW.LOCATION);
    END  //
DELIMITER ;

INSERT INTO SALE(ID,LOCATION)
VALUES(5,"KALASH");

############### After Insert ###############
DELIMITER $$
	CREATE
    TRIGGER AI AFTER INSERT
    ON SALE
    FOR EACH ROW
    BEGIN
		INSERT INTO DB(ID,LOCATION)
        VALUES(NEW.ID,NEW.LOCATION);
    END  $$
DELIMITER ;

INSERT INTO SALE(ID,LOCATION)
VALUES("4","KASHMIR");


############### Before Update ###############
DELIMITER //
	CREATE 
    TRIGGER BU BEFORE UPDATE
    ON SALE
    FOR EACH ROW
    BEGIN
		UPDATE DB SET ID=NEW.ID,LOCATION =NEW.LOCATION
        WHERE ID=NEW.ID;
    END //
DELIMITER ;



UPDATE SALE SET LOCATION="KALOWAL PAKISTAN"
WHERE ID=4;

SELECT  * FROM SALE;
SELECT * FROM DB;

############### After Update ###############
DELIMITER //
	CREATE 
    TRIGGER AU AFTER UPDATE
    ON SALE
    FOR EACH ROW
    BEGIN
		UPDATE DB SET ID=OLD.ID,LOCATION = OLD.LOCATION
        WHERE ID=OLD.ID;
    END //
DELIMITER ;
UPDATE SALE SET LOCATION="ISTANBUL"
WHERE ID=5;

############### Before Delete ###############
DELIMITER $$
	CREATE
    TRIGGER BD BEFORE DELETE
    ON SALE 
    FOR EACH ROW
    BEGIN 
		INSERT INTO RECYCLE 
        VALUES(OLD.ID,OLD.PROD,OLD.LOCATION,OLD.SALE_DATE,OLD.SEX);
    END $$
DELIMITER ;
SELECT * FROM RECYCLE;
DELETE FROM SALE
WHERE PROD IS NULL;

############### After Delete ###############
DELIMITER $$
	CREATE
    TRIGGER AD AFTER DELETE
    ON SALE 
    FOR EACH ROW
    BEGIN 
		INSERT INTO RECYCLE 
        VALUES(OLD.ID,OLD.PROD,OLD.LOCATION,OLD.SALE_DATE,OLD.SEX);
    END $$
DELIMITER ;
SELECT * FROM RECYCLE;
DELETE FROM SALE
WHERE ID IN(1,4,7);
