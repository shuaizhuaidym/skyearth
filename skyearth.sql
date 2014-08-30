-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: skyearth
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `jbpm4_deployment`
--

DROP TABLE IF EXISTS `jbpm4_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_deployment` (
  `DBID_` bigint(20) NOT NULL,
  `NAME_` longtext,
  `TIMESTAMP_` bigint(20) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_deployment`
--

LOCK TABLES `jbpm4_deployment` WRITE;
/*!40000 ALTER TABLE `jbpm4_deployment` DISABLE KEYS */;
INSERT INTO `jbpm4_deployment` VALUES (30001,NULL,0,'active'),(50001,NULL,0,'active');
/*!40000 ALTER TABLE `jbpm4_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_deployprop`
--

DROP TABLE IF EXISTS `jbpm4_deployprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_deployprop` (
  `DBID_` bigint(20) NOT NULL,
  `DEPLOYMENT_` bigint(20) DEFAULT NULL,
  `OBJNAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `STRINGVAL_` varchar(255) DEFAULT NULL,
  `LONGVAL_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_DEPLPROP_DEPL` (`DEPLOYMENT_`),
  KEY `FK_DEPLPROP_DEPL` (`DEPLOYMENT_`),
  CONSTRAINT `FK_DEPLPROP_DEPL` FOREIGN KEY (`DEPLOYMENT_`) REFERENCES `jbpm4_deployment` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_deployprop`
--

LOCK TABLES `jbpm4_deployprop` WRITE;
/*!40000 ALTER TABLE `jbpm4_deployprop` DISABLE KEYS */;
INSERT INTO `jbpm4_deployprop` VALUES (30003,30001,'leave','langid','jpdl-4.3',NULL),(30004,30001,'leave','pdid','leave-1',NULL),(30005,30001,'leave','pdkey','leave',NULL),(30006,30001,'leave','pdversion',NULL,1),(50003,50001,'test','langid','jpdl-4.3',NULL),(50004,50001,'test','pdid','test-1',NULL),(50005,50001,'test','pdkey','test',NULL),(50006,50001,'test','pdversion',NULL,1);
/*!40000 ALTER TABLE `jbpm4_deployprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_execution`
--

DROP TABLE IF EXISTS `jbpm4_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_execution` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ACTIVITYNAME_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `HASVARS_` bit(1) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `HISACTINST_` bigint(20) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `INSTANCE_` bigint(20) DEFAULT NULL,
  `SUPEREXEC_` bigint(20) DEFAULT NULL,
  `SUBPROCINST_` bigint(20) DEFAULT NULL,
  `PARENT_IDX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  UNIQUE KEY `ID_` (`ID_`),
  KEY `IDX_EXEC_SUPEREXEC` (`SUPEREXEC_`),
  KEY `IDX_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `IDX_EXEC_SUBPI` (`SUBPROCINST_`),
  KEY `IDX_EXEC_PARENT` (`PARENT_`),
  KEY `FK_EXEC_PARENT` (`PARENT_`),
  KEY `FK_EXEC_SUBPI` (`SUBPROCINST_`),
  KEY `FK_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `FK_EXEC_SUPEREXEC` (`SUPEREXEC_`),
  CONSTRAINT `FK_EXEC_INSTANCE` FOREIGN KEY (`INSTANCE_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_EXEC_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_EXEC_SUBPI` FOREIGN KEY (`SUBPROCINST_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_EXEC_SUPEREXEC` FOREIGN KEY (`SUPEREXEC_`) REFERENCES `jbpm4_execution` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_execution`
--

LOCK TABLES `jbpm4_execution` WRITE;
/*!40000 ALTER TABLE `jbpm4_execution` DISABLE KEYS */;
INSERT INTO `jbpm4_execution` VALUES (30007,'pvm',1,'申请','leave-1','',NULL,NULL,'leave.30007','active-root',NULL,0,30010,NULL,30007,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jbpm4_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_hist_actinst`
--

DROP TABLE IF EXISTS `jbpm4_hist_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_hist_actinst` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `HPROCI_` bigint(20) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TRANSITION_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` int(11) DEFAULT NULL,
  `HTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HACTI_HPROCI` (`HPROCI_`),
  KEY `IDX_HTI_HTASK` (`HTASK_`),
  KEY `FK_HACTI_HPROCI` (`HPROCI_`),
  KEY `FK_HTI_HTASK` (`HTASK_`),
  CONSTRAINT `FK_HACTI_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `jbpm4_hist_procinst` (`DBID_`),
  CONSTRAINT `FK_HTI_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_hist_actinst`
--

LOCK TABLES `jbpm4_hist_actinst` WRITE;
/*!40000 ALTER TABLE `jbpm4_hist_actinst` DISABLE KEYS */;
INSERT INTO `jbpm4_hist_actinst` VALUES (30010,'task',0,30007,'task','leave.30007','申请','2014-08-23 11:17:46',NULL,0,NULL,1,30009),(50009,'task',1,50007,'task','test.50007','A','2014-08-23 15:17:10','2014-08-23 15:17:10',636,'jbpm_no_task_outcome_specified_jbpm',1,50008),(50011,'task',1,50007,'task','test.50007','B','2014-08-23 15:17:10','2014-08-23 15:17:10',758,'jbpm_no_task_outcome_specified_jbpm',1,50010);
/*!40000 ALTER TABLE `jbpm4_hist_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_hist_detail`
--

DROP TABLE IF EXISTS `jbpm4_hist_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_hist_detail` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `HPROCI_` bigint(20) DEFAULT NULL,
  `HPROCIIDX_` int(11) DEFAULT NULL,
  `HACTI_` bigint(20) DEFAULT NULL,
  `HACTIIDX_` int(11) DEFAULT NULL,
  `HTASK_` bigint(20) DEFAULT NULL,
  `HTASKIDX_` int(11) DEFAULT NULL,
  `HVAR_` bigint(20) DEFAULT NULL,
  `HVARIDX_` int(11) DEFAULT NULL,
  `MESSAGE_` longtext,
  `OLD_STR_` varchar(255) DEFAULT NULL,
  `NEW_STR_` varchar(255) DEFAULT NULL,
  `OLD_INT_` int(11) DEFAULT NULL,
  `NEW_INT_` int(11) DEFAULT NULL,
  `OLD_TIME_` datetime DEFAULT NULL,
  `NEW_TIME_` datetime DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  `PARENT_IDX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HDET_HACTI` (`HACTI_`),
  KEY `IDX_HDET_HPROCI` (`HPROCI_`),
  KEY `IDX_HDET_HVAR` (`HVAR_`),
  KEY `IDX_HDET_HTASK` (`HTASK_`),
  KEY `FK_HDETAIL_HPROCI` (`HPROCI_`),
  KEY `FK_HDETAIL_HACTI` (`HACTI_`),
  KEY `FK_HDETAIL_HTASK` (`HTASK_`),
  KEY `FK_HDETAIL_HVAR` (`HVAR_`),
  CONSTRAINT `FK_HDETAIL_HACTI` FOREIGN KEY (`HACTI_`) REFERENCES `jbpm4_hist_actinst` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `jbpm4_hist_procinst` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`),
  CONSTRAINT `FK_HDETAIL_HVAR` FOREIGN KEY (`HVAR_`) REFERENCES `jbpm4_hist_var` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_hist_detail`
--

LOCK TABLES `jbpm4_hist_detail` WRITE;
/*!40000 ALTER TABLE `jbpm4_hist_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_hist_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_hist_procinst`
--

DROP TABLE IF EXISTS `jbpm4_hist_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_hist_procinst` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ENDACTIVITY_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` int(11) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_hist_procinst`
--

LOCK TABLES `jbpm4_hist_procinst` WRITE;
/*!40000 ALTER TABLE `jbpm4_hist_procinst` DISABLE KEYS */;
INSERT INTO `jbpm4_hist_procinst` VALUES (30007,0,'leave.30007','leave-1',NULL,'2014-08-23 11:17:46',NULL,NULL,'active',NULL,1),(50007,1,'test.50007','test-1',NULL,'2014-08-23 15:17:10','2014-08-23 15:17:10',781,'ended','end1',1);
/*!40000 ALTER TABLE `jbpm4_hist_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_hist_task`
--

DROP TABLE IF EXISTS `jbpm4_hist_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_hist_task` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `OUTCOME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `NEXTIDX_` int(11) DEFAULT NULL,
  `SUPERTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HSUPERT_SUB` (`SUPERTASK_`),
  KEY `FK_HSUPERT_SUB` (`SUPERTASK_`),
  CONSTRAINT `FK_HSUPERT_SUB` FOREIGN KEY (`SUPERTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_hist_task`
--

LOCK TABLES `jbpm4_hist_task` WRITE;
/*!40000 ALTER TABLE `jbpm4_hist_task` DISABLE KEYS */;
INSERT INTO `jbpm4_hist_task` VALUES (30009,0,'leave.30007',NULL,'owner',0,NULL,'2014-08-23 11:17:46',NULL,0,1,NULL),(50008,1,'test.50007','jbpm_no_task_outcome_specified_jbpm','A',0,'completed','2014-08-23 15:17:10','2014-08-23 15:17:10',662,1,NULL),(50010,1,'test.50007','jbpm_no_task_outcome_specified_jbpm','B',0,'completed','2014-08-23 15:17:10','2014-08-23 15:17:10',760,1,NULL);
/*!40000 ALTER TABLE `jbpm4_hist_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_hist_var`
--

DROP TABLE IF EXISTS `jbpm4_hist_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_hist_var` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `PROCINSTID_` varchar(255) DEFAULT NULL,
  `EXECUTIONID_` varchar(255) DEFAULT NULL,
  `VARNAME_` varchar(255) DEFAULT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  `HPROCI_` bigint(20) DEFAULT NULL,
  `HTASK_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HVAR_HPROCI` (`HPROCI_`),
  KEY `IDX_HVAR_HTASK` (`HTASK_`),
  KEY `FK_HVAR_HPROCI` (`HPROCI_`),
  KEY `FK_HVAR_HTASK` (`HTASK_`),
  CONSTRAINT `FK_HVAR_HPROCI` FOREIGN KEY (`HPROCI_`) REFERENCES `jbpm4_hist_procinst` (`DBID_`),
  CONSTRAINT `FK_HVAR_HTASK` FOREIGN KEY (`HTASK_`) REFERENCES `jbpm4_hist_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_hist_var`
--

LOCK TABLES `jbpm4_hist_var` WRITE;
/*!40000 ALTER TABLE `jbpm4_hist_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_hist_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_id_group`
--

DROP TABLE IF EXISTS `jbpm4_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_id_group` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_GROUP_PARENT` (`PARENT_`),
  KEY `FK_GROUP_PARENT` (`PARENT_`),
  CONSTRAINT `FK_GROUP_PARENT` FOREIGN KEY (`PARENT_`) REFERENCES `jbpm4_id_group` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_id_group`
--

LOCK TABLES `jbpm4_id_group` WRITE;
/*!40000 ALTER TABLE `jbpm4_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_id_membership`
--

DROP TABLE IF EXISTS `jbpm4_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_id_membership` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `USER_` bigint(20) DEFAULT NULL,
  `GROUP_` bigint(20) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_MEM_USER` (`USER_`),
  KEY `IDX_MEM_GROUP` (`GROUP_`),
  KEY `FK_MEM_GROUP` (`GROUP_`),
  KEY `FK_MEM_USER` (`USER_`),
  CONSTRAINT `FK_MEM_GROUP` FOREIGN KEY (`GROUP_`) REFERENCES `jbpm4_id_group` (`DBID_`),
  CONSTRAINT `FK_MEM_USER` FOREIGN KEY (`USER_`) REFERENCES `jbpm4_id_user` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_id_membership`
--

LOCK TABLES `jbpm4_id_membership` WRITE;
/*!40000 ALTER TABLE `jbpm4_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_id_user`
--

DROP TABLE IF EXISTS `jbpm4_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_id_user` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  `GIVENNAME_` varchar(255) DEFAULT NULL,
  `FAMILYNAME_` varchar(255) DEFAULT NULL,
  `BUSINESSEMAIL_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_id_user`
--

LOCK TABLES `jbpm4_id_user` WRITE;
/*!40000 ALTER TABLE `jbpm4_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_job`
--

DROP TABLE IF EXISTS `jbpm4_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_job` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ISEXCLUSIVE_` bit(1) DEFAULT NULL,
  `LOCKOWNER_` varchar(255) DEFAULT NULL,
  `LOCKEXPTIME_` datetime DEFAULT NULL,
  `EXCEPTION_` longtext,
  `RETRIES_` int(11) DEFAULT NULL,
  `PROCESSINSTANCE_` bigint(20) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  `CFG_` bigint(20) DEFAULT NULL,
  `SIGNAL_` varchar(255) DEFAULT NULL,
  `EVENT_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_JOBRETRIES` (`RETRIES_`),
  KEY `IDX_JOB_CFG` (`CFG_`),
  KEY `IDX_JOB_PRINST` (`PROCESSINSTANCE_`),
  KEY `IDX_JOB_EXE` (`EXECUTION_`),
  KEY `IDX_JOBLOCKEXP` (`LOCKEXPTIME_`),
  KEY `IDX_JOBDUEDATE` (`DUEDATE_`),
  KEY `FK_JOB_CFG` (`CFG_`),
  CONSTRAINT `FK_JOB_CFG` FOREIGN KEY (`CFG_`) REFERENCES `jbpm4_lob` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_job`
--

LOCK TABLES `jbpm4_job` WRITE;
/*!40000 ALTER TABLE `jbpm4_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_lob`
--

DROP TABLE IF EXISTS `jbpm4_lob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_lob` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `BLOB_VALUE_` longblob,
  `DEPLOYMENT_` bigint(20) DEFAULT NULL,
  `NAME_` longtext,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_LOB_DEPLOYMENT` (`DEPLOYMENT_`),
  KEY `FK_LOB_DEPLOYMENT` (`DEPLOYMENT_`),
  CONSTRAINT `FK_LOB_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_`) REFERENCES `jbpm4_deployment` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_lob`
--

LOCK TABLES `jbpm4_lob` WRITE;
/*!40000 ALTER TABLE `jbpm4_lob` DISABLE KEYS */;
INSERT INTO `jbpm4_lob` VALUES (30002,0,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<process name=\"leave\" xmlns=\"http://jbpm.org/4.3/jpdl\">\r\n   <start g=\"199,100,48,48\" name=\"start1\">\r\n      <transition to=\"申请\"/>\r\n   </start>\r\n   <task assignee=\"#{owner}\" form=\"request.jsp\" g=\"178,190,92,52\" name=\"申请\">\r\n      <transition to=\"经理审批\"/>\r\n   </task>\r\n   <task assignee=\"manager\" form=\"manager.jsp\" g=\"182,322,92,52\" name=\"经理审批\">\r\n      <transition g=\"-37,-11\" name=\"批准\" to=\"exclusive1\"/>\n      <transition name=\"驳回\" to=\"申请\" g=\"108,350;106,216:-30,-7\"/>\r\n   </task>\r\n   <task assignee=\"boss\" form=\"boss.jsp\" g=\"358,471,92,52\" name=\"老板审批\">\r\n      <transition g=\"406,571:-47,-17\" name=\"to end1\" to=\"end1\"/>\r\n   </task>\r\n   <decision expr=\"#{day > 3 ? \'to 老板审批\' : \'to end1\'}\" g=\"208,425,48,48\" name=\"exclusive1\">\r\n      <transition g=\"-47,-17\" name=\"to end1\" to=\"end1\"/>\r\n      <transition g=\"405,448:-71,-17\" name=\"to 老板审批\" to=\"老板审批\"/>\r\n   </decision>\r\n   <end g=\"211,549,48,48\" name=\"end1\"/>\r\n</process>',30001,'leave.jpdl.xml'),(50002,0,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<process name=\"test\" xmlns=\"http://jbpm.org/4.3/jpdl\">\r\n	<start g=\"94,64,48,48\" name=\"start1\">\r\n		<transition g=\"-52,-22\" name=\"A\" to=\"A\" />\r\n	</start>\r\n	<task assignee=\"A\" g=\"73,195,92,52\" name=\"A\">\r\n		<transition g=\"-52,-22\" name=\"B\" to=\"B\" />\r\n	</task>\r\n	<task assignee=\"B\" g=\"266,192,92,52\" name=\"B\">\r\n		<transition g=\"-40,-21\" name=\"end\" to=\"end1\" />\r\n	</task>\r\n	<end g=\"290,327,48,48\" name=\"end1\" />\r\n</process>',50001,'test.jpdl.xml');
/*!40000 ALTER TABLE `jbpm4_lob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_participation`
--

DROP TABLE IF EXISTS `jbpm4_participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_participation` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `GROUPID_` varchar(255) DEFAULT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_PART_TASK` (`TASK_`),
  KEY `FK_PART_SWIMLANE` (`SWIMLANE_`),
  KEY `FK_PART_TASK` (`TASK_`),
  CONSTRAINT `FK_PART_SWIMLANE` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm4_swimlane` (`DBID_`),
  CONSTRAINT `FK_PART_TASK` FOREIGN KEY (`TASK_`) REFERENCES `jbpm4_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_participation`
--

LOCK TABLES `jbpm4_participation` WRITE;
/*!40000 ALTER TABLE `jbpm4_participation` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_participation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_property`
--

DROP TABLE IF EXISTS `jbpm4_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_property` (
  `KEY_` varchar(255) NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_property`
--

LOCK TABLES `jbpm4_property` WRITE;
/*!40000 ALTER TABLE `jbpm4_property` DISABLE KEYS */;
INSERT INTO `jbpm4_property` VALUES ('next.dbid',6,'60001');
/*!40000 ALTER TABLE `jbpm4_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_swimlane`
--

DROP TABLE IF EXISTS `jbpm4_swimlane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_swimlane` (
  `DBID_` bigint(20) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_SWIMLANE_EXEC` (`EXECUTION_`),
  KEY `FK_SWIMLANE_EXEC` (`EXECUTION_`),
  CONSTRAINT `FK_SWIMLANE_EXEC` FOREIGN KEY (`EXECUTION_`) REFERENCES `jbpm4_execution` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_swimlane`
--

LOCK TABLES `jbpm4_swimlane` WRITE;
/*!40000 ALTER TABLE `jbpm4_swimlane` DISABLE KEYS */;
/*!40000 ALTER TABLE `jbpm4_swimlane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_task`
--

DROP TABLE IF EXISTS `jbpm4_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_task` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` char(1) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCR_` longtext,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `FORM_` varchar(255) DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PROGRESS_` int(11) DEFAULT NULL,
  `SIGNALLING_` bit(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `HASVARS_` bit(1) DEFAULT NULL,
  `SUPERTASK_` bigint(20) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  `PROCINST_` bigint(20) DEFAULT NULL,
  `SWIMLANE_` bigint(20) DEFAULT NULL,
  `TASKDEFNAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_TASK_SUPERTASK` (`SUPERTASK_`),
  KEY `FK_TASK_SWIML` (`SWIMLANE_`),
  KEY `FK_TASK_SUPERTASK` (`SUPERTASK_`),
  CONSTRAINT `FK_TASK_SUPERTASK` FOREIGN KEY (`SUPERTASK_`) REFERENCES `jbpm4_task` (`DBID_`),
  CONSTRAINT `FK_TASK_SWIML` FOREIGN KEY (`SWIMLANE_`) REFERENCES `jbpm4_swimlane` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_task`
--

LOCK TABLES `jbpm4_task` WRITE;
/*!40000 ALTER TABLE `jbpm4_task` DISABLE KEYS */;
INSERT INTO `jbpm4_task` VALUES (30009,'T',1,'申请',NULL,'open',NULL,'owner','request.jsp',0,'2014-08-23 11:17:46',NULL,NULL,'','leave.30007','申请','\0',NULL,30007,30007,NULL,'申请');
/*!40000 ALTER TABLE `jbpm4_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jbpm4_variable`
--

DROP TABLE IF EXISTS `jbpm4_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jbpm4_variable` (
  `DBID_` bigint(20) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` int(11) NOT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CONVERTER_` varchar(255) DEFAULT NULL,
  `HIST_` bit(1) DEFAULT NULL,
  `EXECUTION_` bigint(20) DEFAULT NULL,
  `TASK_` bigint(20) DEFAULT NULL,
  `LOB_` bigint(20) DEFAULT NULL,
  `DATE_VALUE_` datetime DEFAULT NULL,
  `DOUBLE_VALUE_` double DEFAULT NULL,
  `CLASSNAME_` varchar(255) DEFAULT NULL,
  `LONG_VALUE_` bigint(20) DEFAULT NULL,
  `STRING_VALUE_` varchar(255) DEFAULT NULL,
  `TEXT_VALUE_` longtext,
  `EXESYS_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_VAR_EXESYS` (`EXESYS_`),
  KEY `IDX_VAR_TASK` (`TASK_`),
  KEY `IDX_VAR_EXECUTION` (`EXECUTION_`),
  KEY `IDX_VAR_LOB` (`LOB_`),
  KEY `FK_VAR_LOB` (`LOB_`),
  KEY `FK_VAR_EXECUTION` (`EXECUTION_`),
  KEY `FK_VAR_EXESYS` (`EXESYS_`),
  KEY `FK_VAR_TASK` (`TASK_`),
  CONSTRAINT `FK_VAR_EXECUTION` FOREIGN KEY (`EXECUTION_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_VAR_EXESYS` FOREIGN KEY (`EXESYS_`) REFERENCES `jbpm4_execution` (`DBID_`),
  CONSTRAINT `FK_VAR_LOB` FOREIGN KEY (`LOB_`) REFERENCES `jbpm4_lob` (`DBID_`),
  CONSTRAINT `FK_VAR_TASK` FOREIGN KEY (`TASK_`) REFERENCES `jbpm4_task` (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jbpm4_variable`
--

LOCK TABLES `jbpm4_variable` WRITE;
/*!40000 ALTER TABLE `jbpm4_variable` DISABLE KEYS */;
INSERT INTO `jbpm4_variable` VALUES (30008,'string',0,'owner',NULL,'\0',30007,NULL,NULL,NULL,NULL,NULL,NULL,'owner',NULL,NULL);
/*!40000 ALTER TABLE `jbpm4_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_engineer`
--

DROP TABLE IF EXISTS `tb_engineer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_engineer` (
  `engineer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `engineer_name` varchar(45) NOT NULL,
  `employ_date` datetime NOT NULL,
  `skill` varchar(255) NOT NULL,
  `tel` varchar(45) NOT NULL,
  PRIMARY KEY (`engineer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_engineer`
--

LOCK TABLES `tb_engineer` WRITE;
/*!40000 ALTER TABLE `tb_engineer` DISABLE KEYS */;
INSERT INTO `tb_engineer` VALUES (1,'Bill gates','2012-01-12 00:00:00','windows programing','135963245678'),(2,'jobs','2012-01-12 00:00:00','Mac programing','185963245678');
/*!40000 ALTER TABLE `tb_engineer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_project`
--

DROP TABLE IF EXISTS `tb_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project` (
  `prj_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prj_name` varchar(2048) DEFAULT NULL,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `creator_dept` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `client_desc` varchar(8192) DEFAULT NULL,
  `contact_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_version` varchar(45) DEFAULT NULL,
  `initial_solution` varchar(8192) DEFAULT NULL,
  `real_cause` varchar(45) DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  PRIMARY KEY (`prj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_project`
--

LOCK TABLES `tb_project` WRITE;
/*!40000 ALTER TABLE `tb_project` DISABLE KEYS */;
INSERT INTO `tb_project` VALUES (1,'Plicement Department',1,'IPC','2014-08-09 00:00:00','net work in correct',2,'CREATED','identity gateway',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_support`
--

DROP TABLE IF EXISTS `tb_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_support` (
  `prj_id` int(10) unsigned NOT NULL,
  `support_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `engineer_id` int(10) unsigned NOT NULL,
  `support_date` datetime NOT NULL,
  `result` int(10) unsigned NOT NULL,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_support`
--

LOCK TABLES `tb_support` WRITE;
/*!40000 ALTER TABLE `tb_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-30 11:57:05
