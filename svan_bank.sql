-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 07:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `svan_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `abid` int(11) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `additional_fees`
--

CREATE TABLE `additional_fees` (
  `id` int(20) NOT NULL,
  `get_id` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `fee` varchar(200) NOT NULL,
  `Amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `additional_fees`
--

INSERT INTO `additional_fees` (`id`, `get_id`, `tid`, `fee`, `Amount`) VALUES
(20, '1', 'Loan=1907598678', 'dddd', '7888'),
(21, '2', 'Loan=21319580', 'Late Payment', '4000'),
(22, '3', 'Loan=21319580', '', ''),
(23, '5', 'Loan=21319580', 'Late Payment', '2000'),
(26, '6', 'Loan=21319580', 'Late Payment', '200'),
(27, '6', 'Loan=21319580', 'Fine', '128'),
(28, '7', 'Loan=21319580', '50000', '55555555');

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` int(20) NOT NULL,
  `get_id` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `attached_file` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`id`, `get_id`, `tid`, `attached_file`, `date_time`) VALUES
(1, '1', 'Loan=1907598678', 'document/4887_File_cryptos documentation.docx', '2017-05-01 12:11:34'),
(2, '2', 'Loan=21319580', 'document/2782_File_Email.docx', '2017-05-10 16:56:55'),
(3, '5', 'Loan=21319580', 'document/2045_File_Marksheet Management System.docx', '2017-05-13 13:45:57'),
(4, '1', 'Loan=21319580', 'document/5375_File_20CS057 - KARTHIKEYAN R M MERN Stack.pptx', '2022-10-09 18:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `id` int(200) NOT NULL,
  `tracking_id` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`id`, `tracking_id`, `amount`, `address`, `date_time`) VALUES
(10, 'Cryptos?rid=782752', '0.1', '134N7BmQZHSj2WU7kUaN8fFada32GpBXbg', '2017-04-03 14:37:40'),
(11, 'Cryptos?rid=782752', '0.1', '134N7BmQZHSj2WU7kUaN8fFada32GpBXbg', '2017-04-03 15:14:12'),
(15, 'Cryptos?rid=782752', '0.1', '134N7BmQZHSj2WU7kUaN8fFada32GpBXbg', '2017-04-03 16:30:28'),
(18, 'Cryptos?rid=782752', '0.15', '134N7BmQZHSj2WU7kUaN8fFada32GpBXbg', '2017-04-03 17:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banaid` int(11) NOT NULL,
  `bannar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banaid`, `bannar`) VALUES
