DROP TABLE IF EXISTS `bucks_coffee`;
CREATE TABLE `bucks_coffee` (
    `id` IDENTITY(20) NOT NULL COMMENT '主键',
    `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modified_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
    `deleted` BOOLEAN NOT NULL DEFAULT 0 COMMENT '逻辑删除标记',
    `coffee_no` CHAR(3) NOT NULL COMMENT '咖啡编号',
    `coffee_name` VARCHAR(50) NOT NULL COMMENT '咖啡名称',
    `coffee_category` VARCHAR(10) NOT NULL COMMENT '咖啡类别',
    `coffee_size` TINYINT(2) NOT NULL DEFAULT 0 COMMENT '尺寸',
    `coffee_price` DECIMAL(12,2) NOT NULL DEFAULT 0.00 COMMENT '价格',
    `coffee_status` TINYINT(2) NOT NULL DEFAULT 0 COMMENT '销售情况：0. 在售，1. 售罄，2. 下架',
    `sweetness_alternations` TINYINT(4) NOT NULL DEFAULT 15 COMMENT '可选甜度：1. 无糖，2. 微糖，4. 半糖，8. 全糖',
    `milk_addable` BOOLEAN NOT NULL DEFAULT 1 COMMENT '是否可以添加牛奶',
    UNIQUE KEY `uniq_no_size` (`coffee_no`, `coffee_size`)
);
