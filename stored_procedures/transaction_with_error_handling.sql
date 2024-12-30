USE `SimplefolioDB`;
DROP procedure IF EXISTS `transaction_with_error_handling`;

USE `SimplefolioDB`;
DROP procedure IF EXISTS `SimplefolioDB`.`transaction_with_error_handling`;
;

DELIMITER $$
USE `SimplefolioDB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `transaction_with_error_handling`()
BEGIN
	DECLARE EXIT HANDLER FOR sqlexception
	BEGIN
		ROLLBACK;
SELECT 'Transaction Failed, Rollback Executed!' AS message;
    END;
    
    -- Starting Transaction
	START Transaction;
    
    
    -- Deduct quantity by 10 for transaction with id 1
    
UPDATE Transaction 
SET 
    quantity = quantity - 10
WHERE
    transaction_id = 1;
    
    
    -- Error Simulation : Using Wrong Query
    
UPDATE Transaction 
SET 
    quanpity = quantity + 10
WHERE
    transaction_id = 2;
    
    -- Commit
    
    COMMIT;
    
SELECT 'Transaction successful, changes commited !' AS message;
    
    
    
    
    
END$$

DELIMITER ;
;

