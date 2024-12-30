USE `SimplefolioDB`;
DROP procedure IF EXISTS `transaction_with_error`;

USE `SimplefolioDB`;
DROP procedure IF EXISTS `SimplefolioDB`.`transaction_with_error`;
;

DELIMITER $$
USE `SimplefolioDB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `transaction_with_error`()
BEGIN
	START TRANSACTION;
    
    -- Update Quantity Of Transaction Made 
UPDATE Transaction 
SET 
    quantity = quantity + 30
WHERE
    transaction_id = 1;
    
    -- Error: Attempt To Update Quantity For Non Existing Transaction
UPDATE Transaction 
SET 
    quantity = quantity - 10
WHERE
    transaction_id = 404;
    
    COMMIT;

END$$

DELIMITER ;
;

