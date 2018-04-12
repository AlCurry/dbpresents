DROP PROCEDURE IF EXISTS bamazon.GetAllProducts;
DELIMITER //
 /* one input parameter, department */ 
 CREATE PROCEDURE bamazon.GetAllProducts(
    IN department VARCHAR(50) ) 
   BEGIN
      SELECT *  FROM bamazon.products where department_name = department;
   END //
 DELIMITER ;
