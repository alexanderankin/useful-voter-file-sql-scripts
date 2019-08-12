-- trigger

DROP TRIGGER IF EXISTS my_trigger;
DELIMITER $$
CREATE TRIGGER my_trigger
BEFORE UPDATE ON test
FOR EACH ROW
BEGIN
    -- code
END $$

-- stored procedure
DELIMITER //
CREATE PROCEDURE country_head
(IN con CHAR(20))
BEGIN
  SELECT Name, HeadOfState FROM Country
  WHERE Continent = con;
END //
DELIMITER ;

-- calling country_head
CALL country_hos('Europe');

CREATE PROCEDURE `addCountry`(
  IN p_idContinent SMALLINT, 
  IN p_countryName VARCHAR(100)
)
BEGIN
  DECLARE v_lastInsertId MEDIUMINT;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;
 
  START TRANSACTION;
    INSERT INTO Country SET name = p_countryName;
    SET v_lastInsertId = LAST_INSERT_ID();
    INSERT INTO 
      CountriesInContinent 
    SET 
      idContinent = p_idContinent, 
      idCountry = v_lastInsertId;
  COMMIT;
  SELECT v_lastInsertId;
END


-- -------------------- this is a nifty debug print trick:
-- drop table if exists log_;
-- create table log_ (logged timestamp default current_timestamp, message char(100));


-- DROP TRIGGER IF EXISTS my_trigger;
-- DELIMITER $$
-- CREATE TRIGGER my_trigger
-- BEFORE insert ON test
-- FOR EACH ROW
-- BEGIN
--   insert into log_ (message) values ('test');
--   insert into testt (id, data) values (NEW.id, NEW.data);
-- END $$

-- insert into test (data) values ('ok');
-- select * from log_;

-- works
-- 
-- DROP PROCEDURE if exists `addCountry`;
-- DELIMITER $$
-- CREATE PROCEDURE `addCountry`(
--   IN p_idContinent SMALLINT,
--   IN p_countryName VARCHAR(100)
-- )
-- BEGIN
--   DECLARE v_lastInsertId MEDIUMINT;
--   DECLARE EXIT HANDLER FOR SQLEXCEPTION, SQLWARNING
--   BEGIN
--     ROLLBACK;
--     -- RESIGNAL;
--   END;

--   START TRANSACTION;
--     INSERT INTO Country SET name = p_countryName;
--     SET v_lastInsertId = LAST_INSERT_ID();
--     INSERT INTO
--       CountriesInContinent
--     SET 
--       idContinent = p_idContinent,
--       idCountry = v_lastInsertId;
--   COMMIT;
--   SELECT v_lastInsertId;
-- END $$
-- DELIMITER ;

-- works

-- drop PROCEDURE if exists country_head;
-- DELIMITER //
-- CREATE PROCEDURE country_head
-- (IN con CHAR(20))
-- BEGIN
--   SELECT Name, HeadOfState FROM Country
--   WHERE Continent = con;
-- END //
-- DELIMITER ;





-- idk what this is pafve_import
-- DROP TRIGGER IF EXISTS my_trigger;
-- DELIMITER $$
-- CREATE TRIGGER my_trigger
-- BEFORE insert ON pafve_import
-- FOR EACH ROW
-- BEGIN
--   -- insert into log_ (message) values ('test');
--   -- insert into testt (id, data) values (NEW.id, NEW.data);

--   DECLARE i int;
--   DECLARE col_name VARCHAR(100);

--   DECLARE col_names CURSOR FOR
--     SELECT column_name
--     FROM INFORMATION_SCHEMA.COLUMNS
--     WHERE table_name = 'pafve_import'
--     ORDER BY ordinal_position;


--   -- select FOUND_ROWS() into num_rows;

--   SET i = 1;
--   the_loop: LOOP
--     FETCH col_names 
--     INTO col_name;     

--       IF i > 41 THEN
--           CLOSE col_names;
--           LEAVE the_loop;
--       END IF;


--        -- //do whatever else you need to do with the col name
--       insert into log_ (message) values (concat('values district ', i));

--       SET i = i + 1;  
--   END LOOP the_loop;
-- END $$


-- insert into pafve_import values ('001004817-02', '', 'BAUM', 'GRACE', 'W', '', 'F', '09/29/1926', '01/01/1956', 'A', '11/20/2013', 'R', '1094', '', 'FOX CHAPEL RD', '', '', 'PITTSBURGH', 'PA', '15238', '', '', '', '', '', '11/07/2017', '1440002', '1440002-1', '06/04/2018', '', '1440002', '', 'SC27', 'MN144', 'MD204', 'STH030', 'STS38', 'USC17', 'CPC00', 'CAC03', '02', '', '1440002-1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'AP', 'R', 'AP', 'R', '', '', 'AP', 'R', 'AP', 'R', '', '', '', '', 'AP', 'R', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ALLEGHENY', '');