(3, 'bannar/sld2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `battachment`
--

CREATE TABLE `battachment` (
  `id` int(20) NOT NULL,
  `get_id` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `attached_file` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `battachment`
--

INSERT INTO `battachment` (`id`, `get_id`, `tid`, `attached_file`, `date_time`) VALUES
(1, '1', 'Loan=1907598678', 'bdocument/5605_File_Below is the screenshot of the welcome mail sent to me when I registered with namecheap.docx', '2017-05-01 17:30:28'),
(2, '1', 'Loan=1907598678', 'bdocument/2630_File_Below is the screenshot of the welcome mail sent to me when I registered with namecheap.docx', '2017-05-01 17:32:52'),
(3, '2', 'Loan=1907598678', 'bdocument/6815_File_cryptos documentation.docx', '2017-05-01 17:38:20'),
(4, '3', 'Loan=21319580', 'bdocument/2739_File_INTRODUCTION TO NIGERIA SOCIAL LIFE AND EARLY CIVILIZATION.docx', '2017-05-01 19:35:25'),
(5, '4', 'Loan=21319580', 'bdocument/4525_File_ESTHER.docx', '2017-05-13 13:32:51'),
(6, '5', 'Loan=21319580', 'bdocument/6283_File_13082201a.jpg', '2022-10-06 15:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(250) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `bank_account` varchar(100) NOT NULL,
  `nominee` varchar(100) NOT NULL,
  `nominee_ph` varchar(100) NOT NULL,
  `aadhaar_number` int(200) NOT NULL,
  `kic_number` varchar(100) NOT NULL,
  `addrs1` text NOT NULL,
  `addrs2` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zip` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `account` varchar(200) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `fname`, `lname`, `email`, `phone`, `bank_account`, `nominee`, `nominee_ph`, `aadhaar_number`, `kic_number`, `addrs1`, `addrs2`, `city`, `state`, `zip`, `country`, `comment`, `account`, `balance`, `image`, `date_time`, `status`) VALUES
(7, 'Ayodeji', 'yyyy', 'business2016@gmail.com', '08033527716', '', '', '0', 0, '', 'FCE', 'Abeokuta', 'Ikeja', 'Lagos', '110001', 'US', 'Application for loan', '0034445656', '951', 'img/user3.png', '2022-10-07 06:19:03', 'Pending'),
(8, 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '', '', '0', 0, '', 'FCE', 'Abeokuta', 'Ikeja', 'Lagos', '110001', 'US', 'Application for loan', '0021548721', '951', 'img/user3.png', '2022-10-07 06:18:37', 'Pending'),
(9, 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '', '', '0', 0, '', 'FCE', 'Abeokuta', 'Ikeja', 'Lagos', '110001', 'US', 'Application for loan', '0021548723', '1451', 'img/user3.png', '2022-09-25 14:51:01', 'Pending'),
(27, 'Sangavi', 'Kumar', 'karthiramesh56@gmail.com', '09444985694', '44554543544', 'kkkkkk', '09444985694', 2147483647, '512332154325', '9/1,Sairam Xerox,saravanampatti\r\nnear SNS college of Technology', '9/1,Sairam Xerox,saravanampatti\r\nnear SNS college of Technology', 'coimbatore', 'Tamil Nadu', '641035', 'IN', '', '0021258612', '0', 'img/pan.jpeg', '2022-10-07 12:55:13', 'Completed'),
(28, 'asd', 'hgjh', 'jhgj', 'hjhgjhgj', 'hgjhgjhg', 'hjgjh', 'jhgjhg', 897987987, '897987', '', '', 'uiyiuy', 'iuoiu', 'uouiu', 'uouiou', '', '', '7000', '9899090', '2022-10-12 16:56:20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `collateral`
--

CREATE TABLE `collateral` (
  `id` int(20) NOT NULL,
  `idm` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type_of_collateral` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `make` varchar(200) NOT NULL,
  `serial_number` varchar(200) NOT NULL,
  `estimated_price` varchar(200) NOT NULL,
  `proof_of_ownership` text NOT NULL,
  `cimage` text NOT NULL,
  `observation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `collateral`
--

INSERT INTO `collateral` (`id`, `idm`, `tid`, `name`, `type_of_collateral`, `model`, `make`, `serial_number`, `estimated_price`, `proof_of_ownership`, `cimage`, `observation`) VALUES
(1, '1', 'Loan=1907598678', 'bhhh', 'jhhhjk', 'hhh', 'hkkhkk', '87877878', '78787', '', 'cimage/9fdfcacaa4d943e0328bd32e35a40035ebdc7a9b.png', 'hkjkl'),
(2, '2', 'Loan=21319580', 'Mr Segun O', 'New', 'LOAN2011', 'NEWLOAN', 'LOANS20166', '40000', '', 'cimage/OPTIMUM LOGO FINAL .png', 'This is just testing'),
(3, '5', 'Loan=21319580', 'Plot of Land', 'Land', 'Land', 'Land', 'Receipt', '20000', '', 'cimage/fair.png', 'Good for the application of the loan');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alpha_2` varchar(200) NOT NULL DEFAULT '',
  `alpha_3` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `alpha_2`, `alpha_3`) VALUES
(1, 'Afghanistan', 'fl', 'afg'),
(2, 'Aland Islands', 'ax', 'ala'),
(3, 'Albania', 'al', 'alb'),
(4, 'Algeria', 'dz', 'dza'),
(5, 'American Samoa', 'as', 'asm'),
(6, 'Andorra', 'ad', 'and'),
(7, 'Angola', 'ao', 'ago'),
(8, 'Anguilla', 'ai', 'aia'),
(9, 'Antarctica', 'aq', 'ata'),
(10, 'Antigua and Barbuda', 'ag', 'atg'),
(11, 'Argentina', 'ar', 'arg'),
(12, 'Armenia', 'am', 'arm'),
(13, 'Aruba', 'aw', 'abw'),
(14, 'Australia', 'au', 'aus'),
(15, 'Austria', 'at', 'aut'),
(16, 'Azerbaijan', 'az', 'aze'),
(17, 'Bahamas', 'bs', 'bhs'),
(18, 'Bahrain', 'bh', 'bhr'),
(19, 'Bangladesh', 'bd', 'bgd'),
(20, 'Barbados', 'bb', 'brb'),
(21, 'Belarus', 'by', 'blr'),
(22, 'Belgium', 'be', 'bel'),
(23, 'Belize', 'bz', 'blz'),
(24, 'Benin', 'bj', 'ben'),
(25, 'Bermuda', 'bm', 'bmu'),
(26, 'Bhutan', 'bt', 'btn'),
(27, 'Bolivia, Plurinational State of', 'bo', 'bol'),
(28, 'Bonaire, Sint Eustatius and Saba', 'bq', 'bes'),
(29, 'Bosnia and Herzegovina', 'ba', 'bih'),
(30, 'Botswana', 'bw', 'bwa'),
(31, 'Bouvet Island', 'bv', 'bvt'),
(32, 'Brazil', 'br', 'bra'),
(33, 'British Indian Ocean Territory', 'io', 'iot'),
(34, 'Brunei Darussalam', 'bn', 'brn'),
(35, 'Bulgaria', 'bg', 'bgr'),
(36, 'Burkina Faso', 'bf', 'bfa'),
(37, 'Burundi', 'bi', 'bdi'),
(38, 'Cambodia', 'kh', 'khm'),
(39, 'Cameroon', 'cm', 'cmr'),
(40, 'Canada', 'ca', 'can'),
(41, 'Cape Verde', 'cv', 'cpv'),
(42, 'Cayman Islands', 'ky', 'cym'),
(43, 'Central African Republic', 'cf', 'caf'),
(44, 'Chad', 'td', 'tcd'),
(45, 'Chile', 'cl', 'chl'),
(46, 'China', 'cn', 'chn'),
(47, 'Christmas Island', 'cx', 'cxr'),
(48, 'Cocos (Keeling) Islands', 'cc', 'cck'),
(49, 'Colombia', 'co', 'col'),
(50, 'Comoros', 'km', 'com'),
(51, 'Congo', 'cg', 'cog'),
(52, 'Congo, The Democratic Republic of the', 'cd', 'cod'),
(53, 'Cook Islands', 'ck', 'cok'),
(54, 'Costa Rica', 'cr', 'cri'),
(55, 'Cote d\'Ivoire', 'ci', 'civ'),
(56, 'Croatia', 'hr', 'hrv'),
(57, 'Cuba', 'cu', 'cub'),
(58, 'Curacao', 'cw', 'cuw'),
(59, 'Cyprus', 'cy', 'cyp'),
(60, 'Czech Republic', 'cz', 'cze'),
(61, 'Denmark', 'dk', 'dnk'),
(62, 'Djibouti', 'dj', 'dji'),
(63, 'Dominica', 'dm', 'dma'),
(64, 'Dominican Republic', 'do', 'dom'),
(65, 'Ecuador', 'ec', 'ecu'),
(66, 'Egypt', 'eg', 'egy'),
(67, 'El Salvador', 'sv', 'slv'),
(68, 'Equatorial Guinea', 'gq', 'gnq'),
(69, 'Eritrea', 'er', 'eri'),
(70, 'Estonia', 'ee', 'est'),
(71, 'Ethiopia', 'et', 'eth'),
(72, 'Falkland Islands (Malvinas)', 'fk', 'flk'),
(73, 'Faroe Islands', 'fo', 'fro'),
(74, 'Fiji', 'fj', 'fji'),
(75, 'Finland', 'fi', 'fin'),
(76, 'France', 'fr', 'fra'),
(77, 'French Guiana', 'gf', 'guf'),
(78, 'French Polynesia', 'pf', 'pyf'),
(79, 'French Southern Territories', 'tf', 'atf'),
(80, 'Gabon', 'ga', 'gab'),
(81, 'Gambia', 'gm', 'gmb'),
(82, 'Georgia', 'ge', 'geo'),
(83, 'Germany', 'de', 'deu'),
(84, 'Ghana', 'gh', 'gha'),
(85, 'Gibraltar', 'gi', 'gib'),
(86, 'Greece', 'gr', 'grc'),
(87, 'Greenland', 'gl', 'grl'),
(88, 'Grenada', 'gd', 'grd'),
(89, 'Guadeloupe', 'gp', 'glp'),
(90, 'Guam', 'gu', 'gum'),
(91, 'Guatemala', 'gt', 'gtm'),
(92, 'Guernsey', 'gg', 'ggy'),
(93, 'Guinea', 'gn', 'gin'),
(94, 'Guinea-Bissau', 'gw', 'gnb'),
(95, 'Guyana', 'gy', 'guy'),
(96, 'Haiti', 'ht', 'hti'),
(97, 'Heard Island and McDonald Islands', 'hm', 'hmd'),
(98, 'Holy See (Vatican City State)', 'va', 'vat'),
(99, 'Honduras', 'hn', 'hnd'),
(100, 'Hong Kong', 'hk', 'hkg'),
(101, 'Hungary', 'hu', 'hun'),
(102, 'Iceland', 'is', 'isl'),
(103, 'India', 'in', 'ind'),
(104, 'Indonesia', 'id', 'idn'),
(105, 'Iran, Islamic Republic of', 'ir', 'irn'),
(106, 'Iraq', 'iq', 'irq'),
(107, 'Ireland', 'ie', 'irl'),
(108, 'Isle of Man', 'im', 'imn'),
(109, 'Israel', 'il', 'isr'),
(110, 'Italy', 'it', 'ita'),
(111, 'Jamaica', 'jm', 'jam'),
(112, 'Japan', 'jp', 'jpn'),
(113, 'Jersey', 'je', 'jey'),
(114, 'Jordan', 'jo', 'jor'),
(115, 'Kazakhstan', 'kz', 'kaz'),
(116, 'Kenya', 'ke', 'ken'),
(117, 'Kiribati', 'ki', 'kir'),
(118, 'Korea, Democratic People\'s Republic of', 'kp', 'prk'),
(119, 'Korea, Republic of', 'kr', 'kor'),
(120, 'Kuwait', 'kw', 'kwt'),
(121, 'Kyrgyzstan', 'kg', 'kgz'),
(122, 'Lao People\'s Democratic Republic', 'la', 'lao'),
(123, 'Latvia', 'lv', 'lva'),
(124, 'Lebanon', 'lb', 'lbn'),
(125, 'Lesotho', 'ls', 'lso'),
(126, 'Liberia', 'lr', 'lbr'),
(127, 'Libyan Arab Jamahiriya', 'ly', 'lby'),
(128, 'Liechtenstein', 'li', 'lie'),
(129, 'Lithuania', 'lt', 'ltu'),
(130, 'Luxembourg', 'lu', 'lux'),
(131, 'Macao', 'mo', 'mac'),
(132, 'Macedonia, The former Yugoslav Republic of', 'mk', 'mkd'),
(133, 'Madagascar', 'mg', 'mdg'),
(134, 'Malawi', 'mw', 'mwi'),
(135, 'Malaysia', 'my', 'mys'),
(136, 'Maldives', 'mv', 'mdv'),
(137, 'Mali', 'ml', 'mli'),
(138, 'Malta', 'mt', 'mlt'),
(139, 'Marshall Islands', 'mh', 'mhl'),
(140, 'Martinique', 'mq', 'mtq'),
(141, 'Mauritania', 'mr', 'mrt'),
(142, 'Mauritius', 'mu', 'mus'),
(143, 'Mayotte', 'yt', 'myt'),
(144, 'Mexico', 'mx', 'mex'),
(145, 'Micronesia, Federated States of', 'fm', 'fsm'),
(146, 'Moldova, Republic of', 'md', 'mda'),
(147, 'Monaco', 'mc', 'mco'),
(148, 'Mongolia', 'mn', 'mng'),
(149, 'Montenegro', 'me', 'mne'),
(150, 'Montserrat', 'ms', 'msr'),
(151, 'Morocco', 'ma', 'mar'),
(152, 'Mozambique', 'mz', 'moz'),
(153, 'Myanmar', 'mm', 'mmr'),
(154, 'Namibia', 'na', 'nam'),
(155, 'Nauru', 'nr', 'nru'),
(156, 'Nepal', 'np', 'npl'),
(157, 'Netherlands', 'nl', 'nld'),
(158, 'New Caledonia', 'nc', 'ncl'),
(159, 'New Zealand', 'nz', 'nzl'),
(160, 'Nicaragua', 'ni', 'nic'),
(161, 'Niger', 'ne', 'ner'),
(162, 'Nigeria', 'ng', 'nga'),
(163, 'Niue', 'nu', 'niu'),
(164, 'Norfolk Island', 'nf', 'nfk'),
(165, 'Northern Mariana Islands', 'mp', 'mnp'),
(166, 'Norway', 'no', 'nor'),
(167, 'Oman', 'om', 'omn'),
(168, 'Pakistan', 'pk', 'pak'),
(169, 'Palau', 'pw', 'plw'),
(170, 'Palestinian Territory, Occupied', 'ps', 'pse'),
(171, 'Panama', 'pa', 'pan'),
(172, 'Papua New Guinea', 'pg', 'png'),
(173, 'Paraguay', 'py', 'pry'),
(174, 'Peru', 'pe', 'per'),
(175, 'Philippines', 'ph', 'phl'),
(176, 'Pitcairn', 'pn', 'pcn'),
(177, 'Poland', 'pl', 'pol'),
(178, 'Portugal', 'pt', 'prt'),
(179, 'Puerto Rico', 'pr', 'pri'),
(180, 'Qatar', 'qa', 'qat'),
(181, 'Reunion', 're', 'reu'),
(182, 'Romania', 'ro', 'rou'),
(183, 'Russian Federation', 'ru', 'rus'),
(184, 'Rwanda', 'rw', 'rwa'),
(185, 'Saint Barthelemy', 'bl', 'blm'),
(186, 'Saint Helena, Ascension and Tristan Da Cunha', 'sh', 'shn'),
(187, 'Saint Kitts and Nevis', 'kn', 'kna'),
(188, 'Saint Lucia', 'lc', 'lca'),
(189, 'Saint Martin (French Part)', 'mf', 'maf'),
(190, 'Saint Pierre and Miquelon', 'pm', 'spm'),
(191, 'Saint Vincent and The Grenadines', 'vc', 'vct'),
(192, 'Samoa', 'ws', 'wsm'),
(193, 'San Marino', 'sm', 'smr'),
(194, 'Sao Tome and Principe', 'st', 'stp'),
(195, 'Saudi Arabia', 'sa', 'sau'),
(196, 'Senegal', 'sn', 'sen'),
(197, 'Serbia', 'rs', 'srb'),
(198, 'Seychelles', 'sc', 'syc'),
(199, 'Sierra Leone', 'sl', 'sle'),
(200, 'Singapore', 'sg', 'sgp'),
(201, 'Sint Maarten (Dutch Part)', 'sx', 'sxm'),
(202, 'Slovakia', 'sk', 'svk'),
(203, 'Slovenia', 'si', 'svn'),
(204, 'Solomon Islands', 'sb', 'slb'),
(205, 'Somalia', 'so', 'som'),
(206, 'South Africa', 'za', 'zaf'),
(207, 'South Georgia and The South Sandwich Islands', 'gs', 'sgs'),
(208, 'South Sudan', 'ss', 'ssd'),
(209, 'Spain', 'es', 'esp'),
(210, 'Sri Lanka', 'lk', 'lka'),
(211, 'Sudan', 'sd', 'sdn'),
(212, 'Suriname', 'sr', 'sur'),
(213, 'Svalbard and Jan Mayen', 'sj', 'sjm'),
(214, 'Swaziland', 'sz', 'swz'),
(215, 'Sweden', 'se', 'swe'),
(216, 'Switzerland', 'ch', 'che'),
(217, 'Syrian Arab Republic', 'sy', 'syr'),
(218, 'Taiwan, Province of China', 'tw', 'twn'),
(219, 'Tajikistan', 'tj', 'tjk'),
(220, 'Tanzania, United Republic of', 'tz', 'tza'),
(221, 'Thailand', 'th', 'tha'),
(222, 'Timor-Leste', 'tl', 'tls'),
(223, 'Togo', 'tg', 'tgo'),
(224, 'Tokelau', 'tk', 'tkl'),
(225, 'Tonga', 'to', 'ton'),
(226, 'Trinidad and Tobago', 'tt', 'tto'),
(227, 'Tunisia', 'tn', 'tun'),
(228, 'Turkey', 'tr', 'tur'),
(229, 'Turkmenistan', 'tm', 'tkm'),
(230, 'Turks and Caicos Islands', 'tc', 'tca'),
(231, 'Tuvalu', 'tv', 'tuv'),
(232, 'Uganda', 'ug', 'uga'),
(233, 'Ukraine', 'ua', 'ukr'),
(234, 'United Arab Emirates', 'ae', 'are'),
(235, 'United Kingdom', 'gb', 'gbr'),
(236, 'United States', 'us', 'usa'),
(237, 'United States Minor Outlying Islands', 'um', 'umi'),
(238, 'Uruguay', 'uy', 'ury'),
(239, 'Uzbekistan', 'uz', 'uzb'),
(240, 'Vanuatu', 'vu', 'vut'),
(241, 'Venezuela, Bolivarian Republic of', 've', 'ven'),
(242, 'Viet Nam', 'vn', 'vnm'),
(243, 'Virgin Islands, British', 'vg', 'vgb'),
(244, 'Virgin Islands, U.S.', 'vi', 'vir'),
(245, 'Wallis and Futuna', 'wf', 'wlf'),
(246, 'Western Sahara', 'eh', 'esh'),
(247, 'Yemen', 'ye', 'yem'),
(248, 'Zambia', 'zm', 'zmb'),
(249, 'Zimbabwe', 'zw', 'zwe');

-- --------------------------------------------------------

--
-- Table structure for table `emp_permission`
--

CREATE TABLE `emp_permission` (
  `id` int(20) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `module_name` varchar(350) NOT NULL,
  `pcreate` varchar(20) NOT NULL,
  `pread` varchar(20) NOT NULL,
  `pupdate` varchar(20) NOT NULL,
  `pdelete` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `emp_permission`
--

INSERT INTO `emp_permission` (`id`, `tid`, `module_name`, `pcreate`, `pread`, `pupdate`, `pdelete`) VALUES
(34, 'Cryptos?rid=782752', 'Email Panel', '0', '0', '0', '0'),
(35, 'Cryptos?rid=782752', 'Borrower Details', '1', '0', '0', '0'),
(36, 'Cryptos?rid=782752', 'Employee Wallet', '1', '1', '0', '0'),
(37, 'Cryptos?rid=782752', 'Loan Details', '0', '0', '0', '0'),
(38, 'Cryptos?rid=782752', 'Internal Message', '1', '1', '0', '0'),
(39, 'Cryptos?rid=782752', 'Missed Payment', '0', '0', '0', '0'),
(40, 'Cryptos?rid=782752', 'Payment', '1', '0', '0', '0'),
(41, 'Cryptos?rid=782752', 'Employee Details', '0', '0', '0', '0'),
(42, 'Cryptos?rid=782752', 'Module Permission', '0', '0', '0', '0'),
(43, 'Cryptos?rid=782752', 'Savings Account', '1', '1', '0', '0'),
(44, 'Cryptos?rid=782752', 'General Settings', '0', '0', '0', '0'),
(45, 'Loan=21319580', 'Email Panel', '1', '1', '1', '1'),
(46, 'Loan=21319580', 'Borrower Details', '1', '1', '1', '1'),
(47, 'Loan=21319580', 'Employee Wallet', '1', '1', '1', '1'),
(48, 'Loan=21319580', 'Loan Details', '1', '1', '1', '1'),
(49, 'Loan=21319580', 'Internal Message', '1', '1', '0', '0'),
(50, 'Loan=21319580', 'Missed Payment', '1', '1', '1', '1'),
(51, 'Loan=21319580', 'Payment', '1', '1', '1', '1'),
(52, 'Loan=21319580', 'Employee Details', '1', '1', '1', '1'),
(53, 'Loan=21319580', 'Module Permission', '1', '1', '1', '1'),
(54, 'Loan=21319580', 'Savings Account', '1', '1', '1', '1'),
(55, 'Loan=21319580', 'General Settings', '1', '1', '1', '0'),
(56, 'Loan=21319580', 'Borrower Group', '1', '1', '1', '0'),
(57, 'Cryptos?rid=782752', 'Borrower Group', '0', '0', '0', '0'),
(58, 'Cryptos?rid=782752', 'Email Template', '0', '0', '0', '0'),
(59, 'Loan=21319580', 'Email Template', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `emp_role`
--

CREATE TABLE `emp_role` (
  `id` int(11) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int(11) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `receiver_email` varchar(350) NOT NULL,
  `subject` varchar(350) NOT NULL,
  `msg` text NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `sender`, `receiver_email`, `subject`, `msg`, `time_date`) VALUES
(1, ' ', ' ', ' ', ' ', '2022-09-25 15:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `topic`, `content`) VALUES
(1, 'Please type the subject here', '<p>Please Update Faqs Here</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `fin_info`
--

CREATE TABLE `fin_info` (
  `id` int(20) NOT NULL,
  `get_id` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `occupation` text NOT NULL,
  `mincome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fin_info`
--

INSERT INTO `fin_info` (`id`, `get_id`, `tid`, `occupation`, `mincome`) VALUES
(3, '1', 'Loan=1907598678', '', ''),
(5, '2', 'Loan=1907598678', 'Teacher', '40000'),
(6, '3', 'Loan=21319580', 'Banker', '500000'),
(7, '5', 'Loan=21319580', 'Teacher', '87000'),
(8, '5', 'Loan=21319580', 'Computer Operator', '15000'),
(9, '5', 'Loan=21319580', 'Trader', '72500');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pho` varchar(200) NOT NULL,
  `face` varchar(200) NOT NULL,
  `webs` varchar(200) NOT NULL,
  `conh` varchar(200) NOT NULL,
  `twi` varchar(200) NOT NULL,
  `gplus` varchar(200) NOT NULL,
  `ins` varchar(200) NOT NULL,
  `yous` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `apply` text NOT NULL,
  `mission` text NOT NULL,
  `objective` text NOT NULL,
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `email`, `pho`, `face`, `webs`, `conh`, `twi`, `gplus`, `ins`, `yous`, `about`, `apply`, `mission`, `objective`, `map`) VALUES
(2, 'contact@techsnapie.com', '+918668179904', 'https://www.facebook.com/techsnapie.techsnapie.1/', 'www.techsnapie.com', 'Coimbatore,India', 'https://twitter.com/techsnapieoffi1', 'https://in.linkedin.com/company/techsnapie', 'www.techsnapie.com', 'https://m.youtube.com/channel/UCy370CnYWFoRBJVCjk0NNag', 'We\'re developers who enjoy developing custom websites and applications to help businesses do better online. We\'re here to unleash the world\'s innovation spark by creating a more enlightened way of working. We have highly dedicated informative Developers, UI/UX Designers, Digital Marketer, Security Analyst that we will make your business stand unique in this society.', 'copyrights @ Techsnapie Solutions', 'We start grasping the concept of the business and select the right techniques to be used against the competitors, to grab the attention of the customers of our client. Finally, we give the total explanation of the solution to our customers and endow an idiosyncratic solution.', 'Provide a unique solution for your problem using our best technology\nProvide innovative designs which will be most attractive\nProvide top-rating user-friendly tools', '');

-- --------------------------------------------------------

--
-- Table structure for table `hiw`
--

CREATE TABLE `hiw` (
  `hid` int(11) NOT NULL,
  `hiw` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hiw`
--

INSERT INTO `hiw` (`hid`, `hiw`) VALUES
(1, '<p>We Provide Loans For Individual, Coperate and Many</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `loan_info`
--

CREATE TABLE `loan_info` (
  `id` int(20) NOT NULL,
  `borrower` varchar(200) NOT NULL,
  `baccount` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `amount` varchar(200) NOT NULL,
  `date_release` varchar(200) NOT NULL,
  `agent` varchar(200) NOT NULL,
  `g_name` varchar(200) NOT NULL,
  `g_phone` varchar(200) NOT NULL,
  `g_address` text NOT NULL,
  `rela` varchar(200) NOT NULL,
  `g_image` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `pay_date` varchar(200) NOT NULL,
  `amount_topay` varchar(200) NOT NULL,
  `teller` varchar(200) NOT NULL,
  `remark` text NOT NULL,
  `upstatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `loan_info`
--

INSERT INTO `loan_info` (`id`, `borrower`, `baccount`, `desc`, `amount`, `date_release`, `agent`, `g_name`, `g_phone`, `g_address`, `rela`, `g_image`, `status`, `remarks`, `pay_date`, `amount_topay`, `teller`, `remark`, `upstatus`) VALUES
(1, '7', '0034445656', 'vgfdasfsAD', '200000', '10/10/2022', 'KARTHIKEYAN', 'ram', '4364356435', 'cdvfbzxdgzdfg', 'father', 'img/TS-stamp-removebg-preview.png', 'Approved', 'dgfsdfgdf', '2023-10-09', '202330', 'KARTHIKEYAN', 'argtagdef', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `mywallet`
--

CREATE TABLE `mywallet` (
  `id` int(11) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `t_to` varchar(200) NOT NULL,
  `Amount` varchar(200) NOT NULL,
  `Desc` varchar(200) NOT NULL,
  `wtype` varchar(200) NOT NULL,
  `tdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mywallet`
--

INSERT INTO `mywallet` (`id`, `tid`, `t_to`, `Amount`, `Desc`, `wtype`, `tdate`) VALUES
(39, 'Loan=1907598678', 'NIL', '500', 'hkbvhk', 'credit', '2018-01-03 23:03:23'),
(55, 'Cryptos?rid=453536', 'NIL', '5000', 'transfer to aa HHJ', 'transfer', '2018-01-03 23:03:19'),
(57, 'Cryptos?rid=453536', 'NIL', '3000', 'reverse 3k back to you', 'transfer', '2018-01-03 23:03:14'),
(58, 'Cryptos?rid=453536', 'NIL', '5000', 'add payment', 'debit', '2018-01-03 23:03:08'),
(59, 'Cryptos?rid=453536', 'NIL', '2000', 'jjjjj', 'debit', '2018-01-03 23:03:02'),
(60, 'Loan=21319580', 'NIL', '2400', 'Give loan', 'debit', '2018-01-03 23:02:57'),
(61, 'Loan=21319580', 'NIL', '1350', 'Loan Payment', 'credit', '2018-01-03 23:02:51'),
(64, 'Loan=21319580', 'Cryptos?rid=782752', '200', 'Transfer to JJJ', 'transfer', '2018-01-03 22:58:16'),
(65, 'Loan=21319580', 'Cryptos?rid=782752', '150', 'Transfer money', 'transfer', '2018-01-03 22:58:34'),
(66, 'Loan=21319580', 'NIL', '525', 'Loan due', 'credit', '2018-01-03 23:05:19'),
(67, 'Loan=21319580', 'NIL', '1050', 'Add Payment', 'debit', '2018-01-03 23:04:46'),
(69, 'Cryptos?rid=782752', 'NIL', '12344', '<script>alert(1)</script>', 'debit', '2022-09-25 10:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(20) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `account` varchar(200) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `customer` varchar(200) NOT NULL,
  `loan` varchar(200) NOT NULL,
  `pay_date` varchar(200) NOT NULL,
  `amount_to_pay` varchar(200) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `tid`, `account`, `account_no`, `customer`, `loan`, `pay_date`, `amount_to_pay`, `remarks`) VALUES
(5, 'Loan=21319580', '199382731', '5', '5', '1000000', '05/30/2017', '3000000', 'Payment for Doris Micheal');

-- --------------------------------------------------------

--
-- Table structure for table `payment_schedule`
--

CREATE TABLE `payment_schedule` (
  `id` int(20) NOT NULL,
  `idm` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `term` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `schedule` varchar(200) NOT NULL,
  `interest` varchar(200) NOT NULL,
  `penalty` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_schedule`
--

INSERT INTO `payment_schedule` (`id`, `idm`, `tid`, `term`, `day`, `schedule`, `interest`, `penalty`) VALUES
(10, '11', 'Loan=21319580', 'kjnk', 'Week', 'Daily', '2', '5');

-- --------------------------------------------------------

--
-- Table structure for table `pay_schedule`
--

CREATE TABLE `pay_schedule` (
  `id` int(20) NOT NULL,
  `get_id` varchar(200) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `schedule` varchar(200) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `interest` varchar(200) NOT NULL,
  `payment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pay_schedule`
--

INSERT INTO `pay_schedule` (`id`, `get_id`, `tid`, `schedule`, `balance`, `interest`, `payment`) VALUES
(11, '6', 'Loan=21319580', '12/30/2017', '200', '2', '50');

-- --------------------------------------------------------

--
-- Table structure for table `systemset`
--

CREATE TABLE `systemset` (
  `sysid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `footer` text NOT NULL,
  `abb` varchar(200) NOT NULL,
  `fax` text NOT NULL,
  `currency` text NOT NULL,
  `website` text NOT NULL,
  `mobile` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `map` text NOT NULL,
  `stamp` varchar(350) NOT NULL,
  `timezone` text NOT NULL,
  `sms_charges` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `systemset`
--

INSERT INTO `systemset` (`sysid`, `title`, `name`, `footer`, `abb`, `fax`, `currency`, `website`, `mobile`, `image`, `address`, `email`, `map`, `stamp`, `timezone`, `sms_charges`) VALUES
(1, 'SVAN MICRO CREDIT BANK', 'SVAN LOAN Management System for Micro Finance Bank', 'All rights reserved. 2022 (c)', 'SVAN MICRO CREDIT', '23459', 'Rs.', 'https://www.techsnapie.com', '+918668179904', '../img/ass.png', 'Nagapattinum', 'contact@techsnapie.com', 'Map Code Here				', 'stamp.jpg', '-12', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bgroup`
--

CREATE TABLE `tbl_bgroup` (
  `id` int(255) NOT NULL,
  `group_code` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_manager` varchar(255) NOT NULL,
  `group_submanager` varchar(100) NOT NULL,
  `group_img` varchar(255) NOT NULL,
  `acc_no` varchar(255) NOT NULL,
  `manager_ph` varchar(255) NOT NULL,
  `submanager_ph` varchar(100) NOT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_bgroup`
--

INSERT INTO `tbl_bgroup` (`id`, `group_code`, `group_name`, `group_manager`, `group_submanager`, `group_img`, `acc_no`, `manager_ph`, `submanager_ph`, `address1`, `address2`) VALUES
(1, '0034', 'xx', 'yy', 'tt', 'https://cdn-icons-png.flaticon.com/512/149/149071.png', '003421323', '99893848', '4563453535', '', ''),
(2, '0021', 'uu', 'po', 'qq', 'https://cdn-icons-png.flaticon.com/512/149/149071.png', '0021542542', '39439488', '35353535', '', ''),
(4, '1234', 'sangi mangi', 'sangavi', 'alithra', 'img/qrcode.png', '9897656557444', '3939393929', '3939393939', 'kelpakkam', 'mal pakkam'),
(5, '9864', 'asdasdasdas', 'asdads', 'asdads', 'img/Indic Designs Creative Logo.png', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd'),
(6, '7676', 'mm', 'nn', 'slead1', 'img/image-removebg-preview.png', '96758798765676', '89878878887', '3939393939', '', ''),
(7, '8767', 'mani', 'lead1', 'slead1', 'img/toppng.com-white-location-icon-png-location-logo-png-white-696x872.png', '9897656557', '3939393929', '9898989898', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(20) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `t_type` varchar(200) NOT NULL COMMENT 'Deposit OR Withdraw',
  `acctno` varchar(200) NOT NULL,
  `fn` varchar(200) NOT NULL,
  `ln` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `txid`, `t_type`, `acctno`, `fn`, `ln`, `email`, `phone`, `amount`, `date_time`) VALUES
(1, 'TXID-35663574', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '2000', '2017-12-23 14:57:20'),
(2, 'TXID-48939392', 'Deposit', '0021548721', 'Doris', 'Micheal', 'segtism@gmail.com', '+1564783934', '1525', '2022-09-25 14:51:33'),
(3, 'TXID-73095459', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '250', '2017-12-23 14:57:31'),
(4, 'TXID-94293702', 'Withdraw', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '200', '2017-12-23 15:46:34'),
(5, 'TXID-50934204', 'Withdraw', '0034445656', 'Doris', 'Micheal', 'segtism@gmail.com', '+1564783934', '20', '2022-09-25 14:51:40'),
(6, 'TXID-38992248', 'Withdraw', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '20', '2017-12-23 16:31:34'),
(7, 'TXID-39031128', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '35', '2018-01-06 17:32:07'),
(8, 'TXID-84875916', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '25', '2018-01-06 17:35:58'),
(9, 'TXID-45293701', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '55', '2018-01-06 17:48:19'),
(10, 'TXID-84558899', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '10', '2018-01-06 17:49:51'),
(11, 'TXID-99934205', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '33', '2018-01-06 17:50:29'),
(12, 'TXID-89936219', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '42', '2018-01-06 17:51:15'),
(13, 'TXID-64374512', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '20', '2018-01-06 17:57:03'),
(14, 'TXID-87992249', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '39', '2018-01-06 17:58:39'),
(15, 'TXID-39294311', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '87', '2018-01-06 18:00:23'),
(16, 'TXID-76812928', 'Deposit', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '100', '2018-01-06 18:03:50'),
(17, 'TXID-12060791', 'Withdraw', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '250', '2018-01-06 18:21:37'),
(18, 'TXID-51421692', 'Withdraw', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '200', '2018-01-06 18:25:02'),
(19, 'TXID-28228637', 'Withdraw', '0034445657', 'Ayodeji', 'Akinade', 'business2016@gmail.com', '08033527716', '50', '2018-01-06 18:26:11'),
(20, 'TXID-77877746', 'Deposit', '0021548721', 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '20000', '2022-10-07 04:08:24'),
(21, 'TXID-79090171', 'Deposit', '0021548721', 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '20000', '2022-10-07 04:14:15'),
(22, 'TXID-85388350', 'Deposit', '0034445656', 'Ayodeji', 'yyyy', 'business2016@gmail.com', '08033527716', '20000', '2022-10-07 04:18:18'),
(23, 'TXID-45530923', 'Withdraw', '0034445656', 'Ayodeji', 'yyyy', 'business2016@gmail.com', '08033527716', '20000', '2022-10-07 06:15:34'),
(24, 'TXID-89825802', 'Withdraw', '0021548721', 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '20000', '2022-10-07 06:16:17'),
(25, 'TXID-13135286', 'Withdraw', '0021548721', 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '20000', '2022-10-07 06:17:36'),
(26, 'TXID-12577461', 'Withdraw', '0021548721', 'Ayodeji', 'asd', 'business2016@gmail.com', '08033527716', '500', '2022-10-07 06:18:37'),
(27, 'TXID-55533025', 'Withdraw', '0034445656', 'Ayodeji', 'yyyy', 'business2016@gmail.com', '08033527716', '500', '2022-10-07 06:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `twallet`
--

CREATE TABLE `twallet` (
  `id` int(20) NOT NULL,
  `tid` varchar(200) NOT NULL,
  `Total` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `twallet`
--

INSERT INTO `twallet` (`id`, `tid`, `Total`) VALUES
(10, 'Loan=21319580', '925'),
(12, 'Cryptos?rid=782752', '12894');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `addr1` text NOT NULL,
  `addr2` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zip` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `email`, `phone`, `addr1`, `addr2`, `city`, `state`, `zip`, `country`, `comment`, `username`, `password`, `id`, `image`, `role`) VALUES
(467, 'ajuu', 'at@g.com', '+2334857757769', 'Ghana                    ', 'Ghana										', 'Acra', 'Acra', '23450', 'US', '  Good Â  Â  Â Â Â  Â Â Â  Â Â Â  Â Â Â  Â  Â  Â Â Â  Â Â Â  Â Â Â  Â Â Â  Â  Â ', 'at', 'YXQ=', 'Cryptos?rid=782752', 'img/ac_logo.png', ''),
(482, 'KARTHIKEYAN', 'admin@techsnapie.com', '9444985694', 'address21', 'addres2s2', 'coimbatore', 'Tamil Nadu', '641035', 'IN', 'doneee', 'admin', 'YWRtaW4=', 'Loan=21319580', 'img/techsnapie magazine.png', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`abid`) USING BTREE;

--
-- Indexes for table `additional_fees`
--
ALTER TABLE `additional_fees`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banaid`) USING BTREE;

--
-- Indexes for table `battachment`
--
ALTER TABLE `battachment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `collateral`
--
ALTER TABLE `collateral`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `emp_permission`
--
ALTER TABLE `emp_permission`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `emp_role`
--
ALTER TABLE `emp_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fin_info`
--
ALTER TABLE `fin_info`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `hiw`
--
ALTER TABLE `hiw`
  ADD PRIMARY KEY (`hid`) USING BTREE;

--
-- Indexes for table `loan_info`
--
ALTER TABLE `loan_info`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mywallet`
--
ALTER TABLE `mywallet`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payment_schedule`
--
ALTER TABLE `payment_schedule`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_schedule`
--
ALTER TABLE `pay_schedule`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `systemset`
--
ALTER TABLE `systemset`
  ADD PRIMARY KEY (`sysid`) USING BTREE;

--
-- Indexes for table `tbl_bgroup`
--
ALTER TABLE `tbl_bgroup`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `twallet`
--
ALTER TABLE `twallet`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `abid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `additional_fees`
--
ALTER TABLE `additional_fees`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `battachment`
--
ALTER TABLE `battachment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `collateral`
--
ALTER TABLE `collateral`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `emp_permission`
--
ALTER TABLE `emp_permission`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `emp_role`
--
ALTER TABLE `emp_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fin_info`
--
ALTER TABLE `fin_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hiw`
--
ALTER TABLE `hiw`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loan_info`
--
ALTER TABLE `loan_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `mywallet`
--
ALTER TABLE `mywallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_schedule`
--
ALTER TABLE `payment_schedule`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pay_schedule`
--
ALTER TABLE `pay_schedule`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `systemset`
--
ALTER TABLE `systemset`
  MODIFY `sysid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bgroup`
--
ALTER TABLE `tbl_bgroup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `twallet`
--
ALTER TABLE `twallet`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
