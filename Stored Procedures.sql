#Stored Procedure
#they are a collection of sql statements which works as python functions

#Types 
-- With Parameter
-- Without Parameter

#Prerequistese
# we have to change delimiter because builten(;) delmiter do not work


########### WITHOUT PARAMATER ##########
DELIMITER $$
	CREATE PROCEDURE WITHOUT_PARAM()
    BEGIN 
		SELECT * FROM EMP;
	END $$
DELIMITER ;
#FOR CALLING PROCEDURE
CALL WITHOUT_PARAM();


############# WITH PARAMATER ##########
#This is single taking as input paramater
DELIMITER $$
	CREATE PROCEDURE WITH_PARAM(IN ID INT)
	BEGIN 
		 SELECT * FROM emp
		 WHERE emp.id = ID;
    END $$
DELIMITER ;
CALL WITH_PARAM(3);


#This is dual taking params as input & ouput 
DELIMITER //
	CREATE PROCEDURE WITH_PARAMSss(IN ID INT,OUT LOC VARCHAR(250))
	BEGIN 
		SELECT location INTO LOC FROM emp
		WHERE emp.id = ID;
    END //
DELIMITER ;
SELECT * FROM EMP;
CALL WITH_PARAMSss(3,@LOC);
select @LOC;
