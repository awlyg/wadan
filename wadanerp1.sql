-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2020 at 04:28 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wadanerp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`id`, `name`, `phone`, `short_name`, `bank`, `account`, `deleted_at`) VALUES
(3, 'Security Umbrella Est.', '0536848199', 'Security Umbrella Est.', 'NCB', '36095162000106', NULL),
(4, 'Mohammed Amir', '0593045138', 'Mohammed Amir', 'NCB', '38700000116303', NULL),
(5, 'Abdelsalam Suliman', '0559134641', 'Abdelsalam Suliman', 'NCB', '20500000229009', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `letter_of_guarantee` tinyint(1) DEFAULT NULL,
  `submission_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`id`, `name`, `client_name`, `cost`, `letter_of_guarantee`, `submission_date`, `opening_date`, `manager`, `link`, `status`, `comment`, `created_at`, `deleted_at`) VALUES
(13, 'تجهيز شبكات الحاسب الآلي وغرفة الخوادم بالمبنى الجديد للادارة العامة للتعليم بالمنطقة الشرقية', 'ادارة التربية و التعليم بالمنطقة الشرقية', 984060, 1, '01-04-2019 08:31', '02-04-2019 08:31', 46, 'https://drive.google.com/open?id=1izx6ZAUFS1d6F-PrZUGsZM5i2880zWB4', 'Submitted', 'تم تسليم العرض', '2019-02-23 18:00:24', NULL),
(14, 'تجهيزات أمن المعلومات بالمبنى الجديد للادارة العامة للتعليم بالمنطقة الشرقية', 'ادارة التربية و التعليم بالمنطقة الشرقية', 2928450, 1, '01/04/2019', '02/04/2019', 46, 'https://drive.google.com/open?id=1Ctq1HVXFQWeeS3zUUAMthrjV_gexPvYW', 'Submitted', 'تم تسليم العرض', '2019-02-23 18:06:00', NULL),
(15, 'تطوير شبكة الحاسب الآلي في أمانة منطقة الحدود الشمالية بمدينة عرعر', 'أمانة منطقة الحدود الشمالية', 2981790, 1, '19/03/2019', '20/03/2019', 46, 'https://drive.google.com/open?id=14CKnPoisr347hsHa680OhyYNKkAGVUBR', 'Submitted', 'تم تسليم العرض', '2019-02-23 18:10:21', NULL),
(16, 'تجهيز البنية التحتية لشبكة المعلومات المحلية الخاص بمبنى وزارة الشؤون الإسلامية والدعوة والإرشاد القديم', 'وزارة الشـؤون الاسلامية والدعوة والارشاد', 1447320, 1, '04/03/2019', '05/03/2019', 46, 'https://drive.google.com/open?id=1ASnTa9621uT8fzzNACRU5_ToZA3mcdaC', 'Submitted', 'تم تسليم العرض', '2019-02-23 18:15:35', NULL),
(17, 'توريد وتركيب نقاط للشبكة اللاسلكيـة مع محطاتها بجامعـة الملك سعود - المدينة الجامعية للطالبات', 'جامعة الملك سعود', 0, 1, '05/03/2019', '06/03/2019', 46, 'https://drive.google.com/open?id=1AHJBF_VC24q_Xo78Dx0r0Gtb77T0Uag8', 'Submitted', 'تم الاعتذار', '2019-02-23 18:25:30', NULL),
(18, 'تأسيس شبكة الحاسب الآلي بمبنى(ج) بهيئة الرقابة والتحقيق', 'هيئة الرقابة والتحقيق', 182784, 0, '28-02-2019 14:00', '28/02/2019', 46, 'https://drive.google.com/open?id=19ZS-7A6-_TvKqoG905oihXwIp6s7fpCR', 'Submitted', 'تم تسليم العرض', '2019-02-23 18:34:24', NULL),
(21, 'توفير متطلبات تقنية مختلفة', 'الهيئة العامة للمساحة', 665910, 0, '12-03-2019 08:39', '13-03-2019 10:39', 46, 'https://drive.google.com/open?id=1F3F5GIp0HGXFGF25gKIAiFfhfeEDhFYY', 'Submitted', 'تم تسليم العرض', '2019-03-04 14:41:19', NULL),
(22, 'تأمين أحتياج قسم تقنية المعلومات والإتصالات', 'كلية الملك فهد الامنية', 0, 0, '11-03-2019 10:42', '12-03-2019 10:42', 46, 'https://drive.google.com/open?id=11DUQLKM-kWaaxsdl1ntlfP9x6-AIJpqO', 'Submitted', 'تم الاعتذار', '2019-03-04 14:43:29', NULL),
(24, 'أعمال البنية التحتية لشبكة الحاسب الآلي وكاميرات الأمن الجمركي للمواقع الجمركية بمحافظة ينبع ومدينة الملك عبدالله الاقتصادية وجمرك ميناء جدة', 'الهيئة العامة للجمارك', 0, 1, '31-03-2019 12:00', '01-04-2019 09:02', 46, 'https://drive.google.com/open?id=1LJEP1ncfzMwlrIoitRaYBwwHlphP9bcn', 'Submitted', 'تم الاعتذار', '2019-03-12 12:04:32', NULL),
(25, 'صــيانــة وتشغيل شبكة المعلومات ومركز الحاسب الآلي بــالإدارة العــامة والأنظــمة الأمنية وفروعها في كلا من (الرياض ، مكة المكرمة ، جدة ، الدمام بموقعيها (1 ، 2) الجوف، أبها نجران)', 'وزارة الداخلية', 0, 1, '10-04-2019 11:00', '11-04-2019 13:00', 46, NULL, 'Submitted', 'تم الاعتذار', '2019-03-12 12:07:35', NULL),
(26, 'KKUH NETWORK INSTALLATION PROJECT', 'جامعة الملك سعود', 615090, 0, '26-03-2019 12:00', '27-03-2019 10:53', 46, 'https://drive.google.com/open?id=188un0UK5qRDU4DcIE7OhmnDWauta93dX', 'Submitted', 'تم تسليم العرض', '2019-03-12 13:57:26', NULL),
(27, 'تامين وتوريد اجهزة توفير خدمة دخول الانترنت WiFi', 'جامعة الحدود الشمالية', 790125, 0, '31-03-2019 14:00', '01-04-2019 09:50', 46, 'https://drive.google.com/open?id=15-EoYpnlKHXA1PowBcins7N1DqQCTaBZ', 'Submitted', 'تم تسليم العرض', '2019-03-24 12:56:02', NULL),
(28, 'تحديث البنية التحتية للشبكة في المبنى الرئيسي لأمانة منـطقة الريــاض', 'أمانة منطقة الرياض', 0, 1, '12-05-2019 11:00', '12-05-2019 11:00', 46, 'https://drive.google.com/open?id=1Vk7B53R3TM2MRKGHE0LjaNCMKLo4jnQP', 'Submitted', 'تم الاعتذار', '2019-03-27 14:54:31', NULL),
(29, 'نقل وتلحيم كيبل الالياف الضوئية ونقاط شبكة', 'قوات الأمن الخاصة', 85680, 0, '27-03-2019 10:00', '28-03-2019 12:00', 46, 'https://drive.google.com/drive/u/0/folders/1cSqtdAtN5e_vOjhd6hxzK7jREE5-cDh9', 'Submitted', 'تم تسليم العرض', '2019-03-27 15:45:29', NULL),
(31, 'تأمين عدد 50 جهاز حاسب آلي محمول', 'جامعة الحدود الشمالية', 0, 0, '07-04-2019 08:57', '08-04-2019 08:57', 46, 'https://drive.google.com/open?id=1c_vndSeWq4vHQwYTO_jqgCw6EigUVNwV', 'Submitted', 'تم الاعتذار', '2019-04-03 11:57:51', NULL),
(32, 'تأمين عدد 40 جهاز آيباد لمجلس الجامعة', 'جامعة الحدود الشمالية', 0, 0, '07-04-2019 08:58', '08-04-2019 08:58', 46, 'https://drive.google.com/open?id=1c_vndSeWq4vHQwYTO_jqgCw6EigUVNwV', 'Submitted', 'تم الاعتذار', '2019-04-03 11:58:47', NULL),
(33, 'عملية تجديد الرخص والدعم الفني لأنظمة حماية الانرتنت', 'وكالة الانباء السعودية', 504840, 0, '14-04-2019 09:03', '14-04-2019 14:00', 45, 'https://drive.google.com/open?id=1aK7FWOSJodV6G7voBfb-KOIiDmo1oK5B', 'Submitted', 'تم تسليم العرض', '2019-04-03 12:04:31', NULL),
(34, 'عملية تأمين وتمديد وتركيب وترقية نقاط الشبكة لعدد من المباني بقيادة قوات الطوارئ الخاصة', 'قوات الطوارىء الخاصة', 2123380, 1, '12-05-2019 11:00', '13-05-2019 15:00', 46, 'https://drive.google.com/open?id=1wRxsUF9y4xzFg4WX-HPUEvx3D1Ts9pd0', 'Submitted', 'تم شراء الكراسة\r\nتم تحميل الكراسه', '2019-04-03 12:08:44', NULL),
(35, 'تأمين أجهزة وخدمات الانترنت اللاسلكي بمبنى التخطيط والتطوير العدلي', 'وزارة العدل', 0, 1, '14-05-2019 11:19', '15-05-2019 12:19', 46, 'https://drive.google.com/open?id=1TaynJ_VX3hMbvEGz1qdMqOYl2aeWsiBV', 'Submitted', 'لن يتم التقديم', '2019-04-14 15:21:17', NULL),
(36, 'توريد أجهزة حاسب آلي لكلية الأسنان بجامعة الملك سعود بن عبدالعزيز للعلوم الصحية', 'جامعة الملك سعود بن عبدالعزيز للعلوم الصحية', 146160, 0, '23-04-2019 12:00', '24-04-2019 10:08', 46, 'https://drive.google.com/open?id=1WRO9ymBbLHQSnH74OVwMNcQS5yw9XsCI', 'Submitted', 'تم تسليم العرض', '2019-04-17 13:09:25', NULL),
(37, 'توريد أجهزة لوحية لجامعة الملك سعود بن عبدالعزيز للعلوم الصحية', 'جامعة الملك سعود بن عبدالعزيز للعلوم الصحية', 39900, 0, '24-04-2019 10:59', '25-04-2019 10:09', 46, 'https://drive.google.com/open?id=1WRO9ymBbLHQSnH74OVwMNcQS5yw9XsCI', 'Submitted', 'تم تسليم العرض', '2019-04-17 13:10:51', NULL),
(38, 'تأمين احتياجات الإدارة العامة لتقنية المعلومات لحج عام 1440 هـ', 'كلية الملك فهد الامنية', 0, 0, '29-04-2019 13:00', '30-04-2019 10:11', 46, 'https://drive.google.com/open?id=1UaBbeXfeEh01ukXT9mFsI-s5V6NeFN40', 'Submitted', 'تم الاعتذار', '2019-04-17 13:13:03', NULL),
(39, 'تأمين وتركيب رخص الجدران النارية لجامعة الطائف', 'جامعة الطائف', 421344, 0, '21-04-2019 10:00', '22-04-2019 10:15', 46, 'https://drive.google.com/open?id=1sH8sYSPjWfinUaPNDIybuJX8GWaD8Ywi', 'Submitted', 'تم تسليم العرض', '2019-04-17 13:16:17', NULL),
(40, 'استبدال وتجديد الشبكات الهاتفية وشبكة الحاسب الالي لعدد من ادارات الدفاع المدني بمنطقة الحدود الشمالية', 'الدفاع المدني - الشمالية', 0, 0, '06-05-2019 10:18', '07-05-2019 10:18', 46, 'https://drive.google.com/open?id=1pZ9tOUaVY1DnkaEPALAwQa1GZbh7mBjB', 'Submitted', 'تم الاعتذار', '2019-04-17 13:20:50', NULL),
(41, 'مشروع الربط الشبكي للمراكز التابعة لامارة منطقة الحدود الشمالية', 'إمارة منطقة الحدود الشمالية', 0, 0, '04-05-2019 09:15', '06-05-2019 09:15', 46, 'https://drive.google.com/open?id=1R6MBgZYuBkdA30eWxIxCqlxBgm_7xJyD', 'Submitted', 'تم الاعتذار', '2019-04-24 12:18:03', NULL),
(42, 'تشغيل و صيانة معامل الحاسب الآلي و الشبكات وقطع الغيار و المستلزمات التقنية للإدارة و المدارس', 'ادارة التربية و التعليم بمحافظة الدوادمي', 588158, 1, '12-06-2019 11:00', '13-06-2019 11:00', 46, 'https://drive.google.com/open?id=1hm8URoz0ChtF9AQP4iZ98HzMwJdjwQtC', 'Submitted', 'تم شراء الكراسه', '2019-04-28 00:28:56', NULL),
(43, 'منافسة مشروع تحديث شبكة المراقبة في البرج الطبي الثاني لمدنية الملك سعود الطبية', 'مدينة الملك سعود الطبية', 2379910, 1, '12-05-2019 11:30', '13-05-2019 11:30', 46, 'https://drive.google.com/open?id=1w8JCnkdcaLRs_L86LJdm7eX1a_QflOLQ', 'Submitted', 'تقرر دخول المنافسه', '2019-04-28 00:32:53', NULL),
(44, 'تأمين أجهزة حاسب وطابعات لمركز الأمير نايف للإبداع الأمني', 'كلية الملك فهد الامنية', 295995, 0, '08-05-2019 14:00', '09-05-2019 11:43', 46, 'https://drive.google.com/open?id=1HHA5NBH5UskNuVIV2-mDO5NnP8I7sRyP', 'Submitted', NULL, '2019-05-05 14:45:25', NULL),
(45, 'تأمين أجهزة توزيع الشبكة وملحقاتها', 'هيئة الإذاعة والتليفزيون', 288971, 0, '08-05-2019 11:00', '09-05-2019 11:00', 46, 'https://drive.google.com/drive/folders/1N2ASR3NEzyX-kQ0Huip5uA_bzNVJO5ep', 'Submitted', 'تم تقديم العرض', '2019-05-08 13:43:27', NULL),
(46, 'عملية تأمين وتمديد وتركيب نقاط شبكة مكاتب إدارية بقيادة قوات الطوارئ الخاصة', 'قوات الطوارىء الخاصة', 377580, 0, '15-05-2019 11:30', '16-05-2019 11:30', 46, 'https://drive.google.com/open?id=1QnU2-FPtZ5WQXPHBxVQL0UoJPWqx9Wff', 'Submitted', 'مناقصة جديدة شراء مباشر - مختلفه عن المنافسه السابقة', '2019-05-14 14:29:22', NULL),
(47, 'تأسيس كامل لشبكة مبنى البلدية الجديد محافظة حقل', 'أمانة منطقة تبوك - بلدية محافظة حقل', 294840, 0, '15-05-2019 10:00', '16-05-2019 11:52', 46, 'https://drive.google.com/open?id=1E7IOdGQuqfj3pBMOqXBRc_ahGyhA5Hj5', 'Submitted', 'ضروري اليوم يكون العرض جاهز', '2019-05-14 14:53:39', NULL),
(48, 'توريد وتركيب كيابل ونقاط شبكة وموزع سيسكو لادارة تقنية المعلومات', 'إمارة منطقة عسير', 276518, 0, '20-05-2019 10:00', '21-05-2019 11:58', 46, 'https://drive.google.com/open?id=1I8fflL-u3Q1icRp8SbjrUd9_KjpxAuoY', 'Submitted', NULL, '2019-05-14 14:59:31', NULL),
(49, 'تجهيز تقنية المعلومات وربط الشبكات لمبني بلدية الورود الجديد', 'أمانة منطقة تبوك', 189798, 0, '19-05-2019 12:00', '20-05-2019 12:00', 46, 'https://drive.google.com/open?id=192P08hLrIovp5o_68Tof820zYhE6uWE2', 'Submitted', NULL, '2019-05-14 15:02:10', NULL),
(50, 'شبكة فرع الحدود الشمالية عرعر', 'وزارة العمل والتنمية الاجتماعية (قطاع التنمية الاجتماعية)', 284886, 0, '20-05-2019 13:00', '21-05-2019 11:55', 46, 'https://drive.google.com/open?id=175Ba98iLHAO9TCkzpmSTcCOXlZ4sCHcD', 'Submitted', NULL, '2019-05-16 14:57:33', NULL),
(51, 'تامين ربط الفايبر في المدينة الجامعية', 'جامعة الجوف', 832461, 0, '26-05-2019 14:00', '27-05-2019 12:32', 46, 'https://drive.google.com/open?id=1a0zA8g04ZOTzt4Qfju1HSCxMRsMU_n7F', 'Submitted', 'الحفر وتمديد المواسير خارج نطاق المشروع حسب طلب الجامعة', '2019-05-16 15:34:39', NULL),
(52, 'متطلبات شبكة لمستوصف الرس', 'مستشفى القوات المسلحة بالقصيم', 167895, 0, '29-05-2019 13:00', '30-05-2019 12:12', 46, 'https://drive.google.com/open?id=1_JqTgXjZ6AlAjx4n9aGw12f9IvnhFaA4', 'Submitted', NULL, '2019-05-19 15:13:04', NULL),
(53, 'تأمين شبكة لمؤسسة رعاية الفتيات في عرعر', 'وزارة العمل والتنمية الاجتماعية (قطاع التنمية الاجتماعية)', 239883, 0, '23-05-2019 13:00', '26-05-2019 10:53', 46, 'https://drive.google.com/open?id=1lNJndHy71PFPz9RRKBYf2VlKEnZX9leO', 'Submitted', NULL, '2019-05-20 13:55:52', NULL),
(54, 'مشروع ترقية شبكة البيانات للبلديات الفرعية بأمانة المنطقة الشرقية 1440هـ', 'أمانة المنطقة الشرقية', 0, 1, '25-06-2019 15:00', '26-06-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1MbJpMwG5aq0CE9na7J6RhxIgZrD53H74', 'Submitted', 'ضرورة تقديم الضمان الخميس', '2019-06-09 13:29:38', NULL),
(55, 'مشروع إنشاء شبكة مبنى المختبر الرئيسية', 'أمانة المنطقة الشرقية', NULL, 1, '25-06-2019 15:00', '26-06-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1MexZik6XONyKYujnZyicp9qfNrjtW5pF', 'Submitted', 'ضرورة تقديم الضمان الخميس', '2019-06-09 13:37:27', NULL),
(56, 'استبدال وتجديد الشبكات الهاتفية وشبكة الحاسب الالي لعدد من ادارات الدفاع المدني بمنطقة الحدود الشمالية', 'ادارة الشؤون الفنية المركزية  بمنطقة الحدود الشمالية', 258720, 0, '18-06-2019 14:00', '19-06-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1PJrQAqD4kmZESTwaxGzrgaBSxtwi1-O6', 'Submitted', 'الثلاثاء - العرض جاهز في انتظار منصة اعتماد', '2019-06-12 16:01:57', NULL),
(57, 'تأمين شاشات ( كبائن ) لشاشة العرض الرئيسية لقاعة الملك عبدالعزيز', 'كلية الملك فهد الامنية', 129969, 0, '23-06-2019 14:00', '24-06-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/18jbqzSi-UU0TpwcnpzGuQTzOJ_pXOf8H', 'Submitted', 'الاحد القادم - تم تجهيز التكلفة', '2019-06-12 16:13:13', NULL),
(58, 'صيانة وتحديث شبكة الحاسب الآلي للمباني الرئيسية والخارجية للإدارة العامة للتعليم بالأحساء', 'ادارة التربية والتعليم بمحافظة الإحساء', 455070, 1, '25-06-2019 14:00', '26-06-2019 14:00', 46, 'https://drive.google.com/drive/u/0/folders/1lQmamvSwhRZ5eP_3pEujqzaDLWYWc1Tq', 'Submitted', 'ضرورة تقديم الضمان الخميس', '2019-06-12 16:25:14', NULL),
(59, 'تحديث الشبكة الداخلية للإدارة التعليم بوادي الدواسر والأقسام التابعة لها', 'ادارة التربية و التعليم بمحافظة وادي الدواسر', 186984, 1, '15-07-2019 14:00', '16-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1IaMQvomrfmOXJY5N3COLQwAcLY90bq4g', 'Submitted', 'نحتاج رقم للتواصل', '2019-06-12 16:27:28', NULL),
(60, 'تأمين أجهزة وشاشات عرض لغرفة الطوارئ بإدارة تقنية المعلومات', 'وزارة البيئة والمياة والزراعة', 102942, 0, '16-06-2019 23:00', '17-06-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1qtJrNbQW8C--ZKDo1EZYtczRUYZb-4s0', 'Submitted', 'تم رفع العرض', '2019-06-12 16:49:12', NULL),
(61, 'تشغيل وصيانة أجهزة ومعامل الحاسب الالي والشبكـــــات', 'ادارة التربية والتعليم محافظة النماص', 190050, 0, '17-06-2019 14:00', '18-06-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1XGRisuDXpDLiYsRniunyLv8ca6KIY5sS', 'Submitted', 'تم رفع العرض', '2019-06-13 12:10:56', NULL),
(62, 'التجهيز التقني لمبنى فرع الهيئة بمنطقة الرياض', 'هيئة الهلال الأحمر السعودي', 274050, 0, '24-06-2019 12:00', '24-06-2019 12:10', 46, 'https://drive.google.com/drive/u/0/folders/1gha_sjBBhR_B4IAms-pExCGttl0I0v1T', 'Submitted', 'الاثنين القادم', '2019-06-17 17:16:26', NULL),
(63, 'تأمين اجهزة مكتبية لفريق المتابعة بمكتب وكيل التنمية الاجتماعية', 'وزارة العمل والتنمية الاجتماعية', 13986, 0, '01-07-2019 14:00', '01-07-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1DdXSWPkhsgGB-2u6lcpXMvK_aLIkColn', 'Submitted', NULL, '2019-06-26 19:05:23', NULL),
(65, 'تطوير وتركيب شبكة الصالة الملكية بمطار الامير محمد بن عبدالعزيز الدولي بالمدينة المنورة', 'الهيئة العامة للطيران المدني', 1299540, 0, '30-06-2019 10:00', '30-06-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1k0NGMKBQ3gZe-v1TMbE9io5cl_va4pCc', 'Submitted', 'الأحد القادم', '2019-06-26 19:07:58', NULL),
(66, 'منافسة إنشاء بنية تحتية شبكية لمباني(كليات العلوم والاداب برياض الخبراء، وضرية، والبدائع، ومبنى المستشفى البيطري)', 'جامعة القصيم', NULL, 0, '03-07-2019 14:00', '04-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/159yQ5F0SpwV-R_8USWvefkMRm_W29Hpa', 'Submitted', 'الأربعاء القادم', '2019-06-26 19:11:59', NULL),
(67, 'إحلال وتجديد نظام إطفاء الحريق لمركز البيانات', 'كلية الملك خالد العسكرية', 194250, 0, '04-07-2019 12:00', '05-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1HnFbpw4T_Pq-UtawmVyHljrLTiyGwAGc', 'Submitted', 'الخميس القادم', '2019-06-27 15:22:38', NULL),
(68, 'توريد وتمديد كيبل الالياف ونقاط شبكة', 'قوات الامن الخاصة', 29480, 0, '03-07-2019 10:00', '03-07-2019 10:00', 46, 'https://drive.google.com/drive/folders/1CmdpGqrC5Q0NCIT0-m7qdAQi1f_Edk2y', 'Submitted', 'الأربعاء القادم', '2019-06-30 00:43:48', NULL),
(70, 'أمين اجهزة مكتبية للادارة العامة لرعاية المسنين', 'وزارة العمل والتنمية الاجتماعية', 14994, 0, '02-07-2019 21:00', '03-07-2019 09:00', 46, 'https://drive.google.com/drive/folders/172mIKdn6FKuI5duxVlwhKe593Rowr0Va', 'Submitted', 'الثلاثاء القادم', '2019-06-30 12:42:47', NULL),
(71, 'تأسيس شبكة الحاسب بمركز التنمية الاجتماعية برجال المع', 'وزارة العمل والتنمية الاجتماعية', 184989, 0, '10-07-2019 10:00', '11-07-2019 09:00', 46, 'https://drive.google.com/drive/folders/1Xb7OBRQX6_b3SeJ-QjSYptN5Ypq8ihC9', 'Submitted', NULL, '2019-07-01 15:09:04', NULL),
(72, 'عملية توريد و تركيب تمديدات كيابل خاصة بأجهزة المستخدمين المكتبية بمبنى 911 بمكة المكرمة', 'وزارة الداخلية', 233100, 0, '03-07-2019 14:00', '03-07-2019 14:30', 46, 'https://drive.google.com/drive/folders/1qixyoK5RlQXIAN9Z3ujW3dzh1djgw7Xn', 'Submitted', 'الأربعاء القادم', '2019-07-01 20:27:29', NULL),
(73, 'نقل أجهزة شبكة الحاسب الآلي وتقنية المعلومات إدارة جوازات محافظة عنيزة', 'المديرية العامة للجوازات', 64974, 0, '09-07-2019 10:00', '09-07-2019 10:00', 46, 'https://drive.google.com/drive/folders/1rOJ5-z-3ckjJN_xRY60UVt84b1xUudtM', 'Submitted', 'الثلاثاء', '2019-07-03 17:00:53', NULL),
(74, 'تجديد تراخيص نظام مراقبة أمن وكفاءة أجهزة المستخدمين في الوقت الحقيقي', 'جامعة تبوك', 479997, 0, '09-07-2019 14:00', '10-07-2019 15:00', 46, 'https://drive.google.com/drive/folders/1KmtKE8fpPG8Zrd3BkKMIj7P5VRYWAuZu', 'Submitted', 'الثلاثاء', '2019-07-03 18:03:39', NULL),
(75, 'تطوير وتوسعة بيئة الخوادم الافتراضية', 'جامعة تبوك', 1239990, 0, '09-07-2019 14:00', '10-07-2019 15:00', 46, 'https://drive.google.com/drive/folders/1uVVNAj5dno2tE77tQF5suW0FohRhHZnF', 'Submitted', 'الثلاثاء', '2019-07-03 18:05:46', NULL),
(76, 'تامين كاميرات مراقبة داخلية وخارجية مع نظام تخزين وجهاز كمبيوتر ومنظم وشاشات', 'وزارة الحرس الوطني', 76965, 0, '10-07-2019 15:00', '11-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1RrTycaQ_acmkGUx8Sp8hHjZe5uYSQ6WF', 'Submitted', NULL, '2019-07-04 12:52:49', NULL),
(77, 'سيرفرات البنية التحتية المتقاربة والمتكاملة', 'النيابة العامة', 939981, 0, '09-07-2019 13:00', '10-07-2019 13:00', 46, 'https://drive.google.com/drive/u/0/folders/1x_gSItrDBcbYo7gWlU6va-0ZbAU_z2Hw', 'Submitted', 'الثلاثاء', '2019-07-08 19:45:15', NULL),
(78, 'Supply of CCTV SYSTEM EXPANSION for KAMC-RIYADH', 'الشئون الصحية بوزارة الحرس الوطني', 240030, 0, '09-07-2019 16:00', '10-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1uGRaid71nZkZOcHSoKpn3wLKnr0l7ZEQ', 'Submitted', NULL, '2019-07-09 12:11:53', NULL),
(79, 'توريد أجهزة حاسب آلي وملحقاتها لادارة تقنية المعلومات والشبكات', 'جامعة حفر الباطن', 267960, 0, '18-07-2019 09:00', '19-07-2019 13:00', 46, 'https://drive.google.com/drive/u/0/folders/1LTRqBi3r_kEQl-j3IAz9ocssFnsih1Zh', 'Submitted', NULL, '2019-07-14 16:31:40', NULL),
(80, 'عملية إنشاء شبكة فرع الرئاسة عرعر', 'الرئاسة العامة للبحوث العلمية والإفتاء', NULL, 0, '29-07-2019 14:00', '30-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1Mt4yDz9wE3utfEc6BRmZ6wWDqTtb3KEi', 'Submitted', NULL, '2019-07-17 22:23:32', NULL),
(81, 'تأمين قطع صيانة للأجهزة المكتبية وأجهزة الشبكة', 'إدارة التربية والتعليم بمحافظة القنفذة', 196371, 0, '21-07-2019 14:00', '22-07-2019 13:00', 46, 'https://drive.google.com/drive/u/0/folders/19FauGo-1VhghmdbxWUcVCjjv76mEtIKR', 'Submitted', NULL, '2019-07-17 22:27:08', NULL),
(82, 'توريد رخص نظام اكتشاف الثغرات الأمنية وتحليل المخاطر لمركز البيانات', 'جامعة تبوك', NULL, 0, '22-07-2019 14:00', '23-07-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1tp_c0LSioTggtR2iPSJHao0eJf7GMc4W', 'Submitted', NULL, '2019-07-17 22:32:48', NULL),
(83, 'تامين ربط الفايبر لمباني جامعة الجوف', 'جامعة الجوف', 766217, 0, '22-07-2019 14:00', '23-07-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1QcpwymUkcNo3dnX6DKegTjDjSh1gfNsQ', 'Submitted', NULL, '2019-07-17 22:38:44', NULL),
(84, 'تامين أجهزة حاسب مكتبية لمعمل الامن السيبراني في كلية علوم الحاسب والمعلومات', 'جامعة الاميرة نورة بنت عبدالرحمن', NULL, 0, '24-07-2019 14:00', '25-07-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1ME0PSLgpE67W9rAFMjtwSOQEKBUVwWlH', 'Submitted', NULL, '2019-07-17 22:46:28', NULL),
(85, 'مشروع إنشاء بنية تحتية شبكية لمباني( كليات العلوم والاداب برياض الخبراء والبدائع)', 'جامعة القصيم', 1366930, 0, '24-07-2019 14:00', '25-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1mVlofTz1lmeA4jsnKDTjbnUMDsq8OW0E', 'Submitted', NULL, '2019-07-18 15:12:56', NULL),
(86, 'تأمين رخص برنامج مكافحة الفيروسات samantec لمدة 3 سنوات', 'إمارة منطقة عسير', 67998, 0, '29-07-2019 10:00', '30-07-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1niSx35Cf-7t25mFrpjuAfNcXxXzxQi__', 'Submitted', NULL, '2019-07-22 14:39:09', NULL),
(87, 'شراء أجهزة ،برامج ، طابعات متعددة المهام وأجهزة الحضور والانصراف', 'هيئة تطوير المنطقة الشرقية', 355509, 0, '01-08-2019 12:00', '01-08-2019 14:00', 46, 'https://drive.google.com/drive/u/0/folders/1hvDzDE2KHj4RIpPxcmLVCRbnUJ5YRQuH', 'Submitted', NULL, '2019-07-22 16:56:56', NULL),
(100, 'توريد وتركيب شبكة لفرع الوزارة بمنطقة مكة المكرمة', 'وزارة الاسكان', 72167, 0, '04-08-2019 11:40', '04-08-2019 12:00', 46, 'https://drive.google.com/drive/u/0/folders/1BSkB2KL7mezfc0ZhN7nOtP10o7qP4nT_', 'Submitted', NULL, '2019-07-31 15:29:16', NULL),
(101, 'أجھزة البصمة للموظفین بمستشفى الأمیر محمد بن عبد العزیز بالمدینة المنورة التابع للشؤون الصحیة بوزارة الحرس الوطني. ATTENDANCE BIOMETRIC DEVICES', 'الشئون الصحية بوزارة الحرس الوطني', 259980, 0, '03-08-2019 12:00', '04-08-2019 08:00', 46, 'https://drive.google.com/drive/u/0/folders/1JK2gzZYiIUfMTxPS9lIGnI2_L-FyYBBI', 'Submitted', NULL, '2019-07-31 17:42:03', NULL),
(102, 'تأمين عدد (36) جهاز حاسب آلي مكتبي وعدد (16) طابعة ليزر, وعدد(5) طابعة بطاقات وعدد (32) قارئ باركود', 'وزارة الحرس الوطني', 297570, 0, '18-08-2019 14:00', '19-08-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1P4yJinqSpXr20Cr_buJwUKpd7gznB-ZF', 'Submitted', NULL, '2019-08-04 13:34:19', NULL),
(103, 'توريد وتركيب أجهزة موجهات لقسم خدمات المعلومات بمستشفى الملك عبدالعزيز بالاحساء التابع للشؤون الصحية بوزارة الحرس الوطني HR268770', 'الشئون الصحية بوزارة الحرس الوطني - إدارة العقود - مستشفى الملك عبدالعزيز بالاحساء', 113652, 0, '29-08-2019 14:00', '29-08-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1qdkaxxHI-GVdQvb8CftP0YT2VFJPd-Bu', 'Submitted', NULL, '2019-08-04 18:12:44', NULL),
(104, 'ربط وصيانة وإضافة نقـاط شبكة لوزارة الحرس الوطني', 'وزارة الحرس الوطني', 1436770, 1, '10-09-2019 13:00', '11-09-2019 13:31', 46, 'https://drive.google.com/drive/u/0/folders/1SLMtTlkw2CJGSA_YkeVafSrUE5MqtT-T', 'Submitted', NULL, '2019-08-04 20:44:43', NULL),
(105, 'عملية تأمين وتركيب وتشغيل مركز بيانات متكامل (Data center) سيرفرات وسويتشات جديدة مع البرامج الملحقة بها في مبنى إدارة التعليم الجديد', 'ادارة التربية و التعليم بمحافظة الليث', 997592, 1, '22-08-2019 09:00', '22-08-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1tGiEEijM35Qg-4gP7DA0DMDxliPzv9cC', 'Submitted', NULL, '2019-08-04 20:52:11', NULL),
(107, 'تحسين الشبكات الداخلية لعدد من الكليات في الخرج والدلم', 'جامعة الأمير سطام بن عبدالعزيز', 362975, 1, '16-09-2019 14:00', '17-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/14BjWLiIu1k6whXwSJlH4qLkUvtPsQ-C-', 'Submitted', NULL, '2019-08-04 20:59:54', NULL),
(108, 'تركيب الشبكة الداخلية للمطعم', 'جامعة الأمير سطام بن عبدالعزيز', 365085, 1, '16-09-2019 14:00', '17-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1ria30sCShYOZMJ_CWFEi25NciaA4OPp7', 'Submitted', NULL, '2019-08-04 21:04:59', NULL),
(109, 'مشروع تطوير الشبكة الداخلية للمدينة', 'مدينة الملك عبدالله للطاقة الذرية والمتجددة', NULL, 1, '04-09-2019 11:00', '04-09-2019 12:00', 46, 'https://drive.google.com/drive/u/0/folders/1Po5gldvr7SFiuZc4JgakRzEDoiaVa2PC', 'Submitted', NULL, '2019-08-04 21:08:23', NULL),
(110, 'كاميرات خارجية', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالقصيم', NULL, 0, '19-08-2019 14:00', '20-08-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/16rMWxL1VilZinraN1zYpPvZu4d1mwbF_', 'Submitted', NULL, '2019-08-06 13:53:58', NULL),
(111, 'متطلبات شبكة لمستوصف الرس', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالقصيم', 92400, 0, '19-08-2019 14:00', '19-08-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1TSuxRWoRo-Gfg-alr9a4Xp1VAmJK7njA', 'Submitted', NULL, '2019-08-06 13:59:30', NULL),
(112, 'متطلبات شبكة لمستوصف حائل', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالقصيم', 108014, 0, '19-08-2019 14:00', '19-08-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1qr3LCT4BuTv-DnEThEiZMk11giMzkTNA', 'Submitted', NULL, '2019-08-06 14:02:25', NULL),
(113, 'تامين أجهزة حاسب وطابعات لمركز الأمير نايف للإبداع الامني', 'كلية الملك فهد الامنية', NULL, 0, '26-08-2019 14:00', '27-08-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/160PXfUyy3BdMvJLnFzBMYLGNEfrswvAN', 'Submitted', NULL, '2019-08-20 19:03:03', NULL),
(114, 'توريد وتركيب كيابل ونقاط شبكة وموزع سيسكو لادارة تقنية المعلومات', 'إمارة منطقة عسير', 266028, 0, '04-09-2019 10:00', '05-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1xxvQyqZsJb2oJMAeKVy-YSL1-F1d6Cb3', 'Submitted', NULL, '2019-08-26 11:15:42', NULL),
(115, 'توريد وتركيب سويتش ونقاط شبكة للمستودع الخارجي للهيئة العامة للنقل', 'هيئة النقل العام', 29988, 0, '02-09-2019 10:00', '02-09-2019 10:30', 46, 'https://drive.google.com/drive/u/0/folders/1vjgWcXe0Cq1wqhGkmkPry3Fo_LAPDFz7', 'Submitted', NULL, '2019-08-26 11:19:07', NULL),
(116, 'تأمين هواتف شبكيه وأجهزة سنترال مع التركيب والتشغيل', 'إمارة منطقة عسير', 367500, 0, '03-09-2019 10:00', '04-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1_8JTsKL3WkDkYC_l6Xz7AGgijcam81P1', 'Submitted', NULL, '2019-08-26 11:21:23', NULL),
(117, 'تأمين أعمال نقاط الشبكة مع الترقيم لفروع الهيئة بالرياض والخبر', 'هيئة النقل العام', 44459, 0, '29-08-2019 12:00', '30-08-2019 12:30', 46, 'https://drive.google.com/drive/u/0/folders/1qfyTB8VgOJSYIaInvGYyUOBndT65Ddtl', 'Submitted', NULL, '2019-08-26 11:27:36', NULL),
(118, 'توريد وتركيب جهاز تخزين الطاقة (UPS) للهيئة العامة للنقل', 'هيئة النقل العام', 12600, 0, '01-09-2019 10:00', '01-09-2019 10:30', 46, 'https://drive.google.com/drive/u/0/folders/1VJXBUV4wNqPpQsKidvsM-mHqUY5GTVGs', 'Submitted', NULL, '2019-08-26 12:23:10', NULL),
(120, 'تأمين حاسبات محمولة لبرنامج بكالوريوس العلوم الأمنية', 'كلية الملك فهد الامنية', 926625, 0, '04-09-2019 12:00', '05-09-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1GTwgbQvYoO2Hc32rzAmjd7l8GkUSZjT5', 'Submitted', NULL, '2019-08-29 13:02:48', NULL),
(121, 'تأمين وتوريد شبكة لاسلكية  للفصول الدراسية بكلية الملك عبدالله للدفاع الجوي', 'كلية الملك عبدالله للدفاع الجوي', NULL, 0, '02-09-2019 14:00', '03-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1PR7cmJGQfOPI-P9FMP-2kRHFfbaCWvuh', 'Submitted', NULL, '2019-09-01 11:19:00', NULL),
(122, 'ربط وتجهيز الشبكة الداخلية لمستودعات ك 9', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالرياض', NULL, 0, '09-09-2019 16:00', '10-09-2019 13:00', 46, 'https://drive.google.com/drive/u/0/folders/1eyv_-10BBu5EF30Tyvw0JI88Sn3vaw-K', 'Submitted', NULL, '2019-09-04 15:13:50', NULL),
(123, 'تامين كاميرات مراقبة داخلية وخارجية مع نظام تخزين وجهاز كمبيوتر ومنظم وشاشات', 'وزارة الحرس الوطني', 196665, 0, '09-09-2019 14:00', '10-09-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/19Hw7SuMEdsy81gA78sR6Wy9o9Gi7dSId', 'Submitted', NULL, '2019-09-04 15:20:54', NULL),
(124, 'تأسيس شبكة جديدة ونقاط لوحدة الخدمات المساندة للاشخاص ذوي الاعاقة للذكور بالاحساء', 'وزارة العمل والتنمية الاجتماعية', 181020, 0, '10-09-2019 13:00', '11-09-2019 14:00', 46, 'https://drive.google.com/drive/u/0/folders/1ImoX8EmJ--AZbia831ShmONs-XDIOy-R', 'Submitted', NULL, '2019-09-04 15:24:49', NULL),
(125, 'مشروع تطوير البنية التحتية لتقنية المعلومات والاتصالات بمركز مكافحة التدخين', 'المديرية العامة للشؤون الصحية بمنطقة عسير', 76986, 0, '11-09-2019 09:00', '12-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1Up9quB5NRiycUE0V1g_dL0nuwxLjnLaT', 'Submitted', NULL, '2019-09-05 16:17:51', NULL),
(126, 'تأمين وتركيب كاميرات مراقبة في خمس مواقع لزوم مباني البلدية والمستودعات ومباني الخدمات في مدينة جبة والقري التابعة لها', 'أمانة منطقة حائل - بلدية مدينة جبه', 114083, 0, '10-09-2019 14:00', '11-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1lroUzS3zO9XRdEvVYKnUJFVzaRA-fd9c', 'Submitted', NULL, '2019-09-05 16:21:43', NULL),
(127, 'تطوير وتركيب شبكة', 'الهيئة العامة للطيران المدني', 215009, 0, '10-09-2019 11:00', '10-09-2019 12:00', 46, 'https://drive.google.com/drive/u/0/folders/1aTraa4gu4U1DZ8kKehUQgf2qdIBf1Y_M', 'Submitted', NULL, '2019-09-08 13:45:36', NULL),
(129, 'تنفيذ شبكة داخلية (ألياف بصرية) لإدارة مرور منطقة الرياض بالناصرية مبنى الإدارة/مبنى الحوادث', 'الأمن العام', 154161, 0, '09-09-2019 10:00', '10-09-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1YANIDodPB14UN97iSmhMK1HLY3x19Tl1', 'Submitted', NULL, '2019-09-08 13:56:17', NULL),
(130, 'توريد وتركيب وتشغيل نظام مراقبة بالكاميرات لزوم محافظة شرورة', 'إمارة منطقة نجران', 131460, 0, '18-09-2019 13:00', '19-09-2019 14:00', 46, 'https://drive.google.com/drive/u/0/folders/1-Eue951BhTGHU5hVrnB42S0wLDO4C83v', 'Submitted', NULL, '2019-09-08 14:00:03', NULL),
(131, 'تأمين اجهزة حاسب آلي وطابعات لمستشفى الولادة والاطفال بصحة بيشة', 'الشئون الصحية بمحافظة بيشة', 185850, 0, '12-09-2019 09:50', '12-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1tpYUG9ZuGdlucKZdNBXqqjnbDaYLnCCh', 'Submitted', NULL, '2019-09-08 15:39:07', NULL),
(132, 'صيانة وتشغيل نظم المراقبة الامنية بالقيادة العامة لطيران الامن وقاعدة منطقة عسير', 'طيران الأمن - رئاسة امن الدولة', 71419, 0, '17-09-2019 23:00', '18-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1fV4y5ROJfr1aJyXy-pOXB_hhP-W5QnAc', 'Submitted', NULL, '2019-09-10 10:51:07', NULL),
(133, 'مشروع تجهيز أجنحة حاسب آلي وأجنحة مكافحة تزوير بمعهد الجوازات.', 'المديرية العامة للجوازات', 260201, 0, '17-09-2019 10:00', '18-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1zocfixbSbjLJi9K_1_okZ_sNIKNMVyan', 'Submitted', NULL, '2019-09-10 13:55:57', NULL),
(134, 'متطلبات شبكة لبركس المشتريات و التموين .', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالقصيم', 32275, 0, '26-09-2019 14:00', '26-09-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1mWAFq58dHG8YyrLG5seeKWoX0Db6zNMQ', 'Submitted', NULL, '2019-09-10 14:00:57', NULL),
(135, 'مشروع تجهيز وتشغيل أربع مقرات اختبارات متنقلة', 'المركز الوطني للقياس', 1260000, 0, '17-09-2019 20:00', '17-09-2019 20:25', 46, 'https://drive.google.com/drive/u/0/folders/1TFsgXXDwghyOuB69dEDEbAd5y-RdoElr', 'Submitted', NULL, '2019-09-11 15:27:32', NULL),
(136, 'تمديد وتجهيز شبكة الانترنت وشبكة الهواتف الداخلية لحظيرة الطائرات', 'الخدمات الطبية القوات المسلحة -الإخلاء الطبي', 74739, 0, '15-09-2019 10:00', '15-09-2019 10:30', 46, 'https://drive.google.com/drive/u/0/folders/153xpx9xyuDx3D3xfOYqRafDxVQxIJzPe', 'Submitted', NULL, '2019-09-11 15:32:09', NULL),
(137, 'فك ونقل وتركيب كونسلات والمحطات الثابتة الخاصة بنظام الاتصال الأمني الموحد (تترا) بغرفه العمليات بجوازات منطقة عسير الي المبنى الجديد.', 'المديرية العامة للجوازات', 79800, 0, '18-09-2019 10:00', '19-09-2019 10:59', 46, 'https://drive.google.com/drive/folders/1ROLcXDUQ4LQkjY5bbqIZQhF1ZywWnNUE', 'Submitted', NULL, '2019-09-15 18:08:25', NULL),
(138, 'تنفيذ شبكة داخلية لإدارة مرور منطقة الرياض بالناصرية مبنى الإدارة/مبنى الحوادث', 'الأمن العام', 137991, 0, '16-09-2019 12:00', '17-09-2019 13:00', 46, 'https://drive.google.com/drive/folders/1y9ugCG24gzPfd0kPdIyYvnVkKqQC2azr', 'Submitted', NULL, '2019-09-15 18:13:39', NULL),
(139, 'إحلال مزود الطاقة الغير منقطع الخاص بمركز البيانات الرئيسي', 'المديرية العامة للسجون', 185850, 0, '18-09-2019 10:00', '18-09-2019 10:10', 46, 'https://drive.google.com/drive/folders/1OkOfujB3FbF0aMQc0g-JEr1g7sxHEJRL', 'Submitted', NULL, '2019-09-15 18:19:36', NULL),
(140, 'تأمين حاسبات محمولة لطلبة برنامج بكالوريوس العلوم الأمنية', 'كلية الملك فهد الامنية', 721875, 0, '18-09-2019 14:00', '19-09-2019 15:00', 46, 'https://drive.google.com/drive/folders/1CUfO9AViemRpTQhhHYDPDkwbO2QKMmBg', 'Submitted', NULL, '2019-09-15 18:24:10', NULL),
(141, 'تأمين أجهزة الاتصال المرئي', 'المديرية العامة للجوازات', 195972, 0, '24-09-2019 08:20', '24-09-2019 08:30', 46, 'https://drive.google.com/drive/u/0/folders/1FENz-reXiXIZIasA_vmRSCXAPlKMfAyx', 'Submitted', NULL, '2019-09-16 17:36:49', NULL),
(142, 'صيانة وإعادة تأهيل الشبكة الداخلية لمستشفى كلية الملك عبدالعزيز الحربية', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالرياض', 220941, 0, '23-09-2019 14:00', '23-09-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/13RTusDb_6YLHIToajJwNaICVyTeBVoQm', 'Submitted', NULL, '2019-09-16 17:41:14', NULL),
(143, 'صيانة وإعادة تأهيل الشبكة الداخلية لمركز صحي حي الوزارات', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالرياض', 247275, 0, '23-09-2019 14:00', '23-09-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1N8mJ5lnB4-neyr3GwZOtweo5BlBwe3Ap', 'Submitted', NULL, '2019-09-16 17:44:16', NULL),
(144, 'إنشاء مشروع البنية التحتية لشبكة الحاسب الآلي لمبنى بلدية محافظة حقل', 'أمانة منطقة تبوك - بلدية محافظة حقل', 589995, 0, '22-09-2019 08:00', '24-09-2019 08:30', 46, 'https://drive.google.com/drive/u/0/folders/1Q0YE3GnJwW6XrI1PMBYl1H629YACeg6m', 'Submitted', NULL, '2019-09-17 10:54:06', NULL),
(145, 'صيانة غرفة البيانات بالادارة العامة للتعليم بمنطقة عسير (1)', 'ادارة التربية والتعليم منطقة عسير', NULL, 0, '24-09-2019 18:00', '25-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1iPc7TlNpbvXlQzDtWAeTkLkBTBc596yK', 'Submitted', NULL, '2019-09-18 13:35:30', NULL),
(146, 'صيانة غرفة البيانات بالادارة العامة للتعليم بمنطقة عسير (2)', 'ادارة التربية والتعليم منطقة عسير', 290903, 0, '24-09-2019 18:00', '25-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/14jkc2uEsypxwyjm2qh-opvEDmfjatpU4', 'Submitted', NULL, '2019-09-18 13:41:04', NULL),
(147, 'صيانة غرفة البيانات بالادارة العامة للتعليم بمنطقة عسير (3)', 'ادارة التربية والتعليم منطقة عسير', 271574, 0, '24-09-2019 18:00', '25-09-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1ED_klQSuM679fZtDqrSIdDgqlQ7SorRT', 'Submitted', NULL, '2019-09-18 13:45:22', NULL),
(148, 'توريد وتركيب وتشغيل تجهيزات غرفة التحكم وتمديدات الشبكة لسجن بيش', 'المديرية العامة للسجون', 239400, 0, '29-09-2019 10:00', '29-09-2019 10:10', 46, 'https://drive.google.com/drive/u/0/folders/15EhW4-zSTDf8gd9bBKmGlAcgbMPG951a', 'Submitted', NULL, '2019-09-25 18:57:22', NULL),
(149, 'مشروع إنشاء بنية تحتية شبكية لمبنى كلية المجتمع طلاب ببريدة', 'جامعة القصيم', 899997, 0, '09-10-2019 14:00', '10-10-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1E03QpXjNXk2JXcUmSdnv3ZuYcKomRDvD', 'Submitted', NULL, '2019-09-26 13:01:25', NULL),
(150, 'صيانة واستبدال نظام الشبكة الداخلية بمبنى الإدارة العامة بمنطقة نجران', 'وكالة وزارة الداخلية للأحوال المدنية', NULL, 0, '09-10-2019 10:00', '09-10-2019 10:30', 46, 'https://drive.google.com/drive/u/0/folders/1cwf8zyZ3fYbBVq50NctFfkQM3a8urQqo', 'Submitted', NULL, '2019-10-07 10:34:32', NULL),
(151, 'تامين عدد 11 كاميرا مراقبة', 'وزارة الحرس الوطني', NULL, 0, '23-10-2019 14:00', '24-10-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/14VkcVtU3FyKaRKHil5Nq4jrruDn3qBth', 'Submitted', NULL, '2019-10-07 10:38:16', NULL),
(152, 'توريد وتركيب خوادم شبكية للمديرية العامة للسجون', 'المديرية العامة للسجون', 434700, 0, '15-10-2019 08:00', '15-10-2019 08:10', 46, 'https://drive.google.com/drive/u/0/folders/1Olzd8bNxjB9Zdq6HBkvBLT5RkDzx1wx-', 'Submitted', NULL, '2019-10-09 16:45:35', NULL),
(153, 'توريد وتركيب وتشغيل كاميرات المراقبة الأمنية لسجن بيش', 'المديرية العامة للسجون', 379995, 0, '15-10-2019 08:00', '15-10-2019 08:10', 46, 'https://drive.google.com/drive/u/0/folders/1NxqTe63GtEZ-48QKOvf_HCcnvbnkXD6Y', 'Submitted', NULL, '2019-10-09 16:47:16', NULL),
(154, 'غرفة البيانات بمجمع الامل للصحة النفسية بجدة ( خدمات الصحة النفسية )', 'مستشفى الصحة النفسية بجدة', 639996, 0, '27-10-2019 14:00', '28-10-2019 08:00', 46, 'https://drive.google.com/drive/u/0/folders/1-efcvje39IN4X9CQC72uUCiwNsta2Ifr', 'Submitted', NULL, '2019-10-27 11:05:51', NULL),
(155, 'تأهيل وتطوير غرفة الخوادم الرئسية ( sever room )', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', 446775, 0, '14-11-2019 14:00', '15-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1gXJyMnXP6M-Ez5Ao_h4BDzoeeOMSQuCN', 'Submitted', NULL, '2019-10-30 11:20:19', NULL),
(156, 'جهاز جدار حماية ناري بغرفة الخوادم الرئسية ( firewall )', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', 1207500, 0, '10-11-2019 14:00', '11-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1PfA_l05cVTRZ4u6_pSYox0V9PlUl678l', 'Submitted', NULL, '2019-10-30 11:33:59', NULL),
(157, 'أجهزة شبكة لاسلكية ( WIFI ) متصلة بالشبكة بمواصفات محددة', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', 116235, 0, '10-11-2019 14:00', '11-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1OxmGLuOoWMAU_UJ_fA9ba0oRLLER80QY', 'Submitted', NULL, '2019-10-30 11:42:45', NULL),
(158, 'توريد وتركيب أجهزة عدة خوادم وتوير بعض الخوادم ( سيفرات )', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', 141330, 0, '10-11-2019 09:00', '11-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1pwnUwEHPrjiYZBxIyG1ksPoxa8rOOY24', 'Submitted', NULL, '2019-10-30 12:48:04', NULL),
(159, 'توريد وتركيب أجهزة موزعات شبكة ( سوتشات ) حسب المواصفات المحددة', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', 793065, 0, '10-11-2019 16:00', '14-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1x9rlUrgjPLg6RwvZAK-OHgrzpJAJltbt', 'Submitted', NULL, '2019-10-30 12:51:11', NULL),
(160, 'جهاز الحماية المستمرة للبيانات بالخزن الإحتياطي', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', NULL, 0, '12-11-2019 14:00', '13-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1AZcXf5Qs2eQDi81PCLexbi8mWqVKGVn8', 'Submitted', NULL, '2019-11-03 11:44:41', NULL),
(161, 'جهاز خزن أحتياطي للبيانات والمعلومات مع ثمانية منافذ ألياف ضوئية .', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', NULL, 0, '11-11-2019 14:00', '12-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/10SlTQrQLoS3tdym8iILSbNrExsetoVdZ', 'Submitted', NULL, '2019-11-03 11:47:16', NULL),
(162, 'موزع شبكة رئسي ( core switsh ) بمواصفات محددة', 'أدارة الموارد الذاتية بصحة جدة - مستشفى الملك عبدالعزيز بجدة', 400323, 0, '10-11-2019 09:00', '12-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1l2CY4YFUF8hct1cxg_xPqIThP8TRDcIx', 'Submitted', NULL, '2019-11-03 11:51:16', NULL),
(163, 'عملية تأسيس نقاط شبكة جديدة في مبنى وكالة الأحوال المدنية', 'وكالة وزارة الداخلية للأحوال المدنية - ادارة المشتريات', 189987, 0, '05-11-2019 12:30', '06-11-2019 09:00', 46, 'https://drive.google.com/drive/u/0/folders/1CxC2t1qohEtc4F5r3Kp_JJUxiuuhaV4u', 'Submitted', NULL, '2019-11-03 16:16:52', NULL),
(164, 'تأسيس شبكة داخلية لمبنى أدارة شئون الحدود', 'إمارة منطقة نجران - إدارة المشتريات', 47985, 0, '04-11-2019 14:00', '05-11-2019 13:00', 46, 'https://drive.google.com/drive/u/0/folders/1y_LnucB53nzwED4BQfqWdulBL_YX-s6U', 'Submitted', NULL, '2019-11-03 17:33:31', NULL),
(165, 'كراسة الشروط والمواصفات لإنشاء وتركيب شبكة اتصالات لا سلكية', 'جامعة الملك خالد', NULL, 0, '18-11-2019 13:30', '19-11-2019 11:00', 46, 'https://drive.google.com/drive/u/0/folders/1I2VrG0Q4Z3qVDrd7Aid7lzN6GW9DwuNS', 'Submitted', NULL, '2019-11-04 13:59:01', NULL),
(166, 'متطلبات شبكة لمشروع البركسات', 'الخدمات الطبية القوات المسلحة -مستشفى القوات المسلحة بالقصيم', 139986, 0, '28-11-2019 14:00', '28-11-2019 15:00', 46, 'https://drive.google.com/drive/u/0/folders/1fbAVu7WuYMkMg1xXa95STuFKiHDAXI_s', 'Submitted', NULL, '2019-11-11 19:36:55', NULL),
(167, 'توريد وتركيب وتشغيل لتمديدات شبكة الحاسب الآلي وملحقاتها لمبنى بلدية بداء', 'أمانة منطقة تبوك - بلدية بدا', NULL, 0, '18-11-2019 09:00', '18-11-2019 10:00', 46, 'https://drive.google.com/drive/u/0/folders/1-wfYeF-U5GfjI-il2nrieQ-wHhK0K-kV', 'Submitted', NULL, '2019-11-17 19:32:02', NULL),
(168, 'تأمين أجهزة بصمة وسنترال وسويتشات', 'أمانة منطقة تبوك - بلدية محافظة حقل', 343959, 0, '19-11-2019 08:00', '19-11-2019 08:10', 46, 'https://drive.google.com/drive/u/0/folders/1Gn4UDNrVCWWAP0H5M0v7xKnrjUjzCBxi', 'Submitted', NULL, '2019-11-17 19:35:14', NULL),
(169, 'تأمين شبكة حاسب آلي توريد وتمديد ألياف ضوئية وكيابل للشبكة', 'أمانة منطقة تبوك - بلدية محافظة حقل', 331380, 0, '19-11-2019 08:00', '19-11-2019 08:20', 46, 'https://drive.google.com/drive/u/0/folders/1-7Lmf3FLZLXPRfO6L7BWaI6DwLvDsSeQ', 'Submitted', NULL, '2019-11-17 19:38:57', NULL),
(170, 'توريد موزعات شبكة الحاسب الآلي \" switches\"', 'الهيئة العامة للجمارك', 519981, 0, '05-12-2019 09:00', '05-12-2019 10:00', 46, 'https://drive.google.com/drive/folders/17sTwGaQn-eWnDFzwEVPq8ik2uXNDciyD', 'Submitted', NULL, '2019-11-21 15:56:55', NULL),
(171, 'تأسيس وتوريد وتشغيل شعبة الحاسب الآلي بمبنى اللجان الشرعية بجدة', 'أدارة الموارد الذاتية بصحة جدة - ادارة الموارد الذاتية', 364980, 0, '25-11-2019 10:00', '25-11-2019 10:10', 46, 'https://drive.google.com/drive/folders/1C7bLRXj1cONCqkeQhteS4kuGpTqaLdm3', 'Submitted', NULL, '2019-11-21 16:04:27', NULL),
(172, 'تمديد وتركيب نقاط شبكة في فرع الجامعة في مدينة أبها', 'الجامعة الالكترونية', NULL, 0, '25-11-2019 10:30', '25-11-2019 11:30', 46, 'https://drive.google.com/drive/folders/1SYxQudfAPIirIYJJZE1jhXK3qSFkGI28', 'Submitted', NULL, '2019-11-24 12:32:49', NULL),
(173, 'البنية التحتية لشبكة الحاسب الالي اللاسلكية بمستشفى الملك فيصل التخصصي بالمدينة المنورة', 'مستشفى الملك فيصل التخصصي ومركز الأبحاث', NULL, 1, '26-01-2020 14:00', '27-01-2020 09:00', 46, 'https://drive.google.com/drive/u/1/folders/1BNArF0UDZG1Zq-f418AhSdIrJu-skoqh', 'Submitted', NULL, '2019-12-30 19:50:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `expected_close` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager` int(11) NOT NULL,
  `last_update` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `elink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`id`, `name`, `client_name`, `contact`, `value`, `expected_close`, `status`, `manager`, `last_update`, `elink`, `created_at`, `deleted_at`) VALUES
(14, 'تجديد وتوسعة محطة التوليد الاحتياطية بمنفذ الحديثة', 'KFB Group', 'Talib G Parkar\r\ntalib.parkar@kfbgroup.com.sa \r\nMobile:- +966-564818169', 386783, '30-04-2019', 'Submitted', 58, 'Proposal sent to Talib', NULL, '2019-03-06 22:44:46', NULL),
(16, 'مشروع التأمينات الاجتماعية  لتوريد وتركيب ,الكاميرات , نظام الاتصالات , نظام الكشف عن الحرائق في المدينة المنورة', 'Ghazi Elmaimani Contractor', 'Eng.Mohammed Rizk \r\nMob: 0598081941\r\nEzzat Fouad\r\nMobile: 0542352001\r\nEmail: ezzat@daljazera.com', 700456, '18-04-2019', 'Submitted', 58, 'Proposal sent', NULL, '2019-03-18 18:06:42', NULL),
(17, 'مستشفى ابانمي نظام كامل', 'Awan al madar Company', 'Eng.Mohammed Muawia\r\nTel: +966112441644 \r\nMobile : 0532017368 / 0581150446\r\nEmail : mohammedelemam1985@gmail.com', 0, '18-04-2019', 'Analysis', 58, 'Receive the Cisco price and preparing for Cost sheet', NULL, '2019-03-18 18:12:52', NULL),
(18, 'مشروع رابق', 'KFB Group', 'Talib G Parkar\r\ntalib.parkar@kfbgroup.com.sa \r\nMobile:- +966-564818169', 2499163, '19-04-2019', 'Submitted', 58, 'under execution and they expect the low current requirement to finalize in end of 2019 or early 2020', NULL, '2019-03-19 13:25:36', NULL),
(19, 'فندق بدر مكة المكرمة', 'Qasem wishahi', 'Qasem wishahi \r\nMobile : 0583860591\r\nEmail : qasem.wishahi@hotmail.com', 559929, '19-04-2019', 'Submitted', 58, 'I send the Proposal to him', NULL, '2019-03-19 13:34:20', NULL),
(20, 'مشروع المعهد الثانوي الصناعي بالعيون في الاحساء', 'Al Owida Contracting', 'Eng.Mohammed Abdel-Ghani, Electrical Engineer \r\nMob: 0591410902\r\nEmail: m.abdelghani.hodib@gmail.com\r\nProject Manager.Zaki, Mo:+966 557171072', 1503651, '19-04-2019', 'Submitted', 58, 'I sent him official papers to baptize the project', NULL, '2019-03-19 14:38:02', NULL),
(21, 'مشروع خير مكة برج عملاء بنده', 'Al-Qasabi Contracting', 'Eng.Mohammed Hamdi,Electrical Engineer\r\nMob:+966 56 916 6564\r\nEmail: Moh.hamdy1989@gmail.com', 263249, '20-04-2019', 'Submitted', 58, 'Proposal sent', NULL, '2019-03-20 16:54:08', NULL),
(22, 'مشروع غرفة التجارة الجديدة  - المدينة المنورة', 'Dourob AL jazeera Company', 'Ezzat Fouad\r\nMobile : 0542352001\r\nEmail : ezzat@daljazera.com', 0, '21-04-2019', 'Analysis', 58, 'CCTV \r\nAccess point \r\nsecurity system  \r\nhe well send the data via Emile', NULL, '2019-03-21 15:59:02', NULL),
(23, 'مشروع  تبوك منفذ ضبأ تمديد وتركيب نقاط شبكة وكيابل فايبر', 'Arcom', 'Eng.Mosaad \r\nMob: 055 059 8406\r\nEmail: mosaad@arcom.com.sa\r\nEng.Mesfer Al Qahtani \r\nProject Manager\r\nMob: 055 442 7010', 224340, '01-05-2019', 'Submitted', 58, 'They don\'t like The price', NULL, '2019-04-01 19:25:45', NULL),
(24, 'مشروع  مطار الوجه  تمديد وتركيب نقاط شبكة وكيابل فايبر مع حفر', 'Arcom', 'Eng.Mosaad \r\nMob: 055 059 8406 \r\nEmail: mosaad@arcom.com.sa \r\nEng.Mesfer Al Qahtani \r\nProject Manager\r\n Mob: 055 442 7010', 90250, '01-05-2019', 'Submitted', 58, 'They don\'t like The price', NULL, '2019-04-01 19:28:02', NULL),
(25, 'كلية العلوم جامعة الطائف, كاميرات , نظام الحرائق , كيابل , نظام الدخول', 'Samama Contracting Company', 'Eng.Mahmoud Suliman,Electrical Engineer\r\nTel: 058 304 8927\r\nE-mail: Mraqiq@samama.com', 2206550, '25-05-2019', 'Submitted', 58, 'Proposal sent', NULL, '2019-04-25 16:53:16', NULL),
(26, 'مشروع وزارة الدفاع مبنى (G) IP Telephony', 'Al-Fahd Contractor Company', 'Eng Yasser \r\nTel: 059 340 9916\r\nE-mail: ygouhar@alfahd.com', 96587, '29-05-2019', 'Submitted', 58, 'Proposal sent', NULL, '2019-04-29 11:44:08', NULL),
(28, 'تبديل سويتشات واجهزة وايرلس مع ترتيب الكبينة  في المدينة المنورة', 'BMB Co', 'Nawars Hassan \r\nTel : 056 866 2261\r\nE-mail : nawras.hassan@bmbgroup.com', 0, '08-06-2019', 'Analysis', 58, 'Waiting for the Details.', NULL, '2019-05-08 14:07:50', NULL),
(29, 'مشروع المجمعة مع المؤسسة العامة للتدريب التقني والمهني', 'Al Owida Contracting', 'Eng.Mohammed Abdel-Ghani, Electrical Engineer \r\nTel : 059 141 0902\r\nE-mail: M.abdelghani.hodib@gmail.com', 0, '08-06-2019', 'Analysis', 58, 'Waiting for the Details.', NULL, '2019-05-08 14:14:40', NULL),
(30, 'مشروع المدارس في المجمعة', 'Al Owida Contracting', 'Eng.Mohammed Abdel-Ghani, Electrical Engineer \r\nTel : 059 141 0902 \r\nE-mail: M.abdelghani.hodib@gmail.com', 0, '08-06-2019', 'Analysis', 58, 'Waiting for the Details.', NULL, '2019-05-08 14:17:16', NULL),
(31, 'مشروع  وزارة  الدفاع', 'Eshar contractor Company', 'Eng. Manzoor Ahmed Gill\r\nTel: 050 866 2629\r\nE-mail: manzur_mgill@hotmail.com', 0, '08-06-2019', 'Analysis', 58, 'Waiting for the Details.', NULL, '2019-05-08 14:28:10', NULL),
(32, 'مشروع  انشاء مباني الفصول الدراسية بجامعة شقراء', 'Al-Aboud Contractor Company', 'Eng. Ashraf Al - Saeed, Electrical Engineer\r\nTel: 054 891 5465\r\nE-mail: Ashraf.said221@gmail.com', 62059, '08-06-2019', 'Submitted', 58, 'Proposal sent', NULL, '2019-05-08 14:33:36', NULL),
(33, 'تطوير مبنى متعدد الاغراض بجمرك ميناء الملك عبد العزيز بالدمام', 'شركة ندارات العربيــة للتجارة والمقـاولات العامة (انكو)', 'Eng. Salahuldeen Dawood\r\nMobile: +966 50 359 1553\r\nEmail : salah@ancoonline.com', 0, '22-12-2019', 'Analysis', 46, NULL, 'https://drive.google.com/drive/u/0/folders/1C-L3B9IRO0sm0NHVER3FVozVIF_3hMs1', '2019-12-18 13:50:56', NULL),
(34, 'lkjlj', 'lkjlkjlk', 'lkjklj', 1200, '08-01-2020', 'Negotiation', 46, '6546', 'lkjkl', '2020-01-21 00:48:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `elink` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` double(12,2) NOT NULL,
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `bill_date`, `value`, `num`, `project_id`, `created_at`, `updated_at`) VALUES
(6, '20-11-2018', 612403.00, '2019-29', 24, '2019-03-25 12:07:34', '2019-03-25 12:07:34'),
(7, '11-03-2019', 19500.00, '2019-4', 29, '2019-03-25 12:35:44', '2019-03-25 12:35:44'),
(8, '20-02-2019', 147000.00, '2019-1', 31, '2019-03-25 12:37:58', '2019-03-25 12:37:58'),
(9, '31-3-2019', 280728.00, '2019-7', 23, '2019-05-15 17:40:59', '2019-05-15 17:40:59'),
(10, '31-3-2019', 390600.00, '2019-5', 25, '2019-05-15 17:43:24', '2019-05-15 17:43:24'),
(11, '8-5-2019', 157563.00, '2019-8', 26, '2019-05-15 17:45:19', '2019-05-15 17:45:19'),
(12, '1-5-2019', 619470.60, '2019-10', 28, '2019-05-15 17:53:00', '2019-05-15 17:53:00'),
(14, '11-12-2019', 4848.00, 'dv', 21, '2019-12-28 00:04:36', '2019-12-28 00:04:36'),
(15, '01-12-2019', 1459.00, '12', 21, '2019-12-29 23:19:37', '2019-12-29 23:19:37'),
(16, '01-12-2019', 900000.00, '41', 21, '2019-12-29 23:22:21', '2019-12-29 23:22:21'),
(17, '02-12-2019', 121269300.00, '12', 21, '2019-12-29 23:23:09', '2019-12-29 23:23:09'),
(18, '05-01-2020', 15156465.00, '1', 22, '2020-01-01 23:03:15', '2020-01-01 23:03:15'),
(19, '14-01-2020', 45456.00, '32dg3d2g', 21, '2020-01-15 02:14:07', '2020-01-15 02:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_20_141656_create_projects_table', 2),
(4, '2019_01_23_084415_create_project_items_table', 3),
(5, '2019_01_24_114858_create_notes_table', 3),
(6, '2019_01_24_201143_create_sales_table', 4),
(7, '2019_01_25_124255_create_purchases_table', 5),
(8, '2019_01_25_124753_create_purchase_items_table', 6),
(9, '2019_01_26_184941_create_invitations_table', 7),
(10, '2019_01_29_162341_create_deals_table', 8),
(11, '2019_01_29_162617_create_visits_table', 8),
(12, '2019_02_08_234702_create_invoices_table', 9),
(13, '2019_02_09_140154_create_payments_table', 10),
(14, '2019_02_09_230313_create_payment_amounts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('scihesham12@gmail.com', '$2y$10$TrLE5gYKNvVf803FPggjvO/dad.o8qefZTTHgrYD8drNpgWbObR1a', '2019-01-30 12:00:50'),
('mhanafy@dardelta.com.sa', '$2y$10$X5jiu2/wj8qbIYDaLSzZ2OOWneb2i2YdemGJh0ARVTA6qTGJC4w9.', '2019-05-02 14:47:21'),
('nptechsols@gmail.com', '$2y$10$vzFTvozMA5NUmeNxCMHUAO83oKmTkczDIyfAZ743Z3xrn8/pIDV8q', '2019-07-31 15:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` double(12,2) NOT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_amounts`
--

CREATE TABLE `payment_amounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(12,2) NOT NULL,
  `payment_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_amounts`
--

INSERT INTO `payment_amounts` (`id`, `amount`, `payment_date`, `type`, `purchase_id`, `created_at`, `updated_at`) VALUES
(11, 2268.00, '20-03-2019', 2, 25, '2019-03-20 15:19:11', '2019-03-20 15:19:11'),
(12, 3990.00, '20-03-2019', 2, 30, '2019-03-20 15:28:31', '2019-03-20 15:28:31'),
(13, 1512.00, '20-03-2019', 2, 32, '2019-03-20 15:29:16', '2019-03-20 15:29:16'),
(14, 2205.00, '23-03-2019', 2, 29, '2019-03-24 12:01:27', '2019-03-24 12:01:27'),
(15, 2835.00, '23-03-2019', 2, 33, '2019-03-24 12:02:45', '2019-03-24 12:02:45'),
(16, 13335.00, '25-03-2019', 2, 36, '2019-03-25 16:54:47', '2019-03-25 16:54:47'),
(17, 13834.00, '14-04-2019', 2, 41, '2019-04-14 12:19:30', '2019-04-14 12:19:30'),
(18, 18585.00, '18-04-2019', 2, 42, '2019-04-18 19:39:23', '2019-04-18 19:39:23'),
(19, 12260.00, '22-04-2019', 2, 45, '2019-04-22 15:12:52', '2019-04-22 15:12:52'),
(20, 3449.00, '24-04-2019', 2, 43, '2019-04-24 17:23:02', '2019-04-24 17:23:02'),
(21, 12213.00, '19-05-2019', 2, 55, '2019-05-19 18:25:19', '2019-05-19 18:25:19'),
(22, 38995.00, '27-05-2019', 2, 54, '2019-05-27 17:49:11', '2019-05-27 17:49:11'),
(23, 17339.00, '27-05-2019', 2, 57, '2019-05-27 17:50:42', '2019-05-27 17:50:42'),
(24, 10343.00, '30-05-2019', 2, 62, '2019-05-30 17:48:04', '2019-05-30 17:48:04'),
(25, 3150.00, '16-06-2019', 2, 65, '2019-06-16 18:00:34', '2019-06-16 18:00:34'),
(26, 3045.00, '18-06-2019', 2, 66, '2019-06-30 20:17:11', '2019-06-30 20:17:11'),
(27, 43365.00, '26-06-2019', 2, 42, '2019-07-01 11:41:10', '2019-07-01 11:41:10'),
(28, 36642.00, '07-07-2019', 2, 55, '2019-07-07 17:31:43', '2019-07-07 17:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `payment_vouchers`
--

CREATE TABLE `payment_vouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymethod` int(11) NOT NULL,
  `accountnum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double(12,2) NOT NULL,
  `approval` int(11) NOT NULL DEFAULT '0',
  `purchase_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `beneficiary_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_vouchers`
--

INSERT INTO `payment_vouchers` (`id`, `num`, `paymethod`, `accountnum`, `bank`, `description`, `amount`, `approval`, `purchase_id`, `supplier_id`, `user_id`, `beneficiary_id`, `created_at`, `updated_at`) VALUES
(11, '930', 2, '36095162000106', 'NCB', 'Petty Cash for Maraat Muni.', 1500.00, 1, 0, NULL, 51, 4, '2019-05-08 09:51:34', '2019-05-12 16:44:02'),
(12, '931', 2, NULL, NULL, 'Petty Cash for Riyadh Customs Pro', 1500.00, 1, 0, NULL, 47, 5, '2019-05-12 16:48:19', '2019-05-12 16:48:19'),
(13, '932', 2, NULL, NULL, NULL, 150.00, 1, 0, NULL, 47, 4, '2019-08-07 18:19:04', '2019-08-07 18:19:04'),
(14, '933', 0, NULL, NULL, '67887', 444444.00, 1, 0, NULL, 54, 3, '2019-12-25 21:08:51', '2019-12-25 21:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `permission`, `created_at`, `updated_at`) VALUES
(7, 47, 1, NULL, NULL),
(95, 50, 5, '2019-05-02 15:36:20', '2019-05-02 15:36:20'),
(105, 43, 1, '2019-05-20 17:22:38', '2019-05-20 17:22:38'),
(106, 43, 2, '2019-05-20 17:22:38', '2019-05-20 17:22:38'),
(109, 46, 1, '2019-09-24 16:53:34', '2019-09-24 16:53:34'),
(110, 46, 3, '2019-09-24 16:53:34', '2019-09-24 16:53:34'),
(113, 48, 1, '2019-11-06 16:07:10', '2019-11-06 16:07:10'),
(114, 48, 2, '2019-11-06 16:07:10', '2019-11-06 16:07:10'),
(119, 56, 2, '2020-01-16 15:09:41', '2020-01-16 15:09:41'),
(132, 54, 1, '2020-01-26 06:56:27', '2020-01-26 06:56:27'),
(135, 41, 1, '2020-01-26 06:57:59', '2020-01-26 06:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `petty_cashes`
--

CREATE TABLE `petty_cashes` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `paymethod` int(11) NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(12,2) NOT NULL,
  `approval` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petty_cashes`
--

INSERT INTO `petty_cashes` (`id`, `num`, `user_id`, `paymethod`, `description`, `amount`, `approval`, `created_at`, `updated_at`) VALUES
(5, '923', 47, 2, 'Petty cash for Deba Pro', 500.00, 0, '2019-05-01 11:45:46', '2019-05-01 12:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_value` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '#',
  `expenses` int(11) DEFAULT NULL,
  `manager` int(11) NOT NULL,
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `po_value`, `start_date`, `end_date`, `pic`, `status`, `link`, `expenses`, `manager`, `code`, `created_at`, `deleted_at`) VALUES
(21, 'إنشاء مركز بيانات احتياطي بجدة - وزارة الداخلية', '2119000.00', '01-12-2018', '30-04-2019', NULL, 'In Progress', NULL, 1093825, 44, 'MOI - Makkah', '2019-02-23 15:33:34', NULL),
(22, 'تهيئة غرف مركز المعلومات البديل للحماية من الكوارث بجدة', '1189960.00', '30-11-2017', '30-03-2018', NULL, 'Completed', NULL, 378603, 43, 'SANG - Jeddah', '2019-02-23 21:11:42', NULL),
(23, 'تنفيذ الشبكة المحلية في عيادات قوى الامن - وادي الدواسر ورفحاء', '280728.00', '27-11-2018', '27-12-2018', NULL, 'Completed', NULL, 104045, 44, 'M.S - D/Rafah', '2019-02-23 21:19:02', NULL),
(24, 'ترسية عملية نقل المكونات الرئيسية لشبكة الحاسب الالي', '879003.00', '11-07-2018', '11-11-2018', NULL, 'On Hold', NULL, 657461, 44, 'Batha', '2019-02-23 21:28:34', NULL),
(25, 'توفير خدمة الانترنت اللاسلكي في مبنى كتائب الطلبة', '390600.00', '24-10-2018', '24-11-2018', NULL, 'Completed', NULL, 279126, 48, 'KFSC 1', '2019-02-24 15:38:09', NULL),
(26, 'تركيب الشبكة الداخلية لمبني تاريخ مكة المكرمة الجديد', '157563.00', '20-02-2019', '20-03-2019', NULL, 'Completed', NULL, 81221, 44, 'Darah - Makkah', '2019-02-24 16:08:48', NULL),
(27, 'توفير خدمة الانترنت اللاسلكي في مبنى التعليم', '351321.00', '27-12-2018', '28-02-2019', NULL, 'Completed', NULL, 197630, 48, 'KFSC 2', '2019-02-24 16:14:00', NULL),
(28, 'تمديد الشبكة بمياني الكليات الجامعية ضباء والوجة', '619470.00', '06-12-2018', '06-03-2019', NULL, 'Completed', NULL, 299113, 44, 'Duba - Wajh', '2019-02-24 21:33:03', NULL),
(29, 'تأمين وتركيب نقاط شبكية -- منطفة الرياض', '19500.00', '24-01-2018', '24-01-2019', NULL, 'Completed', NULL, 1832, 48, 'M.S - Riyadh', '2019-02-25 13:57:48', NULL),
(30, 'توريد وتركيب واختبار وتشغيل شبكة الحاسب الآلي ونظام الهاتف بالكلية التقنية للبنين بالنماص', '1747646.00', '26-12-2016', '26-12-2019', NULL, 'In Progress', NULL, 249080, 42, 'TVTC - Namas', '2019-02-25 16:13:35', NULL),
(31, 'تركيب اعمال شبكة الحاسب الآلي لفندق كريستال اماكن بالرياض', '147000.00', '16-01-2019', '06-02-2019', NULL, 'Archived', NULL, 22372, 44, 'BMB- 2', '2019-02-25 16:17:01', NULL),
(32, 'توريد وتركيب وتنفيذ نظام المعلومات والهاتف والكاميرات بالكلية التقنية للبنات بالرياض', '1057000.00', '24-10-2017', '29-08-2019', NULL, 'In Progress', NULL, NULL, 42, 'TVTC - Girls 6', '2019-02-25 16:21:56', NULL),
(33, 'توريد وتركيب وتنفيذ نظام المعلومات والهاتف والكاميرات باسكان معهد الصناعات البلاستيكية بالرياض', '580204', '24-10-2017', '19-12-2019', NULL, 'In Progress', NULL, NULL, 42, 'TVTC - Housing- R', '2019-02-25 16:29:52', NULL),
(34, 'توريد وتركيب واختبار وتشغيل شبكة الحاسب الآلي ونظام الكاميرات باسكان المدربين بمحايل عسير', '575000.00', '19-12-2018', '04-07-2019', NULL, 'In Progress', NULL, 198086, 42, 'TVTC - Housing - M', '2019-02-25 16:33:28', NULL),
(35, 'توريد وتركيب وتشغيل أجهزة الوايرليس بمنفذ الرقعي', '185251.00', '08-01-2019', '31-03-2019', NULL, 'Completed', NULL, 81641, 42, 'Orini', '2019-03-07 20:27:40', NULL),
(39, 'تركيب اعمال الداتا والتيار الخفيف', '28000', '07-06-2018', '01-10-2018', NULL, 'Completed', NULL, NULL, 44, 'Al-Latifia', '2019-03-12 12:45:04', NULL),
(40, 'توريد وتركيب وحفر مسارات فايبر مع توريد وتركيب سويتشات', '49225', '01-02-2018', '01-03-2018', NULL, 'Completed', NULL, NULL, 44, 'Dawadmi Muni', '2019-03-12 13:40:57', NULL),
(41, 'مشروع توصيل وتشغيل شبكة الحاسب الآلي وكاميرات المراقبة لمباني وحظائر ادارة الوسائل الحية بالرياض', '1534281.00', '21-03-2019', '20-06-2019', NULL, 'In Progress', NULL, NULL, 43, 'Custom - R', '2019-03-18 14:11:17', NULL),
(42, 'تركيب اعمال شبكة الحاسب الآلي لفندق شذا بالرياض', '11985.00', '27-11-2017', '02-06-2018', NULL, 'Archived', NULL, NULL, 44, 'BMB - 1', '2019-03-18 19:16:27', NULL),
(43, 'مشروع توريد وتركيب البنية التحتية للبيانات لمدينة الملك عبد العزيز الطبية بالرياض والعيادات التابعه', '597000', '28-04-2019', '01-04-2021', NULL, 'In Progress', NULL, NULL, 49, 'NGHA', '2019-04-22 20:43:28', NULL),
(45, 'MODMW-TABUK', '414000.00', '04-09-2019', '30-11-2019', NULL, 'In Progress', NULL, NULL, 48, 'MODMW-TABUK', '2019-09-04 21:22:13', NULL),
(46, 'توريد وتركيب جهاز تخزين الطاقة (UPS) للهيئة العامة للنقل', '12600', '21-09-2019', '30-09-2019', NULL, 'In Progress', NULL, NULL, 48, 'MOT-UPS-VERTIV', '2019-09-19 17:04:23', NULL),
(47, 'تعليم الليث', '950000', '21-10-2019', '15-12-2019', NULL, 'In Progress', NULL, NULL, 48, 'MOE-LTH-DC', '2019-10-21 16:40:42', NULL),
(48, 'كلية الملك خالد العسكرية - احلال وابدال مركز البيانات', '195000', '22-10-2019', '17-12-2019', NULL, 'In Progress', NULL, NULL, 48, 'KKMA-DC', '2019-10-21 17:03:01', NULL),
(49, 'توريد وتركيب وتشغيل تجهيزات غرفة التحكم وتمديدات الشبكة لسجن بيش', '414000', '30-10-2019', '31-12-2019', NULL, 'In Progress', NULL, NULL, 48, 'PGD-BISH-IP', '2019-10-29 20:29:35', NULL),
(50, 'ASEER EDUCATION 1', '290000', '03-11-2019', '01-12-2019', NULL, 'In Progress', NULL, NULL, 48, 'ASS-EDU-1', '2019-11-03 19:05:37', NULL),
(51, 'ASEER EDUCATION 2', '180000', '03-11-2019', '01-11-2019', NULL, 'In Progress', NULL, NULL, 48, 'ASS-EDU-2', '2019-11-03 19:36:41', NULL),
(52, 'احلال وابدال مزود الطاقة  بمركز البيانات بالمديرية العامة للسجون', '180000.00', '01-12-2019', '29-02-2020', NULL, 'In Progress', NULL, NULL, 48, 'PGD-RYD-DC', '2019-12-01 19:03:15', NULL),
(53, 'مشروع صيانة وتشغيل مركز المدينة الذكية – المرحلة الأولى', '6000000', '11-11-2019', '11-11-2020', NULL, 'In Progress', NULL, NULL, 48, 'SC-EAMANA-DMM-IP', '2019-12-26 13:36:56', NULL),
(55, 'تامين كاميرات مراقبة و نظام تخزين وجهاز كمبيوتر ومنظم وشاشات', '196000', '09-01-2020', '01-03-2020', NULL, 'In Progress', NULL, NULL, 43, 'SANG-RYD-CCTV', '2020-01-09 16:46:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_groups`
--

CREATE TABLE `project_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_groups`
--

INSERT INTO `project_groups` (`id`, `name`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'Cisco', 27, '2019-04-28 20:25:51', '2019-04-28 21:16:52'),
(2, 'HP', 22, NULL, NULL),
(3, 'test', 21, '2019-04-30 08:53:31', '2019-05-09 18:57:39'),
(4, 'CCTV', 41, '2019-05-09 16:43:18', '2019-05-09 16:43:18'),
(5, 'Cisco', 41, '2019-05-09 16:43:29', '2019-05-09 16:43:29'),
(6, 'Cisco', 21, '2019-05-09 16:58:51', '2019-05-09 16:58:51'),
(7, 'Passive Work', 41, '2019-05-14 17:10:01', '2019-05-14 17:10:01'),
(8, 'Others', 41, '2019-05-14 17:10:13', '2019-05-14 17:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `project_items`
--

CREATE TABLE `project_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitcost` int(11) DEFAULT '0',
  `totalcost` int(11) NOT NULL,
  `finished` int(11) DEFAULT NULL,
  `percentage` int(11) NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deliverdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sellprice` int(11) NOT NULL,
  `po_num` int(11) DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_items`
--

INSERT INTO `project_items` (`id`, `description`, `quantity`, `unitcost`, `totalcost`, `finished`, `percentage`, `notes`, `deliverdate`, `sellprice`, `po_num`, `project_id`, `group_id`, `created_at`, `updated_at`) VALUES
(12, 'جهاز التحكم بالشبكة اللاسلكية wireless controller 5520', 1, 2444000, 2444000, NULL, 50, 'Dar delta Store', '01-03-2019', 4302000, 204, 27, 0, '2019-03-10 14:10:34', '2019-03-28 18:58:21'),
(13, 'تراخيص 100 جهاز لاسلكي license 160 ap', 1, NULL, 0, NULL, 0, NULL, '01-03-2019', 5377500, 204, 27, 0, '2019-03-10 14:17:03', '2019-03-10 14:17:03'),
(14, 'موزعات شبكة switch 3850 24 port', 3, 910390, 2731170, NULL, 41, 'dar delta store', '01-03-2019', 1555600, 204, 27, 0, '2019-03-10 14:20:25', '2019-03-28 18:46:21'),
(15, 'access point AP 28021-E-K9', 40, 182689, 7307560, NULL, 26, 'Dar delta Store', '01-03-2019', 247300, 204, 27, 0, '2019-03-10 14:23:16', '2019-03-28 18:46:37'),
(16, 'الملحقات تركيب لمبنى التعليم\r\n FIBER CABEL - CABINETS - GBIC - CABEL ROLL INSTALLATION AND CONFIG', 1, 0, 0, NULL, 100, 'Fiber Cable + Cabinet + Cable roll delivered Site', '01-03-2019', 7612500, 0, 27, 0, '2019-03-10 14:27:17', '2019-03-28 18:57:16'),
(17, 'الملحقات تركيب مبنى الكتائب \r\nFAIBER CABEL - CABINETS - GBIC - CABEL ROLL INSTALLATION AND CONFIG', 1, 0, 0, NULL, 100, 'Fiber Cable + Cabinet + Cable roll delivered Site', '01-03-2019', 3281300, 0, 27, 0, '2019-03-10 14:30:32', '2019-03-28 18:56:46'),
(18, 'Cabinet 12 U With PDU', 9, 727, 6543, NULL, 1, 'delivered Site', '11-03-2019', 500, 218, 26, 0, '2019-03-11 19:07:54', '2019-03-28 19:00:52'),
(19, 'Cabinet 42 U With PDU', 1, 3377, 3377, NULL, 1, 'delivered Site', '11-03-2019', 2200, 218, 26, 0, '2019-03-11 19:12:47', '2019-03-28 19:00:35'),
(20, 'Cisco Catalyst 24 Port GE SFP IP Services Uplink Module', 1, 30975, 30975, NULL, 1, 'delivered Site', '11-03-2019', 45000, 223, 26, 0, '2019-03-11 19:15:46', '2019-03-28 19:01:06'),
(21, 'SFP Multi Module', 28, 122, 3416, NULL, 1, 'delivered Site', '11-03-2019', 800, 220, 26, 0, '2019-03-11 19:19:15', '2019-03-28 19:01:18'),
(22, 'Access Point', 4, 750, 3000, NULL, 1, 'delivered Site', '11-03-2019', 850, 222, 26, 0, '2019-03-11 19:20:51', '2019-03-28 19:01:28'),
(23, 'UPS 3 KVA', 1, 4189, 4189, NULL, 1, 'delivered Site', '11-03-2019', 10000, 221, 26, 0, '2019-03-11 19:22:52', '2019-03-28 19:01:38'),
(24, 'Fiber Patch Panel +18 Adapter + 36 Pigtail User - 12 U Cabinets', 9, 347, 3123, NULL, 1, 'delivered Site', '11-03-2019', 0, 218, 26, 0, '2019-03-11 19:28:17', '2019-03-28 19:14:26'),
(25, 'Fiber Patch Panel + 18 Adapter + 36 Pigtail -(42 U Cabinet)', 1, 661, 661, NULL, 1, 'delivered Site', '11-03-2019', 0, 218, 26, 0, '2019-03-11 19:30:14', '2019-03-28 19:14:47'),
(26, 'UTP Patch Panel 24 Ports - Cabinets', 10, 115, 1150, NULL, 1, 'delivered Site', '11-03-2019', 0, 218, 26, 0, '2019-03-11 19:31:29', '2019-03-28 19:15:05'),
(27, 'UTP Jack CAT6 - Patch Panel', 10, 11, 110, NULL, 1, 'delivered Site', '11-03-2019', 0, 218, 26, 0, '2019-03-11 19:32:29', '2019-03-28 19:06:13'),
(28, 'Fiber Cable MMD Indoor', 700, 5, 3500, NULL, 1, 'delivered Site', '11-03-2019', 0, 218, 26, 0, '2019-03-11 19:33:52', '2019-03-28 19:25:59'),
(30, 'Switch 3850 24 Port', 6, 9701, 58206, NULL, 1, 'delivered Site', '01-02-2019', 15700, 151, 25, 0, '2019-03-12 19:26:39', '2019-03-28 18:59:06'),
(31, 'Access Point', 120, 1822, 218640, NULL, 1, 'delivered Site', '01-02-2019', 2470, 151, 25, 0, '2019-03-12 19:27:42', '2019-03-28 18:59:22'),
(32, '10 AP1572EAC + 10 Mount Kit + 40 Antina', 10, 7822, 78220, NULL, 1, 'Delivered Site', '21-03-2019', 10395, 204, 35, 0, '2019-03-13 14:18:30', '2019-03-28 18:39:47'),
(33, '1 AIR-CT3504-K9 + 1 LIC + 10 CON-ECMU-LICCTCTA + 1 AIR-CT3504-RMNT', 1, 7631, 7631, NULL, 1, 'delivered Site', '21-03-2019', 8070, 204, 35, 0, '2019-03-13 14:30:40', '2019-03-28 18:42:48'),
(34, 'Media Converter', 20, 190, 3800, NULL, 1, 'delivered Site', '20-03-2019', 450, 0, 35, 0, '2019-03-13 17:43:47', '2019-03-28 18:42:37'),
(35, 'CAT6 Cable', 10, 7, 70, NULL, 1, 'delivered Site', '20-03-2019', 13, 0, 35, 0, '2019-03-13 17:45:02', '2019-03-28 18:42:25'),
(36, 'Fiber Cable', 10, 35, 350, NULL, 1, 'delivered Site', '20-03-2019', 63, 0, 35, 0, '2019-03-13 17:45:48', '2019-03-28 18:43:16'),
(37, 'Media Converter Box', 10, 80, 800, NULL, 1, 'delivered Site', '20-03-2019', 180, 0, 35, 0, '2019-03-13 17:46:45', '2019-03-28 18:43:35'),
(38, 'Shelf For Media Converter', 10, 60, 600, NULL, 1, 'Not Order', '20-03-2019', 90, 0, 35, 0, '2019-03-13 17:47:43', '2019-03-13 17:47:43'),
(39, 'Power Injector', 10, 366, 3660, NULL, 1, 'delivered Site', '20-03-2019', 1141, 0, 35, 0, '2019-03-13 17:49:09', '2019-03-28 18:44:00'),
(40, 'Installation', 1, 7000, 7000, NULL, 1, 'Remaining Installation', '20-03-2019', 15000, 0, 35, 0, '2019-03-13 17:50:26', '2019-03-13 17:50:26'),
(41, 'Configuration For The Above', 1, 10000, 10000, NULL, 1, 'Remaining Configuration', '20-03-2019', 25000, 0, 35, 0, '2019-03-13 17:51:45', '2019-03-13 17:51:45'),
(42, 'WS-C2960X-48FPS-L', 9, 9298, 83682, NULL, 0, NULL, '01-03-2019', 13337, 2203, 32, 0, '2019-03-13 21:11:46', '2019-03-13 21:11:46'),
(79, 'SG300-28-Port SFP Switch', 1, 2205, 2205, NULL, 0, 'Dardelta Store', '23-03-2019', 0, 227, 27, 0, '2019-03-25 13:10:25', '2019-03-25 13:10:25'),
(80, 'Fiber Patch Panel +4 Adapter + 22 Blank User - 12 U Cabinets', 1, 316, 316, NULL, 0, 'delivered Site', '31-03-2019', 0, 229, 26, 0, '2019-03-28 19:18:47', '2019-03-28 19:25:45'),
(81, 'Fiber Patch Panel +  Plate +30 Blank User - 12 U Cabinets', 3, 265, 795, NULL, 1, 'delivered Site', '31-03-2019', 0, 226, 26, 0, '2019-03-28 19:22:14', '2019-03-28 19:25:31'),
(82, 'UTP Patch Panel -12 Cabinet', 1, 362, 362, NULL, 1, 'delivered Site', '31-03-2019', 0, 226, 26, 0, '2019-03-28 19:24:41', '2019-03-28 19:25:17'),
(84, 'AXIS P1435-LE-FIXED Outdoor\r\n\r\nكاميرات المراقبة الخارجية الثابتة المتحركة مع ما يلزم للتشغيل وتحويل الإشارة للكيابل وعامود التثبيت شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص D/N FIXED outdoor IP Cameras', 15, 2063, 30945, NULL, 50, NULL, '16-05-2019', 2500, 0, NULL, 4, '2019-05-09 19:07:46', '2019-05-14 17:08:57'),
(86, 'test item', 3, 1000, 3000, NULL, 40, NULL, '13-05-2019', 1200, 777, NULL, 3, '2019-05-10 11:24:15', '2019-05-10 11:24:15'),
(87, 'cisco item', 4, 300, 1200, NULL, 50, NULL, '12-05-2019', 350, 444, NULL, 6, '2019-05-10 11:26:05', '2019-05-10 11:26:05'),
(88, 'cisco item 2', 5, 200, 1000, NULL, 40, NULL, '14-05-2019', 220, 909, NULL, 6, '2019-05-10 11:26:36', '2019-05-10 11:26:36'),
(89, 'جهاز شبكة رئيس ي تشمل التوريد والتركيب والتهيئة والتشغيل مع شبكة الهيئة العامة للجمارك شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص.C9500-16X-2Q-A-SFP', 2, 52500, 105000, NULL, 0, NULL, '14-05-2019', 60000, 0, NULL, 5, '2019-05-14 17:20:47', '2019-05-15 16:46:22'),
(90, 'موزع شبكة فرعي ذو 48 منفذ تشمل التوريد والتركيب والتهيئة والتشغيل مع شبكة الهيئة العامة للجمارك شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص SWITCH 48 	C9300-48PA-UPT', 2, 33276, 66552, NULL, 0, NULL, '13-05-2019', 35000, 0, NULL, 5, '2019-05-14 18:38:31', '2019-05-15 16:50:28'),
(91, 'جهاز هاتف رقمي شاشة عادية مع رخصة الاستخدام وكل ما يلزم شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص IP PHONE CISCO IP Phone 8841-With Camera', 60, 1258, 75480, NULL, 0, NULL, '13-05-2019', 1400, 0, NULL, 5, '2019-05-14 18:39:43', '2019-05-15 16:43:02'),
(92, 'أجهزة الشبكة اللاسلكية الداخلية مع ما يلزم التشغيل والتركيب شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص WIRELESS NETWORK INDOOR AIR-AP380221-EK9 indoor (AP)', 10, 3475, 34750, NULL, 0, NULL, '13-05-2019', 4000, 0, NULL, 5, '2019-05-14 18:40:35', '2019-05-15 16:47:30'),
(94, 'كاميرات المراقبة الداخلية الثابتة مع ما يلزم للتشغيل وتحويل الإشارة للكيابل وعامود التثبيت شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص D/N FIXED indoor IP Cameras 	AXIS P3225-V-Fixed indoor', 5, 1657, 8285, NULL, 0, NULL, '13-05-2019', 2000, 0, NULL, 4, '2019-05-14 18:46:35', '2019-05-15 17:05:02'),
(95, 'كاميرات المراقبة الخارجية المتحركة مع ما يلزم للتشغيل للكيابل والرخص اللازمة وعامود وقواعد التثبيت شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص AXIS P5635-E MK II PTZ outdoor Camera 360', 5, 7313, 36565, NULL, 0, NULL, '13-05-2019', 7800, 0, NULL, 4, '2019-05-14 18:47:40', '2019-05-15 17:01:57'),
(96, 'كاميرات المراقبة الداخلية المتحركة مع ما يلزم للتشغيل وتحويل الإشارة للكيابل وعامود التثبيت شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص  AXIS M5525-E Network indoor Camera', 15, 4550, 68250, NULL, 0, NULL, '13-05-2019', 4800, 0, NULL, 4, '2019-05-14 18:48:48', '2019-05-15 16:44:26'),
(103, 'كيبل الألياف البصرية مع مايلزم من أعمال التمديد (الطول التقريبي) Fiber Cable 24 Core SM outdoor', 500, 4, 2000, NULL, 0, NULL, '13-05-2019', 5, NULL, NULL, 7, '2019-05-14 19:02:21', '2019-05-14 19:02:21'),
(104, 'كبائن الأجهزة والاتصالات - 42U Cabinet 42U 1000MM X 1000MM', 2, 3000, 6000, NULL, 0, NULL, '13-05-2019', 3500, NULL, NULL, 7, '2019-05-14 19:03:03', '2019-05-14 19:03:03'),
(105, 'كبائن الأجهزة والاتصالات - 16U Cabinet 16U', 7, 600, 4200, NULL, 0, NULL, '13-05-2019', 800, NULL, NULL, 7, '2019-05-14 19:03:49', '2019-05-14 19:03:49'),
(106, 'كيابل توصيل الألياف البصرية Fiber Cable', 24, 65, 1560, NULL, 0, NULL, '13-05-2019', 80, NULL, NULL, 7, '2019-05-14 19:06:11', '2019-05-14 19:06:11'),
(107, 'لوحة توزيع كيبل نحاس ي 24 منفذ UTP Patch Panel 24 Port', 12, 350, 4200, NULL, 0, NULL, '13-05-2019', 400, NULL, NULL, 7, '2019-05-14 19:08:08', '2019-05-14 19:08:08'),
(108, 'لوحة توزيع ألياف بصرية 24 منفذ Fiber Patch Panel 24Port', 12, 500, 6000, NULL, 0, NULL, '13-05-2019', 700, NULL, NULL, 7, '2019-05-14 19:08:52', '2019-05-14 19:08:52'),
(109, 'كيابل التوصيل النحاسية PATCH CORDS Patch Cord 1 M 200 pcs Patch Cord 3 M 100 pcs Patch Cord 5 M 50 pcs', 350, 52, 18200, NULL, 0, NULL, '13-05-2019', 60, 0, NULL, 7, '2019-05-14 19:09:49', '2019-05-16 14:24:49'),
(110, 'أعمال الحفر وقنوات التمديد الأرضية (الطول التقريبي) Digging 30 Meter', 30, 130, 3900, NULL, 0, NULL, '13-05-2019', 150, NULL, NULL, 8, '2019-05-14 19:11:09', '2019-05-14 19:11:09'),
(113, 'الخرائط والمخططات MAPS/Drawing', 5, 500, 2500, NULL, 0, NULL, '13-05-2019', 1000, NULL, NULL, 8, '2019-05-14 19:14:08', '2019-05-14 19:14:08'),
(117, 'مخرج شبكة بملحقاته وتشمل قنوات التمديد وكيابل الشبكة وأسلاك التوصيل ولوحات التوزيع و أفياش الشبكة وجميع ما يلزم للتشغيل: Data Point / IP Outlet', 80, 200, 16000, NULL, 0, NULL, '13-05-2019', 250, NULL, NULL, 7, '2019-05-14 19:17:21', '2019-05-14 19:17:21'),
(118, 'موزع شبكة فرعى ذو 24 منفذ تشمل التوريد والتركيب والتهيئة والتشغيل مع شبكة الهيئة العامة للجمارك شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص C9300-24PA-UTP', 8, 23042, 184336, NULL, 0, NULL, '13-05-2019', 28000, 0, NULL, 5, '2019-05-14 19:24:24', '2019-05-15 16:49:22'),
(119, 'جهاز هاتف رقمي ملون شاشة كبيرة لمكالمات الفيديو مع رخصة الاستخدام وكل ما يلزم التشغيل شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص CISCO IP Phone 8865-With Camera', 1, 1954, 1954, NULL, 0, NULL, '13-05-2019', 2000, 0, NULL, 5, '2019-05-14 19:25:00', '2019-05-15 16:53:02'),
(120, 'جهاز هاتف رقمي لاسلكي مع رخصة الاستخدام شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص Cisco IP Phone 8821-WIFI', 4, 2491, 9964, NULL, 0, NULL, '13-05-2019', 3000, 0, NULL, 5, '2019-05-14 19:25:40', '2019-05-15 16:51:13'),
(121, 'جهزة إدارة ومراقبة وتسجيل والنسخ الاحتياطي و تشغيل نظام شبكة الكاميرات الأمنية و برنامج إدارة شبكة كاميرات أمنية مع الخرائط شاملة التركيب والتشغيل والرخص لتشغيل 170 كاميرا كحد أعلى. شامل الدعم الفني من الشركة الام 3سنوات للأجهزة والرخص. مع توريد عدد 4 اجهزة حاسب آلي  CISCO Storage Server US3260-IP Control Camerasلتشغيل النظام و شاشات بحجم 55 بوصة.', 2, 216945, 433890, NULL, 0, NULL, '13-05-2019', 255000, 0, NULL, 5, '2019-05-14 19:26:23', '2019-05-15 16:48:36'),
(122, 'عمال تركيب وتشغيل خوادم نظام كاميرات المراقبة من قبل الشركة المصنعة. ASF-ESG-G-PSS-VSS', 1, 140000, 140000, NULL, 0, NULL, '13-05-2019', 160000, 0, NULL, 5, '2019-05-14 19:27:31', '2019-05-15 16:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` int(11) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vendtele` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prep` int(11) NOT NULL,
  `approve` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `discount` float(10,2) NOT NULL,
  `vat` float(10,2) NOT NULL DEFAULT '0.00',
  `gtotal` float(10,2) NOT NULL,
  `term` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `elink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `billdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `cal_vat` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `approval` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `num`, `title`, `vendor`, `vendtele`, `ship_to`, `prep`, `approve`, `discount`, `vat`, `gtotal`, `term`, `status`, `elink`, `billdate`, `user_id`, `currency`, `cal_vat`, `project_id`, `supplier_id`, `approval`, `created_at`, `updated_at`) VALUES
(23, 221, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Dardelta Exit 9 Riyadh          Ahmed Yaqub 0593822991    Azeem 0593822990', 44, NULL, 0.00, 154.50, 3244.50, '1-Delivery of material & Time: 2 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%PDC cheque 30 Days', 1, NULL, '07-03-2019', 45, 0, 0, 0, 9, 0, '2019-03-07 15:06:31', '2019-11-10 19:20:44'),
(24, 222, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Dardelta Exit 9 Riyadh    Ahmed Yaqub 0593822991    Azeem 0593822990', 44, NULL, 0.00, 37439.88, 786237.50, '1-Delivery of material - Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3.  15% upon Delivery 85% PDC 110 Days', 1, 'https://drive.google.com/drive/folders/162FlNcm3hREAhqkRhNZf-mj1w2prxtf0', '22-05-2019', 45, 0, 0, 21, 8, 0, '2019-03-07 20:19:32', '2019-11-11 16:01:52'),
(25, 223, NULL, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 108.00, 2268.00, '1-Delivery of material & Time: 2 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, NULL, '09-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-09 18:16:31', '2019-03-25 16:10:12'),
(26, 224, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248 h.hamad@h-dimension.com', '+966593822990', 'Dardelta Exit 9 Riyadh       Azeem 0593822990', 44, NULL, 128.00, 121.60, 2553.60, '1-Delivery of material & Time: Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit  90 Days', 1, NULL, '12-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-12 12:49:45', '2019-03-24 14:02:53'),
(27, 225, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Dardelta Exit 9 Riyadh    Ahmed Yaqub 0593822991    Azeem 0593822990', 44, NULL, 0.00, 0.00, 0.00, '-Delivery of material & Time:   Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%PDC cheque 30 Days', 1, NULL, '13-03-2019', 45, 0, 0, 0, 9, 0, '2019-03-13 16:54:48', '2019-11-11 16:03:50'),
(28, 226, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248 h.hamad@h-dimension.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 116.40, 52.38, 1099.98, '1-Delivery of material & Time: Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit  90 Days', 1, NULL, '17-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-17 17:49:59', '2019-03-24 14:01:47'),
(29, 227, NULL, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', '+966593822990', 'Dardelta Exit 9 Riyadh        Azeem 0593822990', 44, NULL, 0.00, 110.25, 2315.25, '1-Delivery of material & Time:   Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, NULL, '18-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-18 11:42:32', '2019-03-27 17:13:44'),
(30, 228, NULL, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 190.00, 3990.00, '1-Delivery of material & Time:   Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/1O8lDebKzpD-RoaCTnzgzuAlhrVDDH892', '18-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-18 18:09:41', '2019-03-24 14:04:26'),
(31, 229, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248 h.hamad@h-dimension.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 33.46, 15.06, 316.20, '1-Delivery of material & Time: Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit  90 Days', 1, NULL, '18-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-18 20:47:01', '2019-03-24 14:01:22'),
(32, 230, NULL, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 72.00, 1512.00, '1-Delivery of material & Time:   Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/1CNB3V_ZTzUlOcvKFNSxVMcLzjfhl7yIQ', '18-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-18 21:21:02', '2019-03-25 16:07:10'),
(33, 231, NULL, 'Rabou Liyan Trading Est. Name : Saleem 0501334528', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 135.00, 2835.00, '1-Delivery of material & Time:   Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/1O8lDebKzpD-RoaCTnzgzuAlhrVDDH892', '21-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-21 11:39:26', '2019-03-27 17:24:46'),
(34, 232, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248 h.hamad@h-dimension.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 113.50, 61.91, 1300.01, '1-Delivery of material & Time: Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit  90 Days', 1, 'https://drive.google.com/drive/folders/1O8lDebKzpD-RoaCTnzgzuAlhrVDDH892', '21-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-21 15:51:32', '2019-03-27 17:09:07'),
(35, 233, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 109.98, 2309.58, '1-Delivery of material & Time: 2 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%PDC cheque 30 Days', 1, 'https://drive.google.com/drive/folders/1O8lDebKzpD-RoaCTnzgzuAlhrVDDH892', '21-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-21 20:26:07', '2019-04-24 19:00:02'),
(36, 234, NULL, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', '+966593822990', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 635.00, 13335.00, '1-Delivery of material & Time:   Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/1GNOtAtlwq5JuwS8gzYoXq5BkaLu7OjeA', '25-03-2019', 45, 0, 0, 0, 0, 0, '2019-03-25 14:26:36', '2019-03-26 16:22:44'),
(39, 235, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 27.16, 570.36, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%PDC cheque 60 Days', 1, 'https://drive.google.com/drive/folders/1KRTAdVJCCey7mFjLC45_10qXxoFSVnNM', '08-04-2019', 45, 0, 0, 26, 8, 0, '2019-04-08 11:35:18', '2019-05-08 19:22:54'),
(41, 237, NULL, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', 'Mohammed Abdul +966 503560415', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 658.75, 13833.75, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/1KRTAdVJCCey7mFjLC45_10qXxoFSVnNM', '09-04-2019', 45, 0, 0, 26, 10, 0, '2019-04-09 15:18:43', '2019-05-08 19:22:10'),
(42, 238, NULL, 'Al Mousa Specialized Cables Est.\r\nAcc # 21551184000105\r\nBank # NCB', '0553382302', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 270.00, 2950.00, 61950.00, '1-Delivery of material & Time: Riyadh Exit 9 Within 3 Days    \r\n2- All Prices in SAR\r\n3- 30%Down Payment 70% Delivery Time', 1, 'https://drive.google.com/drive/folders/162FlNcm3hREAhqkRhNZf-mj1w2prxtf0', '16-04-2019', 45, 0, 0, 21, 5, 0, '2019-04-16 12:43:10', '2019-11-11 16:04:13'),
(43, 239, NULL, 'Modern Oceans Co.For Retail & Wholesale Trading Of Electrical Meterials Limited Libility Compnay', 'M. Balteagy   0592261257', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 164.25, 3449.25, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/162FlNcm3hREAhqkRhNZf-mj1w2prxtf0', '16-04-2019', 45, 0, 0, 21, 7, 0, '2019-04-16 12:51:18', '2019-11-11 16:04:47'),
(44, 240, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 643.00, 289.38, 6076.98, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit 90 Days', 1, NULL, '16-04-2019', 45, 0, 0, 27, 6, 0, '2019-04-16 20:20:17', '2019-05-08 19:22:36'),
(45, 241, NULL, 'Modern Oceans Co.For Retail & Wholesale Trading Of Electrical Meterials Limited Libility Compnay', 'M. Balteagy   0592261257', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 583.80, 12259.80, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%Down Payment', 1, 'https://drive.google.com/drive/folders/10boEqrQhE3pbIxSmhzjxBN4XO1dt3eP8', '21-04-2019', 45, 0, 0, 22, 7, 0, '2019-04-21 18:32:50', '2019-05-08 19:21:56'),
(46, 242, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 650.10, 13652.10, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%PDC cheque 60 Days', 1, 'https://drive.google.com/drive/folders/1O8lDebKzpD-RoaCTnzgzuAlhrVDDH892', '21-04-2019', 45, 0, 0, 26, 8, 0, '2019-04-21 20:09:54', '2019-05-08 19:20:38'),
(47, 243, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 1375.85, 28892.85, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit 90 Days', 1, 'https://drive.google.com/drive/folders/1ib98KSIL40FC9_B3sjxS0XDGFbZcX3Dm', '28-04-2019', 45, 0, 0, 41, 6, 0, '2019-04-28 11:29:00', '2019-05-08 19:21:09'),
(49, 245, NULL, 'test vendor', 'phone(0102899202)', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 26.00, 0.00, -26.00, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit 90 Days', 0, 'https://drive.google.com/drive/folders/0B4tUdAxc9VoGZC0zbGd0Rnp6dEk', NULL, 45, 0, 0, 32, 2, 2, '2019-05-01 16:22:14', '2019-05-02 15:48:18'),
(50, 246, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 26.00, 12.00, 252.00, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit 90 Days', 1, 'https://drive.google.com/drive/folders/0B4tUdAxc9VoGZC0zbGd0Rnp6dEk', '01-05-2019', 45, 0, 0, 32, 6, 0, '2019-05-01 16:27:02', '2019-06-11 13:07:38'),
(51, 247, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 26.00, 0.00, -26.00, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit 90 Days', 0, 'https://drive.google.com/drive/folders/0B4tUdAxc9VoGZC0zbGd0Rnp6dEk', NULL, 45, 0, 0, 32, 6, 2, '2019-05-01 16:30:17', '2019-05-02 15:48:38'),
(52, 248, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 0.00, 0.00, NULL, 0, NULL, NULL, 45, 0, 0, 24, 6, 2, '2019-05-02 14:59:24', '2019-05-02 15:48:33'),
(54, 249, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Dardelta Exit 9 Riyadh    Ahmed Yaqub 0593822991', 44, NULL, 0.00, 12379.35, 259966.34, '1-Delivery of material & Time: Riyadh Exit 9 - 6 Weeks  \r\n2- All Prices in SAR\r\n3- 15% Down Payment 85% PDC 90 Days', 1, 'https://drive.google.com/drive/folders/1UPlHGa1Ws8XpSCgF8tcqHy3YlmAfHa8B', '20-05-2019', 45, 0, 0, 21, 9, 0, '2019-05-07 18:47:22', '2019-11-11 16:05:12'),
(55, 250, NULL, 'ANIXTER Saudi Limited Company', '0', 'Dar Delta Exit 9 Riyadh                                                                                                                      YAQUB     0593822991', 44, NULL, 0.00, 2326.45, 48855.44, '1-Delivery of material & Time:  Riyadh Exit 9 - 10 Days\r\n2- All Prices in SAR\r\n3- 25% Down payment 75% before delivery', 1, 'https://drive.google.com/drive/folders/1UPlHGa1Ws8XpSCgF8tcqHy3YlmAfHa8B', '14-05-2019', 45, 0, 0, 34, 11, 0, '2019-05-07 18:51:46', '2019-11-11 16:05:48'),
(56, 251, NULL, 'Exclusive Networks, Al-Ahsa Street, Al-Hoshan Complex\r\n\r\nPO Box 90872, Riyadh 11623, Saudi Arabia', '593822991', 'Dardelta Exit 9 Riyadh    Ahmed Yaqub 0593822991    Azeem 0593822990', 44, NULL, 0.00, 600.00, 12600.00, '1-Delivery of material & Time: 2-4 Weeks - Riyadh Exit 9  \r\n2- All Prices in USD', 1, 'https://drive.google.com/drive/folders/162FlNcm3hREAhqkRhNZf-mj1w2prxtf0', '27-05-2019', 45, 1, 1, 21, 14, 0, '2019-05-07 18:55:57', '2019-11-11 16:06:08'),
(57, 252, NULL, 'ANIXTER Saudi Limited Company', '0', 'Dardelta Exit 9 Riyadh            Ahmed Yaqub 0593822991    Azeem 0593822990', 44, NULL, 0.00, 5504.52, 115594.97, '1-Delivery of material & Time: 6 -8 Weeks .  Riyadh\r\n2- All Prices in SAR\r\n3- 15% Down Payment 85% PDC cheque 30 Days', 1, 'https://drive.google.com/drive/folders/1ib98KSIL40FC9_B3sjxS0XDGFbZcX3Dm', '20-05-2019', 45, 0, 0, 41, 11, 0, '2019-05-14 18:54:14', '2019-11-19 12:22:33'),
(59, 253, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Ahmed Yaqub', 43, NULL, 0.00, 39386.02, 827106.44, '1-Delivery of material - Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3.  15% upon Delivery 85% PDC 110 Days', 0, NULL, '29-05-2019', 45, 0, 0, 41, 8, 0, '2019-05-20 17:21:03', '2019-07-10 12:55:30'),
(61, 254, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Dardelta Exit 9 Riyadh    Ahmed Yaqub 0593822991    Azeem 0593822990', 44, NULL, 0.00, 37439.88, 786237.50, '1-Delivery of material - Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3.  15% upon delivery 85% PDC 110 Days', 1, 'https://drive.google.com/drive/folders/162FlNcm3hREAhqkRhNZf-mj1w2prxtf0', '22-05-2019', 50, 0, 0, 21, 8, 0, '2019-05-22 17:41:00', '2019-11-19 12:30:24'),
(62, 255, NULL, 'Security House \r\nFiroz_SHT\r\nMob: +966 58 126 8460 | Tel: +966 11 4774342 | Fax: +966 011 473 0283', '593822991', 'AHMED YAQUB', 43, NULL, 1191.00, 1970.05, 41371.05, '1-Delivery of material & Time:  Riyadh -  4 - 6 Weeks\r\n2- All Prices in SAR\r\n3- 25% Down payment (Wire Transfer) - 75% PDC 45 Days after Delivery.', 1, NULL, '30-05-2019', 45, 0, 0, 21, 13, 0, '2019-05-23 19:49:30', '2019-11-19 12:22:55'),
(64, 256, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Dardelta Exit 9 Riyadh      Azeem 0593822990', 44, NULL, 0.00, 199.65, 4192.65, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Credit 90 Days', 1, 'https://drive.google.com/drive/folders/1ib98KSIL40FC9_B3sjxS0XDGFbZcX3Dm', '11-06-2019', 45, 0, 0, 41, 6, 0, '2019-06-11 13:00:35', '2019-11-19 12:24:16'),
(65, 257, NULL, 'Temco\r\n+ P.O. Box 365075 Riyadh 11393-KSA\r\n +966 11 461-1721\r\n +966  920001055 \r\n +966 11 461-5038\r\n+966   56-343-3849\r\nwww.temco.com.sa', '593822991', 'Ahmed Yaqub', 43, NULL, 0.00, 150.00, 3150.00, '1-  Handover within 2-3 Days \r\n2-   All Prices in SAR\r\n3-   100% Down Payment.\r\n4-  Warranty for one Year', 1, NULL, '11-06-2019', 50, 0, 0, 21, 15, 0, '2019-06-11 16:32:29', '2019-11-19 12:25:03'),
(66, 258, NULL, '8968 Othman Bin Affan Rd -Al Waha Unit 112              	\r\nRiyadh 12445-3995   \r\nsal@das-sa.com        www.das-sa.com', '593822991', 'Ahmed Yaqub', 43, NULL, 0.00, 145.00, 3045.00, '1- Delivery of the materials and time - Makkah MOI - 2 Days\r\n2- All Prices in SAR\r\n3- 100% advance Payment', 1, NULL, '17-06-2019', 45, 0, 0, 21, 16, 0, '2019-06-17 17:14:41', '2019-11-19 12:23:23'),
(67, 259, NULL, 'logicom-group', 'T: +966 (11) 207 8450', 'Dardelta Exit 9 Riyadh    Ahmed Yaqub 0593822991', 44, NULL, 0.00, 34.65, 727.62, '1-Delivery of material & Time: 2 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100%  Down Payment', 1, NULL, '09-07-2019', 45, 0, 0, 0, 17, 0, '2019-07-09 18:56:07', '2019-11-19 12:23:38'),
(69, 261, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'AHMED YAQUB', 43, NULL, 0.00, 121.60, 2553.60, '1-Delivery of material & Time: 2 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 100%  After 45 days from delivery date.', 1, NULL, '25-08-2019', 45, 0, 0, 23, 18, 0, '2019-07-21 13:10:28', '2019-11-19 12:25:31'),
(70, 262, NULL, 'logicom-group', 'T: +966 (11) 207 8450', 'AHMED YAQUB', 43, NULL, 0.00, 1775.40, 37283.40, '1-Delivery of material & Time: 2 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Payment Terms : PDC cheuqe 45 days', 1, NULL, '23-07-2019', 45, 0, 0, 23, 17, 0, '2019-07-23 12:56:07', '2019-11-19 12:25:50'),
(88, 263, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'AHMED YAQUB', 43, NULL, 4000.00, 627.95, 13186.95, '1- Delivery of material - Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- Payment Terms:  100%  After 45 Days from delivery date', 1, NULL, '06-08-2019', 50, 0, 0, 23, 18, 0, '2019-08-06 15:12:04', '2019-11-19 12:26:07'),
(89, 264, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'AHMED YAQUB', 43, NULL, 8000.00, 5116.95, 107455.95, '1-Delivery of material & Time - Riyadh Exit 9  - 10Days\r\n2- All Prices in SAR\r\n3-Payment terms: 10% down payment 90% after 60-days from delivery date.', 1, NULL, '27-08-2019', 45, 0, 0, 21, 18, 0, '2019-08-27 15:56:51', '2019-11-24 19:19:33'),
(90, 265, NULL, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'mohammed abdelwhab', 46, NULL, 0.00, 1934.01, 40614.31, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100% Advance with P.O.', 1, NULL, '04-09-2019', 50, 0, 0, 45, 6, 0, '2019-09-04 20:05:16', '2019-11-19 12:26:47'),
(92, 266, NULL, 'ABDULLAH HADI AHMED\r\nAdvance International Company\r\n  EMAIL : A.HADI@ZKteco-sa.com\r\n   MOBIL: 0591888123', '0591888123', 'Ahmed Yaqub', 43, NULL, 0.00, 139.60, 2931.60, '1- All Prices in SAR\r\n2- 100%Down Payment', 1, NULL, '15-09-2019', 50, 0, 0, 21, 19, 0, '2019-09-15 17:47:00', '2019-11-19 12:30:46'),
(94, 268, NULL, 'Saudi Electronic Trading Co', '+966546535006', 'dardelta', 47, NULL, 0.00, 220.00, 4620.00, '1-Delivery of material & Time: .  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 100% Advance with P.O.', 1, NULL, '18-09-2019', 50, 0, 0, 21, 20, 0, '2019-09-18 18:08:45', '2019-11-19 12:34:12'),
(95, 269, NULL, 'Mindware IT Value-added distributor', '011 511 9387', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 217.50, 4567.50, '1-Delivery of material & Time: Riyadh Exit 9 Within 3 Days    \r\n2- All Prices in SAR\r\n3- 100% With PO.', 1, NULL, '19-09-2019', 50, 0, 0, 46, 21, 0, '2019-09-19 17:10:30', '2019-11-19 12:34:50'),
(96, 270, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Ahmed Yaqub', 43, NULL, 0.00, 4426.68, 92960.33, '1-Delivery of material - Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3.  20% Down payment 80%  PDC 75 Days after delivery', 0, NULL, '24-10-2019', 50, 0, 0, 41, 8, 0, '2019-10-16 11:32:57', '2019-10-28 14:16:42'),
(97, 271, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 3500.00, 73500.00, '1-Delivery of material & Time: Riyadh Exit 9 - 6 Weeks  \r\n2- All Prices in SAR\r\n3- 100% PDC 45 Days', 1, NULL, '21-10-2019', 50, 0, 0, 47, 9, 0, '2019-10-21 16:30:38', '2019-11-20 11:56:26'),
(98, 272, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 1640.45, 34449.45, '1-Delivery of material & Time: Riyadh Exit 9 - 6 Weeks  \r\n2- All Prices in SAR\r\n3- 100% PDC 45 Days', 0, NULL, NULL, 50, 0, 0, 48, 9, 0, '2019-10-21 18:41:34', '2019-10-22 14:31:31'),
(99, 273, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 1243.35, 26110.35, '1-Delivery of material & Time: Riyadh Exit 9 - 1 Week  \r\n2- All Prices in SAR\r\n3- 100% PDC 45 Days', 1, NULL, '22-10-2019', 50, 0, 0, 45, 9, 0, '2019-10-22 19:07:32', '2019-11-20 11:57:45'),
(101, 274, NULL, 'Mona Al-Nawajha', '0535000879', 'Ahmed Yaqub', 43, NULL, 0.00, 125.00, 2625.00, '1-Testing and commissioning of fire fighting & fire alarm\r\n2- All Prices in SAR\r\n3.  100% down Payment', 1, NULL, '27-10-2019', 50, 0, 0, 21, 22, 0, '2019-10-27 12:27:54', '2019-11-28 16:46:36'),
(102, 275, NULL, 'SCHNEIDER ELECTRIC SAUDI ARABIA FOR SOLUTIONS & SERVICES', '0593822991', 'AHMED YAQUB', 43, NULL, 0.00, 600.00, 12600.00, '1- All Prices in SAR\r\n2.  100% Down payment\r\n3.SE supervision unit preparation for startup.', 1, NULL, '28-10-2019', 50, 0, 0, 21, 23, 0, '2019-10-28 18:09:19', '2019-12-30 13:38:36'),
(103, 276, NULL, 'Hardware Solutions Builders Co.', '0593822991', 'AHMED YAQUB', 43, NULL, 0.00, 77.15, 1620.15, '1- All Prices in SAR\r\n2.  100% Down payment', 1, NULL, '28-10-2019', 50, 0, 0, 0, 24, 0, '2019-10-28 19:16:46', '2019-11-26 14:41:17'),
(104, 277, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'Mohammed Abdelwhab Madani', 46, NULL, 4780.00, 7727.40, 162275.41, '1-Delivery of material & Time: 2-4 Weeks.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 10 % with PO and 90% with 60 days PDC .', 0, NULL, '29-10-2019', 50, 0, 0, 45, 18, 0, '2019-10-29 13:52:23', '2019-10-29 20:04:11'),
(105, 278, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'Mohammed Abdelwhab Madani', 46, NULL, 1954.00, 3137.25, 65882.25, '1-Delivery of material & Time: 2-4 Weeks.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 10 % with PO and 90% with 60 days PDC .', 0, NULL, '29-10-2019', 50, 0, 0, 49, 18, 0, '2019-10-29 20:30:58', '2019-10-30 13:18:28'),
(106, 279, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'Mohammed Abdelwhab Madani', 46, NULL, 8876.00, 14349.85, 301346.84, '-Delivery of material & Time: 2-4 Weeks.  Riyadh Exit 9  \r\n- payment terms: 10 % with PO and 90% with 90 days PDC.\r\n-if the smart net  Failed, the hardware will be returned.', 0, NULL, '31-10-2019', 50, 0, 0, 47, 18, 0, '2019-10-31 16:01:43', '2019-11-07 19:18:40'),
(107, 280, NULL, 'Mohammed Alhamdy--\r\nBlinks International Trading', '+966561322620', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 675.63, 14188.23, '1-Delivery of material & Time: 1 Day.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 100 % with PO.', 1, NULL, '31-10-2019', 50, 0, 0, 49, 26, 0, '2019-10-31 21:27:03', '2019-11-26 14:46:56'),
(108, 281, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 760.00, 15960.00, '1-Delivery of material & Time: Riyadh Exit 9 , 1 Day  \r\n2- All Prices in SAR\r\n3- 100% PDC 45 Days', 1, NULL, '03-11-2019', 50, 0, 0, 50, 9, 0, '2019-11-03 19:06:54', '2019-11-20 12:16:05'),
(109, 282, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 3926.00, 82446.00, '1-Delivery of material & Time: Riyadh Exit 9 , 1 Day  \r\n2- All Prices in SAR\r\n3- 100% PDC 45 Days', 1, NULL, '03-11-2019', 50, 0, 0, 51, 9, 0, '2019-11-03 19:37:34', '2019-12-17 15:52:41'),
(110, 283, NULL, 'Eng. Ahmed Al Masri  \r\nMob. # 0555014231', '0555014231', 'Mohammed Abdelwhab Madani', 46, NULL, 23323.00, 2350.00, 49350.00, '1.Delivery: 2-4 weeks, Riyadh.\r\n2.Payment: 20% with PO , 50% with delivery ,20% after T&C.', 0, NULL, '03-11-2019', 50, 0, 0, 48, 27, 0, '2019-11-03 20:49:52', '2019-11-06 16:23:59'),
(112, 285, NULL, 'Mindware IT Value-added distributor', '011 511 9387', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 263.75, 5538.75, '1-Delivery of material & Time: 2-4 days Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- 50% Cash upon Order and 50% Cash upon delivery .', 1, NULL, '10-11-2019', 50, 0, 0, 51, 21, 0, '2019-11-10 19:09:47', '2019-11-20 11:58:22'),
(113, 286, NULL, 'Mohammed Alhamdy--\r\nBlinks International Trading', '+966561322620', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 936.05, 19657.05, '1-Delivery of material & Time: 1-2 days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 100% 30 days PDC .', 1, NULL, '10-11-2019', 50, 0, 0, 49, 26, 0, '2019-11-10 21:10:45', '2019-11-26 15:03:36'),
(114, 287, NULL, 'IT ASSOCIATES', '01126527893', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 572.93, 12031.56, NULL, 0, NULL, NULL, 50, 0, 0, 47, 29, 0, '2019-11-11 16:03:39', '2019-11-11 16:08:53'),
(115, 288, NULL, 'Gamma Factory for Metal  Industries \r\n--Jamal Al-Whaidi', '0505249431', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 731.19, 15354.89, 'Delivery : 1 week , Riyadh Exit 9.\r\nPayment: 50% advance ,50% 30 days credit.', 1, NULL, '11-11-2019', 50, 0, 0, 49, 28, 0, '2019-11-11 17:40:20', '2019-12-10 20:13:19'),
(116, 289, NULL, 'Saudi Electronic Trading Co', '+966546535006', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 466.65, 9799.65, 'Delivery : Exit 9 Riyadh, 1 Day.\r\nPayment : 100% In advance.', 1, NULL, '12-11-2019', 50, 0, 0, 47, 20, 0, '2019-11-12 21:11:44', '2019-11-24 19:18:59'),
(117, 290, NULL, 'Al-Khaleej Al-Awwal for Communications and IT Est.', '+966580447449', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 1625.00, 34125.00, 'Delivery :4 weeks , Riyadh.\r\nPayment :50% down payment and 50% 30-day Deferred check', 0, NULL, '12-11-2019', 50, 0, 0, 47, 30, 0, '2019-11-12 21:46:13', '2019-11-19 14:19:01'),
(118, 291, NULL, 'Saudi Electronic Trading Co', '+966546535006', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 5700.00, 119700.00, 'Payment:50% With PO , 50% Against Delivery.\r\nDelivery: Al Lith ,Western Region.', 0, NULL, '12-11-2019', 50, 0, 0, 47, 20, 0, '2019-11-12 21:51:38', '2019-11-19 14:06:38'),
(119, 292, NULL, 'ZMR Trading Est', '+966 12 6620303', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 869.48, 18259.07, 'Delivery : 2 Day ,Tabuk.\r\nPayment: 100% In advance.', 1, NULL, '13-11-2019', 50, 0, 0, 45, 31, 0, '2019-11-13 13:25:07', '2019-12-10 12:03:40'),
(120, 293, NULL, 'National Audio Visual Technology Specialists Establishment', '0114785848', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 1325.00, 27825.00, 'Delivery : 1 Day , Exit 9\r\nPayment:100% Advance.', 1, NULL, '18-11-2019', 50, 0, 0, 50, 32, 0, '2019-11-18 14:47:55', '2019-11-21 14:33:15'),
(121, 294, NULL, 'Technical Field Establishment', '+966 504 424 424', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 2142.75, 44997.75, '1-Payment :cash with delivery.\r\n2. All prices are in Saudi Riyals.\r\n3.Delivery : 1 Day', 1, NULL, '18-11-2019', 50, 0, 0, 50, 33, 0, '2019-11-18 17:08:36', '2019-11-21 14:42:03'),
(122, 295, NULL, 'Gulf ITQAN system for integrated solutions', '+966590333101', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 3250.00, 68250.00, 'Payment: 100% down with PO.', 1, NULL, '18-11-2019', 50, 0, 0, 51, 34, 0, '2019-11-18 19:35:09', '2019-12-30 14:38:36'),
(123, 296, NULL, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 391.00, 8211.00, '1-Delivery of material & Time: Riyadh Exit 2 Days. \r\n2- All Prices in SAR.\r\n3- 100% PDC 45 Days.', 1, NULL, '27-11-2019', 50, 0, 0, 45, 9, 0, '2019-11-27 17:02:44', '2019-12-30 13:21:30'),
(124, 297, NULL, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 70.00, 1470.00, '1-Delivery of material & Time: 2-4 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 10 % with PO and 90% with 60 days PDC .', 0, NULL, '27-11-2019', 50, 0, 0, 51, 18, 0, '2019-11-27 19:08:38', '2019-11-28 18:04:18'),
(125, 298, NULL, 'Saudi Electronic Trading Co', '+966546535006', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 435.00, 9135.00, '1-Delivery of material & Time: 2-4 Days.  Riyadh Exit 9  \r\n2- All Prices in SAR\r\n3- payment terms: 100 % with PO.', 0, NULL, '02-12-2019', 50, 0, 0, 52, 20, 0, '2019-12-02 16:16:06', '2019-12-02 19:03:09'),
(126, 299, NULL, 'Gamma Factory for Metal  Industries \r\n--Jamal Al-Whaidi', '0505249431', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 96.47, 2025.87, '1.Delivery : Riyadh Exit 9 - 3 Days\r\n2.Payment: 100% Down Payment.\r\n3.All prices in SAR', 1, NULL, '03-12-2019', 50, 0, 0, 45, 28, 0, '2019-12-03 19:53:26', '2019-12-09 17:11:50'),
(127, 300, NULL, 'Electro Mechanical Solutions\r\nAmr Abd El Maksoud El Abd, PMP\r\nMobile: +(966) 537663652', '0593822991', 'AHMED YAQUB', 43, NULL, 0.00, 350.00, 7350.00, '1- All Prices in SAR\r\n2- Payment Terms - 50 %  Down Payment   50% upon startup of the cooling unit and handover.', 1, NULL, '08-12-2019', 50, 0, 0, 21, 35, 0, '2019-12-08 16:34:59', '2019-12-30 13:21:53'),
(128, 301, NULL, 'International Arabian Hardware\r\nWaleed Mohamed\r\nMobile: 0546803035', '0593822991', 'AHMED YAQUB', 43, NULL, 298.80, 483.06, 10144.26, '1- All Prices in SAR\r\n2-Training For Dar Delta Team\r\n3- Payment Terms - 100 %  Down Payment.', 1, NULL, '22-12-2019', 50, 0, 0, 24, 36, 0, '2019-12-08 17:52:26', '2019-12-30 14:29:09'),
(129, 302, NULL, 'Al-otaishan Group for safety', '+96655508 3217', 'Mohammed Abdelwhab Madani', 46, NULL, 4206.00, 1967.75, 41322.75, 'Delivery Time : 3-4 weeks ,Riyadh.\r\nPayment: 50% with PO \r\n,50% after delivery.\r\n- The PO is based on the quote NH/307/2019', 0, NULL, '08-12-2019', 50, 0, 0, 48, 37, 0, '2019-12-08 19:26:19', '2020-01-22 15:57:27'),
(130, 303, NULL, 'Saudi Electronic Trading Co', '+966546535006', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 4850.00, 101850.00, '- Delivery: Riyadh \r\n-Payment: 50% with PO, 50% After delivery.', 1, NULL, '16-12-2019', 50, 0, 0, 52, 20, 0, '2019-12-16 14:18:37', '2020-01-05 13:30:44'),
(131, 304, NULL, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 157458.84, 3306635.75, '1.Delivery: 8-10 weeks \r\n2.Payment: -Pay 5% in advance with PO 165,331.78 SAR \r\n-Pay 30% PDC   to 45 days  after Booking order  991,990.69 SAR \r\n -Pay Facility + 65% PDC  to 120 days after delivery    2,192,299.42 SAR', 0, NULL, '26-12-2019', 50, 0, 0, 53, 8, 0, '2019-12-26 13:40:28', '2019-12-26 17:27:04'),
(132, 305, NULL, 'ZMR Trading Est', '+966 12 6620303', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 6412.73, 134667.42, '1-Delivery Time: 4-8 Weeks. Riyadh Exit 9.\r\n2- All Prices in SAR.\r\n3- payment terms: 40 % with PO and 60% with 45 days PDC.', 0, NULL, '09-01-2020', 50, 0, 0, 55, 31, 0, '2020-01-09 16:47:20', '2020-01-14 20:01:56'),
(133, 306, NULL, 'Moaz Mohammed Elzahrawy', '+966 59 682 2551', 'Mohammed Abdelwhab Madani', 46, NULL, 0.00, 4452.38, 93500.00, '-20% down payment.\r\n-20% upon HLD and LLD Approval and before implementation kickstart.\r\n-30% upon finishing implementation and go live.\r\n -30% upon documentation, handover, and sign-off from the customer', 0, NULL, NULL, 50, 0, 0, 53, 38, 0, '2020-01-20 19:11:26', '2020-01-20 19:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `partnum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` int(11) NOT NULL,
  `rate` float(10,3) NOT NULL,
  `purchase_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=>Not Received, 1=>received, 2=>delivered',
  `receive_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deliver_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `serial` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `project_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `partnum`, `description`, `quantity`, `rate`, `purchase_id`, `status`, `receive_date`, `deliver_date`, `serial`, `project_id`, `created_at`, `updated_at`) VALUES
(24, 'oodh4', NULL, 3, 200.000, 22, 0, '23-02-2019', '23-02-2019', NULL, '0', '2019-02-23 14:12:41', '2019-02-23 14:16:52'),
(26, 'Air -Ap', 'cisco AP', 10, 880.000, 22, 0, '23-02-2019', NULL, NULL, '0', '2019-02-23 15:23:25', '2019-03-12 17:27:00'),
(27, 'SW-3850', 'switch', 10, 360.000, 22, 0, '', NULL, NULL, '0', '2019-02-23 15:24:12', '2019-02-23 15:24:12'),
(28, 'LED-24-SE2416H', 'Dell 24 Monitor SE2416H - 60.5cm(23.8\") Black, UK', 5, 618.000, 23, 2, '21-03-2019', '04-01-2020', '0P5PHTQKB00067 , 0P5PHTQKB00088 , 0P5PHTQKB00093 , 0P5PHTQKB00043 , 0P5PHTQKB00094', '21', '2019-03-07 15:08:16', '2020-01-05 01:09:27'),
(31, 'GLC-SX-MMD', '1000Base-SX SFP Transceiver Module MMF 850nm DOM(Conpat)', 18, 120.000, 25, 2, '25-03-2019', '31-03-2019', 'SFNS20430HS6, SFNS20430HQG, SFNS20430HZK, SFNS20430GY3, SFNS20430MWY , SFNS204216HG, SFNS20421H30, SFNS20421GA1, SFNS20420LWZ, SFNS20430JTQ, SFNS20421L04, SFNS20430HQF, SFNS20430HPY, SFNS20430HPH, SFNS20430HRW, SFNS20430HWW, SFNS20421GHN, SFNS20430HY4', '25', '2019-03-09 18:22:13', '2019-03-31 12:46:46'),
(32, 'BC861C', '1 port 86 x 86 mm Faceplate', 160, 5.000, 26, 2, '12-03-2019', '24-03-2019', NULL, '25', '2019-03-12 13:11:24', '2019-03-24 13:47:26'),
(33, 'BC6NB', 'CAT6 RJ45 MODULAR JACK UNSHIELDED 250MHz', 160, 11.000, 26, 2, '12-03-2019', '24-03-2019', NULL, '25', '2019-03-12 13:17:29', '2019-03-24 13:47:47'),
(34, 'CDEH1CSAA', 'Central Device Encryption - 100-199 CLIENTS - 12 MOS', 100, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:56:36', '2019-03-13 16:56:36'),
(35, 'CAMH1CSAA', 'Central Email Advanced - 100-199 USERS - 12 MOS', 100, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:57:06', '2019-03-13 16:57:06'),
(36, 'CMAH1CSAA', 'Central Mobile Advanced - 100-199 USERS - 12 MOS', 100, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:57:31', '2019-04-15 17:34:47'),
(37, 'CPTH1CSAA', 'Central Phish Threat - 100-199 USERS - 12 MOS', 100, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:57:56', '2019-03-13 16:57:56'),
(38, 'CSAF1CSAA', 'Central Intercept X Advanced for Server - 25-49 SERVERS - 12 MOS', 25, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:58:21', '2019-03-13 16:58:21'),
(39, 'CIXH1CSAA', 'Central Intercept X Advanced - 100-199 USERS - 12 MOS', 100, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:58:48', '2019-03-13 16:58:48'),
(40, 'XTSC1CSAA', 'SF SW/Virtual TotalProtect - 4 CORES & 6GB RAM, 1-year', 1, 0.000, 27, 0, '', NULL, NULL, '0', '2019-03-13 16:59:14', '2019-03-13 16:59:14'),
(41, 'BCPAN1U', '24 Ports 1U unloaded patch panel BC', 3, 115.000, 28, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-17 17:51:10', '2019-03-24 13:36:37'),
(42, 'CH1U', '19’’ Modular Chassis Without front plates &  EMPTY', 3, 210.000, 28, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-17 17:51:56', '2019-03-24 13:48:57'),
(43, 'FU1U24SCSLCD', 'Unloaded front plate 1U for 24 SCS/LCD', 3, 45.000, 28, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-17 17:52:29', '2019-03-24 13:50:43'),
(45, '48OBLCD', 'BLANK MODULE FOR SCS/LCD DUPLEX PORTS', 30, 1.800, 28, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-17 18:04:31', '2019-03-24 13:49:13'),
(46, 'SG300-28SFP-K9', 'SG300-28SFP 28-PORT Gigabit\r\nManaged SFP switch', 1, 2205.000, 29, 2, '24-03-2019', '03-04-2019', 'DNI21410ARM', '27', '2019-03-18 11:44:42', '2019-04-03 17:11:29'),
(47, 'AIR-PWR-ST-LT-R3P', '1520 Series Street Light Power\r\n\r\nTap, 4 ft.', 10, 380.000, 30, 2, '24-03-2019', '27-03-2019', NULL, '35', '2019-03-18 18:11:28', '2019-03-27 17:12:04'),
(48, 'CH1U', '19’’ Modular Chassis Without front plates &  EMPTY', 1, 210.000, 31, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-18 20:49:31', '2019-03-24 13:51:41'),
(49, 'FU1U24SCSLCD', 'Unloaded front plate 1U for 24 SCS/LCD', 1, 45.000, 31, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-18 20:50:04', '2019-03-24 13:52:09'),
(50, '48MMTLCD', 'LC DUPLEX  MULTIMODE ADAPTER', 4, 10.000, 31, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-18 20:50:57', '2019-03-24 13:52:33'),
(51, '48OBLCD', 'BLANK MODULE FOR SCS/LCD DUPLEX PORTS', 22, 1.800, 31, 2, '21-03-2019', '24-03-2019', NULL, '26', '2019-03-18 20:51:38', '2019-03-24 13:52:21'),
(52, 'GLC-SX-MMD.=', '1000BASE-SX SFP transceiver module MMF\r\n850nm DOM ( Compat)', 12, 120.000, 32, 2, '25-03-2019', '27-03-2019', 'SN: FNS171202C6-SN: FNS171202B7-SN: FNS17050D27- SN: FNS17050D65-SN: FNS171202AD-SN: FNS17050C8K-SN: FNS17050C73-SN: FNS170820KP-SN: FNS17050C78-SN: FNS17050CBB--SN: FNS17050D6LSN: FNS171202BT', '28', '2019-03-18 21:24:14', '2019-03-27 17:08:45'),
(53, 'DMC-F30SC', 'D-link Media Converter DMC-F30SC SM 10/100', 20, 135.000, 33, 2, '27-03-2019', '27-03-2019', NULL, '35', '2019-03-21 11:41:47', '2019-03-27 17:25:10'),
(54, '48SMTLCD', 'LC DUPLEX  SINGLEMODE ADAPTER', 25, 10.000, 34, 2, '25-03-2019', '27-03-2019', NULL, '35', '2019-03-21 15:52:27', '2019-03-27 17:09:06'),
(55, 'EXTALCT6R50OM3', '6 FIBERS MM 50/125 OM3  CENTRAL TUBE STEEL ARM. PEHD', 153, 7.200, 34, 2, '25-03-2019', '27-03-2019', NULL, '28', '2019-03-21 20:19:55', '2019-03-27 17:05:20'),
(62, 'LIC-CT3504-1A', 'Cisco 3504 Wireless Controller 1 AP Adder License', 9, 244.400, 35, 2, '24-04-2019', '24-04-2019', NULL, '35', '2019-03-21 20:40:46', '2019-04-24 19:07:50'),
(63, 'LIC-CT3504-UPG', 'Top Level SKU for 3504 AP Adder Licenses', 1, 0.000, 35, 2, '24-04-2019', '24-04-2019', NULL, '35', '2019-03-21 20:45:53', '2019-04-24 19:07:37'),
(64, 'Top Level SKU for 3504 AP Adder Licenses', 'SWSS UPGRADES TTop Level SKU for 3504 AP Adder License', 1, 0.000, 35, 2, '24-04-2019', '24-04-2019', NULL, '35', '2019-03-21 20:46:20', '2019-04-24 19:07:22'),
(65, 'WS-C3850-12S-S', 'Cisco Catalyst 3850 12 Port GE SFP IP Base', 1, 12700.000, 36, 2, '26-03-2019', '27-03-2019', 'FCW2248GHEG', '23', '2019-03-25 14:29:50', '2019-03-27 17:11:47'),
(66, '***', 'Pallet Tack 3 TON Made -in China', 1, 800.000, 37, 0, '', NULL, NULL, '0', '2019-03-25 16:27:47', '2019-03-25 16:27:47'),
(67, '1PAIR-AP2802I-E-K9 AP', 'AP Indoor', 40, 1826.890, 38, 0, '31-03-2019', '31-03-2019', NULL, '27', '2019-03-31 14:18:57', '2019-03-31 14:29:54'),
(68, 'WAP571-E-K9', 'SN: PSZ22401GJM\r\n\r\nCON-SNT-WAP571E9', 1, 135.800, 39, 2, '24-04-2019', '08-05-2019', NULL, '26', '2019-04-08 11:37:06', '2019-05-08 19:15:22'),
(69, 'WAP571-E-K9', 'SN: PSZ22401GWV\r\n\r\nCON-SNT-WAP571E9', 1, 135.800, 39, 2, '24-04-2019', '08-05-2019', NULL, '26', '2019-04-08 11:38:35', '2019-05-08 19:15:06'),
(70, 'WAP571-E-K9', 'SN: PSZ22401H00\r\n\r\nCON-SNT-WAP571E9', 1, 135.800, 39, 2, '24-04-2019', '08-05-2019', NULL, '26', '2019-04-08 11:39:17', '2019-05-08 19:14:57'),
(71, 'WAP571-E-K9', 'SN: PSZ22401H09\r\n\r\nCON-SNT-WAP571E9', 1, 135.800, 39, 2, '24-04-2019', '07-05-2019', NULL, '26', '2019-04-08 11:39:50', '2019-05-07 15:47:15'),
(72, 'CAB-CONSOLE-USB', 'Console Cable with USB Type', 3, 75.000, 40, 0, '', NULL, NULL, '27', '2019-04-09 12:48:32', '2019-04-09 12:49:57'),
(73, 'CON-3SNT- WSC3852E', '3YR SNTC 8X5XNBD Cisco\r\nCatalyst 3850 24 Pt GE SFP IP\r\nSe', 1, 13175.000, 41, 2, '02-05-2019', '08-05-2019', NULL, '26', '2019-04-09 15:19:53', '2019-05-08 19:14:45'),
(74, 'BK-50629839', 'BAHRA Cable CU/XLPE/PVC 4CX400MM2 0.6/1KV', 125, 430.000, 42, 0, '', NULL, NULL, '21', '2019-04-16 12:46:59', '2019-04-17 14:09:20'),
(75, 'YG-12274496', 'BAHRA NYA Cable 450/750V 1C X 185MM2', 115, 48.000, 42, 0, '', NULL, NULL, '21', '2019-04-16 12:48:13', '2019-04-17 14:18:22'),
(76, '01020127', 'Cable 4C X 150mm CU/X/PVCX عادى السويدى', 7, 150.000, 43, 0, '', NULL, NULL, '21', '2019-04-16 12:55:55', '2019-04-16 12:55:55'),
(77, '01130114', 'Cable 1C X 70MM G/Y - PVC السويدى', 7, 18.000, 43, 0, '', NULL, NULL, '21', '2019-04-16 13:00:10', '2019-04-16 13:00:10'),
(78, '01020123', 'Cable 4C X 50mm CU/XLPE/PVC السويدى', 37, 50.000, 43, 0, '', NULL, NULL, '21', '2019-04-16 13:02:17', '2019-04-16 13:02:17'),
(79, '01130111', 'Cable 1C X 25mm G/Y - PVC السويدى', 37, 7.000, 43, 0, '', NULL, NULL, '21', '2019-04-16 13:03:34', '2019-04-16 13:03:34'),
(80, 'INTEX450OM3', 'FIBER Cable 4C 50/125 OM3 CENTRAL TUBE in/outdoor LSZH', 555, 4.920, 44, 2, '02-05-2019', '07-05-2019', NULL, '27', '2019-04-16 20:23:16', '2019-05-07 15:46:59'),
(81, 'INTEX2450OM#', 'FIBERS Cable24C MM  50/125 OM3 CENTRAL TUBE in/outdoor LSZH', 200, 18.500, 44, 2, '02-05-2019', '07-05-2019', NULL, '27', '2019-04-16 20:25:06', '2019-05-07 15:46:44'),
(82, '01020127', 'Cable 4C X 150mm CU/X/PVCX عادى السويدى', 32, 155.000, 45, 2, '02-05-2019', '07-05-2019', NULL, '22', '2019-04-21 18:33:34', '2019-05-07 15:46:32'),
(83, '01130114', 'Cable 1C X 70MM G/Y - PVC السويدى', 18, 17.500, 45, 2, '24-04-2019', '24-04-2019', NULL, '22', '2019-04-21 18:35:00', '2019-04-24 19:06:59'),
(84, '01020123', 'Cable 4C X 50mm CU/XLPE/PVC السويدى', 8, 50.000, 45, 2, '02-05-2019', '07-05-2019', NULL, '22', '2019-04-21 18:36:04', '2019-05-07 15:46:02'),
(85, '01130111', 'Cable 1C X 25mm G/Y - PVC السويدى', 8, 7.000, 45, 2, '24-04-2019', '24-04-2019', NULL, '22', '2019-04-21 18:36:52', '2019-04-24 19:06:06'),
(86, '01020122', 'Cable 4C X 35mm CU/X/PVCX  السويدى', 110, 35.000, 45, 2, '24-04-2019', '24-04-2019', NULL, '22', '2019-04-21 18:38:14', '2019-04-24 19:06:23'),
(87, '01130110', 'Cable 1C X 16mm G/Y - PVC السويدى', 110, 4.500, 45, 2, '24-04-2019', '24-04-2019', NULL, '22', '2019-04-21 18:50:10', '2019-04-24 19:06:35'),
(88, '01020120', 'Cable 4C X 16mm CU/X/PVCX عادى السويدى', 80, 16.500, 45, 2, '24-04-2019', '24-04-2019', NULL, '22', '2019-04-21 18:51:24', '2019-04-24 19:06:47'),
(89, '01130021', 'Cable 1C X 10mm G/Y - PVC Riyadh', 80, 3.500, 45, 2, '24-04-2019', '24-04-2019', NULL, '22', '2019-04-21 18:52:25', '2019-04-24 19:05:50'),
(90, 'CON-SNT-WSC224SL', 'PAK/Serial Number : FCW2302B5EG', 1, 1300.200, 46, 0, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:12:55', '2020-01-25 23:14:22'),
(91, 'CON-SNT-WSC224SL', 'PAK/Serial Number : FCW2302B59K', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:18:15', '2019-05-08 19:20:09'),
(92, 'CON-SNT-WSC224SL', 'PAK/Serial Number : FCW2302B5E0', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:18:46', '2019-05-08 19:20:09'),
(93, 'CON-SNT-WSC224SL', 'PAK/Serial Number FCW2302B5BM', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:19:19', '2019-05-08 19:20:09'),
(94, 'CON-SNT-WSC224SL', 'PAK/Serial Number FCW2302B5BK', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:19:58', '2019-05-08 19:20:09'),
(95, 'CON-SNT-WSC224SL', 'PAK/Serial Number  FCW2302B5DU', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:21:10', '2019-05-08 19:20:09'),
(96, 'CON-SNT-WSC224SL', 'PAK/Serial Number  FCW2302B5F0', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:21:44', '2019-05-08 19:20:09'),
(97, 'CON-SNT-WSC224SL', 'PAK/Serial Number  FCW2302B5DK', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:22:17', '2019-05-08 19:20:09'),
(98, 'CON-SNT-WSC224SL', 'PAK/Serial Number  FCW2302B5BR', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:22:37', '2019-05-08 19:20:09'),
(99, 'CON-SNT-WSC224SL', 'PAK/Serial Number  FCW2302B5BG', 1, 1300.200, 46, 1, '08-05-2019', NULL, NULL, '23', '2019-04-21 20:24:32', '2019-05-08 19:20:09'),
(100, 'F5554SH5', 'CABLE F/FTP 4P CAT6A 555MHz LSZH VIOLET 500M 10G 23AWG', 9, 950.000, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:30:23', '2019-05-07 15:45:23'),
(101, 'CORD6AS01MSH', 'PATCH CORD CAT6A U/FTP LSZH 1M GREY', 200, 18.000, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:30:53', '2019-05-07 15:44:44'),
(102, 'CORD6AS05MSH', 'PATCH CORD CAT6A U/FTP LSZH 5M GREY', 50, 39.500, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:31:28', '2019-05-07 15:44:31'),
(103, 'BC861C', '1 port 86 x 86 mm Faceplate', 120, 4.500, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:32:14', '2019-05-07 15:44:17'),
(104, 'CORD6AS03MSH', 'PATCH CORD CAT6A U/FTP LSZH 3M GREY', 100, 30.600, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:32:46', '2019-05-07 15:43:59'),
(105, 'BCPAN1U', '24 Ports 1U unloaded patch panel BC', 12, 103.500, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:33:46', '2019-05-07 15:43:48'),
(106, 'BC6AFSTL50', 'Cat 6A RJ45 BC connector Fully shielded 360° 500MHz', 120, 21.600, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:45:14', '2019-05-07 15:43:32'),
(107, 'BC6AFSTL50', 'Cat 6A RJ45 BC connector Fully shielded 360° 500MHz', 120, 21.600, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:45:50', '2019-05-07 15:43:20'),
(108, 'CH1U', '19’’ Modular Chassis Without front plates &  EMPTY', 12, 189.000, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:46:47', '2019-05-07 15:43:07'),
(109, 'FU1U24SCSLCD', 'Unloaded front plate 1U for 24 SCS/LCD', 12, 40.500, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:47:30', '2019-05-07 15:42:49'),
(111, '48SMTLCD', 'LC DUPLEX  SINGLEMODE ADAPTER', 24, 9.000, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:48:50', '2019-05-07 15:42:37'),
(112, '48OBLCD', 'BLANK MODULE FOR SCS/LCD DUPLEX PORTS', 264, 1.500, 47, 2, '07-05-2019', '07-05-2019', NULL, '41', '2019-04-28 11:49:20', '2019-05-07 15:42:22'),
(114, '01010181', 'Cable 3C X 16mm CU/X/PVCX عادى السويدى', 70, 15.500, 48, 0, '', NULL, NULL, '22', '2019-04-29 11:49:15', '2019-04-29 11:49:15'),
(115, '01260036', 'Cable 6 mm Red -  Riyadh  لفة', 1, 145.000, 48, 0, '', NULL, NULL, '22', '2019-04-29 11:53:24', '2019-04-29 11:53:24'),
(116, '01260016', 'Cable 2.5 mm black -  Riyadh  لفة', 1, 66.000, 48, 0, '', NULL, NULL, '22', '2019-04-29 11:54:22', '2019-04-29 11:57:03'),
(117, '01260036', 'Cable 6 mm Black -  Riyadh  لفة', 1, 145.000, 48, 0, '', NULL, NULL, '22', '2019-04-29 11:56:15', '2019-04-29 11:56:15'),
(118, '01260016', 'Cable 2.5 mm Red -  Riyadh  لفة', 1, 66.000, 48, 0, '', NULL, NULL, '22', '2019-04-29 11:57:42', '2019-04-29 11:57:42'),
(119, '48MMTSCD', 'SC DUPLEX MULTIMODE ADAPTER', 38, 7.000, 50, 2, '07-05-2019', '07-05-2019', NULL, '32', '2019-05-02 16:26:06', '2019-05-07 15:42:06'),
(125, 'FG-500E-BDL-950-36', 'Hardware plus 3 Year 24x7 FortiCare and FortiGuard UTM Protection', 1, 11106.010, 56, 0, '', NULL, NULL, '21', '2019-05-09 17:35:24', '2019-05-27 06:44:16'),
(126, 'SG-S400-20-PR', 'Blue SG-S400-20, Proxy Edition', 1, 135709.000, 54, 0, '', NULL, NULL, '21', '2019-05-09 17:50:35', '2019-05-20 14:57:29'),
(127, 'Standard Plus', 'End Customer Support , Level 1-3 Software Support & Same Day Shipment Hardware Support ( Three Years)', 1, 80309.000, 54, 0, '', NULL, NULL, '21', '2019-05-09 17:51:11', '2019-05-20 14:57:50'),
(128, 'CPOS-SG-S400-Y1', 'Cache Pulse Optimization Service, SG-S200 MACH5 /Proxy Edition, 1 Yr Subscription, 250-499 Users, 1 YR ( Three Years)', 1, 0.000, 54, 0, '', NULL, NULL, '21', '2019-05-09 17:51:40', '2019-05-20 14:58:04'),
(129, 'SW-FLASH-SG-S400', 'Flash Proxy License, SG-S400', 1, 6369.000, 54, 0, '', NULL, NULL, '21', '2019-05-09 17:52:05', '2019-05-20 14:58:24'),
(130, 'IS-AWAA-SWG-250-500-1Y', 'BCIS Advanced Web Security With Risk Controls and Web Application For SWG, Subscription , 250-499 Users, 1 YR (Three Years)', 300, 84.000, 54, 0, '', NULL, NULL, '21', '2019-05-09 17:52:42', '2019-05-20 14:58:39'),
(136, 'HM500AXPET32TB', 'HUSKY M500A XPET NVR, 32 TB', 1, 29995.240, 55, 0, '', NULL, NULL, '34', '2019-05-14 16:22:36', '2019-05-14 16:22:36'),
(137, 'XPEXPLUSBL', 'XProtect Express+ Base License', 1, 66.030, 55, 0, '', NULL, NULL, '34', '2019-05-14 16:23:06', '2019-05-14 16:23:06'),
(138, 'XPEXPLUSDL', 'XProtect Express+ Device License', 44, 260.630, 55, 0, '', NULL, NULL, '34', '2019-05-14 16:23:33', '2019-05-14 16:23:33'),
(139, 'Freight Customs  For Hardware', 'Freight Customs  For Hardware', 1, 5000.000, 55, 0, '', NULL, NULL, '34', '2019-05-14 16:25:03', '2019-05-14 16:25:03'),
(140, '0929-001', 'Axis P5635-E 60 HZ Mkii', 5, 5465.170, 57, 0, '', NULL, NULL, '41', '2019-05-15 18:00:32', '2019-05-20 15:26:16'),
(141, '5801-721', 'AXIS T91L61 WALL-AND POLE MOUNT', 20, 334.140, 57, 0, '', NULL, NULL, '41', '2019-05-15 18:00:58', '2019-05-19 19:19:28'),
(142, '0777-001', 'Axis P1435-LE', 15, 1637.370, 57, 0, '', NULL, NULL, '41', '2019-05-15 18:01:25', '2019-05-20 15:26:31'),
(143, '0952-001', 'Axis P3225-V Mkii', 5, 1411.160, 57, 0, '', NULL, NULL, '41', '2019-05-15 18:01:57', '2019-05-19 19:39:28'),
(144, '01146-001', 'Axis M5525-E 60 HZ Mkii', 15, 2731.030, 57, 0, '', NULL, NULL, '41', '2019-05-15 18:02:55', '2019-05-20 15:27:02'),
(147, 'FREIGHT + SASO', 'FREIGHT + SASO', 1, 3000.000, 57, 0, '', NULL, NULL, '41', '2019-05-19 19:17:54', '2019-05-20 15:27:33'),
(148, '14ZZZ-SS-LAB_WOD- EM', 'Documentation,Materials consolidation,Logistics', 1, 500.000, 57, 0, '', NULL, NULL, '41', '2019-05-20 15:28:21', '2019-05-20 15:28:21'),
(149, 'C9500-16X-2Q-A', 'Catalyst 9500 16-port 10G, 2-port 40G switch', 2, 19674.199, 59, 1, '29-01-2020', NULL, NULL, '41', '2019-05-20 17:47:27', '2020-01-30 06:24:16'),
(150, 'C9500-NM-2Q', 'Cisco Catalyst 9500 2 x 40GE Network Module', 2, 5010.200, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:47:56', '2019-05-27 19:24:52'),
(151, 'PWR-C4-950WAC-R', '950W AC Config 4 Power Supply front to back cooling', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:49:08', '2019-05-21 17:40:42'),
(152, 'PWR-C4-950WAC-R/2', '950W AC Config 4 Power Supply front to back cooling', 2, 2566.200, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:50:45', '2019-05-27 19:25:04'),
(153, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:51:34', '2019-05-21 17:41:44'),
(162, 'S9500UK9-169', 'UNIVERSAL', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:58:39', '2019-05-21 17:48:50'),
(163, 'C9300-48P-A', 'Catalyst 9300 48-port PoE+, Network Advantage', 2, 11596.780, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:59:18', '2019-05-22 16:34:15'),
(164, 'C9300-NW-A-48', 'C9300 Network Advantage, 48-port license', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 17:59:45', '2019-05-20 17:59:45'),
(165, 'PWR-C1-715WAC', '715W AC Config 1 Power Supply', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:00:09', '2019-05-20 18:00:09'),
(166, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:00:32', '2019-05-20 18:00:32'),
(167, 'PWR-C1-1100WAC/2', '1100W AC Config 1 Secondary Power Supply', 2, 2321.800, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:00:56', '2019-05-22 16:35:05'),
(169, 'CAB-SPWR-30CM', 'Catalyst Stack Power Cable 30 CM', 2, 116.090, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:01:43', '2019-05-22 17:46:42'),
(170, 'C1A1TCAT93002', 'DNA Premier Term, C9300 48-port', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:02:05', '2019-05-20 18:02:05'),
(171, 'C1A1TCAT93002-3Y', 'DNA Premier Term C9300 48P 3Y - DNA, 25 ISE PLS, 25 SWATCH', 2, 5645.640, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:02:51', '2019-05-22 16:35:51'),
(172, 'C1-C9300-48-DNAA-T', 'Cisco ONE C9300 DNA Advantage 48-Port Term licenses', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:03:13', '2019-05-20 18:03:13'),
(173, 'C1-C9300-TRK-3Y', 'Cisco ONE Subscription SKU 3Y', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:03:34', '2019-05-20 18:03:34'),
(174, 'C1-ISE-BASE-T', 'Cisco ONE ISE BASE License Term', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:04:04', '2019-05-20 18:04:04'),
(175, 'C1-ISE-BASE-TRK-3Y', 'Cisco ONE Subscription ISE BASE 3Y', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:04:51', '2019-05-20 18:04:51'),
(176, 'C1-ISE-PLS-T', 'Cisco ONE ISE PLUS License Term', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:05:08', '2019-05-20 18:05:08'),
(177, 'C1-ISE-PLS-TRK-3Y', 'Cisco ONE Subscription SKU ISE Plus 3Y', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:05:27', '2019-05-20 18:05:27'),
(178, 'C1-SWATCH-T', 'Cisco ONE StealthWatch License Term - 1 Flow License', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:05:47', '2019-05-20 18:05:47'),
(179, 'C1-SWATCH-TRK-3Y', 'Cisco ONE Subscription SWATCH SKU 3Y', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:06:14', '2019-05-20 18:06:14'),
(180, 'C1AA1TCAT93001', 'DNA Premier Add-On Term, C9300', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:06:34', '2019-05-20 18:06:34'),
(181, 'C1AA1TCAT93001-3Y', 'DNA Premier Add-On Term C9300 3Y - 25 ISE PLS, 25 SWATCH', 2, 1038.700, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:07:02', '2019-05-22 16:37:13'),
(182, 'C1-ISE-BASE-T', 'Cisco ONE ISE BASE License Term', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:07:22', '2019-05-20 18:07:22'),
(183, 'C1-ISE-BASE-TRK-3Y', 'Cisco ONE Subscription ISE BASE 3Y', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:07:38', '2019-05-20 18:07:38'),
(184, 'C1-ISE-PLS-T', 'Cisco ONE ISE PLUS License Term', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:07:55', '2019-05-20 18:07:55'),
(185, 'C1-ISE-PLS-TRK-3Y', 'Cisco ONE Subscription SKU ISE Plus 3Y', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:08:18', '2019-05-20 18:08:18'),
(186, 'C1-SWATCH-T', 'Cisco ONE StealthWatch License Term - 1 Flow License', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:10:58', '2019-05-20 18:10:58'),
(187, 'C1-SWATCH-TRK-3Y', 'Cisco ONE Subscription SWATCH SKU 3Y', 50, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:12:51', '2019-05-20 18:12:51'),
(188, 'C9300-NM-8X', 'Catalyst 9300 8 x 10GE Network Module', 2, 3116.100, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:13:10', '2019-05-22 16:37:31'),
(189, 'S9300UK9-166', 'CAT9300 Universal image', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:13:27', '2019-05-20 18:13:27'),
(191, 'C9300-24P-A', 'Catalyst 9300 24-port PoE+, Network Advantage', 8, 6733.220, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:17:00', '2019-05-22 16:38:07'),
(192, 'C9300-NW-A-24', 'C9300 Network Advantage, 24-port license', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:17:18', '2019-05-20 18:17:18'),
(193, 'PWR-C1-715WAC', '715W AC Config 1 Power Supply', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:17:41', '2019-05-20 18:17:41'),
(194, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 16, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:18:15', '2019-05-20 18:18:15'),
(195, 'PWR-C1-715WAC/2', '715W AC Config 1 Secondary Power Supply', 8, 1527.500, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:18:45', '2019-05-22 16:38:43'),
(197, 'CAB-SPWR-30CM', 'Catalyst Stack Power Cable 30 CM', 8, 116.090, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:19:35', '2019-05-23 18:49:05'),
(198, 'C1A1TCAT93001', 'DNA Premier Term, C9300 24-Port', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:20:11', '2019-05-20 18:20:11'),
(199, 'C1A1TCAT93001-3Y', 'DNA Premier Term C9300 24P 3Y - DNA, 25 ISE PLS, 25 SWATCH', 8, 3494.920, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:20:33', '2019-05-22 16:39:12'),
(200, 'C1-C9300-24-DNAA-T', 'Cisco ONE C9300 DNA Advantage 24-Port Term licenses', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:20:55', '2019-05-20 18:20:55'),
(201, 'C1-C9300-TRK-3Y', 'Cisco ONE Subscription SKU 3Y', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:21:15', '2019-05-20 18:21:15'),
(202, 'C1-ISE-BASE-T', 'Cisco ONE ISE BASE License Term', 200, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:21:38', '2019-05-20 18:21:38'),
(203, 'C1-ISE-BASE-TRK-3Y', 'Cisco ONE Subscription ISE BASE 3Y', 200, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:22:05', '2019-05-20 18:22:05'),
(204, 'C1-ISE-PLS-T', 'Cisco ONE ISE PLUS License Term', 200, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:22:25', '2019-05-20 18:22:25'),
(205, 'C1-ISE-PLS-TRK-3Y', 'Cisco ONE Subscription SKU ISE Plus 3Y', 200, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:22:44', '2019-05-20 18:22:44'),
(206, 'C1-SWATCH-T', 'Cisco ONE StealthWatch License Term - 1 Flow License', 200, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:23:00', '2019-05-20 18:23:00'),
(207, 'C1-SWATCH-TRK-3Y', 'Cisco ONE Subscription SWATCH SKU 3Y', 200, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:23:17', '2019-05-20 18:23:17'),
(208, 'C9300-NM-8X', 'Catalyst 9300 8 x 10GE Network Module', 8, 3116.100, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:32:50', '2019-05-22 16:39:49'),
(209, 'S9300UK9-166', 'CAT9300 Universal image', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:33:11', '2019-05-20 18:33:11'),
(212, 'CP-8865-A-K9', 'Cisco IP phone 8865 Arabic layout.', 1, 971.490, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:39:20', '2019-05-22 16:40:36'),
(213, 'CP-8841-K9', 'Cisco IP Phone 8841', 60, 629.330, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:41:30', '2019-05-22 16:40:49'),
(214, 'AIR-AP3802I-E-K9', '802.11ac W2 AP w/CA; 4x43; Mod; Int Ant; mGig E Domain', 10, 2193.490, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:44:00', '2019-05-22 16:40:59'),
(215, 'AIR-AP-T-RAIL-R', 'Ceiling Grid Clip for Aironet APs - Recessed Mount (Default)', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:44:29', '2019-05-20 18:44:29'),
(216, 'AIR-AP-BRACKET-1', '802.11 AP Low Profile Mounting Bracket (Default)', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:45:03', '2019-05-20 18:45:03'),
(217, 'SW3802-CAPWAP-K9', 'Cisco Aironet 3800 Series CAPWAP Software Image.', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:47:50', '2019-05-20 18:47:50'),
(218, 'WLC-AP-T', 'Aironet AP License Term Licenses', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:48:19', '2019-05-20 18:48:19'),
(219, 'WLC-AP-T-3Y', 'Aironet AP License 3 Year Term License', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:48:46', '2019-05-20 18:48:46'),
(220, 'PI-LFAS-AP-T', 'Prime AP Term Licenses', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:49:10', '2019-05-20 18:49:10'),
(221, 'PI-LFAS-AP-T-3Y', 'PI Dev Lic for Lifecycle & Assurance Term 3Y', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:49:57', '2019-05-20 18:49:57'),
(222, 'AIR-DNA-A-T', 'Aironet AP License Term Licenses', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:50:18', '2019-05-20 18:50:18'),
(223, 'AIR-DNA-A-T-3Y', 'Aironet CISCO DNA Advantage 3 Year Term License', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:50:32', '2019-05-20 18:50:32'),
(224, 'AIR-DNA-NWSTACK-A', 'AIR CISCO DNA Perpetual Network Stack', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:50:51', '2019-05-20 18:50:51'),
(225, 'AIR-DNA-P', 'CISCO DNA Premier Term Wireless', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:51:10', '2019-05-20 18:51:10'),
(226, 'AIR-DNA-P-3Y', 'CISCO DNA Premier Term Wireless 3Y', 10, 1099.800, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:51:28', '2019-05-22 16:41:50'),
(227, 'D-CISCODNAS-ACT-T', 'Cisco DNA Spaces Act Term License for Cisco DNA', 10, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:51:43', '2019-05-20 18:51:43'),
(228, 'D-CISCODNAS-ACT-3Y', 'Cisco DNA Spaces ACT for Cisco DNA - 3Year', 10, 549.900, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:51:56', '2019-05-22 16:42:08'),
(229, 'ISE-BASE-T', 'ISE BASE Term License', 150, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:52:25', '2019-05-20 18:52:25'),
(230, 'ISE-BASE-T', 'ISE BASE Term License', 150, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:54:42', '2019-05-20 18:54:42'),
(231, 'ISE-BASE-TRK-3Y', 'ISE BASE Tracker Term 3Y', 150, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:56:14', '2019-05-20 18:56:14'),
(232, 'ISE-PLS-T', 'ISE PLS Term License', 150, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:56:52', '2019-05-20 18:56:52'),
(233, 'ISE-PLS-TRK-3Y', 'ISE PLS Tracker Term 3Y', 150, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:57:38', '2019-05-20 18:57:38'),
(234, 'CP-8821-K9-BUN', 'Cisco Unified Wireless IP Phone 8821, World Mode Bundle', 4, 1081.470, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:58:18', '2019-05-22 16:42:37'),
(235, 'CP-PWR-8821-UK', 'Cisco 8821 Power Supply for United Kingdom', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 18:59:47', '2019-05-20 18:59:47'),
(236, 'CP-BATT-8821', 'Cisco 8821 Battery, Extended', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:00:10', '2019-05-20 19:00:10'),
(237, 'UCS-C3260-SA-D', 'UCSC C3260 for Video Surveillance Solutions', 2, 30548.779, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:00:43', '2019-05-22 16:43:02'),
(238, 'CAB-9K10A-UK', 'Power Cord, 250VAC 10A BS1363 Plug (13 A fuse), UK', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:01:03', '2019-05-20 19:01:03'),
(239, 'UCS-C3X60-G2SD48', 'UCSC C3X60 480GB Boot SSD (Gen 2)', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:01:21', '2019-05-20 19:01:21'),
(240, 'UCSC-C3X60-RAIL', 'UCS C3X60 Rack Rails Kit', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:01:41', '2019-05-20 19:01:41'),
(241, 'UCSC-PSU1-1050W', 'Cisco UCS 1050W AC Power Supply for Rack Server', 8, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:02:15', '2019-05-20 19:02:15'),
(242, 'UCSC-C3160-BEZEL', 'Cisco UCS C3160 System Bezel', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:02:31', '2019-05-20 19:02:31'),
(243, 'UCSC-C3260-SIOC', 'Cisco UCS C3260 System IO Controller with VIC 1300 incl.', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:03:01', '2019-05-20 19:03:01'),
(244, 'N20-BBLKD-7MM', 'UCS 7MM SSD Blank Filler', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:03:29', '2019-05-20 19:03:29'),
(245, 'UCSC-C3X60-SBLKP', 'UCS C3x60 SIOC blanking plate', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:03:47', '2019-05-20 19:03:47'),
(246, 'UCSC-C3K-M4IO', 'Cisco UCS S3260 I/O Expander for M4/M5 Server Node', 2, 3053.780, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:04:10', '2019-05-22 16:43:46'),
(247, 'UCSC-PCIE-IRJ45', 'Intel i350 Quad Port 1Gb Adapter', 2, 1831.780, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:04:35', '2019-05-22 16:43:54'),
(248, 'UCS-C3K-14HD10E', 'UCS C3X60 1 row of 10TB 512e NL-SAS drives (14\r\nTotal) 140TB', 2, 52544.781, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:05:00', '2019-05-27 19:15:35'),
(249, 'UCS-C3K-10TEM', 'Cisco UCS C3000 10TB (512e) Top Load', 112, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:05:20', '2019-05-20 19:05:20'),
(250, 'UCS-S3260-M5SVR3', 'C3000 M5 ServerNode 2x5118 CPU, Memory, RAID Controller', 2, 58409.160, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:05:42', '2019-05-22 16:46:31'),
(251, 'UCS-CPU-5118', '2.3 GHz 5118/105W 12C/16.50MB Cache/DDR4 2400MHz', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:06:04', '2019-05-20 19:06:04'),
(252, 'UCS-MR-X32G2RS-H', '32GB DDR4-2666-MHz RDIMM/PC4-21300/dual rank/x4/1.2v', 24, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:06:27', '2019-05-20 19:06:27'),
(253, 'UCS-S3260-DRAID', 'UCS S3260 Dual Raid based on LSI 3316', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:06:55', '2019-05-20 19:06:55'),
(254, 'UCS-S3260-M5HS', 'UCS S3260 M5 Server Node HeatSink', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:07:18', '2019-05-20 19:07:18'),
(257, 'UCS-VMW-TERMS', 'Acceptance of Terms, Standalone VMW License for UCS Servers', 4, 0.000, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:10:34', '2019-05-20 19:10:34'),
(258, 'L-CPS-VSM7-1CAM', 'EDelivery License for 1 camera connection with VSM7', 45, 397.150, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:11:23', '2019-05-23 18:52:58'),
(259, 'L-CPS-SASD-7', 'EDelivery License for 1 VSM Safety Security Desktop', 4, 1527.500, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:11:51', '2019-05-22 16:48:24'),
(260, 'ASF-ESG-G-PSS-VSS', 'Cisco PDI Services for Video Surveillance Manager Small', 1, 130494.562, 59, 0, '', NULL, NULL, '41', '2019-05-20 19:12:48', '2019-05-20 19:12:48'),
(283, '210-AODD', 'Dell EMC MX9116N 25GbE Fabric Switching Engine, 12x QDD28, 2x Q28, 2 x Q28/32GFC', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:49:46', '2019-05-22 13:49:46'),
(284, '990-10090', 'EX-Works', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:50:32', '2019-05-22 13:50:32'),
(285, '389-CGOO', 'Switch Factory Installed in MX7000 slot A1', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:50:59', '2019-05-22 13:50:59'),
(286, '709-13025', 'Base Warranty', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:51:36', '2019-05-22 13:51:36'),
(287, '709-16796', '1Yr Parts Only Warranty (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:52:02', '2019-05-22 13:52:02'),
(288, '991-10021', 'Consolidation Fee ESG', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:52:25', '2019-05-22 13:52:25'),
(289, '683-11870', 'No Installation Service Selected (Contact Sales Rep for more details)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:52:47', '2019-05-22 13:52:47'),
(290, '634-BPKE', 'OS10 Enterprise MX9116N, POS', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:53:09', '2019-05-22 13:53:09'),
(291, '407-BBBY', 'Dell Networking, Transceiver, 40GbE QSFP+ SR4 Optics, 850nmWavelength, 100-150m Reach onOM3/OM4', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:53:32', '2019-05-22 13:53:32'),
(292, '470-ABOG', 'Dell Networking MPO to 4xLC Fiber Breakout Cable, Multi Mode Fiber OM4,3 Meter', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:53:59', '2019-05-22 13:53:59'),
(293, '865-81326', '3Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:54:22', '2019-05-22 13:54:22'),
(294, '865-81328', 'INFO 1Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:54:45', '2019-05-22 13:54:45'),
(295, '470-ACTP', 'Dell Networking, 200GbE QSFP28-DD Passive Direct Attach Cable, No FEC, 0.5 Meter', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:55:07', '2019-05-22 13:55:07'),
(296, '210-AODD', 'Dell EMC MX9116N 25GbE Fabric Switching Engine, 12x QDD28, 2x Q28, 2 x Q28/32GFC', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:55:54', '2019-05-22 13:55:54'),
(297, '990-10090', 'EX-Works', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:56:20', '2019-05-22 13:56:58'),
(298, '709-13025', 'Base Warranty', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 13:57:37', '2019-05-22 13:57:37'),
(299, '709-16796', '1Yr Parts Only Warranty (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:01:22', '2019-05-22 14:01:22'),
(300, '991-10021', 'Consolidation Fee ESG', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:01:55', '2019-05-22 14:01:55'),
(301, '683-11870', 'No Installation Service Selected (Contact Sales Rep for more details)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:02:50', '2019-05-22 14:02:50'),
(302, '634-BPKE', 'OS10 Enterprise MX9116N, POS', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:03:41', '2019-05-22 14:03:41'),
(303, '407-BBBY', 'Dell Networking, Transceiver, 40GbE QSFP+ SR4 Optics, 850nmWavelength, 100-150m Reach onOM3/OM4', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:04:23', '2019-05-22 14:04:23'),
(304, '470-ABOG', 'Dell Networking MPO to 4xLC Fiber Breakout Cable, Multi Mode Fiber OM4,3 Meter', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:04:47', '2019-05-22 14:04:47'),
(305, '865-81326', '3Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:05:22', '2019-05-22 14:05:22'),
(306, '865-81328', 'INFO 1Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:07:09', '2019-05-22 14:07:09'),
(307, '389-CGOP', 'Switch Factory Installed in MX7000 slot A2', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:07:33', '2019-05-22 14:07:33'),
(308, '470-ACTP', 'Dell Networking, 200GbE QSFP28-DD Passive Direct Attach Cable, No FEC, 0.5 Meter', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:07:55', '2019-05-22 14:07:55'),
(309, '210-ANYY', 'PowerEdge MX7000 Enclosure', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:08:48', '2019-05-22 14:09:15'),
(310, '990-10090', 'EX-Works', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:09:51', '2019-05-22 14:09:51'),
(311, '321-BDJT', 'PowerEdge MX7000 Chassis Configuration', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:10:13', '2019-05-22 14:10:13'),
(312, '340-CHGN', 'PowerEdge MX7000 Shipping Material', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:10:34', '2019-05-22 14:10:34'),
(313, '340-CHGP', 'MX7000 EMEA2 Ship Docs (English/Slovenian/Slovakian/Polish/Czech/Hungarian/Greek/Arabic)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:10:56', '2019-05-22 14:10:56'),
(314, '770-BCPC', 'ReadyRail II for MX7000', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:11:29', '2019-05-22 14:11:29'),
(315, '403-BBTY', 'Redundant Management Module for PowerEdge MX7000 Chassis', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:11:49', '2019-05-22 14:11:49'),
(316, '543-BBDP', 'No I/O Module, Filler Blank', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:12:12', '2019-05-22 14:12:12'),
(317, '340-CJQH', 'No I/O Module, Filler Blank', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:12:33', '2019-05-22 14:12:33'),
(318, '450-AHTB', 'C20 to C21, PDU Style, 250 V,16 AMP, 2.5 Meters, Power Cord', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:12:54', '2019-05-22 14:12:54'),
(319, '991-10021', 'Consolidation Fee ESG', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:13:20', '2019-05-22 14:13:20'),
(320, '990-10071', 'Delivery Plus Flag', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:13:47', '2019-05-22 14:13:47'),
(321, '631-AACK', 'No Systems Documentation, No OpenManage DVD Kit', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:14:09', '2019-05-22 14:14:09'),
(322, '389-CGLD', 'Unique Random Password', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:14:29', '2019-05-22 14:14:29'),
(323, '350-BBPG', 'LCD, no Quick Sync', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:14:48', '2019-05-22 14:14:48'),
(324, '800-11671', 'Enterprise Order - EMEA.', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:15:08', '2019-05-22 14:15:08'),
(325, '709-13131', 'Base Warranty', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:15:26', '2019-05-22 14:15:26'),
(326, '709-16492', '1Yr Parts Only Warranty (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:15:44', '2019-05-22 14:15:44'),
(327, '450-AGXF', 'PowerEdge MX7000 Redundant Power Supply, 6 x 3000W, (3+3)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:16:06', '2019-05-22 14:16:06'),
(328, '340-CJQG', 'Ethernet switch or Fabric Expander', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:18:22', '2019-05-22 14:18:22'),
(329, '544-BBCJ', 'PowerEdge MX5000s Redundant SAS I/O Switch', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:18:43', '2019-05-22 14:18:43'),
(330, '865-76031', 'INFO 1Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:19:05', '2019-05-22 14:19:05'),
(331, '865-76032', '3Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:19:34', '2019-05-22 14:19:34'),
(332, '683-11870', 'No Installation Service Selected (Contact Sales Rep for more details)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:19:52', '2019-05-22 14:19:52'),
(333, '210-AOFH', 'PowerEdge MX740C Server', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:20:29', '2019-05-22 14:20:29'),
(334, '990-10090', 'EX-Works', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:20:57', '2019-05-22 14:20:57'),
(335, '389-DOJP', 'PowerEdge MX740C Regulatory Label', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:21:20', '2019-05-22 14:21:20'),
(336, '461-AADZ', 'No Trusted Platform Module', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:21:53', '2019-05-22 14:21:53'),
(337, '321-BDLM', '2.5\" Chassis with up to 6 SAS/SATA/NVMe Hard Drives', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:22:15', '2019-05-22 14:22:15'),
(338, '340-CBCN', 'PowerEdge MX740C Shipping Material', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:22:38', '2019-05-22 14:22:38'),
(339, '340-CHFQ', 'MX740C EMEA 2 Ship Docs (English/French/German/Spanish/Russian/Hebrew)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:22:57', '2019-05-22 14:22:57'),
(340, '370-AAIP', 'Performance Optimized', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:23:19', '2019-05-22 14:23:19'),
(341, '605-BBFN', 'No Media Required', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:24:07', '2019-05-22 14:24:07'),
(342, '543-BBDJ', 'QLogic FastLinQ 41232 Dual Port 10/25GbE Mezzanine Card (NIC only, no FCoE)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:24:27', '2019-05-22 14:24:27'),
(343, '385-BBKT', 'iDRAC9,Enterprise', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:24:48', '2019-05-22 14:24:48'),
(344, '528-BBWT', 'OME Server Configuration Management', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:25:10', '2019-05-22 14:25:10'),
(345, '384-BBBL', 'Performance BIOS Settings', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:25:31', '2019-05-22 14:25:31'),
(346, '384-BBBL', 'Performance BIOS Settings', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:25:54', '2019-05-22 14:25:54'),
(347, '991-10021', 'Consolidation Fee ESG', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:26:15', '2019-05-22 14:26:15'),
(348, '888-10018', 'Asset Service - System Shipbox Label (Model, Svc Tag, Order Information, Basic Config Details)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:26:39', '2019-05-22 14:26:39'),
(349, '888-10066', 'Not Selected in this Configuration', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:27:08', '2019-05-22 14:27:08'),
(350, '631-AACK', 'No Systems Documentation, No OpenManage DVD Kit', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:27:26', '2019-05-22 14:27:26'),
(351, '379-BCQV', 'iDRAC Group Manager, Enabled', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:27:44', '2019-05-22 14:27:44'),
(352, '800-11671', 'Enterprise Order - EMEA', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:28:03', '2019-05-22 14:28:03'),
(353, '709-13131', 'Base Warranty', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:28:25', '2019-05-22 14:28:25'),
(354, '709-16464', '1Yr Parts Only Warranty (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:28:48', '2019-05-22 14:28:48'),
(355, '370-ADNT', '2666MT/s LRDIMMs', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:29:09', '2019-05-22 14:29:09'),
(356, '412-AANK', '2 CPU Heatsink', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:29:28', '2019-05-22 14:29:28'),
(357, '865-75276', 'INFO 1Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:29:47', '2019-05-22 14:29:47'),
(358, '865-75277', '3Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:30:05', '2019-05-22 14:30:05'),
(359, '370-ADNH', '64GB LRDIMM, 2666MT/s, Quad Rank', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:30:23', '2019-05-22 14:30:23'),
(360, '338-BLME', 'Intel Xeon Gold 6132 2.6G, 14C/28T, 10.4GT/s , 19M Cache, Turbo, HT (140W) DDR4-2666', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:30:47', '2019-05-22 14:30:47'),
(361, '374-BBNY', 'Intel Xeon Gold 6132 2.6G, 14C/28T, 10.4GT/s , 19M Cache, Turbo, HT (140W) DDR4-2666', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:31:04', '2019-05-22 14:31:04'),
(362, '683-11870', 'No Installation Service Selected (Contact Sales Rep for more details)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:31:23', '2019-05-22 14:31:23'),
(363, '780-BCDI', 'No RAID', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:31:40', '2019-05-22 14:31:40'),
(364, '800-BBDM', 'UEFI BIOS Boot Mode with GPT Partition', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:32:02', '2019-05-22 14:32:02'),
(365, '405-AART', 'HBA330 SAS Controller', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:32:21', '2019-05-22 14:32:21'),
(366, '403-BBTW', 'BOSS controller card + with 2 M.2 Sticks 240G (RAID 1), Blade', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:32:38', '2019-05-22 14:32:38'),
(367, '634-BRIO', 'VMware ESXi 6.7 U1 Embedded Image (License Not Included)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:32:57', '2019-05-22 14:32:57'),
(368, '405-AASE', 'HBA330 SAS Controller, MiniMezz for Fabric C', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:33:14', '2019-05-22 14:33:14'),
(369, '400-BBKY', '960GB SSD SATA Mix Use 6Gbps 512 2.5in Hot-plug AG Drive', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:33:32', '2019-05-22 14:33:32'),
(370, '210-AOSE', 'PowerEdge MX5016S Storage Node', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:33:55', '2019-05-22 14:34:17'),
(371, '990-10090', 'EX-Works', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:34:51', '2019-05-22 14:34:51'),
(372, '389-DOJY', 'PowerEdge MX5016S Regulatory Label', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:35:26', '2019-05-22 14:35:26'),
(373, '321-BDML', '2.5\" Chassis with up to 16 SAS Hard Drives', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:36:02', '2019-05-22 14:36:02'),
(374, '340-CHGT', 'MX5016S EMEA 2 (English/Slovenian/Slovakian/Polish/Czech/Hungarian/Greek/Arabic)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:36:20', '2019-05-22 14:36:20'),
(375, '780-BCGJ', 'C60 Drive Configuration (16 HDD/SSD)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:36:39', '2019-05-22 14:36:39'),
(376, '401-ABMR', 'Hard Drive Blank', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:36:59', '2019-05-22 14:36:59'),
(377, '991-10021', 'Consolidation Fee ESG', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:37:30', '2019-05-22 14:37:30'),
(378, '683-11870', 'No Installation Service Selected (Contact Sales Rep for more details)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:37:48', '2019-05-22 14:37:48'),
(379, '631-AACK', 'No Systems Documentation, No OpenManage DVD Kit', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:38:06', '2019-05-22 14:38:06'),
(380, '800-11671', 'Enterprise Order - EMEA.', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:38:35', '2019-05-22 14:38:35'),
(381, '709-13131', 'Base Warranty', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:38:55', '2019-05-22 14:38:55'),
(382, '709-16472', '1Yr Parts Only Warranty (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:39:15', '2019-05-22 14:39:15'),
(383, '400-AXFD', '1.8TB 10K RPM SAS 12Gbps 512e 2.5in Hot-plug Hard Drive', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:39:34', '2019-05-22 14:39:34'),
(384, '865-75455', 'INFO 1Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:39:53', '2019-05-22 14:39:53'),
(385, '865-75456', '3Yr ProSupport and 4hr Mission Critical (Emerging Only)', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:40:14', '2019-05-22 14:40:14'),
(386, '750-AADI', 'System ordered as part of Multipack order', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:40:31', '2019-05-22 14:40:31'),
(387, 'VMware vSphere Standard', '210-AHRT', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:41:07', '2019-05-22 14:41:07'),
(388, '634-BFMU', 'VMware vSphere Standard, 1CPU, 3YR License/Maintenance', 8, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:41:29', '2019-05-22 14:41:51'),
(389, '821-15721', 'ProSupport for Software, VMware, vSphere Standard, 1 CPU, 3 Year', 8, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:42:29', '2019-05-22 14:42:29'),
(390, '800-11671', 'Enterprise Order - EMEA.', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:42:48', '2019-05-22 14:42:48'),
(391, '821-15718', 'ProSupport for Software, VMware, 3 Year', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:43:07', '2019-05-22 14:43:07'),
(392, '210-AHRC', 'VMware vSAN Standard', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:43:30', '2019-05-22 14:43:30'),
(393, '800-11671', 'Enterprise Order - EMEA', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:43:48', '2019-05-22 14:43:48'),
(394, '821-15718', 'ProSupport for Software, VMware, 3 Year', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:44:30', '2019-05-22 14:44:30'),
(395, '634-BFNZ', 'VMware vSAN Standard, 1CPU, 3YR License/Maintenance', 8, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:44:50', '2019-05-22 14:45:30'),
(396, '821-15751', 'ProSupport for Software, VMware, Virtual San Standard, 1 CPU, 3 Year', 8, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:45:12', '2019-05-22 14:45:12'),
(397, 'VMware vCenter Standard', '210-AHRF', 0, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:46:01', '2019-05-22 14:46:01'),
(398, '800-11671', 'Enterprise Order - EMEA.', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:46:26', '2019-05-22 14:46:26'),
(399, '821-15718', 'ProSupport for Software, VMware, 3 Year', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:46:44', '2019-05-22 14:46:44'),
(400, '634-BFNE', 'VMware vCenter Standard, 3YR License/Maintenance', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:47:01', '2019-05-22 14:47:01'),
(401, '821-15730', 'ProSupport for Software, VMware, vCenter Standard, 3 Years', 1, 0.000, 60, 0, '', NULL, NULL, '21', '2019-05-22 14:47:17', '2019-05-22 14:47:17'),
(402, '***', 'Dell EMC MX9116N 25GbE Fabric Switching Engine, 12x QDD28, 2x Q28, 2 x Q28/32GFC', 1, 35629.129, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:05:08', '2019-05-22 17:11:48'),
(403, '***', 'Dell EMC MX9116N 25GbE Fabric Switching Engine, 12x QDD28, 2x Q28, 2 x Q28/32GFC', 1, 35629.129, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:05:39', '2019-05-22 17:12:21'),
(404, '***', 'PowerEdge MX7000 Enclosure', 1, 28023.840, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:06:07', '2019-05-22 17:12:40'),
(405, '***', 'PowerEdge MX740C Server', 4, 103484.367, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:08:54', '2019-05-22 17:08:54');
INSERT INTO `purchase_items` (`id`, `partnum`, `description`, `quantity`, `rate`, `purchase_id`, `status`, `receive_date`, `deliver_date`, `serial`, `project_id`, `created_at`, `updated_at`) VALUES
(406, '***', 'PowerEdge MX5016S Storage Node', 3, 18533.721, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:09:25', '2019-05-22 17:09:25'),
(407, '***', 'VMware vSphere Standard', 1, 46999.570, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:09:53', '2019-05-22 17:09:53'),
(408, '***', 'VMware vSAN Standard', 1, 102219.227, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:10:20', '2019-05-22 17:10:20'),
(409, '***', 'VMware vCenter Standard', 1, 30758.061, 24, 0, '', NULL, NULL, '21', '2019-05-22 17:10:49', '2019-05-22 17:14:24'),
(410, '***', 'Dell EMC MX9116N 25GbE Fabric Switching Engine, 12x QDD28, 2x Q28, 2 x Q28/32GFC', 1, 35629.129, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:41:59', '2019-05-22 17:41:59'),
(411, '***', 'Dell EMC MX9116N 25GbE Fabric Switching Engine, 12x QDD28, 2x Q28, 2 x Q28/32GFC', 1, 35629.129, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:42:23', '2019-05-22 17:42:23'),
(412, '***', 'PowerEdge MX7000 Enclosure', 1, 28023.840, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:42:47', '2019-05-22 17:42:47'),
(413, '***', 'PowerEdge MX740C Server', 4, 103484.367, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:43:18', '2019-05-22 17:43:18'),
(414, '***', 'PowerEdge MX5016S Storage Node', 3, 18533.721, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:43:43', '2019-05-22 17:43:43'),
(415, '***', 'VMware vSphere Standard', 1, 46999.570, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:44:15', '2019-05-22 17:44:15'),
(416, '***', 'VMware vSAN Standard', 1, 102219.227, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:44:43', '2019-05-22 17:44:43'),
(417, '***', 'VMware vCenter Standard', 1, 30758.061, 61, 0, '', NULL, NULL, '21', '2019-05-22 17:45:15', '2019-05-22 17:45:15'),
(418, 'L-CPS-VSMS7-C-VM', 'EDelivery License for one Media Server on C Series', 8, 2444.000, 59, 0, '', NULL, NULL, '41', '2019-05-23 18:51:56', '2019-05-23 18:51:56'),
(419, 'XND-8080R', 'X series, 5M, WDR 120 dB, 30fps, D/N, M-V/F, MD, Handover, Halway\r\nview, WiseStreamII, LDC support, IR viewable length 30m', 5, 2312.000, 62, 0, '', NULL, NULL, '21', '2019-05-23 19:50:32', '2019-05-23 19:50:32'),
(420, 'QNP-6230', '2M 30fps, H.265 23X, WDR PoE+/AC -10~55°C indoor PTZ', 5, 2618.000, 62, 0, '', NULL, NULL, '21', '2019-05-23 19:51:02', '2019-05-23 19:51:02'),
(421, 'XNO-8080R', 'X series, 5M, WDR 120 dB, 30fps, D/N, M-V/F, MD, Handover, Halway\r\nview, WiseStreamII, LDC support, IR viewable length 50m, NEMA 4X, IK10', 5, 2252.000, 62, 0, '', NULL, NULL, '21', '2019-05-23 19:51:32', '2019-05-23 19:51:32'),
(422, 'XRN-2010', '32ch NVR, CIF~12MP, Max 256Mbps, Support H.265/H.264/MJPEG, Dual\r\nMonitor Video Out, WiseStream, e-SATA/Iscsi, ARB&Failover', 1, 4682.000, 62, 0, '', NULL, NULL, '21', '2019-05-23 19:52:03', '2019-05-23 19:52:03'),
(423, 'Shipping Ch.', 'Shipping Ch.', 1, 463.990, 56, 0, '', NULL, NULL, '21', '2019-05-27 06:45:46', '2019-05-27 06:45:46'),
(424, 'Legal / Doc. Ch.', 'Legal / Doc. Ch.', 1, 430.000, 56, 0, '', NULL, NULL, '21', '2019-05-27 06:46:19', '2019-05-27 06:46:19'),
(425, 'FG-500E-BDL-950-36', 'Hardware plus 3 Year 24x7 FortiCare and FortiGuard UTM Protection', 1, 11106.010, 63, 0, '', NULL, NULL, '21', '2019-05-27 06:55:41', '2019-05-27 06:55:41'),
(426, 'EXTALCT4R9125', '4 FIBERS SM 9/125 OS2  CENTRAL TUBE STEEL ARM. PEHD', 825, 3.000, 64, 0, '', NULL, NULL, '41', '2019-06-11 13:03:07', '2019-06-11 13:03:07'),
(427, 'EXTALCT24R9125', '24 FIBERS SM 9/125 OS2  CENTRAL TUBE STEEL ARM. PEHD', 230, 6.600, 64, 0, '', NULL, NULL, '41', '2019-06-11 13:04:53', '2019-06-11 13:06:54'),
(428, 'Testing and commissioning', 'Testing and commissioning For the Crack unit', 2, 1500.000, 65, 0, '', NULL, NULL, '21', '2019-06-11 16:37:02', '2019-06-11 16:37:02'),
(429, 'Delivery of the Crack unit', 'Delivery of the 2 crack unit inside the data Center with Labor and Forklift', 1, 2900.000, 66, 0, '', NULL, NULL, '21', '2019-06-17 17:18:53', '2019-06-17 17:19:34'),
(430, 'WS-C3850-12S-S', 'CON-SNT-WSC3851S\r\nSN: FOC2228X0YF', 1, 162.490, 67, 0, '', NULL, NULL, '28', '2019-07-09 18:58:08', '2019-07-10 13:10:22'),
(431, 'WS-C3850-12S-S', 'CON-SNT-WSC3851S\r\nSN: FCW2243C1AT', 1, 162.490, 67, 0, '', NULL, NULL, '28', '2019-07-09 18:58:43', '2019-07-10 13:10:47'),
(432, 'WS-C3850-12S-S', 'CON-SNT-WSC3851S\r\nSN: FCW2248GHEG', 1, 162.490, 67, 0, '', NULL, NULL, '28', '2019-07-09 18:59:22', '2019-07-10 13:11:02'),
(433, 'WS-C2960+48PST-L', 'CON-SNT-WSC296TL\r\nSN: FOC2308Y016', 1, 68.500, 67, 0, '', NULL, NULL, '23', '2019-07-09 19:00:23', '2019-07-10 13:12:20'),
(434, 'WS-C2960+48PST-L', 'CON-SNT-WSC296TL\r\nSN: FOC2308Y009', 1, 68.500, 67, 0, '', NULL, NULL, '23', '2019-07-09 19:00:59', '2019-07-10 13:13:02'),
(435, 'WS-C2960+48PST-L', 'CON-SNT-WSC296TL\r\nSN: FOC2308Y00B', 1, 68.500, 67, 0, '', NULL, NULL, '23', '2019-07-09 19:01:31', '2019-07-10 13:13:27'),
(436, 'C9500-DNA-16X-A', 'C9500 DNA Advantage, Term licenses', 2, 0.000, 59, 0, '', NULL, NULL, '41', '2019-07-10 12:54:35', '2019-07-10 12:54:35'),
(437, 'C9500-DNA-L-A-3Y', 'Cisco Catalyst 9500 DNA Advantage 3 Year License', 2, 8676.200, 59, 0, '', NULL, NULL, '41', '2019-07-10 12:55:30', '2019-07-10 12:55:30'),
(438, 'CON-SNT-WSC3851S', 'SNTC-8X5XNBD Cisco Catalyst 3850 12 Port GE SFP IP Ba\r\n(FOC2212X0XZ) one Year', 1, 2432.000, 69, 0, '', NULL, NULL, '23', '2019-07-21 13:11:52', '2019-08-25 18:13:48'),
(439, 'GLC-SX-MMD', '1000BASE-SX SFP transceiver module, MMF, 850nm, DOM', 44, 807.000, 70, 0, '', NULL, NULL, '23', '2019-07-25 16:10:44', '2019-07-25 16:10:44'),
(440, 'WS-C3850-12S-S', 'Cisco Catalyst 3850 12 Port GE SFP IP Base', 1, 14063.000, 88, 0, '', NULL, NULL, '23', '2019-08-06 15:12:56', '2019-08-06 15:12:56'),
(441, 'CON-SNT-WSC3851S', 'SNT 8X5XNBD Cisco Catalyst 3850 12 Port GE SFP IP Base', 1, 2496.000, 88, 0, '', NULL, NULL, '23', '2019-08-06 15:13:31', '2019-08-06 15:13:31'),
(442, 'WS-C2960X-24TD-L', 'Catalyst 2960-X 24 GigE, 2 x 10G SFP+, LAN Base', 2, 4934.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 15:58:35', '2019-08-27 15:58:35'),
(443, 'CON-SNT-WSC24TDL', 'SNTC-8X5XNBD Catalyst 2960-X 24 G', 2, 1080.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 15:59:26', '2019-08-27 15:59:26'),
(444, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 2, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 15:59:47', '2019-08-27 15:59:47'),
(445, 'WS-C2960X-24PD-L', 'Catalyst 2960-X 24 GigE PoE 370W, 2 x 10G SFP+, LAN Base', 3, 6618.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:00:19', '2019-08-27 16:00:19'),
(446, 'CON-SNT-WSC604DL', 'SNTC-8X5XNBD Catalyst 2960-X 24 G', 3, 1306.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:00:47', '2019-08-27 16:00:47'),
(447, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 3, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:01:07', '2019-08-27 16:01:07'),
(448, 'WS-C2960X-48FPS-L', 'Catalyst 2960-X 48 GigE PoE 740W, 4 x 1G SFP, LAN Base', 5, 7232.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:01:35', '2019-08-27 16:01:35'),
(449, 'CON-SNT-WSC294SL', 'SNTC-8X5XNBD Catalyst 2960-X 48 G', 5, 1875.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:02:34', '2019-08-27 16:02:34'),
(450, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 5, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:02:56', '2019-08-27 16:02:56'),
(451, 'ISR4321/K9', 'Cisco ISR 4321 (2GE,2NIM,4G FLASH,4G DRAM,IPB)', 4, 3436.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:03:25', '2019-08-27 16:03:25'),
(452, 'CON-SNT-ISR4321K', 'SNTC-8X5XNBD Cisco ISR 4321 (2GE,2NIM,4G FLASH,4G\r\nDRAM,IPB)', 4, 1112.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:03:54', '2019-08-27 16:03:54'),
(453, 'MEM-4320-4GU8G', '4G to 8G DRAM Upgrade (Fixed 4G + additional 4G) for\r\nISR4320', 4, 938.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:04:22', '2019-08-27 16:04:22'),
(454, 'MEM-FLSH-4U8G', '4G to 8G eUSB Flash Memory Upgrade for Cisco ISR 4300', 4, 1765.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:04:53', '2019-08-27 16:04:53'),
(455, 'PWR-4320-AC', 'AC Power Supply for Cisco ISR 4320', 4, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:05:17', '2019-08-27 16:05:17'),
(456, 'CAB-AC-C5-UK', 'AC Power Cord, Type C5, UK', 4, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:05:34', '2019-08-27 16:05:34'),
(457, 'PNP-CAP-VBOND', 'Network Plug-n-Play License optional zero-touch device', 4, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:05:56', '2019-08-27 16:05:56'),
(458, 'NIM-BLANK', 'Blank faceplate for NIM slot on Cisco ISR 4400', 8, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:06:25', '2019-08-27 16:06:25'),
(459, 'NETWORK-PNP-LIC-O', 'Network Plug-n-Play License optional zero-touch device', 4, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:06:45', '2019-08-27 16:06:45'),
(460, 'SISR4300UCMK9-169', 'Cisco ISR 4300 Series SD-WAN IOS XE Universal', 4, 0.000, 89, 0, '', NULL, NULL, '21', '2019-08-27 16:07:05', '2019-08-27 16:07:05'),
(461, 'F5554SH5', 'CABLE F/FTP 4P CAT6A 555MHz LSZH VIOLET 500M 10G 23AWG', 18, 900.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:28:28', '2019-09-05 12:28:28'),
(462, 'BC861C', '1 port 86 x 86 mm Faceplate', 168, 4.500, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:31:20', '2019-09-05 12:31:20'),
(463, 'BC6AFSTL50', 'Cat 6A RJ45 BC connector Fully shielded 360° 500MHz', 168, 21.600, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:31:53', '2019-09-05 12:31:53'),
(464, 'BCPAN1U', '24 Ports 1U unloaded patch panel BC', 7, 103.500, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:32:38', '2019-09-05 13:07:56'),
(465, 'BC6AFSTL50', 'Cat 6A RJ45 BC connector Fully shielded 360° 500MHz', 168, 21.600, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:33:01', '2019-09-05 12:33:01'),
(466, 'MMCPF1U4CROG', '1U 4 RINGS CABLE MANAGEMENT PANEL', 4, 43.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:33:23', '2019-09-05 12:33:23'),
(467, 'CORD6AS01MSH', 'PATCH CORD CAT6A U/FTP LSZH 1M GREY', 168, 18.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:33:39', '2019-09-05 12:33:39'),
(468, 'CORD6AS03MSH', 'PATCH CORD CAT6A U/FTP LSZH 3M GREY', 168, 30.600, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:33:55', '2019-09-05 12:33:55'),
(469, 'TC1U24SCSLCD', 'Unloaded TC panel for 24 adapters STS, FCS, SCS, LCD', 6, 142.200, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:34:12', '2019-09-05 12:34:12'),
(470, '48K712FO1598', 'STACKABLE SPLICE TRAY 12 HEAT FOR FO PAN GREEN', 6, 27.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:34:31', '2019-09-05 12:34:31'),
(471, '48SMTLCD', 'LC DUPLEX  SINGLEMODE ADAPTER', 8, 9.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:34:45', '2019-09-05 12:34:45'),
(472, '48OBLCD', 'BLANK MODULE FOR SCS/LCD DUPLEX PORTS', 120, 1.500, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:35:03', '2019-09-05 12:35:03'),
(473, 'PIGLC2OS2', 'PIGTAIL SINGLEMODE 9/125 OS2 LC 2M', 16, 13.950, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:35:24', '2019-09-05 12:35:24'),
(474, 'MANCHONEPISSUR60', 'THERMO RETRACTABLE SLEEVE 60 MM', 16, 1.500, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:35:42', '2019-09-05 12:35:42'),
(475, 'JLCLC3DOS2', 'FIBER PATCH CORD DUPLEX 9/125 OS2 LC/LC 3M', 8, 63.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:35:57', '2019-09-05 12:35:57'),
(476, 'EXTALCT8R9125', '8 FIBERS SM 9/125 OS2  CENTRAL TUBE STEEL ARM. PEHD', 510, 4.700, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:36:14', '2019-09-05 12:36:14'),
(477, 'EXTALCT4R9125', '4 FIBERS SM 9/125 OS2  CENTRAL TUBE STEEL ARM. PEHD', 330, 3.000, 90, 0, '', NULL, NULL, '0', '2019-09-05 12:36:30', '2019-09-05 12:36:30'),
(478, 'inBIO160 POE Bundle / controller', 'inBIO160 POE Bundle / controller', 2, 546.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:51:32', '2019-09-16 11:51:32'),
(479, 'FR1200 MF / Finger print reader', 'FR1200 MF / Finger print reader', 2, 380.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:52:06', '2019-09-16 11:52:06'),
(480, 'K2-1/Exit Button', 'K2-1/Exit Button', 2, 120.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:52:43', '2019-09-16 11:52:43'),
(481, 'EL280-2 قفل مغنطيسي', 'EL280-2 قفل مغنطيسي', 2, 180.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:53:46', '2019-09-16 11:53:46'),
(482, '280L حامل', '280L حامل', 2, 50.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:54:12', '2019-09-16 11:54:12'),
(483, '280U حامل باب زجاج', '280U حامل باب زجاج', 2, 70.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:54:55', '2019-09-16 11:54:55'),
(484, '280Z حامل', '280Z حامل', 2, 50.000, 92, 0, '', NULL, NULL, '21', '2019-09-16 11:55:26', '2019-09-16 11:55:26'),
(485, '1', 'LINDNER steel ventilation panel type VENTEC H 38 R 24 D10, (perforated\r\nsteel panel), panel thickness 38.5 mm, 10 mm hole diameter, free air\r\n24% with HPL covering type Walkprint 577, thickness 0.9mm on top of\r\npanel, with air flow regulation', 8, 550.000, 94, 0, '', NULL, NULL, '21', '2019-09-18 18:11:44', '2019-09-18 18:11:44'),
(486, 'GXT4-3000RT230E', 'Liebert GXT4 3000VA (2700W) 230V Rack/Tower UPS E model', 1, 2700.000, 95, 0, '', NULL, NULL, '44', '2019-09-19 17:17:12', '2019-09-24 16:39:40'),
(487, 'GXT4-72VBATTE', 'LIEBERT GXT4 EXTERNAL BATTERY CABINET 72 V (FOR LIEBERT GXT4 3000 E MODEL)', 1, 1250.000, 95, 0, '', NULL, NULL, '44', '2019-09-19 17:17:44', '2019-09-24 16:42:39'),
(488, 'RMKIT18-32', 'LIEBERT GXT3 RACK SLIDE KITS - 18/32\"', 2, 200.000, 95, 0, '', NULL, NULL, '44', '2019-09-19 17:19:10', '2019-09-19 17:19:10'),
(489, 'CON-SNT-C93004PA', 'SOLN SUPP 8X5XNBD Catalyst 9300 48-port PoE+, Network Adva\r\n36 months \r\nS/N:FCW2326D0AC				\r\nS/N:FOC2326U0BZ', 2, 4418.160, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:36:03', '2019-10-28 14:12:00'),
(490, 'CON-SNT-C93002PA', 'SOLN SUPP 8X5XNBD Catalyst 9300 24-port PoE+, Network Adva\r\n36 Months \r\nS/N:FCW2325C1EB					\r\nS/N:FCW2325C1EC					\r\nS/N:FOC2325X14F					\r\nS/N:FCW2325G1ES					\r\nS/N:FCW2325C1ED					\r\nS/N:FOC2325X14D					\r\nS/N:FOC2325W1GF					\r\nS/N:FOC2325W1GH', 8, 2568.090, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:37:26', '2019-10-28 14:11:15'),
(491, 'CON-SNT-C95K2QA9', 'SOLN SUPP 8X5XNBD Catalyst 9500 16-por\r\n60 Months\r\nS/N:FCW2328A2AH			\r\nS/N:FCW2328A26Q', 2, 8150.630, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:39:35', '2019-10-28 14:10:33'),
(492, 'CON-SNT-AIRP3P8I', 'SOLN SUPP 8X5XNBD, 802.11ac W2 AP w/CA  4x43  Mod  Int Ant\r\n36Months\r\nS/N:\r\nFCW2326N2TY					\r\nFCW2326N2TX					\r\nFCW2326N2YF					\r\nFCW2326N2US					\r\nFCW2326P1R2					\r\nFCW2326P1QT					\r\nFCW2326N2U8					\r\nFCW2326N2Y2					\r\nFCW2326P1RW					\r\nFCW2326N2YK', 10, 426.940, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:42:54', '2019-10-28 14:08:54'),
(493, 'CON-SNT-C3260SAD', 'SNTC 8X5XNBD, Colusa Bundle TBD\r\n36Months \r\nS/N:\r\nFOX2321PKLT\r\nFOX2321PGZ8', 2, 10045.970, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:44:35', '2019-10-24 16:24:19'),
(494, 'CON-SNT-CP8865A2', 'SNTC-8X5XNBD Cisco IP phone 8865\r\n36Months\r\nS/N:\r\nFCH2324DYAL', 1, 168.190, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:45:24', '2019-10-23 20:50:42'),
(495, 'CON-SNT-CP8841K9', 'SNTC-8X5XNBD Cisco UC Phone 8841\r\n36Months\r\nS/N:\r\nFCH2315EW91		FCH2315EUUG		FCH2315EUD6		FCH2315ETJ5					\r\nFCH2315EV8V		FCH2315ETQD		FCH2315ETMM		FCH2315ETBL					\r\nFCH2315ETA6		FCH2315DFUB		FCH2315DFU6		FCH2315EVBS					\r\nFCH2315ETF8		FCH2315ETF4		FCH2315ETBY		FCH2315D019					\r\nFCH2314EQAM		FCH2314D9J2		FCH2315EUVW	        FCH2315ETKG					\r\nFCH2315DPWC		FCH2315DNV2		FCH2314ERE7		FCH2314ER6P					\r\nFCH2314D9GX		FCH2315EW85		FCH2315EUNY		FCH2315EU8A					\r\nFCH2315ETQ8		FCH2315ETF3		FCH2314EQXE		FCH2314D9G6					\r\nFCH2315EU8F		FCH2315DKVP		FCH2315D014		FCH2314EQ2K					\r\nFCH2314EPK3		FCH2314D9B1		FCH2311G3J4		FCH2315EUSD					\r\nFCH2315EUDX		FCH2315DQ17		FCH2315DMUL		FCH2315DMBT					\r\nFCH2315D62J		FCH2315D00X		FCH2315EUPU		FCH2315ETD0					\r\nFCH2315ET9Z		FCH2315DPQ2		FCH2315DPKD		FCH2315DMRL					\r\nFCH2315D504		FCH2315EW4Y		FCH2315EV0R		FCH2315EUTQ					\r\nFCH2315EUTG		FCH2315DPWE		FCH2315DMAL		FCH2314DAUD', 60, 109.970, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:46:16', '2019-10-23 20:51:41'),
(496, 'CON-SNT-CP88K9BN', 'SNTC-8X5XNBD Cisco Unified Wirele\r\n36Months\r\nS/N:FCH2325DRSX					\r\nS/N:FCH2326D41B					\r\nS/N:FCH2326D4GB					\r\nS/N:SFCH2325DRCX', 4, 562.780, 96, 0, '', NULL, NULL, '41', '2019-10-16 11:46:44', '2019-10-23 20:56:18'),
(497, 'CON-SAS-LCPSVSM7', 'SW APP SUPP EDel Lic for 1 camera Conn with VSM7\r\n36Month', 45, 157.500, 96, 0, '', NULL, NULL, '41', '2019-10-16 17:17:19', '2019-10-24 16:05:18'),
(498, 'CON-SAS-LCPSSASD', 'SW APP SUPP EDel Lic for 1 Safety and Security Deskt\r\n36Months', 4, 596.250, 96, 0, '', NULL, NULL, '41', '2019-10-16 17:18:50', '2019-10-24 16:07:40'),
(499, 'PER740M8', 'PowerEdge R740 Server: Two Intel Xeon Silver 4116 2.1G, 12C/24T, 9.6GT/s , 16.5M Cache, Turbo, HT (85W) DDR4-2400, Chassis with up to 8 x 3.5\" SAS/SATA Hard Drives, 2x16GB RDIMM, 2666MT/s, Dual Rank, iDRAC9 Express, 300GB 15K RPM SAS 12Gbps 512n 2.5in Hot-plug Hard Drive, 3.5in HYB CARR, PERC H730P RAID Controller, 2GB NV Cache, Mini card, Broadcom 5720 QP 1Gb Network Daughter Card, Dual, Hot-plug, Redundant Power Supply (1+1), 750W, ReadyRails Sliding Rails Without Cable Management Arm, 3Yr NBD.', 3, 15500.000, 97, 0, '', NULL, NULL, '47', '2019-10-21 16:32:18', '2019-10-21 16:58:50'),
(500, '400-ATJM', '1.2TB 10K RPM SAS 12Gbps 512n 2.5in Hot-plug Hard Drive 3.5in HYB CARR CK', 24, 840.000, 97, 0, '', NULL, NULL, '47', '2019-10-21 16:42:10', '2019-10-21 16:59:54'),
(501, '481-BBBC', 'Dell 18.5in LED KMM DKMMLED185-001 - International English Keyboard', 1, 3340.000, 97, 0, '', NULL, NULL, '47', '2019-10-21 16:42:47', '2019-10-21 16:59:23'),
(502, 'SYPM10K16H', 'APC Symmetra PX Power Module, 10/16kW, 400V', 1, 23189.000, 98, 0, '', NULL, NULL, '48', '2019-10-21 18:46:21', '2019-10-21 18:46:21'),
(503, 'SYBT4', 'Battery Module for Symmetra PX, Smart-UPS VT or Galaxy 3500', 1, 6988.000, 98, 0, '', NULL, NULL, '48', '2019-10-21 18:46:59', '2019-10-21 18:46:59'),
(504, 'RBC40', 'APC Replacement Battery 12V-7AH', 4, 658.000, 98, 0, '', NULL, NULL, '48', '2019-10-21 18:47:33', '2019-10-22 14:31:31'),
(505, 'SMT3000RMI2UC', 'APC Smart-UPS 3000VA LCD RM 2U 230V with SmartConnect', 6, 4144.500, 99, 0, '', NULL, NULL, '45', '2019-10-22 19:14:21', '2019-10-22 19:18:36'),
(506, 'T/C FireFighting', 'Testing and commissioning of fire fighting & fire alarm', 1, 2500.000, 101, 0, '', NULL, NULL, '21', '2019-10-27 12:31:23', '2019-10-27 12:31:23'),
(507, 'One-day service investigation', 'One-day service investigation (1 engineer + 1 technician – One\r\nday only)', 2, 6000.000, 102, 0, '', NULL, NULL, '21', '2019-10-28 18:10:19', '2019-10-28 18:10:19'),
(508, '360-IPR-1100-E-GS6-1U-24  - 760152587', 'SYSTIMAX 360™ GigaSPEED® X10D 1100GS6 Evolve Category 6A U/UTP Patch Panel, 24 port', 1, 1330.000, 103, 0, '', NULL, NULL, '0', '2019-10-28 19:18:19', '2019-10-31 00:09:10'),
(509, 'MGS600 OUTLET-WHITE  - 760092429', 'GigaSPEED® X10D MGS600 Series Information Outlet, white', 6, 35.500, 103, 0, '', NULL, NULL, '0', '2019-10-28 19:21:41', '2019-10-31 00:10:42'),
(510, 'WS-C2960X-24PD-L', 'Catalyst 2960-X 24 GigE PoE 370W, 2 x 10G SFP+, LAN Base', 4, 4833.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:53:59', '2019-10-29 13:53:59'),
(511, 'CON-3SNT-WSC604DL', '3YR SNTC 8X5XNBD Catalyst 2960-X 24 G', 4, 1115.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:54:22', '2019-10-29 13:54:22'),
(512, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 4, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:54:44', '2019-10-29 13:54:44'),
(513, 'WS-C2960X-48FPD-L', 'Catalyst 2960-X 48 GigE PoE 740W, 2 x 10G SFP+, LAN Base', 2, 8438.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:55:12', '2019-10-29 13:55:12'),
(514, 'CON-SNT-WSC296XL', 'SNTC-8X5XNBD Catalyst 2960-X 48 GigE PoE 740W, 2 x 10', 2, 1945.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:55:35', '2019-10-29 13:55:35'),
(515, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:55:55', '2019-10-29 13:55:55'),
(516, 'WS-C3850-12XS-S', 'Cisco Catalyst 3850 12 Port 10G Fiber Switch IP Base', 2, 20061.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:56:24', '2019-10-29 14:10:19'),
(517, 'CON-SNT-WSC3851X', 'SNTC-8X5XNBD Cisco Catalyst 3850 12 Port 10G Fiber Sw', 2, 3538.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:56:50', '2019-10-29 13:56:50'),
(518, 'S3850UK9-166', 'UNIVERSAL', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:57:17', '2019-10-29 13:57:17'),
(519, 'C3850-NM-4-10G', 'Cisco Catalyst 3850 4 x 10GE Network Module', 2, 5067.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:57:39', '2019-10-29 13:57:39'),
(520, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:58:02', '2019-10-29 13:58:02'),
(521, 'C3850-STACK-NONE', 'No Stack Cable Selected', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:58:22', '2019-10-29 13:58:22'),
(522, 'CAB-SPWR-30CM', 'Catalyst Stack Power Cable 30 CM', 2, 168.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:58:44', '2019-10-29 13:58:44'),
(523, 'C3850-24XS-L-S', 'C3850-24XS LAN Base to IP Base E- Delivery License', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:59:04', '2019-10-29 13:59:04'),
(524, 'PWR-C1-350WAC', '350W AC Config 1 Power Supply', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:59:23', '2019-10-29 13:59:23'),
(525, 'PWR-C1-BLANK', 'Config 1 Power Supply Blank', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 13:59:42', '2019-10-29 13:59:42'),
(526, 'C3850-DNA-OPTOUT', 'DNA SUBSCRIPTION OPTOUT', 2, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:00:00', '2019-10-29 14:00:00'),
(527, 'SFP-10G-LRM=', '10GBASE-LRM SFP Module', 8, 1179.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:00:20', '2019-10-29 14:00:20'),
(528, 'ISR4331-V/K9', 'Cisco ISR 4331 UC Bundle, PVDM4-32, UC License', 1, 7765.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:00:46', '2019-10-29 14:01:30'),
(529, 'CON-SNT-ISR4331V', 'SNTC-8X5XNBD Cisco ISR 4331 UC Bundle, PVDM4-32, UC L', 1, 2373.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:02:20', '2019-10-29 14:02:20'),
(530, 'SL-4330-IPB-K9', 'IP Base License for Cisco ISR 4330 Series', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:02:41', '2019-10-29 14:02:41'),
(531, 'SL-4330-UC-K9', 'Unified Communication License for Cisco ISR 4330 Series', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:03:05', '2019-10-29 14:03:05'),
(532, 'PWR-4330-AC', 'AC Power Supply for Cisco ISR 4330', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:03:19', '2019-10-29 14:03:19'),
(533, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:03:34', '2019-10-29 14:03:34'),
(534, 'PVDM4-32', '32-channel DSP module', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:03:56', '2019-10-29 14:03:56'),
(535, 'MEM-43-4G', '4G DRAM (1 x 4G) for Cisco ISR 4300', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:04:09', '2019-10-29 14:04:09'),
(536, 'NIM-BLANK', 'Blank faceplate for NIM slot on Cisco ISR 4400', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:04:24', '2019-10-29 14:04:24'),
(537, 'SM-S-BLANK', 'Removable faceplate for SM slot on Cisco 2900,3900,4400 ISR', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:04:40', '2019-10-29 14:04:40'),
(538, 'SISR4300UK9-166', 'Cisco ISR 4300 Series IOS XE Universal', 1, 0.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:05:03', '2019-10-29 14:05:03'),
(539, 'CME-UL', 'Cisco Communication Manager Express (CME) - 1 User License', 58, 296.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:05:39', '2019-10-29 14:05:39'),
(540, 'CON-ECMUS-CMEULCTG', 'SOLN SUPP SWSS Cisco Communication Manager Express\r\n(CME', 58, 104.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:06:03', '2019-10-29 14:06:03'),
(541, 'CP-7821-K9=', 'Cisco UC Phone 7821', 16, 274.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:06:29', '2019-10-29 14:06:29'),
(542, 'CON-SNT-CP7821K9', 'SNTC-8X5XNBD Cisco UC Phone 7821', 16, 39.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:06:49', '2019-10-29 14:06:49'),
(543, 'CP-3905=', 'Cisco Unified SIP Phone 3905, Charcoal, Standard Handset', 12, 165.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:07:18', '2019-10-29 14:07:18'),
(544, 'CON-SNT-CP3905', 'SNTC-8X5XNBD Cisco Unified SIP Phone 3905, Charcoal,', 12, 39.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:07:39', '2019-10-29 14:07:39'),
(545, 'CP-7861-3PC-RC-K9=', 'Cisco IP Phone 7861 with Multiplatform FW for RC Server', 4, 1240.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:08:03', '2019-10-29 14:08:03'),
(546, 'CON-SNT-CPC78613', 'SNTC-8X5XNBD Cisco IP Phone 7861 with Multiplatform F', 4, 93.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:08:27', '2019-10-29 14:08:27'),
(547, 'NIM-4FXO', '4-port Network Interface Module - FXO (Universal)', 1, 1544.000, 104, 0, '', NULL, NULL, '45', '2019-10-29 14:12:30', '2019-10-29 14:12:30'),
(548, 'WS-C3650-24PS-L', 'Cisco Catalyst 3650 24 Port PoE 4x1G Uplink LAN Base', 5, 5207.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:31:52', '2019-10-29 20:31:52'),
(549, 'CON-SNT-WSC365SL', 'SNTC-8X5XNBD Cisco Catalyst 3650 24 Port PoE 4x1G Upl', 5, 1023.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:32:17', '2019-10-29 20:32:17'),
(550, 'S3650UK9-166', 'UNIVERSAL', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:32:40', '2019-10-29 20:32:40'),
(551, 'PWR-C2-640WAC', '640W AC Config 2 Power Supply', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:32:58', '2019-10-29 20:32:58'),
(552, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 5, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:33:17', '2019-10-29 20:33:17'),
(553, 'PWR-C2-BLANK', 'Config 2 Power Supply Blank', 5, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:33:36', '2019-10-29 20:33:36'),
(554, 'STACK-T2-BLANK', 'Type 2 Stacking Blank', 5, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:33:54', '2019-10-29 20:33:54'),
(555, 'C3650-24-L-L', 'C3650-24 LAN Base E- Delivery License', 1, 25293.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:34:30', '2019-10-29 20:34:30'),
(556, 'CON-SNT-WSC3854S', 'SNTC-8X5XNBD Cisco Catalyst 3850 24 Port GE SFP IP Ba', 1, 3646.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:34:57', '2019-10-29 20:34:57'),
(557, 'S3850UK9-166', 'UNIVERSAL', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:35:24', '2019-10-29 20:35:24'),
(558, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:35:55', '2019-10-29 20:35:55'),
(559, 'C3850-STACK-NONE', 'No Stack Cable Selected', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:36:10', '2019-10-29 20:36:10'),
(560, 'C3850-SPWR-NONE', 'No Stack Power Cable Selected', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:36:24', '2019-10-29 20:36:24'),
(561, 'PWR-C1-350WAC', '350W AC Config 1 Power Supply', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:36:47', '2019-10-29 20:36:47'),
(562, 'C3850-NM-BLANK', 'C3850-24XS LAN Base to IP Base E- Delivery License', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:37:11', '2019-10-29 20:37:11'),
(563, 'C3850-24XS-L-S', 'C3850-24XS LAN Base to IP Base E- Delivery License', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:37:22', '2019-10-29 20:37:22'),
(564, 'PWR-C1-BLANK', 'Config 1 Power Supply Blank', 1, 0.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:37:36', '2019-10-29 20:37:36'),
(565, 'GLC-SX-MMD=', '1000BASE-SX SFP transceiver module, MMF, 850nm, DOM', 10, 461.000, 105, 0, '', NULL, NULL, '49', '2019-10-29 20:40:08', '2019-10-29 20:51:35'),
(567, '191454', '\"Cat 6A Data Cable F/FTP 4 Pairs,500MHz, FRNC/LS0H Sheath, Orange Color (500 Meter/Roll)\r\n\"', 8, 903.000, 107, 0, '', NULL, NULL, '49', '2019-10-31 21:27:55', '2019-10-31 21:27:55'),
(568, '440041', '24 Ports Cat 6A Patch Panel 19\" 1U,Shielded, Empty, Black Color', 6, 120.000, 107, 0, '', NULL, NULL, '49', '2019-10-31 21:28:23', '2019-11-03 02:11:21'),
(569, '440005', 'Cat 6A RJ45-Module Shielded, MS-Keystone Plus(IEC) TIA-B', 70, 18.490, 107, 0, '', NULL, NULL, '49', '2019-10-31 21:29:06', '2019-10-31 22:02:34'),
(570, '4000699', '1U Cable Mangment 19\" with Cover', 6, 30.000, 107, 0, '', NULL, NULL, '49', '2019-10-31 21:29:43', '2019-10-31 21:29:43'),
(571, '653508', 'Cat 6A Patch Cord Shielded, FRNC/LS0H Sheath ,Grey Color, 1 Meter - Datwyler', 70, 18.490, 107, 0, '', NULL, NULL, '49', '2019-10-31 21:30:25', '2019-11-03 02:12:41'),
(572, '240562', '\"Cat 6 Data Cable U/UTP 4 Pairs, 250MHz,23AWG, FR/PVC Sheath,Grey Color\r\n(305Meter/Roll)\"', 10, 280.000, 107, 0, '', NULL, NULL, '49', '2019-11-03 13:54:30', '2019-11-03 13:54:30'),
(573, 'PC-AIO-7460-I7-8-1T-W', 'OptiPlex 7460 AIO -Dell Touch Liquid Crystal Display,7460 AIO 23.8, FHD Touch with Camera, Integrated Graphics, Bronze PSU , Processor :Intel Core i7-8700 (6 Cores/12MB/12T/up to 4.6GHz/65W), Memory : 8GB (1x8G) 2666 DDR4 Memory, 1TB 2.5 inch SATA 7200RPM HD, OptiPlex ,No DVD Drive, Windows 10 Pro (64Bit) English , 1Yr. Basic Warranty\r\nDell Wireless Keyboard and Mouse-KM636 - Arabic (QWERTY) .\r\n\r\n                3,800.00\r\n\r\n4\r\n\r\n              15,200.00', 4, 3800.000, 108, 0, '', NULL, NULL, '50', '2019-11-03 19:08:46', '2019-11-03 19:08:46'),
(574, 'ICX7150-C12P-2X1G', 'ICX 7150 Compact Switch, 12x 10/100/1000 PoE+ ports, 2x 1G RJ45\r\nuplink-ports, 2x 1G SFP uplink-ports upgradable to 2x 10G SFP+ with\r\nlicense. 124W PoE budget, basic L3 (static routing and RIP)', 10, 1726.000, 109, 0, '', NULL, NULL, '51', '2019-11-03 20:02:18', '2019-11-03 20:02:18'),
(575, 'ICX7150-24P-4X1G', 'ICX 7150 Switch, 24x 10/100/1000 PoE+ ports, 2x 1G RJ45 uplink-\r\nports, 4x 1G SFP uplink ports upgradable to up to 4x 10G SFP+ with\r\n\r\nlicense, 370W PoE budget, basic L3 (static routing and RIP)', 20, 2763.000, 109, 0, '', NULL, NULL, '51', '2019-11-03 20:03:39', '2019-11-03 20:07:41'),
(576, 'PCUK', 'Power Cord, United Kingdom, 250V 13A. 2.5m', 30, 29.000, 109, 0, '', NULL, NULL, '51', '2019-11-03 20:04:39', '2019-11-03 20:04:39'),
(577, 'ICX7150-SVL-ASDPM-3', 'Associate Partner Support 7X24 BACKLINE SUPPORT ONLY,\r\n\r\nICX7150-24p,48p & C12P', 30, 171.000, 109, 0, '', NULL, NULL, '51', '2019-11-03 20:05:07', '2019-11-03 20:05:07'),
(578, 'GMC-WM-16U-68-2F', '16U 600X800\r\nSINGLE SECTION\r\n2 FAN\r\nGLASS DOOR\r\nBLACK RAL 9005', 5, 488.000, 111, 0, '', NULL, NULL, '49', '2019-11-05 00:53:41', '2019-11-05 01:10:37'),
(579, 'GMC-FR-27U-810-4F', '27U 800 X 1000\r\n4 FAN\r\nSIDE DOOR\r\nCASTER WHEEL', 1, 1240.000, 111, 0, '', NULL, NULL, '49', '2019-11-05 00:54:19', '2019-11-05 01:10:56'),
(580, 'Gas. NOVEC 1230 for Automatic Gas Suppression System. UL Listed', NULL, 342, 103.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 18:59:04', '2019-11-05 18:59:04'),
(581, 'Accs. For Automatic Gas Suppression System, JANUS. P/ N. 22953. UL/FM Approved.', NULL, 1, 15500.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 18:59:48', '2019-11-05 19:15:06'),
(582, 'Nipple. 2 Inch (50 mm) Grooved x MNPT. for Automatic Gas Suppression System. JANUS. Part # 18474. UL/FM Approved', NULL, 1, 145.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:00:02', '2019-11-05 19:00:02'),
(583, 'Coupling. Grooved, 2 Inch (50 mm). for Automatic Gas Suppression System. JANUS. Part # 18555 UL/FM Approved', NULL, 1, 310.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:00:21', '2019-11-05 19:00:21'),
(584, 'Elbow. Grooved. 2 Inch (50 mm). for Automatic Gas Suppression System. JANUS. P/N 18551 UL/FM Approved', NULL, 1, 220.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:00:38', '2019-11-05 19:00:38'),
(585, 'Gauge Pressure Assemply , Novec 1230 Fluid 500 series for Automatic Gas Suppression System, JANUS. Part No. 22943. UL / FM Approved.', NULL, 1, 250.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:01:18', '2019-11-05 19:01:18'),
(586, 'Switch Assembly. Low-Pressure Supervisory. 500 Series (MV/LV). Blue. for Automatic Gas Suppression System. JANUS. Part No. 22946 UL/FM Approved.', NULL, 1, 350.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:01:38', '2019-11-05 19:01:38'),
(587, 'Conduit Adapter. 1/2\" for Clean Agent Supervisory', NULL, 1, 50.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:01:55', '2019-11-05 19:01:55'),
(588, 'Solenoid Electric Actuator. W/Supervisory Limit Switch. Normally Closed. Held Open. for Automatic Gas Suppression System. JANUS. Part No. 20722 UL/FM Approved', NULL, 1, 1600.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:02:22', '2019-11-05 19:02:22'),
(589, 'Actuator. Manual for Automatic Gas Suppression System. JANUS. Part No. 17001 UL/FM Approved', NULL, 1, 220.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:02:38', '2019-11-05 19:02:38'),
(590, 'Switch-Discharge Pressure. for Automatic Gas Suppression System, JANUS. Part No. 18773 UL/FM Approved.', NULL, 1, 950.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:02:58', '2019-11-05 19:02:58'),
(591, 'Straps (Mounting Bracket), Used for 250/420 Lbs Capacity Cylinders. for Automatic Gas Suppression System, JANUS. P/N 18535. UL/FM Approved.', NULL, 1, 410.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:03:12', '2019-11-05 19:03:12'),
(592, 'Straps (Mounting Bracket), Used for 250/420 Lbs Capacity Cylinders. for Automatic Gas Suppression System, JANUS. P/N 18535. UL/FM Approved.', NULL, 1, 410.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:03:20', '2019-11-05 19:03:20'),
(593, 'Straps (Mounting Bracket), Used for 250/420 Lbs Capacity Cylinders. for Automatic Gas Suppression System, JANUS. P/N 18535. UL/FM Approved.', NULL, 1, 410.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:03:20', '2019-11-05 19:03:20'),
(594, 'Nozzle, 1\" x 360 Deg,(25MM), Brass Novec 1230. for Automatic Gas Suppression System, JANUS. Part No.19532 UL/FM Approved.', NULL, 6, 330.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:03:33', '2019-11-05 19:03:33'),
(595, 'Sign. Warning. Exit. \'Leave Area\'. for Automatic Gas Suppression System. JANUS. Part No. 18489 UL/FM Approved', NULL, 1, 120.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:03:49', '2019-11-05 19:03:49'),
(596, 'Sign. Warning. Entrance. \'Do Not Enter\'. for Automatic Gas Suppression System. JANUS. Part No. 18770 UL/FM Approved', NULL, 1, 120.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:04:05', '2019-11-05 19:04:05'),
(597, 'Control Panel. Gas Extinguishing. 230VAC. LIFECO HAWK Series. Model LF 1810-13. UL/FM Approved.for Automatic Fire Extinguishing System.', NULL, 1, 3450.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:04:22', '2019-11-05 19:04:22'),
(598, 'Battery. 12V 7Ah. FOR AUTOMATIC FIRE EXTINGUISHING SYSTEM', NULL, 2, 132.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:05:29', '2019-11-05 19:05:29'),
(599, 'Switch. Manual Extinguishant Disablement. Surface Mount Red. LIFECO HAWK Series. Model LF1832-10. UL/FM Approved. for Automatic Fire Extinguishing System.', NULL, 1, 520.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:05:45', '2019-11-05 19:05:45'),
(600, 'Detector. Smoke. Photo Electric. LIFECO HAWK Series. Model LE-SLR-24V (LE-SOC-24V). UL Listed. For Automatic Fire Extinguishing System.', NULL, 4, 150.000, 110, 0, '', NULL, NULL, '49', '2019-11-05 19:06:02', '2019-11-05 19:06:02'),
(601, 'Base for Detector. 4\" Analog Sensor. LIFECO. Model LE-YBN-NSA-4 UL-Listed', NULL, 4, 37.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:06:17', '2019-11-05 19:06:17'),
(602, 'Pull Station. Manual Double Action. LIFECO HAWK Series. Model LE-HPS-DAH. UL Listed. For Automatic', NULL, 1, 250.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:06:36', '2019-11-05 19:06:36'),
(603, 'Switch. Abort Surface Mount Red. LIFECO HAWK Series. Model LF1823-10. UL/FM Approved. for Automatic Fire Extinguishing System.', NULL, 1, 400.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:06:52', '2019-11-05 19:06:52'),
(604, 'Horn with Strobe. Red Colour. 24 VDC. HOCHIKI. Model HEC3-24WR. UL-Listed.For Automatic Fire Extinguishing System.', NULL, 1, 325.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:07:05', '2019-11-05 19:07:05'),
(605, 'Bell. Motorized. 6\". 24 VDC. LIFECO LIFECO HAWK Series. Model LFB16. UL Listed. FOR AUTOMATIC FIRE EXTINGUISHING SYSTEM', NULL, 1, 95.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:07:26', '2019-11-05 19:07:26'),
(606, 'Engineering Charges', NULL, 1, 3000.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:07:39', '2019-11-05 19:07:39'),
(607, 'Testing and Commissioning Charges', NULL, 1, 3000.000, 110, 0, '', NULL, NULL, '48', '2019-11-05 19:07:52', '2019-11-05 19:07:52'),
(608, 'WS-C2960X-48FPS-L', 'Catalyst 2960-X 48 GigE PoE 740W, 4 x 1G SFP, LAN Base', 14, 7071.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:10:51', '2019-11-06 16:10:51'),
(609, 'CON-SNT-WSC294SL', 'SNTC-8X5XNBD Catalyst 2960-X 48 G', 14, 1601.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:11:56', '2019-11-06 16:11:56'),
(610, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 14, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:12:50', '2019-11-06 16:12:50'),
(611, 'WS-C2960X-24PS-L', 'Catalyst 2960-X 24 GigE PoE 370W, 4 x 1G SFP, LAN Base', 2, 3947.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:13:54', '2019-11-06 16:13:54'),
(612, 'CON-SNT-WSC224SL', 'SNTC-8X5XNBD Catalyst 2960-X 24 G', 2, 776.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:14:44', '2019-11-06 16:14:44'),
(613, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 2, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:15:27', '2019-11-06 16:15:27'),
(614, 'WS-C3850-24S-S', 'Cisco Catalyst 3850 24 Port GE SFP IP Base', 1, 25293.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:16:21', '2019-11-06 16:16:21'),
(615, 'CON-SNT-WSC3854S', 'SNTC-8X5XNBD Cisco Catalyst 3850 24 Port GE SFP IP Ba', 1, 3646.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:17:09', '2019-11-06 16:17:09'),
(616, 'S3850UK9-166', 'UNIVERSAL', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:17:43', '2019-11-06 16:17:43'),
(617, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:18:23', '2019-11-06 16:18:23'),
(618, 'C3850-STACK-NONE', 'No Stack Cable Selected', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:19:03', '2019-11-06 16:19:03'),
(619, 'C3850-SPWR-NONE', 'No Stack Power Cable Selected', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:19:48', '2019-11-06 16:19:48'),
(620, 'C3850-24-L-S', 'C3850-24 LAN Base to IP Base E- Delivery License', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:20:19', '2019-11-06 16:20:19'),
(621, 'PWR-C1-350WAC', '350W AC Config 1 Power Supply', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:20:59', '2019-11-06 16:20:59'),
(622, 'C3850-NM-BLANK', 'Cisco Catalyst 3850 Network Module Blank', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:21:32', '2019-11-06 16:21:32'),
(623, 'PWR-C1-BLANK', 'Config 1 Power Supply Blank', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:22:11', '2019-11-06 16:22:11'),
(624, 'C3850-DNA-A-24', 'C3850 DNA Advantage, 24-port Term licenses', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:22:40', '2019-11-06 16:22:40'),
(625, 'C3850-DNA-A-24-5Y', 'C3850 DNA Advantage, 24-port, 5 Year Term license', 1, 5403.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:23:23', '2019-11-06 16:23:23'),
(626, 'ISR4331/K9', 'Cisco ISR 4331 (3GE,2NIM,1SM,4G FLASH,4G DRAM,IPB)', 1, 4950.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:24:08', '2019-11-06 16:24:08'),
(627, 'CON-SNT-ISR4331K', 'SNTC-8X5XNBD Cisco ISR 4331 (2GE,2NIM,1SM,4G FLASH,4G', 1, 1567.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:24:46', '2019-11-06 16:24:46'),
(628, 'SL-4330-SEC-K9', 'Security License for Cisco ISR 4330 Series', 1, 1985.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:25:21', '2019-11-06 16:25:21'),
(629, 'PWR-4330-AC', 'AC Power Supply for Cisco ISR 4330', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:25:47', '2019-11-06 16:25:47'),
(630, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:26:11', '2019-11-06 16:26:11'),
(631, 'MEM-FLSH-4G', '4G Flash Memory for Cisco ISR 4300 (Soldered on\r\nmotherboard)', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:26:46', '2019-11-06 16:26:46'),
(632, 'MEM-43-4G', '4G DRAM (1 x 4G) for Cisco ISR 4300', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:27:12', '2019-11-06 16:27:12'),
(633, 'NIM-BLANK', 'Blank faceplate for NIM slot on Cisco ISR 4400', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:27:41', '2019-11-06 16:27:41'),
(634, 'SM-S-BLANK', 'Removable faceplate for SM slot on Cisco 2900,3900,4400 ISR', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:28:14', '2019-11-06 16:28:14'),
(635, 'SL-4330-IPB-K9', 'IP Base License for Cisco ISR 4330 Series', 1, 1290.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:28:47', '2019-11-06 16:28:47'),
(636, 'SISR4300UK9-166', 'Cisco ISR 4300 Series IOS XE Universal', 1, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:29:37', '2019-11-06 16:29:37'),
(637, 'WS-C2960X-48FPD-L', 'Catalyst 2960-X 48 GigE PoE 740W, 2 x 10G SFP+, LAN Base', 5, 8438.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:30:34', '2019-11-06 16:30:34'),
(638, 'CON-SNT-WSC296XL', 'SNTC-8X5XNBD Catalyst 2960-X 48 GigE PoE 740W, 2 x 10', 5, 1945.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:31:04', '2019-11-06 16:31:04'),
(639, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 5, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:31:29', '2019-11-06 16:31:29'),
(640, 'GMC-PDU-ALU-6W', '6 WAY UK TYPE\r\n1.8M POWERCORD\r\nALUMNUM CASE', 6, 0.000, 111, 0, '', NULL, NULL, '49', '2019-11-06 16:31:32', '2019-11-06 16:31:32'),
(641, 'C2960X-STACK', 'Catalyst 2960-X FlexStack Plus Stacking Module', 5, 1278.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:32:00', '2019-11-06 16:32:00'),
(642, 'CAB-STK-E-0.5M', 'Cisco FlexStack 50cm stacking cable', 5, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:32:30', '2019-11-06 16:32:30'),
(643, 'WS-C2960X-24PS-L', 'Catalyst 2960-X 24 GigE PoE 370W, 4 x 1G SFP, LAN Base', 10, 4204.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:32:59', '2019-11-06 16:32:59'),
(644, 'CON-SNT-WSC224SL', 'SNTC-8X5XNBD Catalyst 2960-X 24 G', 10, 776.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:33:27', '2019-11-06 16:33:27'),
(645, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 10, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:33:53', '2019-11-06 16:33:53'),
(646, 'C2960X-STACK', 'Catalyst 2960-X FlexStack Plus Stacking Module', 10, 1278.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:34:22', '2019-11-06 16:34:22'),
(647, 'CAB-STK-E-0.5M', 'Cisco FlexStack 50cm stacking cable', 10, 0.000, 106, 0, '', NULL, NULL, '47', '2019-11-06 16:34:49', '2019-11-06 16:34:49'),
(648, 'CSE-200', 'CSE-200 set, certified in line with EU wireless requirements', 1, 5275.000, 112, 0, '', NULL, NULL, '51', '2019-11-10 19:13:34', '2019-11-10 19:13:34'),
(649, '240562', 'Cat 6 Data Cable U/UTP 4 Pairs, 250MHz,23AWG, FR/PVC Sheath,Grey Color (305Meter/Roll)', 40, 310.000, 113, 0, '', NULL, NULL, '51', '2019-11-10 21:12:23', '2019-11-14 17:45:11'),
(650, 'RA32E-TH1-RAS', 'Room Alert 32E - Monitor w/PoE', 1, 3100.000, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:04:27', '2019-11-11 16:04:27'),
(651, 'RMA-DTH-SEN', 'AVtech Sensor - Digital Temperature & Humidity w/25\'', 3, 330.000, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:04:49', '2019-11-11 16:04:49'),
(652, 'RMA-DTH-SEN', 'AVtech Sensor - Digital Temperature & Humidity w/25\'', 1, 0.000, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:05:12', '2019-11-11 16:05:12'),
(653, 'RMA-DAP-SEN', 'Sensor - Digital Active Power w/Temperature (10\')', 1, 0.000, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:05:33', '2019-11-11 16:05:33'),
(654, 'RMA-F024-SEN', 'AVTECH\'s Flood Sensor with attached 24\' sensor cable', 2, 1268.010, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:05:56', '2019-11-11 16:05:56'),
(655, 'RMA-DTHS50-SEN', 'Digital Temperature & Humidity w/50\' Cable', 4, 364.770, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:06:20', '2019-11-11 16:06:20'),
(656, 'RMA-RE1-SEN', 'AVTECH\'s Room Entry Sensor', 1, 64.480, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:06:52', '2019-11-11 16:06:52'),
(657, 'RMA-PS1-SEN', 'Sensor - Power Sensor', 2, 255.810, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:07:23', '2019-11-11 16:07:23'),
(658, 'MOD-GSM-1', 'AVTECH’s GSM Modem w/USB Connection', 1, 677.430, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:07:46', '2019-11-11 16:07:46'),
(659, 'GTMD-PRO-AAS', 'RAS PROFESSIONAL Year (10 U, 25 D, 10 S, 25 A, 7R, 180 D-Log)', 1, 780.000, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:08:26', '2019-11-11 16:08:26'),
(660, '01-Shipping', 'AVtech Room alert system Shipping', 1, 1340.000, 114, 0, '', NULL, NULL, '47', '2019-11-11 16:08:53', '2019-11-11 16:08:53'),
(661, 'GMC-FR-42U-810-4F', '42U 800 X 1000 4 FAN SIDE DOOR CASTER WHEEL', 4, 1696.200, 115, 0, '', NULL, NULL, '47', '2019-11-11 17:45:58', '2019-11-11 17:50:10'),
(662, 'GMC-VCM-42U', 'CABLE MANAGMENT', 4, 147.400, 115, 0, '', NULL, NULL, '47', '2019-11-11 17:52:12', '2019-11-11 17:52:12'),
(663, 'GMC-WM-15U-66-2F', '15U - 600X 600\r\nSINGLE SECTION\r\n2 FAN\r\nGLASS DOOR\r\nBLACK RAL 9005', 4, 411.950, 115, 0, '', NULL, NULL, '47', '2019-11-11 17:53:33', '2019-11-11 22:46:26'),
(664, 'GMC-WM-18U-66-2F', '18U - 600X 600\r\nSINGLE SECTION\r\n2 FAN\r\nSIDE DOOR\r\nBLACK 9005', 2, 506.000, 115, 0, '', NULL, NULL, '47', '2019-11-11 17:54:40', '2019-11-11 22:47:21'),
(666, 'GMC-FR-27U-66-2F', '27U 600 X 600\r\n2 FAN\r\nSIDE DOOR\r\nCASTER WHEEL', 1, 907.500, 115, 0, '', NULL, NULL, '47', '2019-11-11 17:55:25', '2019-11-11 17:55:25'),
(667, 'GMC-PDU-ALU-6W', '6 WAY UK TYPE\r\n1.8M POWERCORD\r\nALUMNUM CASE', 11, 0.000, 115, 0, '', NULL, NULL, '49', '2019-11-12 20:18:49', '2019-11-12 20:18:49'),
(668, 'GMC-WM-16U-68-2F', '16U 600X800\r\nSINGLE SECTION\r\n2 FAN', 5, 488.400, 115, 0, '', NULL, NULL, '49', '2019-11-12 20:19:40', '2019-11-12 20:19:40'),
(669, 'GMC-FR-27U-810-4F', '27U 800 X 1000\r\n4 FAN\r\nSIDE DOOR\r\nCASTER WHEEL', 1, 1240.000, 115, 0, '', NULL, NULL, '49', '2019-11-12 20:20:44', '2019-11-12 20:20:44'),
(670, 'LIGNA K 38 ST', 'Lindner manufactured in\r\nGermany, consists of:\r\nLINDNER chipboard panel type LIGNA K 38 ST, panel thickness 38 mm\r\npanel size 600 x 600 mm, galvanized steel sheet at bottom and HPL\r\ncovering type Abet Walkprint 577 on top of the panel with standard\r\nedge trim.', 54, 87.000, 116, 0, '', NULL, NULL, '47', '2019-11-12 21:13:20', '2019-11-12 21:13:20'),
(671, 'Pedestal', 'LINDNER steel pedestal type M2, galvanized and blue passivated, 250\r\nmm high, adjustability 222 - 282 mm including gasket type C 4.0,\r\nlocking glue and pedestal glue.', 65, 15.000, 116, 0, '', NULL, NULL, '47', '2019-11-12 21:14:03', '2019-11-12 21:14:03'),
(672, 'VENTEC S38 R38', 'LINDNER steel ventilation panel type VENTEC S38 R38 incombustible\r\nsteel sheet panel with a free area 38%, diameter of hole 12 mm,\r\nstandard module 600x600 mm, HPL covering type Abet Walkprint color\r\n577 on top of the panel, without airflow regulator.', 6, 610.000, 116, 0, '', NULL, NULL, '47', '2019-11-12 21:14:27', '2019-11-12 21:14:27'),
(673, 'S3M40KX', 'SmartOnline S3MX Series 3-Phase\r\n380/400/415V 40kVA 36kW On-Line\r\nDouble-Conversion UPS', 1, 32500.000, 117, 0, '', NULL, NULL, '47', '2019-11-12 21:47:14', '2019-11-12 21:47:14'),
(674, 'EasiCool', 'Only supply, of EasiCool close control DX-type\r\nunit, Downflow air discharge, manufactured by\r\nAiredale (UK), Refrigerant R410, full function\r\ncomplete with humidifier and microprocessor\r\ntechnical specifications as following :\r\nCooling capacity: 5 Ton\r\nUnit mode : DF17X-EZERE-1\r\nPower Supply : 380V/3Ph/60Hz.\r\nEC Fan with Variable speed.', 2, 57000.000, 118, 0, '', NULL, NULL, '47', '2019-11-12 21:52:45', '2019-11-12 21:52:45'),
(675, 'QND-7010R', '1/3\" 4M CMOS, 2.8mm fixed, 20m\r\n(65.62ft) IR Distance, True D/N,\r\nWDR(120dB), Hallway view,\r\nWiseStream\r\nMade in Korea', 6, 400.570, 119, 0, '', NULL, NULL, '45', '2019-11-13 13:33:34', '2019-11-13 13:33:34'),
(676, 'QNO-7080R', '1/3\" 4M CMOS, 2.8~12mm (4.3x)\r\nmotorized V/F, 20m(65.62ft) IR\r\nDistance, True D/N, WDR(120dB),\r\nHallway view, WiseStream, IP66,\r\nIK10\r\nMade in Korea', 9, 796.450, 119, 0, '', NULL, NULL, '45', '2019-11-13 13:34:01', '2019-11-13 13:39:40'),
(677, 'QNO-7010R', '1/3\" 4M CMOS, 2.8mm fixed, 20m\r\n(65.62ft) IR Distance, True D/N,\r\nWDR(120dB), Hallway view,\r\nWiseStream, IP66, IK10\r\nMade in Korea', 8, 424.140, 119, 0, '', NULL, NULL, '45', '2019-11-13 13:34:26', '2019-11-13 13:34:26'),
(678, 'XRN-2010', '32ch NVR, CIF~12MP, Max\r\n256Mbps, Support H.265/H.264\r\n/MJPEG, Dual Monitor Video Out,\r\nWiseStream, e-SATA/Iscsi,\r\nARB&Failover\r\nMade in Korea', 1, 4425.000, 119, 0, '', NULL, NULL, '45', '2019-11-13 13:35:34', '2019-11-13 13:36:33'),
(679, '415212', 'Fibre Patch Panel 1U 12 LC (6 LCD) Multi Mode, full Loaded with Adapters, Ceramic Sleeve and 12 Pigtails MM OM3 2meter - Datwyler', 6, 494.500, 113, 0, '', NULL, NULL, '49', '2019-11-14 17:46:08', '2019-11-14 17:54:00'),
(680, '423333', 'Fibre Optic Patch Cord MM 50/125 OM3 LC-LC Duplex 3 Meter - Datwyler', 10, 56.760, 113, 0, '', NULL, NULL, '49', '2019-11-14 17:46:37', '2019-11-14 17:54:50'),
(681, '190112', '6C Fibre Optic Cable MM (OM3-50/125µm), Loose Tube, Glass Armoured, Indoor/Outdoor LS0H Sheath - Datwyler', 600, 4.644, 113, 0, '', NULL, NULL, '49', '2019-11-14 17:47:12', '2019-11-14 17:55:35'),
(682, 'UDX 86', 'Specktron Interactive Display screen - Model UDX 86 : 20 TOUCH - DUAL OPERATION 86\" Interactive LED\r\nDisplay Screen, UHD (4K/2K)+ MT-21GS PC module ( i5- 8 GB RAM – 128GBSSD) - Android installed, no Windows + Wall bracket', 1, 26500.000, 120, 0, '', NULL, NULL, '50', '2019-11-18 14:49:53', '2019-11-18 14:49:53'),
(683, 'VOL-6UP4-UGY-305', 'CAT 6,UTP PVC GRAY 4 PR', 65, 315.000, 121, 0, '', NULL, NULL, '50', '2019-11-18 17:09:09', '2019-11-18 17:09:09'),
(684, 'FMP-12L5OM3', 'Module of 12 LC pigtails 50/125μm, OM3, 2m w/DIN-Cassette,\r\npigtails in 12 IEC colours, stripped and marked 3M', 8, 270.000, 121, 0, '', NULL, NULL, '51', '2019-11-18 17:09:40', '2019-11-18 17:09:40');
INSERT INTO `purchase_items` (`id`, `partnum`, `description`, `quantity`, `rate`, `purchase_id`, `status`, `receive_date`, `deliver_date`, `serial`, `project_id`, `created_at`, `updated_at`) VALUES
(685, 'VOL-IOGL56MC', '6C FIBER OPTIC CABLE MM(OM3-50/125μm) INDOOR/OUTDOOR\r\nWITH GLASS YARN LSZH UNITUBE GEL FILLED 3M', 500, 7.000, 121, 0, '', NULL, NULL, '51', '2019-11-18 17:10:26', '2019-11-18 17:18:18'),
(686, 'VOL-OCK6-UB', 'RJ45 K6 jack UTP (bulk)', 800, 12.000, 121, 0, '', NULL, NULL, '50', '2019-11-18 17:11:12', '2019-11-18 17:11:12'),
(687, 'VOL-FPUK-1K', '86*86mm UK faceplate) W/O shutter doors, W/ window label,color icons, logo (Pure White)', 800, 6.000, 121, 0, '', NULL, NULL, '50', '2019-11-18 17:11:40', '2019-11-18 17:11:40'),
(688, 'RJ 45 3M', 'RJ45 CONNECTOR', 16, 45.000, 121, 0, '', NULL, NULL, '50', '2019-11-18 17:14:33', '2019-11-18 17:14:33'),
(689, 'BOX 7*7', 'BOX 7*7 CHINA', 800, 2.000, 121, 0, '', NULL, NULL, '50', '2019-11-18 17:14:57', '2019-11-18 17:14:57'),
(690, 'UPS12-4000MR', 'UPS12-4000MR-Battery (Manufacturer Approved Premium Replacement for UPS – 12-370 FR &MR12-400)', 64, 790.000, 122, 0, '', NULL, NULL, '51', '2019-11-18 19:36:15', '2019-11-18 19:36:15'),
(691, '2658-E', 'Cooling fan for ups and sensors – 2658-E', 1, 2640.000, 122, 0, '', NULL, NULL, '51', '2019-11-18 19:36:43', '2019-11-18 19:36:43'),
(692, 'ITQAN', 'Maintenance and installation input/output power cables', 1, 11800.000, 122, 0, '', NULL, NULL, '51', '2019-11-18 19:37:18', '2019-11-18 19:37:18'),
(693, 'PC-MT-7060-I7-4-1TB-OC', 'DELL-PC,OPTIPLEX-MT7060,(i7-8700,12MB),4G,1TB,DOS', 2, 2200.000, 123, 0, '', NULL, NULL, '49', '2019-11-27 17:04:25', '2019-11-27 17:04:25'),
(694, 'LED-22-E2216HV', 'Dell 22 Monitor | E2216HV - 54.6cm(21.5\") Black EU', 2, 310.000, 123, 0, '', NULL, NULL, '49', '2019-11-27 17:04:55', '2019-11-27 17:04:55'),
(695, 'PC-SFF-7060-I7-8-1T-W', 'D-SFF-7060,(i7-8700),8G,1TB,WIN', 1, 2800.000, 123, 0, '', NULL, NULL, '45', '2019-11-27 17:32:17', '2019-11-27 17:32:17'),
(696, 'ECO-SPP3-E-1LC-DM', 'Patch Panel, 1U with 12 LC Duplex MM Couplers', 8, 175.000, 124, 0, '', NULL, NULL, '51', '2019-11-27 19:09:36', '2019-11-27 19:09:36'),
(697, 'LINGA K 38 ST', 'LINGA K 38 ST  Panel Thickness 38mm 600x600 mm galvanized steel', 30, 290.000, 125, 0, '', NULL, NULL, '52', '2019-12-02 16:33:43', '2019-12-02 16:33:43'),
(698, 'GMC-WMS-15U-68-2F', '15U - 600X 800\r\nSINGLE SECTION 2 FAN SIDE DOOR BLACK 9005', 4, 482.350, 126, 0, '', NULL, NULL, '45', '2019-12-03 19:54:43', '2019-12-03 19:54:43'),
(699, 'UNIFLAIR CRAC Maintenance', '1. Removing the faulty parts (expansion valve, filter dryer and solenoid coil).\r\n2. Installing the new spare parts.\r\n3. Supervision on pressure test, leak test, vacuum test, and start up.', 1, 7000.000, 127, 0, '', NULL, NULL, '21', '2019-12-08 16:53:33', '2019-12-08 16:55:09'),
(700, 'E-16D', 'Large Enterprise Environment Monitoring System', 1, 5560.000, 128, 0, '', NULL, NULL, '24', '2019-12-08 17:54:18', '2019-12-08 17:54:18'),
(701, 'E-STHSB', 'Temperature/humidity sensor for ENVIROMUX-16D', 4, 550.000, 128, 0, '', NULL, NULL, '24', '2019-12-08 17:55:07', '2019-12-08 17:55:07'),
(702, 'E-LDS10-5', 'Legacy Liquid Detection System - Rope Style water sensor\r\n10 foot cable', 2, 760.000, 128, 0, '', NULL, NULL, '24', '2019-12-08 17:58:57', '2019-12-08 17:58:57'),
(703, 'E-SDS-CELC', 'Smoke Detection Sensor', 2, 190.000, 128, 0, '', NULL, NULL, '24', '2019-12-08 17:59:30', '2019-12-08 17:59:30'),
(704, 'E-SRN-M', 'Siren for ENVIROMUX-16D', 1, 150.000, 128, 0, '', NULL, NULL, '24', '2019-12-08 18:00:02', '2019-12-08 18:00:02'),
(705, 'E-BCN-R', 'Alarm beacon for ENVIROMUX-16D Small', 1, 150.000, 128, 0, '', NULL, NULL, '24', '2019-12-08 18:00:37', '2019-12-08 18:00:37'),
(706, 'CV140021', 'NOVEC CYLINDER FILLED 277 LBS WITH 234 LBS FILLED WITH ELECTRICAL AND MANUAL OPERATOR AND ACCESSORIES UL/FM \r\n\r\nSET OF HOCHIKI ALARM SYSTEM WITH BELOW \r\nCONVENTIONAL FACP\r\n6 SMOKE DETECTOR \r\nABORT SWITCH \r\nBELL \r\nHORN/STROBE\r\n\r\nN360-1.0-A        2PCS\r\nN360-0.5-A        3PCS\r\n\r\nTesting and commissioning', 1, 42061.000, 129, 0, '', NULL, NULL, '48', '2019-12-08 19:30:20', '2020-01-22 15:56:06'),
(707, 'OTAISH', 'TESTING ,COMMISSIONING AND ENGINEERING', 1, 1500.000, 129, 0, '', NULL, NULL, '48', '2019-12-08 19:30:51', '2019-12-09 20:37:22'),
(708, 'ST100T', 'UPS system Gtec Model – 100 KVA with Backup time 15 mins with delivery, testing, and commissioning.', 1, 97000.000, 130, 0, '', NULL, NULL, '52', '2019-12-16 14:21:51', '2019-12-16 14:21:51'),
(709, 'C9606R', 'Cisco Catalyst 9600 Series 6 Slot Chassis', 4, 10305.410, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:42:42', '2019-12-26 16:56:39'),
(710, 'C9600-PWR-2KWAC', 'Cisco Catalyst 9600 Series 2000W AC Power Supply', 16, 2576.350, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:43:27', '2019-12-26 16:57:03'),
(711, 'C9600-LC-24C', 'Cisco Catalyst 9600 Series 24-Port 40GE/12-Port 100GE', 4, 21469.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:44:42', '2019-12-26 13:44:42'),
(712, 'C9600-SUP-1', 'Cisco Catalyst 9600 Series Supervisor 1 Module', 4, 33492.578, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:45:15', '2019-12-26 13:45:15'),
(713, 'C9600-DNA-A', 'Cisco Catalyst 9600 DNA Advantage Term License', 4, 0.000, 131, 0, '', NULL, NULL, '52', '2019-12-26 13:45:39', '2019-12-26 13:45:39'),
(714, 'C9600-DNA-A-3Y', 'Cisco Catalyst 9600 DNA Advantage 3 Year License', 4, 21469.600, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:46:14', '2019-12-26 16:58:02'),
(715, 'C9K-F2-SSD-960GB', 'Cisco Catalyst 9600 Series 960GB SSD Storage', 4, 6440.880, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:46:38', '2019-12-26 17:07:07'),
(716, 'C9600-LC-48YL', 'Cisco Catalyst 9600 Series 48-Port 25GE/10GE/1GE', 4, 18893.250, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:47:01', '2019-12-26 13:47:01'),
(717, 'C9606-FAN', 'Cisco Catalyst 9600 Series C9606 Chassis Fan Tray', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:47:20', '2019-12-26 13:47:20'),
(718, 'C9606-SLOT-BLANK', 'Cisco Catalyst 9600 Series Blank for Chassis Module Slot', 8, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:47:37', '2019-12-26 13:47:37'),
(719, 'C9600-CAMPUS-CORE', 'Catalyst 9600 Campus Core Deployment; For Tracking Only', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:48:01', '2019-12-26 13:48:01'),
(720, 'SC9600UK9-1612', 'Cisco Catalyst 9600 XE 16.12 UNIVERSAL', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:48:17', '2019-12-26 13:48:17'),
(721, 'C9600-LC-48YL', 'Cisco Catalyst 9600 Series 48-Port 25GE/10GE/1GE', 4, 18893.250, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:48:50', '2019-12-26 13:48:50'),
(722, 'C9600-NW-A', 'Cisco Catalyst 9600 Network Advantage License', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:49:09', '2019-12-26 13:49:09'),
(723, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 16, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:49:29', '2019-12-26 13:49:29'),
(724, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 16, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:49:55', '2019-12-26 13:49:55'),
(725, 'C9606-PWR-BLANK', 'Cisco Catalyst 9600 Series Blank for Power Supply Slot', 8, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:50:50', '2019-12-26 13:50:50'),
(726, 'SFP-10G-SR', '10GBASE-SR SFP Module', 4, 854.490, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:51:15', '2019-12-26 13:51:15'),
(727, 'PI-LFAS-T', 'Prime Infrastructure Lifecycle & Assurance Term - Smart Lic', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:51:37', '2019-12-26 13:51:37'),
(728, 'PI-LFAS-AP-T-3Y', 'PI Dev Lic for Lifecycle & Assurance Term 3Y', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:51:55', '2019-12-26 13:51:55'),
(729, 'C1-CISCO4451/K9', 'Cisco ONE ISR 4451 (4GE,3NIM,2SM,8G FLASH,4G DRAM, IPB)', 3, 17605.070, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:52:19', '2019-12-26 17:08:30'),
(730, 'C1-ISRWAAS-RTU2500', 'Cisco ONE ISRWAAS RTU for 2500 connections', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:52:40', '2019-12-26 13:52:40'),
(731, 'C1-VWAAS-2500-D', 'VWAAS RTU for 2500 connections Support Only (No Lic)', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:53:02', '2019-12-26 13:53:02'),
(732, 'NIM-BLANK', 'Blank faceplate for NIM slot on Cisco ISR 4400', 9, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:53:16', '2019-12-26 13:53:16'),
(733, 'C1-LIC-VCM-1N', 'Cisco ONE Promo license to manage one WAAS node', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:53:33', '2019-12-26 13:53:33'),
(734, 'GLC-LH-SMD', '1000BASE-LX/LH SFP transceiver module, MMF/SMF, 1310nm, DOM', 6, 854.490, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:54:02', '2019-12-26 13:54:02'),
(735, 'SL-44-UC-D', 'UC Lic for ISR 4400 Support (No Lic)', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:54:19', '2019-12-26 13:54:19'),
(736, 'SL-44-APP-K9', 'AppX License for Cisco ISR 4400 Series', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:54:38', '2019-12-26 13:54:38'),
(737, 'PWR-COVER-4450', 'Cover for empty 2nd Power Supply slot on Cisco ISR 4450', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:54:53', '2019-12-26 13:54:53'),
(738, 'CAB-ACU', 'AC Power Cord (UK), C13, BS 1363, 2.5m', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:55:08', '2019-12-26 13:55:08'),
(739, 'MEM-FLSH-8G', '8G eUSB Flash Memory for Cisco ISR 4430', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:55:23', '2019-12-26 13:55:23'),
(740, 'SDWAN-DNA-E', 'Cisco DNA Essentials for DNA Center', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:55:38', '2019-12-26 13:55:38'),
(741, 'POE-COVER-4450', 'Cover for empty POE slot on Cisco ISR 4450', 6, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:55:53', '2019-12-26 13:55:53'),
(742, 'MEM-4400-DP-2G', '2G DRAM (1 DIMM) for Cisco ISR 4400 Data Plane', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:56:07', '2019-12-26 13:56:07'),
(743, 'SL-44-APP-D', 'ISR 4400 AppX Lic Support only (No Lic)', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:56:24', '2019-12-26 13:56:24'),
(744, 'GLC-TE', '1000BASE-T SFP transceiver module for Category 5 copper wire', 6, 386.450, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:56:43', '2019-12-26 13:56:43'),
(745, 'SL-44-SEC-K9', 'Security License for Cisco ISR 4400 Series', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:57:01', '2019-12-26 13:57:01'),
(746, 'C1-ISRWAAS-2500-D', 'ISRWAAS 2500 conns For ISR Support Only (No Lic)', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:57:14', '2019-12-26 13:57:14'),
(747, 'C1-PI-LFAS-ISR-K9', 'Cisco ONE PI Device License for LF, AS, & IWAN App for ISR', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:57:28', '2019-12-26 13:57:28'),
(748, 'SISR4400UK9-166', 'Cisco ISR 4400 Series IOS XE Universal', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:57:43', '2019-12-26 13:57:43'),
(749, 'MEM-4400-8G', '8G DRAM (4G+4G) for Cisco ISR 4400, Spare', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:57:56', '2019-12-26 13:57:56'),
(750, 'SM-S-BLANK', 'Removable faceplate for SM slot on Cisco 2900,3900,4400 ISR', 6, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:58:11', '2019-12-26 13:58:11'),
(751, 'SL-44-IPB-K9', 'IP Base License for Cisco ISR 4400 Series', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:58:25', '2019-12-26 13:58:25'),
(752, 'DNAC1E-OP-500M-3Y', 'DNAC1 Essentials On-Prem 500mbps Subscription 3Y', 3, 6238.630, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:58:50', '2019-12-26 13:58:50'),
(753, 'PWR-4450-AC', 'AC Power Supply for Cisco ISR 4450 and ISR4350', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:59:09', '2019-12-26 13:59:09'),
(754, 'FL-44-HSEC-K9', 'U.S. Export Restriction Compliance license for 4400 series', 3, 1073.480, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:59:30', '2019-12-26 13:59:30'),
(755, 'SL-44-SEC-D', 'ISR 4400 Security Lic Support only (No Lic)', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 13:59:47', '2019-12-26 13:59:47'),
(756, 'C1-VWAAS-RTU-2500', 'Cisco ONE VWAAS RTU for 2500 connections', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:00:01', '2019-12-26 14:00:01'),
(757, 'C1-PI-LFAS-ISR-D', 'PI Lifecycle & Assurance for ISR Support only (No Lic)', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:00:16', '2019-12-26 14:00:16'),
(758, 'SVS-DNA-P-ESS', 'Embedded Support  - Cisco DNA Essentials On Premise Lic', 3, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:00:31', '2019-12-26 14:00:31'),
(759, 'C1F1PISR4400SK9', 'Cisco ONE Foundation Perpetual License ISR 4400', 3, 7814.930, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:00:47', '2019-12-26 14:01:18'),
(760, 'QSFP-40G-SR-BD=', 'QSFP40G BiDi Short-reach Transceiver', 16, 940.370, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:02:05', '2019-12-26 14:02:05'),
(761, 'SFP-10G-SR-S=', '10GBASE-SR SFP Module, Enterprise-Class', 64, 601.150, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:02:26', '2019-12-26 14:02:26'),
(762, 'QSFP-40/100-SRBD=', '100G and 40GBASE SR-BiDi QSFP Transceiver, LC, 100m OM4 MMF', 64, 1713.270, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:02:46', '2019-12-26 14:02:46'),
(763, 'FPR4110-BUN', 'Cisco Firepower 4110 Master Bundle', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:08:54', '2019-12-26 14:08:54'),
(764, 'L-FPR4110T-TM=', 'Cisco FPR4110 Threat Defense Threat and Malware License', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:10:17', '2019-12-26 14:10:17'),
(765, 'L-FPR4110T-TM-3Y', 'Cisco FPR4110 Threat Defense Threat and Malware 3Y Subs', 2, 70952.727, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:10:46', '2019-12-26 14:10:46'),
(766, 'FPR4110-NGFW-K9', 'Cisco Firepower 4110 NGFW Appliance, 1U, 2 x NetMod Bays', 2, 77286.273, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:11:13', '2019-12-26 14:11:13'),
(767, 'CAB-C13-C14-2M', 'Power Cord Jumper, C13-C14 Connectors, 2 Meter Length', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:11:31', '2019-12-26 14:11:31'),
(768, 'SF-F4K-TD6.3-K9', 'Cisco Firepower Threat Defense software v6.3 for FPR4100', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:11:46', '2019-12-26 14:11:46'),
(769, 'FPR4K-PWR-AC-1100', 'Firepower 4000 Series 1100W AC Power Supply', 2, 3430.340, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:12:26', '2019-12-26 14:12:26'),
(770, 'SF-F4KFXOS2.4.1-K9', 'Cisco Firepower Extensible Operating System v2.4.1 - FPR4100', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:12:41', '2019-12-26 14:12:41'),
(771, 'FPR4K-FAN', 'Firepower 4000 Series Fan', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:12:57', '2019-12-26 14:12:57'),
(772, 'FPR4K-NM-BLANK', 'Firepower 4000 Series Network Module Blank Slot Cover', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:13:13', '2019-12-26 14:13:13'),
(773, 'GLC-TE', '1000BASE-T SFP transceiver module for Category 5 copper wire', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:13:38', '2019-12-26 14:13:38'),
(774, 'FPR4K-ACC-KIT', 'FPR4K Hardware Accessory Kit', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:13:52', '2019-12-26 14:13:52'),
(775, 'FPR4K-NM-BLANK', 'Firepower 4000 Series Network Module Blank Slot Cover', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:14:06', '2019-12-26 14:14:06'),
(776, 'FPR4K-SSD-BBLKD', 'Firepower 4000 Series SSD Slot Carrier', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:14:20', '2019-12-26 14:14:20'),
(777, 'SFP-10G-SR-S=', '10GBASE-SR SFP Module, Enterprise-Class', 8, 601.150, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:14:38', '2019-12-26 14:14:38'),
(778, 'FPR4K-SSD200', 'Firepower 4000 Series SSD for FPR-4110/4120', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:14:53', '2019-12-26 14:14:53'),
(779, 'FPR4K-RACK-MNT', 'Firepower 4000 Series Rack Mount Kit', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:15:08', '2019-12-26 14:15:08'),
(780, 'FPR4K-PWR-AC-1100', 'Firepower 4000 Series 1100W AC Power Supply', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:15:22', '2019-12-26 14:15:22'),
(781, 'FPR4110-BUN', 'Cisco Firepower 4110 Master Bundle', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:15:36', '2019-12-26 14:15:36'),
(782, 'FPR4110-NGFW-K9', 'Cisco Firepower 4110 NGFW Appliance, 1U, 2 x NetMod Bays', 2, 77288.273, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:15:58', '2019-12-26 14:15:58'),
(783, 'FPR4K-NM-BLANK', 'Firepower 4000 Series Network Module Blank Slot Cover', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:16:11', '2019-12-26 14:16:11'),
(784, 'FPR4K-NM-BLANK', 'Firepower 4000 Series Network Module Blank Slot Cover', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:16:33', '2019-12-26 14:16:33'),
(785, 'FPR4K-RACK-MNT', 'Firepower 4000 Series Rack Mount Kit', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:16:48', '2019-12-26 14:16:48'),
(786, 'FPR4K-NM-BLANK', 'Firepower 4000 Series Network Module Blank Slot Cover', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:17:02', '2019-12-26 14:17:02'),
(787, 'SF-F4KFXOS2.4.1-K9', 'Cisco Firepower Extensible Operating System v2.4.1 - FPR4100', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:17:16', '2019-12-26 14:17:16'),
(788, 'FPR4K-FAN', 'Firepower 4000 Series Fan', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:17:31', '2019-12-26 14:17:31'),
(789, 'FPR4K-SSD-BBLKD', 'Firepower 4000 Series SSD Slot Carrier', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:17:48', '2019-12-26 14:17:48'),
(790, 'SFP-10G-SR-S', '10GBASE-SR SFP Module, Enterprise-Class', 8, 601.150, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:18:04', '2019-12-26 14:18:04'),
(791, 'CAB-C13-C14-2M', 'Power Cord Jumper, C13-C14 Connectors, 2 Meter Length', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:18:16', '2019-12-26 14:18:16'),
(792, 'FPR4K-SSD200', 'Firepower 4000 Series SSD for FPR-4110/4120', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:18:44', '2019-12-26 14:18:44'),
(793, 'GLC-TE', '1000BASE-T SFP transceiver module for Category 5 copper wire', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:19:20', '2019-12-26 14:19:20'),
(794, 'FPR4K-PWR-AC-1100', 'Firepower 4000 Series 1100W AC Power Supply', 2, 3430.840, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:19:44', '2019-12-26 14:19:44'),
(795, 'SF-F4K-TD6.3-K9', 'Cisco Firepower Threat Defense software v6.3 for FPR4100', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:19:55', '2019-12-26 14:19:55'),
(796, 'FPR4K-PWR-AC-1100', 'Firepower 4000 Series 1100W AC Power Supply', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:20:07', '2019-12-26 14:20:07'),
(797, 'FPR4K-ACC-KIT', 'FPR4K Hardware Accessory Kit', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:21:55', '2019-12-26 14:21:55'),
(798, 'L-FPR4110T-TM=', 'Cisco FPR4110 Threat Defense Threat and Malware License', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:22:15', '2019-12-26 14:22:15'),
(799, 'L-FPR4110T-TM-3Y', 'Cisco FPR4110 Threat Defense Threat and Malware 3Y Subs', 2, 70952.727, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:22:37', '2019-12-26 14:22:37'),
(800, 'C9300-48P-A', 'Catalyst 9300 48-port PoE+, Network Advantage', 53, 8149.860, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:22:59', '2019-12-26 14:22:59'),
(801, 'S9300UK9-169', 'UNIVERSAL', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:23:19', '2019-12-26 14:23:19'),
(802, 'C1-ADD-OPTOUT', 'Cisco ONE Add-On Session Opt Out (No Fulfillment)', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:23:33', '2019-12-26 14:23:33'),
(803, 'STACK-T1-50CM', '50CM Type 1 Stacking Cable', 53, 85.880, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:23:55', '2019-12-26 14:23:55'),
(804, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 106, 0.000, 131, 0, '', NULL, NULL, '52', '2019-12-26 14:24:13', '2019-12-26 14:24:13'),
(805, 'CAB-SPWR-30CM', 'Catalyst Stack Power Cable 30 CM', 53, 81.580, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:24:34', '2019-12-26 14:24:34'),
(806, 'C9300-NW-A-48', 'C9300 Network Advantage, 48-port license', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:24:51', '2019-12-26 14:24:51'),
(807, 'C9300-NM-8X', 'Catalyst 9300 8 x 10GE Network Module', 53, 2189.900, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:25:14', '2019-12-26 14:25:14'),
(808, 'PWR-C1-715WAC-P/2', '715W AC 80+ platinum Config 1 SecondaryPower Supply', 53, 1073.480, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:25:29', '2019-12-26 16:35:48'),
(809, 'PWR-C1-715WAC-P', '715W AC 80+ platinum Config 1 Power Supply', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:25:46', '2019-12-26 14:25:46'),
(810, 'PI-LFAS-T', 'Prime Infrastructure Lifecycle & Assurance Term - Smart Lic', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:26:01', '2019-12-26 14:26:01'),
(811, 'PI-LFAS-AP-T-3Y', 'PI Dev Lic for Lifecycle & Assurance Term 3Y', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:26:24', '2019-12-26 14:26:24'),
(812, 'C9300-DNA-A-48', 'C9300 DNA Advantage, 48-Port Term Licenses', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:26:39', '2019-12-26 14:26:39'),
(813, 'C9300-DNA-A-48-3Y', 'C9300 DNA Advantage, 48-Port, 3 Year Term License', 53, 3237.620, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:26:59', '2019-12-26 14:26:59'),
(814, 'SSD-120G', 'Cisco pluggable USB3.0 SSD storage', 53, 1288.180, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:27:16', '2019-12-26 14:27:16'),
(815, 'NETWORK-PNP-LIC', 'Network Plug-n-Play Connect for zero-touch device deployment', 53, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:27:30', '2019-12-26 14:27:30'),
(816, 'FMC1600-K9', 'Cisco Firepower Management Center 1600 Chassis', 1, 20610.869, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:27:49', '2019-12-26 17:27:04'),
(817, 'FMC-M5-NIC-SFP', 'Cisco FMC X710-DA2 dual-port 10G SFP+ NIC', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:28:17', '2019-12-26 14:28:17'),
(818, 'FMC-M5-MEM-16GB', 'Cisco FMC 16GB DDR4-2666-MHz RDIMM/PC4-21300/Single Rank', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:28:37', '2019-12-26 14:28:37'),
(819, 'FMC-M5-HDD-1.2TB', 'Cisco FMC 1.2TB 12G SAS 10K RPM SFF HDD', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:28:49', '2019-12-26 14:28:49'),
(820, 'FMC-M5-SD-32G', 'Cisco FMC 32GB SD Card Module', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:29:03', '2019-12-26 14:29:03'),
(821, 'SF-FMC-6.3-K9', 'Cisco Firepower Management Center Software v6.3', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:29:17', '2019-12-26 14:29:17'),
(822, 'FMC-M5-MSTOR-SD', 'Cisco FMC Mini Storage Carrier Card for SD (holds up to 2)', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:29:30', '2019-12-26 14:29:30'),
(823, 'FMC-M5-PS-AC-770W', 'Cisco FMC 770W AC Power Supply', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:29:57', '2019-12-26 14:29:57'),
(824, 'CAB-9K10A-UK', 'Power Cord, 250VAC 10A BS1363 Plug (13 A fuse), UK', 2, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:30:11', '2019-12-26 14:30:11'),
(825, 'FMC-M5-TPM-2.0', 'Cisco FMC Trusted Platform Module 2.0', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:30:25', '2019-12-26 14:30:25'),
(826, 'FMC-M5-MRAID-12G', 'Cisco FMC 12G Modular RAID controller with 2GB cache', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:30:36', '2019-12-26 14:30:36'),
(827, 'FMC-M5-CPU-4110', 'Cisco FMC 2.1 GHz 4110 Processor, 11MB Cache, 8 Core', 1, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:30:50', '2019-12-26 14:30:50'),
(828, 'N9K-C9364C', 'Nexus 9K ACI & NX-OS Spine, 64p 40/100G QSFP28', 4, 41221.629, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:31:09', '2019-12-26 14:31:09'),
(829, 'CAB-9K10A-UK', 'Power Cord, 250VAC 10A BS1363 Plug (13 A fuse), UK', 8, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:31:23', '2019-12-26 14:31:23'),
(830, 'N93-LAN1K9-XF2', 'NX-OS L3Enhanced XF2 license for Nexus 9300 (10G+) Platforms', 4, 17175.881, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:31:47', '2019-12-26 14:31:47'),
(831, 'NXOS-9.3.2', 'Nexus 9500, 9300, 3000 Base NX-OS Software Rel 9.3.2', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:32:14', '2019-12-26 14:32:14'),
(832, 'N9K-C9300-ACK', 'Nexus 9K Fixed Accessory Kit', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:32:29', '2019-12-26 14:32:29'),
(833, 'MODE-NXOS', 'Dummy PID for mode selection', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:32:44', '2019-12-26 14:32:44'),
(834, 'N9K-C9300-RMK', 'Nexus 9K Fixed Rack Mount Kit', 4, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:32:59', '2019-12-26 14:32:59'),
(835, 'NXA-FAN-160CFM-PE', 'Nexus Fan, 160CFM, port side exhast airflow', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:33:20', '2019-12-26 14:33:20'),
(836, 'NXA-PAC-1200W-PE', 'Nexus NEBs AC 1200W PSU -  Port Side Exhaust', 8, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:34:33', '2019-12-26 14:34:33'),
(837, 'N9K-C93108TC-FX', 'Nexus 9300 with 48p 10G-T, 6p 100G QSFP28', 10, 23616.561, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:34:54', '2019-12-26 14:34:54'),
(838, 'NXOS-9.3.2', 'Nexus 9500, 9300, 3000 Base NX-OS Software Rel 9.3.2', 10, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:35:09', '2019-12-26 14:35:09'),
(839, 'N93-LAN1K9', 'LAN Enterprise License for Nexus 9300 Platform', 10, 6870.270, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:35:27', '2019-12-26 14:35:27'),
(840, 'NXA-FAN-30CFM-F', 'Nexus 2K/3K/9K Single Fan, port side exhaust airflow', 40, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:35:44', '2019-12-26 14:35:44'),
(841, 'CAB-9K10A-UK', 'Power Cord, 250VAC 10A BS1363 Plug (13 A fuse), UK', 20, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:36:00', '2019-12-26 14:36:00'),
(842, 'NXK-ACC-KIT-1RU', 'Nexus 3K/9K Fixed Accessory Kit,  1RU front and rear removal', 10, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:36:15', '2019-12-26 14:36:15'),
(843, 'NXA-PAC-500W-PE', 'Nexus NEBs AC 500W PSU -  Port Side Exhaut', 20, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:36:29', '2019-12-26 14:36:29'),
(844, 'N9K-C93180YC-FX', 'Nexus 9300 with 48p 1/10/25G, 6p 40/100G, MACsec', 6, 23616.561, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:36:52', '2019-12-26 14:36:52'),
(845, 'NXA-PAC-500W-PE', 'Nexus NEBs AC 500W PSU -  Port Side Exhaut', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:37:11', '2019-12-26 14:37:11'),
(846, 'NXA-FAN-30CFM-F', 'Nexus 2K/3K/9K Single Fan, port side exhaust airflow', 24, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:37:24', '2019-12-26 14:37:24'),
(847, 'NXOS-9.3.2', 'Nexus 9500, 9300, 3000 Base NX-OS Software Rel 9.3.2', 6, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:37:38', '2019-12-26 14:37:38'),
(848, 'NXK-ACC-KIT-1RU', 'Nexus 3K/9K Fixed Accessory Kit,  1RU front and rear removal', 6, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:37:52', '2019-12-26 14:37:52'),
(849, 'N93-LAN1K9', 'LAN Enterprise License for Nexus 9300 Platform', 6, 6870.270, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:38:10', '2019-12-26 14:38:10'),
(850, 'CAB-9K10A-UK', 'Power Cord, 250VAC 10A BS1363 Plug (13 A fuse), UK', 12, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:38:25', '2019-12-26 14:38:25'),
(851, 'C9300-48T-A', 'Catalyst 9300 48-port data only, Network Advantage', 7, 6835.920, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:38:46', '2019-12-26 14:38:46'),
(852, 'NETWORK-PNP-LIC', 'Network Plug-n-Play Connect for zero-touch device deployment', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:39:04', '2019-12-26 14:39:04'),
(853, 'STACK-T1-50CM', '50CM Type 1 Stacking Cable', 7, 85.880, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:39:24', '2019-12-26 16:37:30'),
(854, 'PI-LFAS-T', 'Prime Infrastructure Lifecycle & Assurance Term - Smart Lic', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:39:37', '2019-12-26 14:39:37'),
(855, 'PI-LFAS-AP-T-3Y', 'PI Dev Lic for Lifecycle & Assurance Term 3Y', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:39:54', '2019-12-26 14:39:54'),
(856, 'SSD-120G', 'Cisco pluggable USB3.0 SSD storage', 7, 1288.800, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:40:18', '2019-12-26 14:40:18'),
(857, 'PWR-C1-350WAC-P/2', '350W AC 80+ platinum Config 1 Secondary Power Supply', 7, 558.210, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:40:36', '2019-12-26 14:40:36'),
(858, 'CAB-SPWR-30CM', 'Catalyst Stack Power Cable 30 CM', 7, 81.580, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:40:55', '2019-12-26 14:40:55'),
(859, 'CAB-TA-UK', 'United Kingdom AC Type A Power Cable', 14, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:41:08', '2019-12-26 14:41:08'),
(860, 'C9300-NM-8X', 'Catalyst 9300 8 x 10GE Network Module', 7, 2189.900, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:41:43', '2019-12-26 14:41:43'),
(861, 'C9300-DNA-A-48', 'C9300 DNA Advantage, 48-Port Term Licenses', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:41:58', '2019-12-26 14:41:58'),
(862, 'C9300-DNA-A-48-3Y', 'C9300 DNA Advantage, 48-Port, 3 Year Term License', 7, 3236.170, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:42:24', '2019-12-26 17:18:52'),
(863, 'PWR-C1-350WAC-P/2', '350W AC 80+ platinum Config 1 Power Supply', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:42:41', '2019-12-26 14:42:41'),
(864, 'C9300-NW-A-48', 'C9300 Network Advantage, 48-port license', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:42:55', '2019-12-26 14:42:55'),
(865, 'S9300UK9-169', 'UNIVERSAL', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:43:11', '2019-12-26 14:43:11'),
(866, 'C1-ADD-OPTOUT', 'Cisco ONE Add-On Session Opt Out (No Fulfillment)', 7, 0.000, 131, 0, '', NULL, NULL, '53', '2019-12-26 14:43:25', '2019-12-26 14:43:25'),
(867, 'NDI-5503-AL', 'Fixed dome 5MP AVF H.265 IR', 16, 2545.160, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:48:52', '2020-01-09 16:53:43'),
(868, 'NBE-5503-AL', 'IR IP bullet 5Mp AVF H.265 IP67\r\nSMB', 13, 2362.700, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:49:31', '2020-01-09 16:54:29'),
(869, 'HX8R', 'Husky X8 barebone w/RAID', 1, 40110.660, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:50:56', '2020-01-14 20:01:04'),
(870, 'HXGS4TB-4', '4TB HDD w/tray for X8 (4-pack)', 2, 4443.370, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:51:22', '2020-01-13 17:55:15'),
(871, 'XPEXPLUSBL', 'XProtect Express+ Base License\r\nBase License', 1, 57.600, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:51:48', '2020-01-09 16:59:20'),
(872, 'XPEXPLUSDL', 'XProtect Express+ Device License', 29, 225.600, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:52:15', '2020-01-09 17:01:26'),
(873, 'YXPEXPLUSDL', 'One year Care Plus for XProtect\r\nExpress+ Device License', 29, 42.056, 132, 0, '', NULL, NULL, '55', '2020-01-09 16:52:35', '2020-01-09 17:02:09'),
(874, 'PSS', 'Consultancy Services for the below Services deliverables as per Scope of Work\r\nshared before and the detailed version that will be shared upon PO,\r\n• Project Kick Off Meeting & Workshop\r\n• LLD Documentation\r\n• ATP/NRFU\r\n• NIP Documentation\r\n• Implementation and Migration\r\n• ATP Execution\r\n• Final Handover Documentation', 1, 89047.617, 133, 0, '', NULL, NULL, '53', '2020-01-20 19:15:19', '2020-01-20 19:40:27'),
(876, 'kjkljlkj', ',mnm,', 56565, 54564.000, NULL, 1, '25-01-2020', NULL, 'kjhjkhjkhkh', '25', '2020-01-26 06:51:51', '2020-01-26 06:51:51'),
(877, 'kjkljlkj', ',mnm,', 56565, 54564.000, NULL, 1, '25-01-2020', NULL, 'kjhjkhjkhkh', '25', '2020-01-26 06:51:51', '2020-01-26 06:51:51'),
(878, 'Dahmane ABdoullah', 'ajhfjakh', 15, 1400.000, NULL, 1, '01-02-2020', NULL, 'iuyui', '0', '2020-02-01 21:42:37', '2020-02-01 21:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `phone`, `short_name`, `deleted_at`) VALUES
(2, 'test vendor', 'phone(0102899202)', 'venddd', NULL),
(3, 'test again', 'mob 002220', 'vend2', NULL),
(5, 'Al Mousa Specialized Cables Est.\r\nAcc # 21551184000105\r\nBank # NCB', '0553382302', 'Al Mousa Specialized Cables Est.', NULL),
(6, 'Horizon Dimension Trading Est. Husam Hamid +966 540644248  h.hamad@h-dimension.com', 'Husam Hamid +966 540644248', 'Horizon Dimension', NULL),
(7, 'Modern Oceans Co.For Retail & Wholesale Trading Of Electrical Meterials Limited Libility Compnay', 'M. Balteagy   0592261257', 'Modern Oceans', NULL),
(8, 'Al Jammaz Distribution P.O Box 4310, Riyadh 11491, Kingdom Of Sa T: +966 1 4768811 F: +966 1 4774737', '+966 1 4768811 F: +966 1 4774737', 'Al Jammaz Distribution', NULL),
(9, 'APTEC - An Ingram Micro Company Office 519, Akariya Bldg. 2, Olaya Rd PO Box 94609, Riyadh 11614, Saudi Arabia Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'Mobile. +966532530702 Tel. +966114601950 Ext. 1422', 'APTEC', NULL),
(10, 'Zorins Technologies Saudia Mohammed Abdul +966 503560415 m.osmani@zorinstechnologies.com', 'Mohammed Abdul +966 503560415', 'Zorins Technologies', NULL),
(11, 'ANIXTER Saudi Limited Company', '0', 'ANIXTER', NULL),
(12, 'Redington Seamless Partnerships 0500470042', '0500470042', 'Redington', NULL),
(13, 'Security House \r\nFiroz_SHT\r\nMob: +966 58 126 8460 | Tel: +966 11 4774342 | Fax: +966 011 473 0283', '593822991', 'Security House', NULL),
(14, 'Exclusive Networks, Al-Ahsa Street, Al-Hoshan Complex\r\n\r\nPO Box 90872, Riyadh 11623, Saudi Arabia', '593822991', 'Exclusive Networks', NULL),
(15, 'Temco\r\n+ P.O. Box 365075 Riyadh 11393-KSA\r\n +966 11 461-1721\r\n +966  920001055 \r\n +966 11 461-5038\r\n+966   56-343-3849\r\nwww.temco.com.sa', '593822991', 'Temco', NULL),
(16, '8968 Othman Bin Affan Rd -Al Waha Unit 112              	\r\nRiyadh 12445-3995   \r\nsal@das-sa.com        www.das-sa.com', '593822991', 'شركة دار السليمانيه للتجاره', NULL),
(17, 'logicom-group', 'T: +966 (11) 207 8450', 'logicom-group', NULL),
(18, 'SCIENCE EVALUATION  TECHNOLOGY (SET)\r\nBadr Aldeen Allathqany\r\nBusiness Development Manager_ICT Sales Consultant\r\nMobile: +966 55 6625299\r\nE-Mail: badr@set.sa.com', '593822991', 'SCIENCE EVALUATION  TECHNOLOGY (SET)', NULL),
(19, 'ABDULLAH HADI AHMED\r\nAdvance International Company\r\n  EMAIL : A.HADI@ZKteco-sa.com\r\n   MOBIL: 0591888123', '0591888123', 'Advance International Company', NULL),
(20, 'Saudi Electronic Trading Co', '+966546535006', 'SETRA', NULL),
(21, 'Mindware IT Value-added distributor', '011 511 9387', 'Mindware', NULL),
(22, 'Mona Al-Nawajha', '0535000879', 'Mona Al-Nawajha', NULL),
(23, 'SCHNEIDER ELECTRIC SAUDI ARABIA FOR SOLUTIONS & SERVICES', '0593822991', 'SCHNEIDER', NULL),
(24, 'Hardware Solutions Builders Co.', '0593822991', 'Hasoub', NULL),
(25, 'Badr Aldeen Allathqany', '+966 55662 5299', 'Science Evolution Technology', NULL),
(26, 'Mohammed Alhamdy--\r\nBlinks International Trading', '+966561322620', 'Blinks International Trading', NULL),
(27, 'Eng. Ahmed Al Masri  \r\nMob. # 0555014231', '0555014231', 'SFFECO', NULL),
(28, 'Gamma Factory for Metal  Industries \r\n--Jamal Al-Whaidi', '0505249431', 'GAMMA', NULL),
(29, 'IT ASSOCIATES', '01126527893', 'ITA-KSA', NULL),
(30, 'Al-Khaleej Al-Awwal for Communications and IT Est.', '+966580447449', 'khaleej alawwal', NULL),
(31, 'ZMR Trading Est', '+966 12 6620303', 'ZMR', NULL),
(32, 'National Audio Visual Technology Specialists Establishment', '0114785848', 'AVTS', NULL),
(33, 'Technical Field Establishment', '+966 504 424 424', 'TF', NULL),
(34, 'Gulf ITQAN system for integrated solutions', '+966590333101', 'Gulf ITQAN system', NULL),
(35, 'Electro Mechanical Solutions\r\nAmr Abd El Maksoud El Abd, PMP\r\nMobile: +(966) 537663652', '0593822991', 'EMS', NULL),
(36, 'International Arabian Hardware\r\nWaleed Mohamed\r\nMobile: 0546803035', '0593822991', 'IAH', NULL),
(37, 'Al-otaishan Group for safety', '+96655508 3217', 'Al-otaishan', NULL),
(38, 'Moaz Mohammed Elzahrawy', '+966 59 682 2551', 'MUAZ ELZAHARAY', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `priority` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `description`, `priority`, `status`, `created_at`, `deleted_at`) VALUES
(1, 'task one', 'je suis task 1', 'Meduim', 'On Hold', '2020-01-25 22:12:53', NULL),
(2, 'Test it', 'je suis en train de tester le task', 'High', 'Closed', '2020-01-25 22:02:33', NULL),
(3, 'jkljk', 'ljlkjkljk', 'Low', 'On Hold', '2020-01-25 22:01:59', NULL),
(4, 'Test task', 'test desc', 'High', 'Opened', '2020-02-02 21:32:41', NULL),
(5, 'Test task', 'test desc', 'High', 'Closed', '2020-02-02 21:32:44', NULL),
(6, 'Test task', 'test desc', 'High', 'Closed', '2020-02-02 21:32:46', '2020-02-02 23:43:50'),
(7, 'Test task', 'test desc', 'High', 'Closed', '2020-02-02 21:32:46', '2020-02-02 23:43:47'),
(8, 'Test task', 'test desc', 'High', 'Closed', '2020-02-02 21:32:47', '2020-02-02 23:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `username`, `name`, `lname`, `email`, `password`, `created_at`, `deleted_at`) VALUES
(41, 'SA', 'shdlan', 'Saud', '', 'shdlan@gmail.com', '123456', '2019-02-23 01:05:25', NULL),
(43, 'SA,PM', 'YAQUB', 'Ahmed Yaqoub', '', 'ayaqoub@dardelta.com.sa', '123456', '2019-02-23 01:21:06', NULL),
(46, 'SA,SM', 'madani', 'Mohammed Madani', '', 'madani@dardelta.com.sa', '123456', '2019-02-23 01:27:26', NULL),
(47, 'SA', 'msabir', 'Mohammed Saber', '', 'msabir@dardelta.com.sa', '123456', '2019-02-23 01:29:00', NULL),
(48, 'PM,SA', 'salman', 'Salman AlDalbahi', '', 'salman@dardelta.com.sa', '123456', '2019-02-23 01:30:02', NULL),
(50, 'CEO', 'Saud', 'Saud Otaibi', '', 'saud@dardelta.com.sa', '123456', '2019-02-23 01:34:26', NULL),
(54, 'SA', 'elmoctar.yehdhih@gmail.com', 'A A', '', 'elmoctar.yehdhih@gmail.com', '123456', '2019-12-10 18:51:01', NULL),
(56, 'PM', 'taccount', 'test test', '', 'test1@test.com', '123456', '2020-01-16 15:06:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `lupdate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `day`, `client`, `contact`, `reason`, `user_id`, `lupdate`, `created_at`, `updated_at`) VALUES
(2, 'first visit test', 'jjjhh kk', 'jjssjj', 'jjjsjs', 46, NULL, '2019-02-23 17:15:39', '2019-02-23 17:30:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_project_id_foreign` (`project_id`),
  ADD KEY `notes_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_amounts`
--
ALTER TABLE `payment_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_vouchers`
--
ALTER TABLE `payment_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cashes`
--
ALTER TABLE `petty_cashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_groups`
--
ALTER TABLE `project_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_items`
--
ALTER TABLE `project_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro` (`project_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popo` (`purchase_id`),
  ADD KEY `project_code` (`project_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beneficiary`
--
ALTER TABLE `beneficiary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `deal`
--
ALTER TABLE `deal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_amounts`
--
ALTER TABLE `payment_amounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment_vouchers`
--
ALTER TABLE `payment_vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `petty_cashes`
--
ALTER TABLE `petty_cashes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `project_groups`
--
ALTER TABLE `project_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project_items`
--
ALTER TABLE `project_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=879;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
