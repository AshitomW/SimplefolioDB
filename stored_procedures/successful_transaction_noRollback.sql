USE `SimplefolioDB`;
DROP procedure IF EXISTS `successful_transaction_noRollback`;

USE `SimplefolioDB`;
DROP procedure IF EXISTS `SimplefolioDB`.`successful_transaction_noRollback`;
;

DELIMITER $$
USE `SimplefolioDB`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `successful_transaction_noRollback`()
BEGIN
	START Transaction;
    
    -- Deduct quantity by 10 for transaction with id 1
UPDATE Transaction 
SET 
    quantity = quantity - 10
WHERE
    transaction_id = 1;
    
    -- Add quantity by 10 for transaction with id 2
	UPDATE Transaction 
SET 
    quantity = quantity + 10
WHERE
    transaction_id = 2;
	
    COMMIT;

END$$

DELIMITER ;
;