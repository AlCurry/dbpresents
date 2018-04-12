DROP PROCEDURE IF EXISTS bamazon.GetAllErr;
DELIMITER //
 CREATE PROCEDURE bamazon.GetAllErr()
   BEGIN
   /* Intentional Syntax Error */
      SELECT *  FROM bamazon.products WHERE department_name = department
   /* Intentional Syntax Error - missing ; in line above */
   END //
 DELIMITER ;
