SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `shipments` (
  `id` bigint(11) NOT NULL,
  `receiving_date` date DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `cbm` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `shipments` (`id`, `receiving_date`, `tracking_number`, `product_name`, `cbm`, `weight`) VALUES
(1, '2026-04-01', 'TRK001', 'Laptop', 0.50, 3.00),
(2, '2026-04-02', 'TRK002', 'Monitor', 0.80, 5.00),
(3, '2026-04-03', 'TRK003', 'Keyboard', 0.10, 0.80),
(4, '2026-04-04', 'TRK004', 'Mouse', 0.05, 0.20),
(5, '2026-04-05', 'TRK005', 'Chair', 1.20, 15.00);

--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`);




ALTER TABLE `shipments`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;


INSERT INTO `shipments`(`id`, `receiving_date`, `tracking_number`, `product_name`, `cbm`, `weight`) VALUES ('1','2026-04-01','TRK001','Laptop','0.50','3.00')
UPDATE `shipments` SET `id`='1',`receiving_date`='2026-04-01',`tracking_number`='TRK001',`product_name`='Laptop',`cbm`='0.50',`weight`='3.00' WHERE 1
DELETE FROM `shipments` WHERE id=2;

ALTER TABLE `shipments`
 ADD `abc` varhar(30)
ALTER TABLE `shipments`
 DROP `abc`

