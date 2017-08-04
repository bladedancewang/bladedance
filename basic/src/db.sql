-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bladedance
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('BasicScheduler','TASK_1','DEFAULT','0 0/60 * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('BasicScheduler','TASK_1','DEFAULT',NULL,'com.basic.sys.utils.ScheduleJob','0','0','0','0','�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0&com.basic.sys.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0X���0xt\00 0/30 * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0testt\01t\0有参数测试sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('BasicScheduler','STATE_ACCESS'),('BasicScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('BasicScheduler','wangjj-PC1501747901546',1501752930612,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('BasicScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1496383200000,-1,5,'WAITING','CRON',1496382645000,0,NULL,2,'�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0&com.basic.sys.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0X���0xt\00 0/60 * * * ?sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0testt\09{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}t\0有参数测试sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='定时任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES (1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}','0 0/60 * * * ?',0,'有参数测试','2016-12-01 23:16:46');
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
INSERT INTO `schedule_job_log` VALUES (20,1,'testTask','test','1',0,NULL,1275,'2017-05-22 15:00:00'),(21,1,'testTask','test','1',0,NULL,1265,'2017-06-02 14:00:00'),(22,1,'testTask','test','1',0,NULL,2026,'2017-06-02 14:30:00'),(23,1,'testTask','test','1',0,NULL,2284,'2017-06-02 15:00:01'),(24,1,'testTask','test','1',0,NULL,1114,'2017-06-02 15:30:00'),(25,1,'testTask','test','1',0,NULL,1007,'2017-06-02 16:00:00'),(26,1,'testTask','test','1',0,NULL,1007,'2017-06-02 16:30:00'),(27,1,'testTask','test','1',0,NULL,1009,'2017-06-02 17:00:00'),(28,1,'testTask','test','1',0,NULL,1040,'2017-06-02 17:30:00'),(29,1,'testTask','test','1',0,NULL,1011,'2017-06-02 18:00:00'),(30,1,'testTask','test','1',0,NULL,1013,'2017-06-02 18:30:00'),(31,1,'testTask','test','1',0,NULL,1006,'2017-06-02 19:00:00'),(32,1,'testTask','test','1',0,NULL,1020,'2017-06-02 19:30:00'),(33,1,'testTask','test','1',0,NULL,1034,'2017-06-02 20:00:00'),(34,1,'testTask','test','1',0,NULL,1012,'2017-06-02 20:30:00'),(35,1,'testTask','test','1',0,NULL,1005,'2017-06-02 21:00:00'),(36,1,'testTask','test','1',0,NULL,1006,'2017-06-02 21:30:00'),(37,1,'testTask','test','1',0,NULL,1008,'2017-06-02 22:00:00'),(38,1,'testTask','test','1',0,NULL,1007,'2017-06-02 22:30:00'),(39,1,'testTask','test','1',0,NULL,1006,'2017-06-02 23:00:00'),(40,1,'testTask','test','1',0,NULL,1005,'2017-06-02 23:30:00'),(41,1,'testTask','test','1',0,NULL,1010,'2017-06-03 00:00:00'),(42,1,'testTask','test','1',0,NULL,1008,'2017-06-03 00:30:00'),(43,1,'testTask','test','1',0,NULL,1007,'2017-06-03 01:00:00'),(44,1,'testTask','test','1',0,NULL,1010,'2017-06-03 01:30:00'),(45,1,'testTask','test','1',0,NULL,1007,'2017-06-03 02:00:00'),(46,1,'testTask','test','1',0,NULL,1004,'2017-06-03 02:30:00'),(47,1,'testTask','test','1',0,NULL,1006,'2017-06-03 03:00:00'),(48,1,'testTask','test','1',0,NULL,1010,'2017-06-03 03:30:00'),(49,1,'testTask','test','1',0,NULL,1007,'2017-06-03 04:00:00'),(50,1,'testTask','test','1',0,NULL,1008,'2017-06-03 04:30:00'),(51,1,'testTask','test','1',0,NULL,1008,'2017-06-03 05:00:00'),(52,1,'testTask','test','1',0,NULL,1010,'2017-06-03 05:30:00'),(53,1,'testTask','test','1',0,NULL,1008,'2017-06-03 06:00:00'),(54,1,'testTask','test','1',0,NULL,1006,'2017-06-03 06:30:00'),(55,1,'testTask','test','1',0,NULL,1007,'2017-06-03 07:00:00'),(56,1,'testTask','test','1',0,NULL,1009,'2017-06-03 07:30:00'),(57,1,'testTask','test','1',0,NULL,1007,'2017-06-03 08:00:00'),(58,1,'testTask','test','1',0,NULL,1006,'2017-06-03 08:30:00'),(59,1,'testTask','test','1',0,NULL,1010,'2017-06-03 09:00:00'),(60,1,'testTask','test','1',0,NULL,1007,'2017-06-03 09:30:00'),(61,1,'testTask','test','1',0,NULL,1005,'2017-06-03 10:00:00'),(62,1,'testTask','test','1',0,NULL,1007,'2017-06-03 10:30:00'),(63,1,'testTask','test','1',0,NULL,1005,'2017-06-03 11:00:00'),(64,1,'testTask','test','1',0,NULL,1006,'2017-06-03 11:30:00'),(65,1,'testTask','test','1',0,NULL,1005,'2017-06-03 12:00:00'),(66,1,'testTask','test','1',0,NULL,1006,'2017-06-03 12:30:00'),(67,1,'testTask','test','1',0,NULL,1007,'2017-06-03 13:00:00'),(68,1,'testTask','test','1',0,NULL,1011,'2017-06-03 13:30:00'),(69,1,'testTask','test','1',0,NULL,1007,'2017-06-03 14:00:00'),(70,1,'testTask','test','1',0,NULL,1003,'2017-06-03 14:30:00'),(71,1,'testTask','test','1',0,NULL,1006,'2017-06-03 15:00:00'),(72,1,'testTask','test','1',0,NULL,1005,'2017-06-03 15:30:00'),(73,1,'testTask','test','1',0,NULL,1007,'2017-06-03 16:00:00'),(74,1,'testTask','test','1',0,NULL,1021,'2017-06-03 16:30:00'),(75,1,'testTask','test','1',0,NULL,1006,'2017-06-03 17:00:00'),(76,1,'testTask','test','1',0,NULL,1018,'2017-06-03 17:30:00'),(77,1,'testTask','test','1',0,NULL,1057,'2017-06-03 18:00:00'),(78,1,'testTask','test','1',0,NULL,1026,'2017-06-28 16:00:00'),(79,1,'testTask','test','1',0,NULL,1035,'2017-06-28 18:00:00'),(80,1,'testTask','test','1',0,NULL,1006,'2017-06-28 18:30:00'),(81,1,'testTask','test','1',0,NULL,1011,'2017-06-28 19:00:00'),(82,1,'testTask','test','1',0,NULL,1015,'2017-06-28 19:30:00'),(83,1,'testTask','test','1',0,NULL,1007,'2017-06-28 20:00:00'),(84,1,'testTask','test','1',0,NULL,1013,'2017-06-28 20:30:00'),(85,1,'testTask','test','1',0,NULL,1016,'2017-06-28 21:00:00'),(86,1,'testTask','test','1',0,NULL,1008,'2017-06-28 21:30:00'),(87,1,'testTask','test','1',0,NULL,1005,'2017-06-28 22:00:00'),(88,1,'testTask','test','1',0,NULL,1011,'2017-06-28 22:30:00'),(89,1,'testTask','test','1',0,NULL,1014,'2017-06-28 23:00:00'),(90,1,'testTask','test','1',0,NULL,1009,'2017-06-28 23:30:00'),(91,1,'testTask','test','1',0,NULL,1012,'2017-06-29 00:00:00'),(92,1,'testTask','test','1',0,NULL,1011,'2017-06-29 00:30:00'),(93,1,'testTask','test','1',0,NULL,1024,'2017-06-29 01:00:00'),(94,1,'testTask','test','1',0,NULL,1013,'2017-06-29 01:30:00'),(95,1,'testTask','test','1',0,NULL,1010,'2017-06-29 02:00:00'),(96,1,'testTask','test','1',0,NULL,1008,'2017-06-29 02:30:00'),(97,1,'testTask','test','1',0,NULL,1006,'2017-06-29 03:00:00'),(98,1,'testTask','test','1',0,NULL,1015,'2017-06-29 03:30:00'),(99,1,'testTask','test','1',0,NULL,1007,'2017-06-29 04:00:00'),(100,1,'testTask','test','1',0,NULL,1038,'2017-06-29 04:30:00'),(101,1,'testTask','test','1',0,NULL,1007,'2017-06-29 05:00:00'),(102,1,'testTask','test','1',0,NULL,1010,'2017-06-29 05:30:00'),(103,1,'testTask','test','1',0,NULL,1007,'2017-06-29 06:00:00'),(104,1,'testTask','test','1',0,NULL,1013,'2017-06-29 06:30:00'),(105,1,'testTask','test','1',0,NULL,1015,'2017-06-29 07:00:00'),(106,1,'testTask','test','1',0,NULL,1007,'2017-06-29 07:30:00'),(107,1,'testTask','test','1',0,NULL,1005,'2017-06-29 08:00:00'),(108,1,'testTask','test','1',0,NULL,1009,'2017-06-29 08:30:00'),(109,1,'testTask','test','1',0,NULL,1008,'2017-06-29 09:00:00'),(110,1,'testTask','test','1',0,NULL,1006,'2017-06-29 09:30:00'),(111,1,'testTask','test','1',0,NULL,1020,'2017-06-29 10:00:00'),(112,1,'testTask','test','1',0,NULL,1038,'2017-06-29 10:30:00'),(113,1,'testTask','test','1',0,NULL,1007,'2017-06-29 11:00:00'),(114,1,'testTask','test','1',0,NULL,1039,'2017-06-29 16:30:00'),(115,1,'testTask','test','1',0,NULL,1013,'2017-06-29 17:00:00'),(116,1,'testTask','test','1',0,NULL,1010,'2017-06-29 17:30:00'),(117,1,'testTask','test','1',0,NULL,1015,'2017-06-29 18:00:00'),(118,1,'testTask','test','1',0,NULL,1018,'2017-06-29 18:30:00'),(119,1,'testTask','test','1',0,NULL,1006,'2017-06-29 19:00:00'),(120,1,'testTask','test','1',0,NULL,1005,'2017-06-29 19:30:00'),(121,1,'testTask','test','1',0,NULL,1007,'2017-06-29 20:00:00'),(122,1,'testTask','test','1',0,NULL,1004,'2017-06-29 20:30:00'),(123,1,'testTask','test','1',0,NULL,1007,'2017-06-29 21:00:00'),(124,1,'testTask','test','1',0,NULL,1011,'2017-06-29 21:30:00'),(125,1,'testTask','test','1',0,NULL,1005,'2017-06-29 22:00:00'),(126,1,'testTask','test','1',0,NULL,1013,'2017-06-29 22:30:00'),(127,1,'testTask','test','1',0,NULL,1010,'2017-06-29 23:00:00'),(128,1,'testTask','test','1',0,NULL,1013,'2017-06-29 23:30:00'),(129,1,'testTask','test','1',0,NULL,1010,'2017-06-30 00:00:00'),(130,1,'testTask','test','1',0,NULL,1086,'2017-06-30 00:30:00'),(131,1,'testTask','test','1',0,NULL,1007,'2017-06-30 01:00:00'),(132,1,'testTask','test','1',0,NULL,1009,'2017-06-30 01:30:00'),(133,1,'testTask','test','1',0,NULL,1010,'2017-06-30 02:00:00'),(134,1,'testTask','test','1',0,NULL,1007,'2017-06-30 02:30:00'),(135,1,'testTask','test','1',0,NULL,1008,'2017-06-30 03:00:00'),(136,1,'testTask','test','1',0,NULL,1009,'2017-06-30 03:30:00'),(137,1,'testTask','test','1',0,NULL,1008,'2017-06-30 04:00:00'),(138,1,'testTask','test','1',0,NULL,1005,'2017-06-30 04:30:00'),(139,1,'testTask','test','1',0,NULL,1008,'2017-06-30 05:00:00'),(140,1,'testTask','test','1',0,NULL,1007,'2017-06-30 05:30:00'),(141,1,'testTask','test','1',0,NULL,1008,'2017-06-30 06:00:00'),(142,1,'testTask','test','1',0,NULL,1007,'2017-06-30 06:30:00'),(143,1,'testTask','test','1',0,NULL,1002,'2017-06-30 07:00:00'),(144,1,'testTask','test','1',0,NULL,1004,'2017-06-30 07:30:00'),(145,1,'testTask','test','1',0,NULL,1010,'2017-06-30 08:00:00'),(146,1,'testTask','test','1',0,NULL,1005,'2017-06-30 08:30:00'),(147,1,'testTask','test','1',0,NULL,1007,'2017-06-30 09:00:00'),(148,1,'testTask','test','1',0,NULL,1067,'2017-06-30 09:30:00'),(149,1,'testTask','test','1',0,NULL,1003,'2017-06-30 10:00:00'),(150,1,'testTask','test','1',0,NULL,1004,'2017-06-30 10:30:00'),(151,1,'testTask','test','1',0,NULL,1013,'2017-06-30 11:00:00'),(152,1,'testTask','test','1',0,NULL,1009,'2017-06-30 11:30:00'),(153,1,'testTask','test','1',0,NULL,1028,'2017-06-30 12:00:00'),(154,1,'testTask','test','1',0,NULL,1012,'2017-06-30 12:30:00'),(155,1,'testTask','test','1',0,NULL,1006,'2017-06-30 13:00:00'),(156,1,'testTask','test','1',0,NULL,1003,'2017-06-30 13:30:00'),(157,1,'testTask','test','1',0,NULL,1005,'2017-06-30 14:00:00'),(158,1,'testTask','test','1',0,NULL,1003,'2017-06-30 14:30:00'),(159,1,'testTask','test','1',0,NULL,1003,'2017-06-30 15:00:00'),(160,1,'testTask','test','1',0,NULL,1005,'2017-06-30 15:30:00'),(161,1,'testTask','test','1',0,NULL,1007,'2017-06-30 16:00:00'),(162,1,'testTask','test','1',0,NULL,1006,'2017-06-30 16:30:00'),(163,1,'testTask','test','1',0,NULL,1007,'2017-06-30 17:00:00'),(164,1,'testTask','test','1',0,NULL,1014,'2017-06-30 17:30:00'),(165,1,'testTask','test','1',0,NULL,1012,'2017-06-30 18:00:00'),(166,1,'testTask','test','1',0,NULL,1009,'2017-06-30 18:30:00'),(167,1,'testTask','test','1',0,NULL,1007,'2017-06-30 19:00:00'),(168,1,'testTask','test','1',0,NULL,1007,'2017-06-30 19:30:00'),(169,1,'testTask','test','1',0,NULL,1006,'2017-06-30 20:00:00'),(170,1,'testTask','test','1',0,NULL,1008,'2017-06-30 20:30:00'),(171,1,'testTask','test','1',0,NULL,1006,'2017-06-30 21:00:00'),(172,1,'testTask','test','1',0,NULL,1002,'2017-06-30 21:30:00'),(173,1,'testTask','test','1',0,NULL,1013,'2017-06-30 22:00:00'),(174,1,'testTask','test','1',0,NULL,1005,'2017-06-30 22:30:00'),(175,1,'testTask','test','1',0,NULL,1011,'2017-06-30 23:00:00'),(176,1,'testTask','test','1',0,NULL,1005,'2017-06-30 23:30:00'),(177,1,'testTask','test','1',0,NULL,1016,'2017-07-01 00:00:00'),(178,1,'testTask','test','1',0,NULL,1005,'2017-07-01 00:30:00'),(179,1,'testTask','test','1',0,NULL,1008,'2017-07-01 01:00:00'),(180,1,'testTask','test','1',0,NULL,1009,'2017-07-01 01:30:00'),(181,1,'testTask','test','1',0,NULL,1011,'2017-07-01 02:00:00'),(182,1,'testTask','test','1',0,NULL,1012,'2017-07-01 02:30:00'),(183,1,'testTask','test','1',0,NULL,1004,'2017-07-01 03:00:00'),(184,1,'testTask','test','1',0,NULL,1048,'2017-07-01 03:30:00'),(185,1,'testTask','test','1',0,NULL,1005,'2017-07-01 04:00:00'),(186,1,'testTask','test','1',0,NULL,1003,'2017-07-01 04:30:00'),(187,1,'testTask','test','1',0,NULL,1007,'2017-07-01 05:00:00'),(188,1,'testTask','test','1',0,NULL,1008,'2017-07-01 05:30:00'),(189,1,'testTask','test','1',0,NULL,1006,'2017-07-01 06:00:00'),(190,1,'testTask','test','1',0,NULL,1004,'2017-07-01 06:30:00'),(191,1,'testTask','test','1',0,NULL,1008,'2017-07-01 07:00:00'),(192,1,'testTask','test','1',0,NULL,1006,'2017-07-01 07:30:00'),(193,1,'testTask','test','1',0,NULL,1003,'2017-07-01 08:00:00'),(194,1,'testTask','test','1',0,NULL,1010,'2017-07-01 08:30:00'),(195,1,'testTask','test','1',0,NULL,1013,'2017-07-01 09:00:00'),(196,1,'testTask','test','1',0,NULL,1029,'2017-07-01 09:30:00'),(197,1,'testTask','test','1',0,NULL,1004,'2017-07-01 10:00:00'),(198,1,'testTask','test','1',0,NULL,1011,'2017-07-01 10:30:00'),(199,1,'testTask','test','1',0,NULL,1009,'2017-07-01 11:00:00'),(200,1,'testTask','test','1',0,NULL,1007,'2017-07-01 11:30:00'),(201,1,'testTask','test','1',0,NULL,1003,'2017-07-01 12:00:00'),(202,1,'testTask','test','1',0,NULL,1038,'2017-07-01 12:30:00'),(203,1,'testTask','test','1',0,NULL,1004,'2017-07-01 13:00:00'),(204,1,'testTask','test','1',0,NULL,1003,'2017-07-01 13:30:00'),(205,1,'testTask','test','1',0,NULL,1013,'2017-07-01 14:00:00'),(206,1,'testTask','test','1',0,NULL,1010,'2017-07-01 14:30:00'),(207,1,'testTask','test','1',0,NULL,1012,'2017-07-01 15:00:00'),(208,1,'testTask','test','1',0,NULL,1005,'2017-07-01 15:30:00'),(209,1,'testTask','test','1',0,NULL,1003,'2017-07-01 16:00:00'),(210,1,'testTask','test','1',0,NULL,1008,'2017-07-01 16:30:00'),(211,1,'testTask','test','1',0,NULL,1005,'2017-07-01 17:00:00'),(212,1,'testTask','test','1',0,NULL,1018,'2017-07-01 17:30:00'),(213,1,'testTask','test','1',0,NULL,1008,'2017-07-01 18:00:00'),(214,1,'testTask','test','1',0,NULL,1002,'2017-07-01 18:30:00'),(215,1,'testTask','test','1',0,NULL,1004,'2017-07-01 19:00:00'),(216,1,'testTask','test','1',0,NULL,1007,'2017-07-01 19:30:00'),(217,1,'testTask','test','1',0,NULL,1006,'2017-07-01 20:00:00'),(218,1,'testTask','test','1',0,NULL,1008,'2017-07-01 20:30:00'),(219,1,'testTask','test','1',0,NULL,1009,'2017-07-01 21:00:00'),(220,1,'testTask','test','1',0,NULL,1006,'2017-07-01 21:30:00'),(221,1,'testTask','test','1',0,NULL,1015,'2017-07-01 22:00:00'),(222,1,'testTask','test','1',0,NULL,1005,'2017-07-01 22:30:00'),(223,1,'testTask','test','1',0,NULL,1006,'2017-07-01 23:00:00'),(224,1,'testTask','test','1',0,NULL,1015,'2017-07-01 23:30:00'),(225,1,'testTask','test','1',0,NULL,1115,'2017-07-02 00:00:00'),(226,1,'testTask','test','1',0,NULL,1071,'2017-07-02 00:30:00'),(227,1,'testTask','test','1',0,NULL,1016,'2017-07-02 01:00:00'),(228,1,'testTask','test','1',0,NULL,1006,'2017-07-02 01:30:00'),(229,1,'testTask','test','1',0,NULL,1017,'2017-07-02 02:00:00'),(230,1,'testTask','test','1',0,NULL,1018,'2017-07-02 02:30:00'),(231,1,'testTask','test','1',0,NULL,1035,'2017-07-02 03:00:00'),(232,1,'testTask','test','1',0,NULL,1029,'2017-07-02 03:30:00'),(233,1,'testTask','test','1',0,NULL,1024,'2017-07-02 04:00:00'),(234,1,'testTask','test','1',0,NULL,1021,'2017-07-02 04:30:00'),(235,1,'testTask','test','1',0,NULL,1015,'2017-07-02 05:00:00'),(236,1,'testTask','test','1',0,NULL,1041,'2017-07-02 05:30:00'),(237,1,'testTask','test','1',0,NULL,1031,'2017-07-02 06:00:00'),(238,1,'testTask','test','1',0,NULL,1005,'2017-07-02 06:30:00'),(239,1,'testTask','test','1',0,NULL,1015,'2017-07-02 07:00:00'),(240,1,'testTask','test','1',0,NULL,1072,'2017-07-02 07:30:00'),(241,1,'testTask','test','1',0,NULL,1088,'2017-07-02 08:00:00'),(242,1,'testTask','test','1',0,NULL,1018,'2017-07-02 08:30:00'),(243,1,'testTask','test','1',0,NULL,1126,'2017-07-02 09:00:00'),(244,1,'testTask','test','1',0,NULL,1013,'2017-07-02 09:30:00'),(245,1,'testTask','test','1',0,NULL,1074,'2017-07-02 10:00:00'),(246,1,'testTask','test','1',0,NULL,1138,'2017-07-02 10:30:00'),(247,1,'testTask','test','1',0,NULL,1157,'2017-07-02 11:00:00'),(248,1,'testTask','test','1',0,NULL,1371,'2017-07-02 11:30:00'),(249,1,'testTask','test','1',0,NULL,1205,'2017-07-02 12:00:00'),(250,1,'testTask','test','1',0,NULL,1387,'2017-07-02 12:30:00'),(251,1,'testTask','test','1',0,NULL,1249,'2017-07-02 13:00:00'),(252,1,'testTask','test','1',0,NULL,1206,'2017-07-02 13:30:00'),(253,1,'testTask','test','1',0,NULL,1539,'2017-07-02 14:00:00'),(254,1,'testTask','test','1',0,NULL,1201,'2017-07-02 14:30:00'),(255,1,'testTask','test','1',0,NULL,1852,'2017-07-02 15:00:01'),(256,1,'testTask','test','1',0,NULL,2315,'2017-07-02 15:30:00'),(257,1,'testTask','test','1',0,NULL,1178,'2017-07-02 16:00:00'),(258,1,'testTask','test','1',0,NULL,1665,'2017-07-02 16:30:00'),(259,1,'testTask','test','1',0,NULL,1765,'2017-07-02 17:00:00'),(260,1,'testTask','test','1',0,NULL,1673,'2017-07-02 17:30:00'),(261,1,'testTask','test','1',0,NULL,2572,'2017-07-02 18:00:00'),(262,1,'testTask','test','1',0,NULL,2085,'2017-07-02 18:30:01'),(263,1,'testTask','test','1',0,NULL,1859,'2017-07-02 19:00:00'),(264,1,'testTask','test','1',0,NULL,1994,'2017-07-02 19:30:00'),(265,1,'testTask','test','1',0,NULL,2588,'2017-07-02 20:00:00'),(266,1,'testTask','test','1',0,NULL,1493,'2017-07-02 20:30:00'),(267,1,'testTask','test','1',0,NULL,2516,'2017-07-02 21:00:01'),(268,1,'testTask','test','1',0,NULL,1811,'2017-07-02 21:30:00'),(269,1,'testTask','test','1',0,NULL,1906,'2017-07-02 22:00:00'),(270,1,'testTask','test','1',0,NULL,2392,'2017-07-02 22:30:01'),(271,1,'testTask','test','1',0,NULL,1458,'2017-07-02 23:00:00'),(272,1,'testTask','test','1',0,NULL,1700,'2017-07-02 23:30:00'),(273,1,'testTask','test','1',0,NULL,3187,'2017-07-03 00:00:00'),(274,1,'testTask','test','1',0,NULL,4836,'2017-07-03 00:30:01'),(275,1,'testTask','test','1',0,NULL,2721,'2017-07-03 01:00:00'),(276,1,'testTask','test','1',0,NULL,1081,'2017-07-03 01:30:00'),(277,1,'testTask','test','1',0,NULL,2604,'2017-07-03 02:00:00'),(278,1,'testTask','test','1',0,NULL,2159,'2017-07-03 02:30:00'),(279,1,'testTask','test','1',0,NULL,4764,'2017-07-03 03:00:06'),(280,1,'testTask','test','1',0,NULL,4493,'2017-07-03 03:30:01'),(281,1,'testTask','test','1',0,NULL,2725,'2017-07-03 04:00:00'),(282,1,'testTask','test','1',0,NULL,1661,'2017-07-03 04:30:00'),(283,1,'testTask','test','1',0,NULL,2012,'2017-07-03 05:00:00'),(284,1,'testTask','test','1',0,NULL,3183,'2017-07-03 05:30:02'),(285,1,'testTask','test','1',0,NULL,1016,'2017-07-03 06:00:00'),(286,1,'testTask','test','1',0,NULL,1111,'2017-07-03 06:30:00'),(287,1,'testTask','test','1',0,NULL,1159,'2017-07-13 11:30:00'),(288,1,'testTask','test','1',0,NULL,1018,'2017-07-13 12:00:00'),(289,1,'testTask','test','1',0,NULL,1008,'2017-07-13 12:30:00'),(290,1,'testTask','test','1',0,NULL,1018,'2017-07-13 13:00:00'),(291,1,'testTask','test','1',0,NULL,1035,'2017-07-13 13:30:00'),(292,1,'testTask','test','1',0,NULL,1022,'2017-07-18 12:00:00'),(293,1,'testTask','test','1',0,NULL,1006,'2017-07-18 12:30:00'),(294,1,'testTask','test','1',0,NULL,1003,'2017-07-18 13:00:00'),(295,1,'testTask','test','1',0,NULL,1015,'2017-07-18 13:30:00'),(296,1,'testTask','test','1',0,NULL,1007,'2017-07-18 14:00:00'),(297,1,'testTask','test','1',0,NULL,1006,'2017-07-18 14:30:00'),(298,1,'testTask','test','1',0,NULL,1005,'2017-07-18 15:00:00'),(299,1,'testTask','test','1',0,NULL,1012,'2017-07-18 15:30:00'),(300,1,'testTask','test','1',0,NULL,1016,'2017-07-18 16:00:00'),(301,1,'testTask','test','1',0,NULL,1008,'2017-07-18 16:30:00'),(302,1,'testTask','test','1',0,NULL,1007,'2017-07-18 17:00:00'),(303,1,'testTask','test','1',0,NULL,1004,'2017-07-18 17:30:00'),(304,1,'testTask','test','1',0,NULL,1028,'2017-07-18 18:00:00'),(305,1,'testTask','test','1',0,NULL,1003,'2017-07-18 18:30:00'),(306,1,'testTask','test','1',0,NULL,1076,'2017-07-18 19:00:00'),(307,1,'testTask','test','1',0,NULL,1030,'2017-07-18 19:30:00'),(308,1,'testTask','test','1',0,NULL,1004,'2017-07-18 20:00:00'),(309,1,'testTask','test','1',0,NULL,1013,'2017-07-18 20:30:00'),(310,1,'testTask','test','1',0,NULL,1002,'2017-07-18 21:00:00'),(311,1,'testTask','test','1',0,NULL,1005,'2017-07-18 21:30:00'),(312,1,'testTask','test','1',0,NULL,1004,'2017-07-18 22:00:00'),(313,1,'testTask','test','1',0,NULL,1016,'2017-07-18 22:30:00'),(314,1,'testTask','test','1',0,NULL,1005,'2017-07-18 23:00:00'),(315,1,'testTask','test','1',0,NULL,1031,'2017-07-18 23:30:00'),(316,1,'testTask','test','1',0,NULL,1083,'2017-07-19 00:00:00'),(317,1,'testTask','test','1',0,NULL,1003,'2017-07-19 00:30:00'),(318,1,'testTask','test','1',0,NULL,1032,'2017-07-19 01:00:00'),(319,1,'testTask','test','1',0,NULL,1004,'2017-07-19 01:30:00'),(320,1,'testTask','test','1',0,NULL,1003,'2017-07-19 02:00:00'),(321,1,'testTask','test','1',0,NULL,1007,'2017-07-19 02:30:00'),(322,1,'testTask','test','1',0,NULL,1005,'2017-07-19 03:00:00'),(323,1,'testTask','test','1',0,NULL,1005,'2017-07-19 03:30:00'),(324,1,'testTask','test','1',0,NULL,1005,'2017-07-19 04:00:00'),(325,1,'testTask','test','1',0,NULL,1009,'2017-07-19 04:30:00'),(326,1,'testTask','test','1',0,NULL,1004,'2017-07-19 05:00:00'),(327,1,'testTask','test','1',0,NULL,1027,'2017-07-19 05:30:00'),(328,1,'testTask','test','1',0,NULL,1007,'2017-07-19 06:00:00'),(329,1,'testTask','test','1',0,NULL,1005,'2017-07-19 06:30:00'),(330,1,'testTask','test','1',0,NULL,1006,'2017-07-19 07:00:00'),(331,1,'testTask','test','1',0,NULL,1024,'2017-07-19 07:30:00'),(332,1,'testTask','test','1',0,NULL,1019,'2017-07-19 08:00:00'),(333,1,'testTask','test','1',0,NULL,1003,'2017-07-19 08:30:00'),(334,1,'testTask','test','1',0,NULL,1005,'2017-07-19 09:00:00'),(335,1,'testTask','test','1',0,NULL,1012,'2017-07-19 09:30:00'),(336,1,'testTask','test','1',0,NULL,1012,'2017-07-19 10:00:00'),(337,1,'testTask','test','1',0,NULL,1002,'2017-07-19 10:30:00'),(338,1,'testTask','test','1',0,NULL,1028,'2017-07-27 14:00:00'),(339,1,'testTask','test','1',0,NULL,1012,'2017-07-27 14:30:00'),(340,1,'testTask','test','1',0,NULL,1003,'2017-07-27 15:00:00'),(341,1,'testTask','test','1',0,NULL,1023,'2017-07-27 15:30:00'),(342,1,'testTask','test','1',0,NULL,1015,'2017-07-27 16:00:00'),(343,1,'testTask','test','1',0,NULL,1006,'2017-07-27 16:30:00'),(344,1,'testTask','test','1',0,NULL,1003,'2017-07-27 17:00:00'),(345,1,'testTask','test','1',0,NULL,1005,'2017-07-27 17:30:00'),(346,1,'testTask','test','1',0,NULL,1188,'2017-07-31 10:30:00'),(347,1,'testTask','test','1',0,NULL,1007,'2017-07-31 11:00:00'),(348,1,'testTask','test','1',0,NULL,1044,'2017-07-31 11:30:00'),(349,1,'testTask','test','1',0,NULL,1006,'2017-07-31 12:00:00'),(350,1,'testTask','test','1',0,NULL,1003,'2017-07-31 12:30:00'),(351,1,'testTask','test','1',0,NULL,1006,'2017-07-31 13:00:00'),(352,1,'testTask','test','1',0,NULL,1004,'2017-07-31 13:30:00'),(353,1,'testTask','test','1',0,NULL,1004,'2017-07-31 14:00:00'),(354,1,'testTask','test','1',0,NULL,1011,'2017-07-31 14:30:00'),(355,1,'testTask','test','1',0,NULL,1007,'2017-07-31 15:00:00'),(356,1,'testTask','test','1',0,NULL,1005,'2017-07-31 15:30:00'),(357,1,'testTask','test','1',0,NULL,1005,'2017-07-31 16:00:00'),(358,1,'testTask','test','1',0,NULL,1006,'2017-07-31 16:30:00'),(359,1,'testTask','test','1',0,NULL,1028,'2017-07-31 17:00:00'),(360,1,'testTask','test','1',0,NULL,1005,'2017-07-31 17:30:00'),(361,1,'testTask','test','1',0,NULL,1206,'2017-08-01 15:00:00'),(362,1,'testTask','test','1',0,NULL,1036,'2017-08-01 15:30:00'),(363,1,'testTask','test','1',0,NULL,1018,'2017-08-01 16:00:00'),(364,1,'testTask','test','1',0,NULL,1013,'2017-08-01 16:30:00'),(365,1,'testTask','test','1',0,NULL,1003,'2017-08-01 17:00:00'),(366,1,'testTask','test','1',0,NULL,1004,'2017-08-01 17:30:00'),(367,1,'testTask','test','1',0,NULL,1318,'2017-08-02 10:30:00'),(368,1,'testTask','test','1',0,NULL,1013,'2017-08-02 11:30:00'),(369,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,3,'2017-08-02 12:00:00'),(370,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,11,'2017-08-02 12:21:11'),(371,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,6,'2017-08-02 12:30:00'),(372,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,4,'2017-08-02 13:00:00'),(373,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,2,'2017-08-02 13:30:00'),(374,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,3,'2017-08-02 14:00:00'),(375,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,2,'2017-08-02 15:00:00'),(376,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,2,'2017-08-02 16:00:00'),(377,1,'testTask','test','{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}',0,NULL,14,'2017-08-02 17:00:00'),(378,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,3,'2017-08-02 17:15:50'),(379,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,8,'2017-08-02 17:17:12'),(380,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,17,'2017-08-03 12:00:00'),(381,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,19,'2017-08-03 13:00:00'),(382,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,4,'2017-08-03 15:00:00'),(383,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,13,'2017-08-03 16:00:00'),(384,1,'testTask','test','{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}',0,NULL,14,'2017-08-03 17:00:00');
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'CLOUD_STORAGE_CONFIG_KEY','{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}',0,'云存储配置信息');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (1,0,'集团公司',0,0),(2,1,'华东区域',1,0),(3,1,'华北区域',2,0),(4,1,'华南区域',3,0),(5,2,'上海分公司',1,0),(6,2,'南京分公司',2,0),(7,4,'广州分公司',1,0),(8,3,'北京分公司',1,0);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (15,'admin','删除用户','com.basic.sys.controller.SysUserController.delete()','[3]','0:0:0:0:0:0:0:1','2017-05-22 15:18:44'),(16,'admin','修改用户','com.basic.sys.controller.SysUserController.update()','{\"createTime\":1495357931000,\"email\":\"wjj542@gmai.com\",\"mobile\":\"13813934301\",\"roleIdList\":[],\"status\":1,\"userId\":1,\"username\":\"admin\"}','0:0:0:0:0:0:0:1','2017-06-02 13:59:01'),(17,'admin','保存角色','com.basic.sys.controller.SysRoleController.save()','{\"menuIdList\":[1,28],\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-02 14:00:19'),(18,'admin','保存配置','com.basic.sys.controller.SysConfigController.save()','{\"key\":\"1\",\"remark\":\"1\",\"value\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-28 15:52:27'),(19,'admin','保存配置','com.basic.sys.controller.SysConfigController.save()','{\"key\":\"2\",\"remark\":\"2\",\"value\":\"2\"}','0:0:0:0:0:0:0:1','2017-06-28 15:52:31'),(20,'admin','保存配置','com.basic.sys.controller.SysConfigController.save()','{\"key\":\"3\",\"remark\":\"3\",\"value\":\"33\"}','0:0:0:0:0:0:0:1','2017-06-28 15:53:15'),(21,'admin','修改定时任务','com.basic.sys.controller.ScheduleJobController.update()','{\"beanName\":\"testTask\",\"createTime\":1480605406000,\"cronExpression\":\"0 0/30 * * * ?\",\"jobId\":1,\"methodName\":\"test\",\"params\":\"1\",\"remark\":\"有参数测试\",\"status\":0}','0:0:0:0:0:0:0:1','2017-06-28 15:55:47'),(22,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1496383219000,\"createUserId\":1,\"menuIdList\":[1,28],\"roleId\":2,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-28 15:55:56'),(23,'admin','修改用户','com.basic.sys.controller.SysUserController.update()','{\"createTime\":1495357931000,\"email\":\"wjj542@gmai.com\",\"mobile\":\"13813934301\",\"roleIdList\":[],\"status\":1,\"userId\":1,\"username\":\"admin\"}','0:0:0:0:0:0:0:1','2017-06-28 15:56:37'),(24,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1496383219000,\"createUserId\":1,\"menuIdList\":[1,28],\"roleId\":2,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-28 15:56:53'),(25,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"icon\":\"fa fa-cog\",\"menuId\":1,\"name\":\"系统管理\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2017-06-28 15:57:01'),(26,'admin','保存配置','com.basic.sys.controller.SysConfigController.save()','{\"key\":\"4\",\"remark\":\"4\",\"value\":\"4\"}','0:0:0:0:0:0:0:1','2017-06-28 16:04:25'),(27,'admin','修改配置','com.basic.sys.controller.SysConfigController.update()','{\"id\":2,\"key\":\"1\",\"remark\":\"1\",\"value\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-28 17:46:53'),(28,'admin','删除文件','com.basic.sys.controller.SysOssController.delete()','[4]','0:0:0:0:0:0:0:1','2017-06-29 16:18:40'),(29,'admin','上传文件','com.basic.sys.controller.SysOssController.upload()','参数过长不显示','0:0:0:0:0:0:0:1','2017-06-29 16:25:08'),(30,'admin','删除配置','com.basic.sys.controller.SysConfigController.delete()','[2,4,5,6]','0:0:0:0:0:0:0:1','2017-06-29 16:27:06'),(31,'admin','保存配置','com.basic.sys.controller.SysConfigController.save()','{\"key\":\"1\",\"remark\":\"1\",\"value\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-29 16:27:17'),(32,'admin','保存配置','com.basic.sys.controller.SysConfigController.save()','{\"key\":\"22\",\"remark\":\"22\",\"value\":\"222\"}','0:0:0:0:0:0:0:1','2017-06-29 16:39:38'),(33,'admin','修改配置','com.basic.sys.controller.SysConfigController.update()','{\"id\":7,\"key\":\"1\",\"remark\":\"1\",\"value\":\"1\"}','0:0:0:0:0:0:0:1','2017-06-29 16:42:08'),(34,'admin','上传文件','com.basic.sys.controller.SysOssController.upload()','参数过长不显示','0:0:0:0:0:0:0:1','2017-07-27 14:25:37'),(35,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"11\",\"orderNum\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"1\"}','0:0:0:0:0:0:0:1','2017-07-27 15:40:19'),(36,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"22\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"11\",\"type\":1}','0:0:0:0:0:0:0:1','2017-07-27 15:40:28'),(37,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"22\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"11\",\"type\":1,\"url\":\"1\"}','0:0:0:0:0:0:0:1','2017-07-27 15:40:30'),(38,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"22\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"11\",\"type\":1,\"url\":\"1\"}','0:0:0:0:0:0:0:1','2017-07-27 15:40:39'),(39,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"menuId\":31,\"name\":\"11\",\"orderNum\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0,\"url\":\"1\"}','0:0:0:0:0:0:0:1','2017-07-27 15:40:46'),(40,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"22\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"11\",\"type\":1,\"url\":\"22\"}','0:0:0:0:0:0:0:1','2017-07-27 15:41:00'),(41,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"icon\":\"fa fa-user\",\"menuId\":2,\"name\":\"用户列表\",\"orderNum\":1,\"parentId\":1,\"parentName\":\"系统管理\",\"type\":1,\"url\":\"sys/user.html\"}','0:0:0:0:0:0:0:1','2017-07-31 11:19:09'),(42,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"111\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2017-07-31 11:19:36'),(43,'admin','删除角色','com.basic.sys.controller.SysRoleController.delete()','[2]','0:0:0:0:0:0:0:1','2017-07-31 11:27:36'),(44,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"menuId\":31,\"name\":\"222\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2017-07-31 11:30:06'),(45,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"2222\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"222\",\"type\":1}','0:0:0:0:0:0:0:1','2017-08-01 15:16:06'),(46,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"2222\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"222\",\"type\":1,\"url\":\"2222\"}','0:0:0:0:0:0:0:1','2017-08-01 15:16:09'),(47,'admin','删除菜单','com.basic.sys.controller.SysMenuController.delete()','null','0:0:0:0:0:0:0:1','2017-08-01 15:24:06'),(48,'admin','删除菜单','com.basic.sys.controller.SysMenuController.delete()','31','0:0:0:0:0:0:0:1','2017-08-01 15:32:00'),(49,'admin','删除菜单','com.basic.sys.controller.SysMenuController.delete()','31','0:0:0:0:0:0:0:1','2017-08-01 15:32:01'),(50,'admin','删除菜单','com.basic.sys.controller.SysMenuController.delete()','32','0:0:0:0:0:0:0:1','2017-08-01 15:32:16'),(51,'admin','删除菜单','com.basic.sys.controller.SysMenuController.delete()','31','0:0:0:0:0:0:0:1','2017-08-01 15:32:19'),(52,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"111\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2017-08-01 15:34:08'),(53,'admin','删除菜单','com.basic.sys.controller.SysMenuController.delete()','33','0:0:0:0:0:0:0:1','2017-08-01 15:34:11'),(54,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"部门\",\"orderNum\":0,\"parentId\":1,\"parentName\":\"系统管理\",\"type\":1,\"url\":\"sys/dept.html\"}','0:0:0:0:0:0:0:1','2017-08-01 15:55:27'),(55,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"新增\",\"orderNum\":0,\"parentId\":34,\"parentName\":\"部门\",\"perms\":\"sys:dept:save\",\"type\":2}','0:0:0:0:0:0:0:1','2017-08-01 15:59:11'),(56,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"menuId\":34,\"name\":\"部门\",\"orderNum\":0,\"parentId\":1,\"parentName\":\"系统管理\",\"perms\":\"sys:dept:list,sys:dept:select\",\"type\":1,\"url\":\"sys/dept.html\"}','0:0:0:0:0:0:0:1','2017-08-01 16:05:09'),(57,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"修改\",\"orderNum\":0,\"parentId\":34,\"parentName\":\"部门\",\"perms\":\"sys:dept:update\",\"type\":2}','0:0:0:0:0:0:0:1','2017-08-01 16:06:25'),(58,'admin','保存菜单','com.basic.sys.controller.SysMenuController.save()','{\"name\":\"删除\",\"orderNum\":0,\"parentId\":34,\"parentName\":\"部门\",\"perms\":\"sys:dept:delete\",\"type\":2}','0:0:0:0:0:0:0:1','2017-08-01 16:06:42'),(59,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"menuId\":34,\"name\":\"部门\",\"orderNum\":0,\"parentId\":1,\"parentName\":\"系统管理\",\"perms\":\"sys:dept:list,sys:dept:select,sys:dept:info\",\"type\":1,\"url\":\"sys/dept.html\"}','0:0:0:0:0:0:0:1','2017-08-01 16:07:08'),(60,'admin','删除配置','com.basic.sys.controller.SysConfigController.delete()','[7,8]','0:0:0:0:0:0:0:1','2017-08-01 16:35:21'),(61,'admin','保存用户','com.basic.sys.controller.SysUserController.save()','{\"deptId\":1,\"deptName\":\"超人集团公司\",\"email\":\"\",\"password\":\"1\",\"roleIdList\":[],\"status\":1,\"username\":\"supernman\"}','0:0:0:0:0:0:0:1','2017-08-02 10:40:51'),(62,'admin','保存用户','com.basic.sys.controller.SysUserController.save()','{\"deptId\":1,\"deptName\":\"超人集团公司\",\"email\":\"1@supernman.com\",\"password\":\"1\",\"roleIdList\":[],\"status\":1,\"username\":\"supernman\"}','0:0:0:0:0:0:0:1','2017-08-02 10:41:04'),(63,'admin','保存用户','com.basic.sys.controller.SysUserController.save()','{\"deptId\":6,\"deptName\":\"南京分公司\",\"email\":\"nj@superman.com\",\"password\":\"1\",\"roleIdList\":[],\"status\":1,\"username\":\"njsuperman\"}','0:0:0:0:0:0:0:1','2017-08-02 10:41:32'),(64,'admin','修改用户','com.basic.sys.controller.SysUserController.update()','{\"createTime\":1501641665000,\"createUserId\":1,\"deptId\":1,\"deptName\":\"超人集团公司\",\"email\":\"admin@supernman.com\",\"roleIdList\":[],\"status\":1,\"userId\":2,\"username\":\"supernman\"}','0:0:0:0:0:0:0:1','2017-08-02 10:41:55'),(65,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"icon\":\"fa fa-file-code-o\",\"menuId\":34,\"name\":\"部门\",\"orderNum\":9,\"parentId\":1,\"parentName\":\"系统管理\",\"perms\":\"sys:dept:list,sys:dept:select,sys:dept:info\",\"type\":1,\"url\":\"sys/dept.html\"}','0:0:0:0:0:0:0:1','2017-08-02 10:43:18'),(66,'admin','修改菜单','com.basic.sys.controller.SysMenuController.update()','{\"icon\":\"fa fa-file-code-o\",\"menuId\":34,\"name\":\"部门管理\",\"orderNum\":0,\"parentId\":1,\"parentName\":\"系统管理\",\"perms\":\"sys:dept:list,sys:dept:select,sys:dept:info\",\"type\":1,\"url\":\"sys/dept.html\"}','0:0:0:0:0:0:0:1','2017-08-02 10:43:46'),(67,'admin','保存角色','com.basic.sys.controller.SysRoleController.save()','{\"deptId\":6,\"deptIdList\":[1],\"deptName\":\"南京分公司\",\"menuIdList\":[1,34,35],\"remark\":\"1\",\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:09:52'),(68,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[6],\"menuIdList\":[1,34,35],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:10:48'),(69,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[5],\"deptName\":\"南京分公司\",\"menuIdList\":[1,34,35],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:15:12'),(70,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[2],\"menuIdList\":[1,34,35],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:15:23'),(71,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[],\"menuIdList\":[1,34,35,36,37,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,30,29,28],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:15:46'),(72,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[],\"deptName\":\"南京分公司\",\"menuIdList\":[1,34,35,36,37,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,30,29,28],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:16:13'),(73,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[1],\"deptName\":\"南京分公司\",\"menuIdList\":[1,34,35,36,37,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,30,29,28],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:23:03'),(74,'admin','修改角色','com.basic.sys.controller.SysRoleController.update()','{\"createTime\":1501643393000,\"createUserId\":1,\"deptId\":6,\"deptIdList\":[1,6,8,4,7],\"deptName\":\"南京分公司\",\"menuIdList\":[1,34,35,36,37,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,30,29,28],\"remark\":\"1\",\"roleId\":1,\"roleName\":\"1\"}','0:0:0:0:0:0:0:1','2017-08-02 11:23:13'),(75,'admin','删除角色','com.basic.sys.controller.SysRoleController.delete()','[1]','0:0:0:0:0:0:0:1','2017-08-02 11:23:55'),(76,'admin','保存角色','com.basic.sys.controller.SysRoleController.save()','{\"deptId\":2,\"deptIdList\":[2,5,6],\"deptName\":\"华东区域\",\"menuIdList\":[1,34,35,36,37,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,6,7,8,9,10,11,12,13,14,27,30,29,28],\"remark\":\"超人华东管理员\",\"roleName\":\"超人华东管理员\"}','0:0:0:0:0:0:0:1','2017-08-02 11:25:12'),(77,'admin','删除定时任务','com.basic.sys.controller.ScheduleJobController.delete()','[2]','0:0:0:0:0:0:0:1','2017-08-02 11:54:10'),(78,'admin','修改定时任务','com.basic.sys.controller.ScheduleJobController.update()','{\"beanName\":\"testTask\",\"createTime\":1480605406000,\"cronExpression\":\"0 0/30 * * * ?\",\"jobId\":1,\"methodName\":\"test\",\"params\":\"{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}\",\"remark\":\"有参数测试\",\"status\":0}','0:0:0:0:0:0:0:1','2017-08-02 11:55:20'),(79,'admin','立即执行任务','com.basic.sys.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2017-08-02 12:21:11'),(80,'admin','修改定时任务','com.basic.sys.controller.ScheduleJobController.update()','{\"beanName\":\"testTask\",\"createTime\":1480605406000,\"cronExpression\":\"0 0/60 * * * ?\",\"jobId\":1,\"methodName\":\"test\",\"params\":\"{key1:\'1\',key2:\'2\',key3:\'3\',key4:\'4\'}\",\"remark\":\"有参数测试\",\"status\":0}','0:0:0:0:0:0:0:1','2017-08-02 13:47:58'),(81,'admin','修改密码','com.basic.sys.controller.SysUserController.password()','\"1111\"','0:0:0:0:0:0:0:1','2017-08-02 14:12:02'),(82,'admin','修改定时任务','com.basic.sys.controller.ScheduleJobController.update()','{\"beanName\":\"testTask\",\"createTime\":1480605406000,\"cronExpression\":\"0 0/60 * * * ?\",\"jobId\":1,\"methodName\":\"test\",\"params\":\"{key1:\'value1\',key2:\'value2\',key3:\'value3\',key4:\'value4\'}\",\"remark\":\"有参数测试\",\"status\":0}','0:0:0:0:0:0:0:1','2017-08-02 17:15:46'),(83,'admin','立即执行任务','com.basic.sys.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2017-08-02 17:15:50'),(84,'admin','立即执行任务','com.basic.sys.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2017-08-02 17:17:12');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理',NULL,NULL,0,'fa fa-cog',0),(2,1,'用户列表','sys/user.html',NULL,1,'fa fa-user',1),(3,1,'角色管理','sys/role.html',NULL,1,'fa fa-user-secret',2),(4,1,'菜单管理','sys/menu.html',NULL,1,'fa fa-th-list',3),(5,1,'SQL监控','druid/sql.html',NULL,1,'fa fa-bug',4),(6,1,'定时任务','sys/schedule.html',NULL,1,'fa fa-tasks',5),(7,6,'查看',NULL,'sys:schedule:list,sys:schedule:info',2,NULL,0),(8,6,'新增',NULL,'sys:schedule:save',2,NULL,0),(9,6,'修改',NULL,'sys:schedule:update',2,NULL,0),(10,6,'删除',NULL,'sys:schedule:delete',2,NULL,0),(11,6,'暂停',NULL,'sys:schedule:pause',2,NULL,0),(12,6,'恢复',NULL,'sys:schedule:resume',2,NULL,0),(13,6,'立即执行',NULL,'sys:schedule:run',2,NULL,0),(14,6,'日志列表',NULL,'sys:schedule:log',2,NULL,0),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:perms',2,NULL,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:perms',2,NULL,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0),(27,1,'参数管理','sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',6),(28,1,'代码生成器','sys/generator.html','sys:generator:list,sys:generator:code',1,'fa fa-rocket',8),(29,1,'系统日志','sys/log.html','sys:log:list',1,'fa fa-file-text-o',7),(30,1,'云文件管理','sys/oss.html','sys:oss:all',1,'fa fa-file-image-o',6),(34,1,'部门管理','sys/dept.html','sys:dept:list,sys:dept:select,sys:dept:info',1,'fa fa-file-code-o',0),(35,34,'新增',NULL,'sys:dept:save',2,NULL,0),(36,34,'修改',NULL,'sys:dept:update',2,NULL,0),(37,34,'删除',NULL,'sys:dept:delete',2,NULL,0);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oss`
--

DROP TABLE IF EXISTS `sys_oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oss`
--

LOCK TABLES `sys_oss` WRITE;
/*!40000 ALTER TABLE `sys_oss` DISABLE KEYS */;
INSERT INTO `sys_oss` VALUES (5,'http://7xqbwh.dl1.z0.glb.clouddn.com/upload/20170629/0194b01e4d9443d2a22e3e5af08e20a0','2017-06-29 16:25:10'),(6,'http://7xqbwh.dl1.z0.glb.clouddn.com/upload/20170727/7f603474c99341978b179602df38e8b1','2017-07-27 14:25:38');
/*!40000 ALTER TABLE `sys_oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (2,'超人华东管理员','超人华东管理员',1,'2017-08-02 11:25:12',2);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (10,2,2),(11,2,5),(12,2,6);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (146,2,1),(147,2,34),(148,2,35),(149,2,36),(150,2,37),(151,2,2),(152,2,15),(153,2,16),(154,2,17),(155,2,18),(156,2,3),(157,2,19),(158,2,20),(159,2,21),(160,2,22),(161,2,4),(162,2,23),(163,2,24),(164,2,25),(165,2,26),(166,2,5),(167,2,6),(168,2,7),(169,2,8),(170,2,9),(171,2,10),(172,2,11),(173,2,12),(174,2,13),(175,2,14),(176,2,27),(177,2,30),(178,2,29),(179,2,28);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','wjj542@gmai.com','13813934301',1,NULL,'2017-05-21 17:12:11',NULL),(2,'supernman','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','admin@supernman.com',NULL,1,1,'2017-08-02 10:41:05',1),(3,'njsuperman','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','nj@superman.com',NULL,1,1,'2017-08-02 10:41:32',6);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_token`
--

DROP TABLE IF EXISTS `tb_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_token`
--

LOCK TABLES `tb_token` WRITE;
/*!40000 ALTER TABLE `tb_token` DISABLE KEYS */;
INSERT INTO `tb_token` VALUES (1,'generator','2018-06-23 22:37:41','2017-06-23 22:37:41');
/*!40000 ALTER TABLE `tb_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'mark','13813934301','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','2017-03-23 22:37:41');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-04 10:40:30
