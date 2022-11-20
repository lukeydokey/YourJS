CREATE DATABASE  IF NOT EXISTS `yourjs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `yourjs`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: k7e102.p.ssafy.io    Database: yourjs
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority` (
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`authority_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES ('ROLE_ADMIN'),('ROLE_USER');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `award_seq` bigint NOT NULL AUTO_INCREMENT,
  `award_contents` varchar(255) NOT NULL,
  `award_institution` varchar(255) NOT NULL,
  `award_name` varchar(255) NOT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `win_date` date NOT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`award_seq`),
  KEY `FKj859oiexb4y02ljvn6m5jd7kd` (`user_seq`),
  CONSTRAINT `FKj859oiexb4y02ljvn6m5jd7kd` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
INSERT INTO `award` VALUES (1,'자율 프로젝트 부울경 1반 1등','삼성전자','프로젝트 뿌쉈음',NULL,'2022-11-17 10:22:49.107000','2022-11-17 10:22:49.107000','2022-11-25',18),(2,'자율프로젝트 부울경 1반 1등\n우리가 뿌순다 이말씀이야 엣헴','삼성전자','프로젝트 우수상',NULL,'2022-11-17 15:10:57.786000','2022-11-17 15:10:57.786000','2022-11-21',32);
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career` (
  `career_seq` bigint NOT NULL AUTO_INCREMENT,
  `company` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `end_date` date DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `salary` int DEFAULT NULL,
  `start_date` date NOT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`career_seq`),
  KEY `FK4yre5ao0dprjwovndsbvo7nop` (`user_seq`),
  CONSTRAINT `FK4yre5ao0dprjwovndsbvo7nop` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (1,'애플','IOS 개발부서','2021-12-20',NULL,'2022-11-17 15:12:16.822000','Cheif Engineer','2022-11-17 15:12:10.355000',30000,'2021-08-30',32);
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification` (
  `cert_seq` bigint NOT NULL AUTO_INCREMENT,
  `acquision_date` date NOT NULL,
  `cert_institution` varchar(255) NOT NULL,
  `cert_name` varchar(255) NOT NULL,
  `cert_num` varchar(255) NOT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`cert_seq`),
  KEY `FKe5j5v961ap448u71spopkixk9` (`user_seq`),
  CONSTRAINT `FKe5j5v961ap448u71spopkixk9` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification`
--

LOCK TABLES `certification` WRITE;
/*!40000 ALTER TABLE `certification` DISABLE KEYS */;
INSERT INTO `certification` VALUES (1,'2022-11-10','ETS','토익 990','123456',NULL,'2022-11-17 10:21:52.469000','2022-11-17 10:21:52.469000',18),(2,'2022-06-09','한국산업인력공단','정보처리기사','433215',NULL,'2022-11-17 10:22:14.824000','2022-11-17 10:22:14.824000',18),(3,'2022-08-20','ETS','토익 990','917394',NULL,'2022-11-17 15:10:05.368000','2022-11-17 15:10:05.368000',32),(4,'2022-06-17','한국산업인력공단','정보처리기사','821640D',NULL,'2022-11-17 15:10:26.136000','2022-11-17 15:10:26.136000',32);
/*!40000 ALTER TABLE `certification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `edu_seq` bigint NOT NULL AUTO_INCREMENT,
  `edu_contents` varchar(255) NOT NULL,
  `edu_institution` varchar(255) NOT NULL,
  `edu_name` varchar(255) NOT NULL,
  `edu_time` int NOT NULL,
  `end_date` date DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `start_date` date NOT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`edu_seq`),
  KEY `FKm1l469a3ep2ylns61hxccxf5d` (`user_seq`),
  CONSTRAINT `FKm1l469a3ep2ylns61hxccxf5d` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'삼성전자에서 운영하는 삼성청년SW아카데미(SSAFY)에 입과하여 현재 교육 중에 있습니다.','삼성전자','삼성청년SW아카데미',1600,'2022-12-15',NULL,'2022-11-17 10:21:32.273000','2022-11-17 10:21:32.273000','2022-01-05',18),(2,'삼성청년SW아카데미 (SSAFY) 에서 SW 전반에 대한 체계적인 교육을 이수하였습니다.','삼성전자','삼성청년SW아카데미',1600,'2022-12-15',NULL,'2022-11-17 15:09:36.222000','2022-11-17 15:09:36.222000','2022-01-05',32),(3,'삼성청년SW아카데미 (SSAFY) 에서 SW 전반에 대한 체계적인 교육을 이수하였습니다.','삼성전자','삼성청년SW아카데미',1600,'2022-12-15',NULL,'2022-11-17 15:09:38.599000','2022-11-17 15:09:38.599000','2022-01-05',32);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduate`
--

DROP TABLE IF EXISTS `graduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduate` (
  `graduate_seq` bigint NOT NULL AUTO_INCREMENT,
  `doubl_major_name` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `major_avg_credit` varchar(255) DEFAULT NULL,
  `major_credit` varchar(255) DEFAULT NULL,
  `major_name` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `sub_major_name` varchar(255) DEFAULT NULL,
  `tot_avg_credit` varchar(255) DEFAULT NULL,
  `tot_credit` varchar(255) DEFAULT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`graduate_seq`),
  KEY `FKsgbgt5lhrwxfuqgdrtns0cl95` (`user_seq`),
  CONSTRAINT `FKsgbgt5lhrwxfuqgdrtns0cl95` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduate`
--

LOCK TABLES `graduate` WRITE;
/*!40000 ALTER TABLE `graduate` DISABLE KEYS */;
INSERT INTO `graduate` VALUES (20,'전자공학','2021-08-20',NULL,'부산','100','68','컴퓨터공학','2022-11-17 10:20:33.682000','2022-11-17 10:20:33.682000','싸피대학교','2012-02-27','','4.5','140',18),(21,'전자공학','2021-08-20',NULL,'부산','4.3 / 4.5','68','컴퓨터공학','2022-11-20 13:31:27.895000','2022-11-17 15:08:44.969000','싸피대학교','2012-02-27','','4.2 / 4.5','140',32);
/*!40000 ALTER TABLE `graduate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (28);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intro_tag`
--

DROP TABLE IF EXISTS `intro_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intro_tag` (
  `intro_tag_seq` int NOT NULL AUTO_INCREMENT,
  `intro_seq` int DEFAULT NULL,
  `intro_tag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intro_tag_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intro_tag`
--

LOCK TABLES `intro_tag` WRITE;
/*!40000 ALTER TABLE `intro_tag` DISABLE KEYS */;
INSERT INTO `intro_tag` VALUES (1,1,''),(25,7,''),(26,8,''),(27,6,'극복'),(28,4,'지원동기'),(29,6,'역경'),(30,5,'열정'),(31,6,'고난'),(32,9,''),(33,10,''),(34,11,''),(72,12,'사내 갈등'),(73,2,'지역'),(74,3,'지원동기'),(75,2,'출근'),(76,12,'직급'),(77,3,'피앤피시큐어'),(78,2,'기숙사'),(79,3,'프론트엔드'),(81,13,'123'),(83,14,'222'),(84,15,'333'),(85,16,'sadfsafdasfasf'),(86,16,'asdfsaf'),(87,16,'sadff'),(90,17,'6'),(91,17,'7'),(92,18,'q'),(93,19,'f'),(97,20,'d'),(98,21,'d'),(104,22,'a'),(111,25,'e2'),(112,26,'wer'),(113,23,'...'),(114,23,'ㅋㅋ..'),(115,24,'태그..'),(116,24,'입니다');
/*!40000 ALTER TABLE `intro_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `military`
--

DROP TABLE IF EXISTS `military`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `military` (
  `military_seq` bigint NOT NULL AUTO_INCREMENT,
  `discharge` varchar(255) NOT NULL,
  `end_date` date DEFAULT NULL,
  `military_type` varchar(255) NOT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `speciality_type` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`military_seq`),
  KEY `FKr6ae5a9i6mb68ppj8j67jg28m` (`user_seq`),
  CONSTRAINT `FKr6ae5a9i6mb68ppj8j67jg28m` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `military`
--

LOCK TABLES `military` WRITE;
/*!40000 ALTER TABLE `military` DISABLE KEYS */;
INSERT INTO `military` VALUES (19,'만기제대','2015-01-11','해군','2022-11-17 10:19:37.048000','2022-11-17 10:19:37.048000','수송','2013-02-12',18),(20,'만기전역','2015-01-11','해군','2022-11-17 15:00:30.693000','2022-11-17 15:00:30.693000','통신병','2013-02-12',4),(21,'병장 만기제대','2015-01-11','해군','2022-11-17 15:07:38.984000','2022-11-17 15:07:38.984000','수송','2013-02-12',32);
/*!40000 ALTER TABLE `military` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_seq` int unsigned NOT NULL AUTO_INCREMENT,
  `co_name` varchar(255) DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `notice_name` varchar(45) DEFAULT NULL,
  `notice_tag` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `reg_dtm` datetime(6) DEFAULT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`notice_seq`),
  UNIQUE KEY `notice_seq` (`notice_seq`),
  KEY `FK8hbmbr6wjl2137llct03v7dj` (`user_seq`),
  CONSTRAINT `FK8hbmbr6wjl2137llct03v7dj` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (4,'삼성전자',NULL,'https://www.naver.com/','2022-11-17 10:26:27.128000','삼성전자 2022 하반기 신입채용',NULL,'등록','2022-11-17 10:25:21.743000',18),(5,'파수',NULL,'https://recruit.fasoo.com/apply/210','2022-11-17 15:17:05.941000','[해외 인재] 신입 공개 채용_SW 개발',NULL,'등록','2022-11-17 10:25:40.571000',10),(6,'토스',NULL,'https://www.naver.com/','2022-11-17 10:31:23.613000','토스 2023 신입 개발자 대규모 채용',NULL,'','2022-11-17 10:31:23.613000',18),(7,'쿠팡',NULL,'https://www.naver.com/','2022-11-17 10:31:48.586000','쿠팡 2023 개발자 대규모 채용',NULL,'','2022-11-17 10:31:48.586000',18),(8,'네이버',NULL,'https://www.naver.com/','2022-11-17 10:32:24.348000','네이버 신입채용',NULL,'','2022-11-17 10:32:24.348000',18),(9,'부산은행 ',NULL,'https://www.naver.com/','2022-11-17 10:32:49.720000','부산은행 IT 신입채용',NULL,'','2022-11-17 10:32:49.720000',18),(10,'KB국민은행',NULL,'https://www.naver.com/','2022-11-17 10:33:28.668000','국민은행 2022 하반기 플랫폼개발 부문 채용',NULL,'','2022-11-17 10:33:28.668000',18),(11,'파수',NULL,'https://www.naver.com/','2022-11-17 11:09:58.989000','파수 2022 신입채용',NULL,'등록','2022-11-17 11:09:58.989000',28),(12,'다우기술',NULL,'https://www.naver.com/','2022-11-17 11:10:44.722000','다우기술 2023 채용확정형 신입채용',NULL,'','2022-11-17 11:10:44.722000',30),(13,'피앤피시큐어',NULL,'https://www.wanted.co.kr/wd/130629','2022-11-17 17:54:09.843000','Front-end 개발자 채용',NULL,'진행중','2022-11-17 11:43:13.010000',29),(16,'KB국민은행',NULL,'https://www.naver.com/','2022-11-17 14:33:37.654000','국민은행 2022 하반기 플랫폼개발 부문 채용',NULL,'등록','2022-11-17 14:33:37.654000',30),(17,'토스증권',NULL,'https://toss.im/career/job-detail?gh_jid=5385685003&gh_src=1b6a9aff3us&utm_source=Jasoseol&utm_mediu','2022-11-17 14:38:21.079000','토스증권 채용',NULL,'등록','2022-11-17 14:38:21.079000',31),(18,'다우기술',NULL,'https://recruit.daou.co.kr/Application.do','2022-11-17 14:39:53.319000','다우기술 채용확정형 비전공자 금융IT 육성과정',NULL,'등록','2022-11-17 14:39:53.319000',31),(19,'원테크스탑',NULL,'d','2022-11-20 13:59:17.842000','원테크스탑',NULL,'등록','2022-11-17 14:54:23.992000',32),(20,'세메스',NULL,'https://semes.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&jobnoticeSn=116229','2022-11-20 13:50:58.198000','세메스 2022하반기 신입채용',NULL,'등록','2022-11-17 14:55:20.332000',32),(21,'신협중앙회',NULL,'http://www.cu.co.kr/cu/na/ntt/selectNttInfo.do?nttSn=109020&mi=100072','2022-11-17 14:56:22.055000','신협중앙회 IT직군 신입채용',NULL,'등록','2022-11-17 14:56:22.055000',32),(22,'카카오뱅크',NULL,'https://brunch.co.kr/@kakaobankplus/31','2022-11-17 14:57:10.840000','카카오뱅크 채용연계형 인턴',NULL,'등록','2022-11-17 14:57:10.840000',32),(23,'수협은행',NULL,'http://shbank.incruit.com/','2022-11-17 14:57:56.996000','수협은행 신입행원 채용',NULL,'등록','2022-11-17 14:57:56.996000',32),(24,'우리카드',NULL,'http://wooricard.incruit.com/','2022-11-17 14:58:50.382000','우리카드 2022하반기 신입사원',NULL,'등록','2022-11-17 14:58:50.382000',32),(25,'케이뱅크',NULL,'https://kbank.recruiter.co.kr/appsite/company/index','2022-11-17 14:59:40.880000','케이뱅크 2023 채용연계형 인턴십',NULL,'등록','2022-11-17 14:59:40.880000',32),(26,'하나카드',NULL,'https://hanacard.incruit.com/','2022-11-17 15:00:33.805000','하나카드 2023 신입',NULL,'등록','2022-11-17 15:00:33.805000',32),(27,'토스',NULL,'https://www.naver.com/','2022-11-17 15:03:26.037000','토스 2023 신입 개발자 대규모 채용',NULL,'등록','2022-11-17 15:01:43.885000',4),(28,'LG CNS',NULL,'https://career.programmers.co.kr/competitions/3089','2022-11-17 15:02:19.070000','LG CNS 코드몬스터',NULL,'등록','2022-11-17 15:02:19.070000',32),(29,'카카오모빌리티',NULL,'https://kamo-tech-recruit.com/','2022-11-17 15:03:16.827000','카카오모빌리티 신입공채',NULL,'등록','2022-11-17 15:03:16.827000',32),(30,'다우기술',NULL,'https://recruit.daou.co.kr/Application.do','2022-11-17 15:04:20.503000','다우기술 채용확정형 금융IT 교육생',NULL,'등록','2022-11-17 15:04:20.503000',32),(31,'토스증권',NULL,'https://toss.im/career/job-detail?gh_jid=5385685003&gh_src=1b6a9aff3us&utm_source=Jasoseol&utm_mediu','2022-11-17 16:50:09.207000','토스증권 채용',NULL,'등록','2022-11-17 15:07:22.655000',13),(32,'다우기술',NULL,'https://recruit.daou.co.kr/Application.do','2022-11-17 15:07:25.721000','다우기술 채용확정형 비전공자 금융IT 육성과정',NULL,'등록','2022-11-17 15:07:25.721000',13),(39,'다우기술',NULL,'https://recruit.daou.co.kr/Application.do','2022-11-17 15:09:46.683000','채용확정형 비전공자 금융IT 개발자 육성 과정',NULL,'등록','2022-11-17 15:09:46.683000',4),(46,'카카오모빌리티',NULL,'https://boards.greenhouse.io/kakaomobility1/jobs/4111238005?gh_src=432c298f5us','2022-11-17 15:15:47.970000','2023 카카오모빌리티 신입 개발자 공채',NULL,'등록','2022-11-17 15:15:47.971000',4),(53,'런드리고',NULL,'https://naver.com','2022-11-17 15:24:12.822000','런드리고',NULL,'등록','2022-11-17 15:24:12.822000',10),(54,'다우기술',NULL,'https://recruit.daou.co.kr/Application.do','2022-11-17 15:25:10.326000','다우기술 채용확정형 금융IT 교육생',NULL,'등록','2022-11-17 15:25:10.326000',33),(55,'카카오모빌리티',NULL,'https://boards.greenhouse.io/kakaomobility1/jobs/4111238005?gh_src=432c298f5us','2022-11-17 15:25:17.754000','2023 카카오모빌리티 신입 개발자 공채',NULL,'등록','2022-11-17 15:25:17.754000',33),(56,'토스',NULL,'https://www.naver.com/','2022-11-17 15:25:26.646000','토스 2023 신입 개발자 대규모 채용',NULL,'등록','2022-11-17 15:25:26.646000',33),(57,'카카오모빌리티',NULL,'https://boards.greenhouse.io/kakaomobility1/jobs/4111238005?gh_src=432c298f5us','2022-11-17 15:27:53.456000','2023 카카오모빌리티 신입 개발자 공채',NULL,'등록','2022-11-17 15:27:53.456000',34),(58,'다우기술',NULL,'https://recruit.daou.co.kr/Application.do','2022-11-17 15:27:55.762000','채용확정형 비전공자 금융IT 개발자 육성 과정',NULL,'등록','2022-11-17 15:27:55.762000',34),(60,'파수',NULL,'https://recruit.fasoo.com/apply/210','2022-11-17 15:32:00.871000','파수 신입채용',NULL,'등록','2022-11-17 15:31:34.568000',10),(62,'현대오토에버',NULL,'https://hyundai-autoever.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&jobnoticeSn=119059','2022-11-17 16:51:38.145000','2022년 4분기 현대오토에버 신입사원 채용',NULL,'진행중','2022-11-17 16:32:35.507000',13),(63,'티맥스소프트',NULL,'https://www.tmaxtibero.com/recruit/recruitNotice.do','2022-11-17 16:48:56.563000','티맥스소프트 신입',NULL,'등록','2022-11-17 16:48:46.644000',13),(64,'파수',NULL,'https://recruit.fasoo.com/apply/210','2022-11-17 16:49:56.033000','[해외 인재] 신입 공개 채용_SW 개발',NULL,'등록','2022-11-17 16:49:56.033000',13),(65,'카카오게임즈',NULL,'https://kakaogames.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&jobnoticeSn=122627','2022-11-17 16:50:53.956000','[신입/경력] 웹개발자 영입',NULL,'등록','2022-11-17 16:50:53.956000',13),(107,'토스증권',NULL,'https://toss.im/career/job-detail?gh_jid=5385685003&gh_src=1b6a9aff3us&utm_source=Jasoseol&utm_mediu','2022-11-20 13:27:27.248000','토스증권 채용',NULL,'등록','2022-11-20 13:27:27.248000',29),(108,'s',NULL,'d','2022-11-20 13:34:33.212000','d',NULL,'등록','2022-11-20 13:34:22.870000',29),(109,'회사',NULL,'wldn102','2022-11-20 17:18:48.635000','공고',NULL,'서류탈락','2022-11-20 17:18:48.635000',29),(112,'다우기술',NULL,NULL,'2022-11-20 23:41:38.099000','채용확정형 비전공자 금융IT 개발자 육성 과정 모집',NULL,'진행중','2022-11-20 23:41:38.100000',37),(113,'DB Inc',NULL,'https://dbgroup.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&jobnoticeSn=112097','2022-11-20 23:44:47.738000','2022 하반기 신입사원 모집',NULL,'진행중','2022-11-20 23:44:47.738000',37),(114,'IBK 기업은행',NULL,'http://ibk.incruit.com/hire/viewhire.asp?projectid=112','2022-11-20 23:48:28.400000','2022 하반기 신입행원 채용',NULL,'진행중','2022-11-20 23:48:28.400000',37),(115,'DGB 대구은행',NULL,'https://dgb.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&jobnoticeSn=113446','2022-11-20 23:54:13.425000','2022 DGB대구은행 신입행원 채용',NULL,'면접탈락','2022-11-20 23:54:13.425000',37);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_tag`
--

DROP TABLE IF EXISTS `notice_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_tag` (
  `notice_tag_seq` int NOT NULL AUTO_INCREMENT,
  `notice_seq` int DEFAULT NULL,
  `notice_tag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`notice_tag_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_tag`
--

LOCK TABLES `notice_tag` WRITE;
/*!40000 ALTER TABLE `notice_tag` DISABLE KEYS */;
INSERT INTO `notice_tag` VALUES (11,4,'삼성전자'),(12,6,''),(13,7,''),(14,8,''),(15,9,''),(16,10,''),(17,12,''),(26,16,''),(27,17,'토스증권'),(28,18,'다우기술'),(32,21,'신협중앙회'),(33,21,'금융권'),(34,22,'카카오뱅크'),(35,22,'금융권'),(36,22,'카카오'),(37,23,'수협은행'),(38,23,'금융권'),(39,24,'우리카드'),(40,24,'우리금융그룹'),(41,24,'금융권'),(42,25,'케이뱅크'),(43,25,'금융권'),(44,25,'인턴'),(45,26,'하나카드'),(46,26,'하나금융그룹'),(47,26,'금융권'),(49,28,'LG CNS'),(50,28,'코딩대회'),(51,29,'카카오모빌리티'),(52,29,'카카오'),(53,27,''),(54,27,'ㅇㅇㅇ'),(55,27,'ㄴㄴㄴ'),(56,30,'다우기술'),(57,30,'키움증권'),(58,30,'비전공'),(59,31,''),(60,32,''),(61,39,''),(64,46,'카카오'),(65,46,'모빌리티'),(66,46,'카카오 모빌리티'),(68,5,'파수'),(71,53,'런드리고'),(72,54,''),(73,55,''),(74,56,''),(75,57,''),(76,58,''),(79,60,'파수'),(89,63,'티맥스'),(90,63,'자회사'),(91,64,'파수'),(92,64,'DRM'),(93,64,'채용형인턴'),(94,65,'카카오'),(95,65,'카카오게임즈'),(96,65,'카카오계열사'),(97,62,'현대'),(98,62,'오토에버'),(99,62,'현대오토에버'),(117,13,'Front-end'),(118,13,'IT'),(119,13,'피앤피시큐어'),(146,107,''),(152,108,'d'),(158,20,'세메스'),(186,19,'원테크스탑'),(187,19,'외국계'),(188,19,'원테스크'),(195,109,'태그'),(198,112,'채용확정'),(199,112,'비전공'),(200,112,'금융IT'),(201,113,'DB'),(202,113,'서울'),(203,113,'S/W엔지니어'),(207,114,'은행'),(208,114,'디지털'),(209,115,'은행'),(210,115,'ICT/디지털'),(211,115,'지방인재');
/*!40000 ALTER TABLE `notice_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio` (
  `portfolio_seq` bigint NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(255) DEFAULT NULL,
  `eng_name` varchar(255) DEFAULT NULL,
  `links` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `tech_stacks` varchar(255) DEFAULT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`portfolio_seq`),
  KEY `FKlywsoim6radp88djuuy7rmlaj` (`user_seq`),
  CONSTRAINT `FKlywsoim6radp88djuuy7rmlaj` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES (1,NULL,NULL,NULL,'2022-11-17 09:38:28.878000','2022-11-17 09:38:28.870000',NULL,2),(3,'白承眞','Baek Seung Jin','https://test.com','2022-11-17 09:48:00.716000','2022-11-17 09:46:06.238000','C, Java, SpringBoot',4),(5,NULL,NULL,NULL,'2022-11-17 09:46:19.158000','2022-11-17 09:46:19.156000',NULL,6),(9,NULL,NULL,NULL,'2022-11-17 09:51:54.661000','2022-11-17 09:51:54.658000',NULL,10),(12,NULL,NULL,NULL,'2022-11-17 10:03:36.863000','2022-11-17 10:03:36.860000',NULL,13),(15,NULL,NULL,NULL,'2022-11-17 10:08:55.297000','2022-11-17 10:08:55.295000',NULL,16),(17,'黃仁彬','HWANG INBEEN',NULL,'2022-11-17 10:18:56.315000','2022-11-17 10:17:41.075000','Java | Python | Spring Boot | MySQL | JPA | AWS | ',18),(23,NULL,NULL,NULL,'2022-11-17 10:35:51.979000','2022-11-17 10:35:51.977000',NULL,24),(26,NULL,NULL,NULL,'2022-11-17 10:43:44.730000','2022-11-17 10:43:44.711000',NULL,27),(27,NULL,NULL,NULL,'2022-11-17 11:07:40.753000','2022-11-17 11:07:40.586000',NULL,28),(28,NULL,NULL,NULL,'2022-11-17 11:08:19.257000','2022-11-17 11:08:19.186000',NULL,29),(29,NULL,NULL,NULL,'2022-11-17 11:08:26.553000','2022-11-17 11:08:26.478000',NULL,30),(30,NULL,NULL,NULL,'2022-11-17 14:36:59.622000','2022-11-17 14:36:59.617000',NULL,31),(31,'粨円竇','Back End','https://edu.ssafy.com','2022-11-17 15:07:07.837000','2022-11-17 14:48:58.561000','Java, Python, Spring boot, MySQL, Django, MongoDB, AWS, GCP',32),(32,NULL,NULL,NULL,'2022-11-17 15:24:32.655000','2022-11-17 15:24:32.649000',NULL,33),(33,NULL,NULL,NULL,'2022-11-17 15:27:11.824000','2022-11-17 15:27:11.821000',NULL,34),(34,NULL,NULL,NULL,'2022-11-17 16:20:51.441000','2022-11-17 16:20:51.437000',NULL,35),(35,NULL,NULL,NULL,'2022-11-17 16:31:38.844000','2022-11-17 16:31:38.839000',NULL,36),(36,NULL,NULL,NULL,'2022-11-18 10:15:55.347000','2022-11-18 10:15:55.344000',NULL,37),(37,NULL,NULL,NULL,'2022-11-18 17:26:32.952000','2022-11-18 17:26:32.947000',NULL,38);
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_seq` bigint NOT NULL AUTO_INCREMENT,
  `belongs` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `end_date` date DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `start_date` date NOT NULL,
  `tools` varchar(255) NOT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`project_seq`),
  KEY `FKn9lws2ive2bynigo84h33ba3b` (`user_seq`),
  CONSTRAINT `FKn9lws2ive2bynigo84h33ba3b` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (21,'SSAFY','이 프로젝트 내가 만듬 히히','2022-11-21',NULL,'2022-11-17 10:24:09.653000','Your.JS','2022-11-17 10:24:09.653000','2022-09-29','React.js | Spring Boot | MySQL | MongoDB | AWS EC2 | AWS S3',18),(22,'SSAFY','이 사이트 우리가 만들었다~ 이 말씀이야 엣헴','2022-11-18',NULL,'2022-11-17 15:13:56.537000','Your.JS','2022-11-17 15:13:56.537000','2022-09-23','React.js, Spring Boot, MySQL, JPA, Atlas MongoDB, AWS EC2, AWS S3',32);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `refresh_token_id` bigint NOT NULL AUTO_INCREMENT,
  `key_id` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`refresh_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_seq` int NOT NULL AUTO_INCREMENT,
  `notice_seq` int NOT NULL,
  `schedule_date` datetime(6) NOT NULL,
  `schedule_name` varchar(255) NOT NULL,
  PRIMARY KEY (`schedule_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (7,4,'2022-12-15 08:59:59.000000','1차면접발표'),(8,6,'2022-12-18 08:59:59.000000','코딩테스트'),(9,7,'2022-12-11 08:59:59.000000','코딩테스트발표'),(10,8,'2022-12-18 08:59:59.000000','2차면접'),(11,9,'2022-12-23 08:59:59.000000','최종발표'),(12,10,'2022-12-21 08:59:59.000000','2차면접'),(13,11,'2022-11-30 21:00:00.000000','서류제출'),(14,12,'2022-11-29 08:59:59.000000','서류제출'),(18,16,'2022-12-21 08:59:59.000000','2차면접'),(19,17,'2022-11-24 08:59:59.000000','서류제출'),(20,18,'2022-11-25 03:00:00.000000','서류제출'),(23,21,'2022-11-05 02:59:59.000000','서류제출'),(24,22,'2022-11-07 08:59:59.000000','서류제출'),(25,23,'2022-11-09 01:59:59.000000','서류제출'),(26,24,'2022-11-09 02:59:59.000000','서류제출'),(27,25,'2022-11-10 08:59:59.000000','서류제출'),(28,26,'2022-11-11 02:59:59.000000','서류제출'),(30,28,'2022-11-11 22:59:59.000000','서류제출'),(31,29,'2022-11-21 18:59:59.000000','서류제출'),(32,27,'2022-12-18 08:59:59.000000','코딩테스트'),(34,30,'2022-11-25 02:59:59.000000','서류제출'),(36,32,'2022-11-25 03:00:00.000000','서류제출'),(39,39,'2022-11-24 09:00:00.000000','서류제출'),(45,46,'2022-11-21 19:00:00.000000','서류제출'),(52,54,'2022-11-25 02:59:59.000000','서류제출'),(53,55,'2022-11-21 19:00:00.000000','서류제출'),(54,56,'2022-12-18 08:59:59.000000','코딩테스트'),(55,57,'2022-11-21 19:00:00.000000','서류제출'),(56,58,'2022-11-24 09:00:00.000000','서류제출'),(59,60,'2022-11-28 08:59:59.000000','서류제출'),(67,63,'2022-11-21 08:59:59.000000','서류제출'),(68,63,'2022-11-26 08:59:59.000000','서류발표'),(71,64,'2022-11-28 08:59:59.000000','서류제출'),(72,31,'2022-11-24 08:59:59.000000','서류제출'),(73,31,'2022-11-27 08:59:59.000000','코딩테스트'),(74,31,'2022-12-01 08:59:59.000000','코딩테스트발표'),(75,65,'2022-12-07 08:59:59.000000','서류제출'),(76,62,'2022-11-01 08:59:59.000000','서류제출'),(77,62,'2022-11-06 08:59:59.000000','코딩테스트'),(92,13,'2022-11-01 21:00:00.000000','서류제출'),(93,13,'2022-11-23 21:00:00.000000','1차면접'),(111,107,'2022-11-24 08:59:59.000000','서류제출'),(115,108,'2022-11-01 21:00:00.000000','1차면접발표'),(119,20,'2022-11-03 01:59:59.000000','서류제출'),(130,19,'2022-11-07 21:00:00.000000','1차면접'),(133,109,'2022-11-01 21:00:00.000000','코딩테스트'),(134,109,'2022-11-07 21:00:00.000000','2차면접발표'),(135,109,'2022-11-09 21:00:00.000000','1차면접'),(138,112,'2022-11-24 21:00:00.000000','서류제출'),(139,113,'2022-10-07 21:00:00.000000','서류제출'),(140,113,'2022-10-20 21:00:00.000000','서류발표'),(141,113,'2022-10-27 21:00:00.000000','코딩테스트'),(142,113,'2022-11-03 21:00:00.000000','코딩테스트발표'),(143,113,'2022-11-10 21:00:00.000000','1차면접'),(144,113,'2022-11-18 21:00:00.000000','1차면접발표'),(145,113,'2022-11-25 21:00:00.000000','2차면접'),(147,114,'2022-09-27 21:00:00.000000','서류제출'),(148,114,'2022-10-18 21:00:00.000000','서류발표'),(149,114,'2022-11-05 21:00:00.000000','코딩테스트'),(150,114,'2022-11-10 21:00:00.000000','코딩테스트발표'),(151,114,'2022-11-17 21:00:00.000000','1차면접'),(152,115,'2022-09-18 21:00:00.000000','서류제출'),(153,115,'2022-09-28 21:00:00.000000','서류발표'),(154,115,'2022-10-01 21:00:00.000000','코딩테스트'),(155,115,'2022-10-12 21:00:00.000000','코딩테스트발표'),(156,115,'2022-10-21 21:00:00.000000','1차면접'),(157,115,'2022-10-27 21:00:00.000000','1차면접발표'),(158,115,'2022-11-02 21:00:00.000000','2차면접'),(159,115,'2022-11-08 21:00:00.000000','최종발표');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `self_introduce`
--

DROP TABLE IF EXISTS `self_introduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_introduce` (
  `intro_seq` int NOT NULL AUTO_INCREMENT,
  `contents` varchar(1000) DEFAULT NULL,
  `mod_dtm` datetime(6) DEFAULT NULL,
  `notice_seq` int DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `reg_dtm` datetime(6) DEFAULT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`intro_seq`),
  KEY `FK6em0aoywgdwpg8sefen95jiwk` (`user_seq`),
  CONSTRAINT `FK6em0aoywgdwpg8sefen95jiwk` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `self_introduce`
--

LOCK TABLES `self_introduce` WRITE;
/*!40000 ALTER TABLE `self_introduce` DISABLE KEYS */;
INSERT INTO `self_introduce` VALUES (1,'','2022-11-17 11:09:59.047000',11,'','2022-11-17 11:09:59.047000',28),(2,'자택과 회사가 멀때에는 출근을 하는 방향과 기숙사를 이용하는 방향을 고려하겠습니다.','2022-11-17 17:54:09.822000',13,'자택과 회사가 멀 시 어떻게 하시겠습니까 ?','2022-11-17 11:43:13.546000',29),(3,'Front-end 개발자로서 제 열정을 쏟고 싶습니다.','2022-11-17 17:54:09.822000',13,'피앤피시큐어에 지원하신 동기를 500자 이내로 입력하세요.','2022-11-17 11:43:13.531000',29),(4,'지원동기는 이렇다','2022-11-17 15:17:05.943000',5,'지원동기','2022-11-17 15:03:53.820000',10),(5,'열정!','2022-11-17 15:17:05.945000',5,'열정','2022-11-17 15:03:53.821000',10),(6,'극복!','2022-11-17 15:17:05.943000',5,'극복','2022-11-17 15:09:41.605000',10),(7,'ㄷㄱㅈ','2022-11-17 15:15:03.485000',45,'ㅇㄹㄴ','2022-11-17 15:15:03.485000',29),(8,'ㄱㅈㄷ','2022-11-17 15:16:49.937000',50,'ㅈㄷ','2022-11-17 15:16:49.937000',29),(9,'','2022-11-17 17:25:54.396000',72,'','2022-11-17 17:25:54.396000',29),(10,'','2022-11-17 17:26:54.322000',73,'','2022-11-17 17:26:54.322000',29),(11,'','2022-11-17 17:31:11.483000',74,'','2022-11-17 17:31:11.483000',29),(12,'사내에서 상사와의 사내갈등이 발생했을 시에 저는 원만한 합의점을 찾아 해결하려고 노력 할 것입니다.','2022-11-17 17:54:09.846000',13,'상사와의 사내갈등이 발생했을시에 어떤식으로 대처하시겠습니까 ? ','2022-11-17 17:47:00.698000',29),(13,'2','2022-11-20 03:38:22.484000',81,'2','2022-11-20 03:37:56.853000',37),(14,'222','2022-11-20 03:39:45.075000',92,'222','2022-11-20 03:39:36.038000',37),(15,'333','2022-11-20 03:40:07.578000',93,'333','2022-11-20 03:40:07.578000',37),(16,'fasdfasfdsafs','2022-11-20 03:40:56.314000',101,'sadfasfasfsa','2022-11-20 03:40:56.314000',37),(17,'89','2022-11-20 04:12:41.679000',102,'5','2022-11-20 03:41:06.508000',37),(18,'d','2022-11-20 13:34:33.211000',108,'s','2022-11-20 13:34:33.211000',29),(19,'ww','2022-11-20 13:34:33.213000',108,'dw','2022-11-20 13:34:33.213000',29),(20,'qq','2022-11-20 13:55:46.166000',51,'d','2022-11-20 13:49:52.420000',32),(21,'asdad','2022-11-20 13:55:46.166000',51,'s','2022-11-20 13:55:46.166000',32),(22,'사람들을 만나는 것을 좋아하며 누구나 즐겁게 소통 가능한 점이 제 장점이라고 생각합니다. 이러한 제 성격 덕분에 학생회 시절에는 대외부장 직책도 맡을 수 있었습니다. 또한, 신뢰받고 비밀을 털어놓을 수 있는사람들을 만나는 것을 좋아하며 누구나 즐겁게 소통 가능한 점이 제 장점이라고 생각합니다. 이러한 제 성격 덕분에 학생회 시절에는 대외부장 직책도 맡을 수 있었습니다.','2022-11-20 13:59:17.843000',19,'ss','2022-11-20 13:58:37.294000',32),(23,'연봉..','2022-11-20 23:45:04.862000',106,'지원동기는','2022-11-20 16:06:46.997000',37),(24,'13131313','2022-11-20 23:45:04.871000',106,'ㅋㅋㅋㅋㅋ','2022-11-20 16:15:29.454000',37),(25,'423','2022-11-20 17:18:48.788000',109,'fasf','2022-11-20 17:18:48.788000',29),(26,'qweqwe','2022-11-20 17:18:48.816000',109,'sdf','2022-11-20 17:18:48.816000',29);
/*!40000 ALTER TABLE `self_introduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subject_seq` bigint NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  PRIMARY KEY (`subject_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'BackEnd'),(2,'FrontEnd'),(3,'Infra'),(4,'기획'),(5,'앱개발자'),(7,'인공지능'),(8,'PM'),(9,'게임'),(10,'ERP'),(12,'데이터엔지니어'),(14,'VR'),(15,'그래픽스엔지니어'),(16,'보안'),(17,'네트워크'),(18,'시스템'),(19,'임베디드'),(20,'모빌리티'),(21,'DBA');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_seq` bigint NOT NULL AUTO_INCREMENT,
  `activated` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `info_level` int DEFAULT '3',
  `mod_dtm` datetime(6) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `reg_dtm` datetime(6) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`user_seq`),
  UNIQUE KEY `UK_a3imlf41l37utmxiquukk8ajc` (`user_id`),
  UNIQUE KEY `UK_lqjrcobrh9jc8wpcar64q1bfh` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,_binary '','admin@admin.com',1,'2022-11-18 17:34:14.505000','adminNn','$2a$10$Z/KPXABJ/zOz2YzV3uXO6.x2BHAJiP5Y2M9D1Q65sGp0nrr8ZzBNe','2022-11-17 09:38:28.876000','adminId','2','admin'),(4,_binary '','mixkio@naver.com',1,'2022-11-17 14:58:41.799000','승지','$2a$10$JVtNzHaEk7WgiTgyqg530e2EjyXErNOHmzQ3YhaylH/PamgGsouZu','2022-11-17 09:46:06.241000','dummy1','0','백승진'),(6,_binary '','forever@forever.com',3,'2022-11-17 09:47:22.960000','영원','$2a$10$hGHCRssUq/ce1tEVSt2juudXk0bKM2ZBxjQg.2Z9XBESn8lVjIz2a','2022-11-17 09:46:19.157000','kublaihkan','13','안영원'),(10,_binary '','1234@1234.com',2,'2022-11-20 23:42:33.403000','1234','$2a$10$18Jht4sOvMWU4r4OxZRqxeLpn2jnXeUa4rkGQ5tudJKoYJ6aoPf5W','2022-11-17 09:51:54.660000','test01','1','1234'),(13,_binary '','rnrwls211@naver.com',2,'2022-11-17 15:24:04.450000','국진이빵','$2a$10$QF7MS6R909sdMS27z4mGG.8GjHMsbK34Dmyk56OV.ndL.UqRX0Cve','2022-11-17 10:03:36.862000','rnrwls0211','3','김국진'),(16,_binary '','test02@test02.com',3,'2022-11-17 10:08:55.296000','test02','$2a$10$XrzSyT4iPguBRPZpKi18x.Qb0AfIJB5vDVDEHwQBj6BA8/J0k73.e','2022-11-17 10:08:55.296000','test02','2','test02'),(18,_binary '','sandgun@sandgun.com',1,'2022-11-17 10:34:52.193000','모래반지빵야빵야','$2a$10$yKuLUZva.DIHhdt9hdTin.exeSyEF..LMONA/EfgaI8PveUOGhc.u','2022-11-17 10:17:41.077000','hwangssafy','11','황싸피'),(24,_binary '','notpancake@cake.com',1,'2022-11-17 10:36:07.153000','팬케이크아니야','$2a$10$98mQTsTUm4MZ4D/JP46quub2TJavJYhhcO0hiLDRq78ea7k0Ib4SW','2022-11-17 10:35:51.978000','hongssafy','1','홍싸피'),(27,_binary '','test21@test21.com',3,'2022-11-17 10:43:44.726000','test21','$2a$10$ggjppd5JmSgO.XAliZYFoOBKv7zcU4hmTtW4CD2I0gZCNdjRFOzwi','2022-11-17 10:43:44.726000','test21','1','test21'),(28,_binary '','noinjung@injung.com',1,'2022-11-17 14:05:22.925000','인정을해안해','$2a$10$jo0CBLj9xwKFVaqHtUv/s.xGya44bC5duzBT9aSpzVnNevlFZPDIG','2022-11-17 11:07:40.741000','leessafy','0','이싸피'),(29,_binary '','jiwoo@jiwoo.com',1,'2022-11-17 11:08:19.249000','jiwoo','$2a$10$YepqkzGLJ1RqHDqv8bN1Zu40A6KSIIL2LnHUQ7.srgalcumZHOdRC','2022-11-17 11:08:19.249000','wldn102','3','배지우'),(30,_binary '','insidepeople@inside.com',1,'2022-11-17 14:05:48.635000','안에사람들있잖아','$2a$10$cQPkSXmDoXNck3kEKRwFg.hrXhse1efbIuYQcC4R2uY26Xa9kUZWa','2022-11-17 11:08:26.546000','minssafy','10','민싸피'),(31,_binary '','no1@project.com',1,'2022-11-17 14:40:10.182000','프론트남바완','$2a$10$rnOd3dXS4AiGDin7Uw7eLewKphOxZWDWPfwXI0pFPraOt9MX3NJ0q','2022-11-17 14:36:59.620000','frontend','1','프론트'),(32,_binary '','backend@ssafy.com',1,'2022-11-20 23:34:30.591000','백엔드일짱','$2a$10$Q8a2uhY4LHX7ZWlRw9UKQ.HAS.Bq8Hr8giCqDaA4QwV4XvXqRDfvW','2022-11-17 14:48:58.565000','backend','14','백엔드'),(33,_binary '','sweet@bread.com',1,'2022-11-17 17:19:10.909000','아식빵무지달다','$2a$10$kQSUWvbZBKY7tXJqTGMW2u2.sWWOneMNNqlY/0jxFYHzyQM1yd1i2','2022-11-17 15:24:32.651000','aaaaaa','4','식빵'),(34,_binary '','hari@seeding.com',1,'2022-11-17 17:19:31.235000','모발이식하란말야','$2a$10$Hy.WvkuzZLq6PdwIFm.iu.KNjOVgw53MPqSiMwxsO98L.eweOmo5y','2022-11-17 15:27:11.823000','bbbbbb','12','모발모발'),(35,_binary '','jiwoodesu@jiwo.com',NULL,'2022-11-17 16:20:51.439000','지우임','$2a$10$R4Wa7eqf6LgC9oIbzb.4e.83k4VMZj47rJeQzLc0j60GlCnzJqnC2','2022-11-17 16:20:51.439000','wldn1022','2','지우배'),(36,_binary '','gook@jin.com',NULL,'2022-11-17 16:31:38.841000','김국진','$2a$10$9KhW.k3fHvWC883UbCraHumtHEiZ5K8TTbsJKZmBBfLdZriF43h4a','2022-11-17 16:31:38.841000','2515184230','1','kakao김국진'),(37,_binary '','tuna@dongwoon.com',1,'2022-11-18 10:17:26.894000','dongwoon','$2a$10$E.0jEw3dh3RPWeN3lMrS/eWQNZJL8gzWhUdaec0PfNKqBR/wUt2tO','2022-11-18 10:15:55.346000','dongwoon','2','dongwoon'),(38,_binary '','test@tester.com',NULL,'2022-11-18 17:26:32.949000','tester','$2a$10$7SL4Mh1T6zJN1/zUbaeNWuDl10DdtKt6CKVI5NYlQRtrb5qs.W7RW','2022-11-18 17:26:32.949000','tester1234','1','tester');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authority`
--

DROP TABLE IF EXISTS `user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_authority` (
  `user_id` varchar(255) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`authority_name`),
  KEY `FK6ktglpl5mjosa283rvken2py5` (`authority_name`),
  CONSTRAINT `FK6ktglpl5mjosa283rvken2py5` FOREIGN KEY (`authority_name`) REFERENCES `authority` (`authority_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authority`
--

LOCK TABLES `user_authority` WRITE;
/*!40000 ALTER TABLE `user_authority` DISABLE KEYS */;
INSERT INTO `user_authority` VALUES ('adminId','ROLE_ADMIN'),('2515184230','ROLE_USER'),('aaaaaa','ROLE_USER'),('adminId','ROLE_USER'),('backend','ROLE_USER'),('bbbbbb','ROLE_USER'),('dongwoon','ROLE_USER'),('dummy1','ROLE_USER'),('frontend','ROLE_USER'),('hongssafy','ROLE_USER'),('hwangssafy','ROLE_USER'),('kublaihkan','ROLE_USER'),('leessafy','ROLE_USER'),('minssafy','ROLE_USER'),('rnrwls0211','ROLE_USER'),('test01','ROLE_USER'),('test02','ROLE_USER'),('test21','ROLE_USER'),('tester1234','ROLE_USER'),('wldn102','ROLE_USER'),('wldn1022','ROLE_USER');
/*!40000 ALTER TABLE `user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subject`
--

DROP TABLE IF EXISTS `user_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_subject` (
  `user_subject_seq` bigint NOT NULL AUTO_INCREMENT,
  `subject_seq` bigint DEFAULT NULL,
  `user_seq` bigint DEFAULT NULL,
  PRIMARY KEY (`user_subject_seq`),
  KEY `FKnojn23tixtn61v9lfqgt5tu9a` (`subject_seq`),
  KEY `FKnhj1fo4eftf4ce4y3rqm6i786` (`user_seq`),
  CONSTRAINT `FKnhj1fo4eftf4ce4y3rqm6i786` FOREIGN KEY (`user_seq`) REFERENCES `user` (`user_seq`),
  CONSTRAINT `FKnojn23tixtn61v9lfqgt5tu9a` FOREIGN KEY (`subject_seq`) REFERENCES `subject` (`subject_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subject`
--

LOCK TABLES `user_subject` WRITE;
/*!40000 ALTER TABLE `user_subject` DISABLE KEYS */;
INSERT INTO `user_subject` VALUES (8,1,6),(25,1,24),(26,1,30),(27,1,28),(37,1,18),(38,2,31),(40,1,32),(41,1,33),(42,1,34),(43,1,10),(45,1,4),(47,2,13),(48,2,37),(51,1,2),(52,2,29);
/*!40000 ALTER TABLE `user_subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 23:59:05
