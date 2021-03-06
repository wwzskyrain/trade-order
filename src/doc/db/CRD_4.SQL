--CREATE DATABASE `ERIK_CRD_4` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */
--USE ERIK_CRD_4;
CREATE TABLE `CRD_DRAFT_ORDER_00` (
  `DRAFT_ORDER_ID` bigint(20) NOT NULL,
  `BUYER_ID` bigint(20) NOT NULL,
  `DOMAIN` int(11) NOT NULL DEFAULT '1',
  `BUSINESS_TYPE_ID` int(11) NOT NULL,
  `UNIFIED_ORDER_NO` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AMOUNT` decimal(20,6) DEFAULT NULL,
  `STATUS_ID` int(11) NOT NULL,
  `CONTEXT` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `VERSION` int(11) DEFAULT '1',
  PRIMARY KEY (`DRAFT_ORDER_ID`),
  UNIQUE KEY `UX_UNIFIED_ORDER_NO` (`UNIFIED_ORDER_NO`),
  KEY `IX_BUYER_ID_DOMAIN_STATUS` (`BUYER_ID`,`DOMAIN`,`STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
CREATE TABLE CRD_DRAFT_ORDER_01 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_02 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_03 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_04 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_05 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_06 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_07 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_08 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_09 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_10 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_11 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_12 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_13 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_14 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_15 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_16 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_17 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_18 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_19 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_20 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_21 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_22 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_23 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_24 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_25 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_26 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_27 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_28 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_29 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_30 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_31 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_32 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_33 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_34 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_35 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_36 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_37 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_38 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_39 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_40 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_41 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_42 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_43 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_44 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_45 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_46 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_47 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_48 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_49 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_50 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_51 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_52 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_53 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_54 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_55 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_56 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_57 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_58 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_59 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_60 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_61 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_62 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_63 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_64 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_65 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_66 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_67 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_68 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_69 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_70 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_71 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_72 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_73 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_74 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_75 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_76 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_77 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_78 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_79 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_80 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_81 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_82 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_83 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_84 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_85 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_86 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_87 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_88 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_89 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_90 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_91 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_92 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_93 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_94 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_95 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_96 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_97 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_98 LIKE CRD_DRAFT_ORDER_00;
CREATE TABLE CRD_DRAFT_ORDER_99 LIKE CRD_DRAFT_ORDER_00;


mysqldump -t -h 192.168.1.161 -u naliworld -ppassword!  XIMA_CRD_4 CRD_DRAFT_ORDER_19 --where="CREATE_TIME > '2019-05-01'"