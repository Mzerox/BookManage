
CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `petstore`.`orderdetailview` 
    AS
SELECT
  `orderdetail`.`id`       AS `id`,
  `orderdetail`.`oid`      AS `oid`,
  `orderdetail`.`pid`      AS `pid`,
  `orderdetail`.`price`    AS `price`,
  `orderdetail`.`quantity` AS `quantity`,
  `pets`.`title`           AS `title`,
  `pets`.`photo`           AS `photo`
FROM (`orderdetail`
   JOIN `pets`)
WHERE (`orderdetail`.`pid` = `pets`.`id`);
