DROP PROCEDURE IF EXISTS bamazon.GetAllUpdate;
DELIMITER //
 CREATE PROCEDURE bamazon.GetAllUpdate(
   IN department VARCHAR(50), 
   IN increase FLOAT)
   BEGIN
   IF EXISTS(
      SELECT *  FROM bamazon.products 
      WHERE department_name = department)
   THEN
      UPDATE bamazon.products SET price = price + increase
      WHERE department_name = department;
   END IF;
   IF EXISTS(
      SELECT *  FROM bamazon.products 
      WHERE department_name = 'clothing')
   THEN
      UPDATE bamazon.products SET price = price * 1.10
      WHERE department_name = 'clothing';
   END IF;
   SELECT * FROM bamazon.products;
   END //
 DELIMITER ;
