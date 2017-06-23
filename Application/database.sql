-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2017 at 04:47 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_activities`
--

CREATE TABLE `k4tcz2ewg_activities` (
  `activity_id` int(11) NOT NULL,
  `domain` varchar(10) NOT NULL,
  `context` varchar(128) NOT NULL,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(32) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_activities`
--

INSERT INTO `k4tcz2ewg_activities` (`activity_id`, `domain`, `context`, `user`, `user_id`, `action`, `message`, `status`, `date_added`) VALUES
(11, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href="http://localhost/tastyigniter/admin/staffs/edit?id=11">Kathleen</a> <b>logged</b> in.', 0, '2017-06-10 07:00:53'),
(12, 'admin', 'menus', 'staff', 11, 'updated', 'Kathleen <b>updated</b> menu item <a href="http://localhost/tastyigniter/admin/menus/edit?id=76"><b>Adobo.</b></a>', 0, '2017-06-10 07:43:50'),
(13, 'admin', 'staffs', 'staff', 11, 'logged out', '<a href="http://localhost/tastyigniter/admin/staffs/edit?id=11">Kathleen</a> <b>logged</b> out.', 0, '2017-06-10 08:51:24'),
(14, 'admin', 'staffs', 'staff', 11, 'logged in', '<a href="http://localhost/tastyigniter/admin/staffs/edit?id=11">Kathleen</a> <b>logged</b> in.', 0, '2017-06-10 08:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_addresses`
--

CREATE TABLE `k4tcz2ewg_addresses` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(15) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_banners`
--

CREATE TABLE `k4tcz2ewg_banners` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` char(8) NOT NULL,
  `click_url` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `image_code` text NOT NULL,
  `custom_code` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_categories`
--

CREATE TABLE `k4tcz2ewg_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_categories`
--

INSERT INTO `k4tcz2ewg_categories` (`category_id`, `name`, `description`, `parent_id`, `priority`, `image`, `status`) VALUES
(15, 'Appetizer', '', 0, 0, 'data/no_photo.png', 1),
(16, 'Main Course', '', 0, 0, '', 1),
(17, 'Salads', '', 0, 0, '', 1),
(18, 'Seafoods', '', 0, 0, '', 1),
(19, 'Traditional', '', 0, 0, '', 1),
(20, 'Vegetarian', '', 0, 0, '', 1),
(21, 'Soups', '', 0, 0, '', 1),
(22, 'Desserts', '', 0, 0, '', 1),
(23, 'Drinks', '', 0, 0, '', 1),
(24, 'Specials', '', 0, 0, '', 1),
(26, 'Rice Dishes', '', 16, 0, 'data/vegetable-fried-rice.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_countries`
--

CREATE TABLE `k4tcz2ewg_countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `format` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_countries`
--

INSERT INTO `k4tcz2ewg_countries` (`country_id`, `country_name`, `iso_code_2`, `iso_code_3`, `format`, `status`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 1, 'data/flags/af.png'),
(2, 'Albania', 'AL', 'ALB', '', 1, 'data/flags/al.png'),
(3, 'Algeria', 'DZ', 'DZA', '', 1, 'data/flags/dz.png'),
(4, 'American Samoa', 'AS', 'ASM', '', 1, 'data/flags/as.png'),
(5, 'Andorra', 'AD', 'AND', '', 1, 'data/flags/ad.png'),
(6, 'Angola', 'AO', 'AGO', '', 1, 'data/flags/ao.png'),
(7, 'Anguilla', 'AI', 'AIA', '', 1, 'data/flags/ai.png'),
(8, 'Antarctica', 'AQ', 'ATA', '', 1, 'data/flags/aq.png'),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 1, 'data/flags/ag.png'),
(10, 'Argentina', 'AR', 'ARG', '', 1, 'data/flags/ar.png'),
(11, 'Armenia', 'AM', 'ARM', '', 1, 'data/flags/am.png'),
(12, 'Aruba', 'AW', 'ABW', '', 1, 'data/flags/aw.png'),
(13, 'Australia', 'AU', 'AUS', '', 1, 'data/flags/au.png'),
(14, 'Austria', 'AT', 'AUT', '', 1, 'data/flags/at.png'),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 1, 'data/flags/az.png'),
(16, 'Bahamas', 'BS', 'BHS', '', 1, 'data/flags/bs.png'),
(17, 'Bahrain', 'BH', 'BHR', '', 1, 'data/flags/bh.png'),
(18, 'Bangladesh', 'BD', 'BGD', '', 1, 'data/flags/bd.png'),
(19, 'Barbados', 'BB', 'BRB', '', 1, 'data/flags/bb.png'),
(20, 'Belarus', 'BY', 'BLR', '', 1, 'data/flags/by.png'),
(21, 'Belgium', 'BE', 'BEL', '', 1, 'data/flags/be.png'),
(22, 'Belize', 'BZ', 'BLZ', '', 1, 'data/flags/bz.png'),
(23, 'Benin', 'BJ', 'BEN', '', 1, 'data/flags/bj.png'),
(24, 'Bermuda', 'BM', 'BMU', '', 1, 'data/flags/bm.png'),
(25, 'Bhutan', 'BT', 'BTN', '', 1, 'data/flags/bt.png'),
(26, 'Bolivia', 'BO', 'BOL', '', 1, 'data/flags/bo.png'),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', '', 1, 'data/flags/ba.png'),
(28, 'Botswana', 'BW', 'BWA', '', 1, 'data/flags/bw.png'),
(29, 'Bouvet Island', 'BV', 'BVT', '', 1, 'data/flags/bv.png'),
(30, 'Brazil', 'BR', 'BRA', '', 1, 'data/flags/br.png'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 1, 'data/flags/io.png'),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 1, 'data/flags/bn.png'),
(33, 'Bulgaria', 'BG', 'BGR', '', 1, 'data/flags/bg.png'),
(34, 'Burkina Faso', 'BF', 'BFA', '', 1, 'data/flags/bf.png'),
(35, 'Burundi', 'BI', 'BDI', '', 1, 'data/flags/bi.png'),
(36, 'Cambodia', 'KH', 'KHM', '', 1, 'data/flags/kh.png'),
(37, 'Cameroon', 'CM', 'CMR', '', 1, 'data/flags/cm.png'),
(38, 'Canada', 'CA', 'CAN', '', 1, 'data/flags/ca.png'),
(39, 'Cape Verde', 'CV', 'CPV', '', 1, 'data/flags/cv.png'),
(40, 'Cayman Islands', 'KY', 'CYM', '', 1, 'data/flags/ky.png'),
(41, 'Central African Republic', 'CF', 'CAF', '', 1, 'data/flags/cf.png'),
(42, 'Chad', 'TD', 'TCD', '', 1, 'data/flags/td.png'),
(43, 'Chile', 'CL', 'CHL', '', 1, 'data/flags/cl.png'),
(44, 'China', 'CN', 'CHN', '', 1, 'data/flags/cn.png'),
(45, 'Christmas Island', 'CX', 'CXR', '', 1, 'data/flags/cx.png'),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 1, 'data/flags/cc.png'),
(47, 'Colombia', 'CO', 'COL', '', 1, 'data/flags/co.png'),
(48, 'Comoros', 'KM', 'COM', '', 1, 'data/flags/km.png'),
(49, 'Congo', 'CG', 'COG', '', 1, 'data/flags/cg.png'),
(50, 'Cook Islands', 'CK', 'COK', '', 1, 'data/flags/ck.png'),
(51, 'Costa Rica', 'CR', 'CRI', '', 1, 'data/flags/cr.png'),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 1, 'data/flags/ci.png'),
(53, 'Croatia', 'HR', 'HRV', '', 1, 'data/flags/hr.png'),
(54, 'Cuba', 'CU', 'CUB', '', 1, 'data/flags/cu.png'),
(55, 'Cyprus', 'CY', 'CYP', '', 1, 'data/flags/cy.png'),
(56, 'Czech Republic', 'CZ', 'CZE', '', 1, 'data/flags/cz.png'),
(57, 'Denmark', 'DK', 'DNK', '', 1, 'data/flags/dk.png'),
(58, 'Djibouti', 'DJ', 'DJI', '', 1, 'data/flags/dj.png'),
(59, 'Dominica', 'DM', 'DMA', '', 1, 'data/flags/dm.png'),
(60, 'Dominican Republic', 'DO', 'DOM', '', 1, 'data/flags/do.png'),
(61, 'East Timor', 'TP', 'TMP', '', 1, 'data/flags/tp.png'),
(62, 'Ecuador', 'EC', 'ECU', '', 1, 'data/flags/ec.png'),
(63, 'Egypt', 'EG', 'EGY', '', 1, 'data/flags/eg.png'),
(64, 'El Salvador', 'SV', 'SLV', '', 1, 'data/flags/sv.png'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 1, 'data/flags/gq.png'),
(66, 'Eritrea', 'ER', 'ERI', '', 1, 'data/flags/er.png'),
(67, 'Estonia', 'EE', 'EST', '', 1, 'data/flags/ee.png'),
(68, 'Ethiopia', 'ET', 'ETH', '', 1, 'data/flags/et.png'),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 1, 'data/flags/fk.png'),
(70, 'Faroe Islands', 'FO', 'FRO', '', 1, 'data/flags/fo.png'),
(71, 'Fiji', 'FJ', 'FJI', '', 1, 'data/flags/fj.png'),
(72, 'Finland', 'FI', 'FIN', '', 1, 'data/flags/fi.png'),
(73, 'France', 'FR', 'FRA', '', 1, 'data/flags/fr.png'),
(74, 'France, Metropolitan', 'FX', 'FXX', '', 1, 'data/flags/fx.png'),
(75, 'French Guiana', 'GF', 'GUF', '', 1, 'data/flags/gf.png'),
(76, 'French Polynesia', 'PF', 'PYF', '', 1, 'data/flags/pf.png'),
(77, 'French Southern Territories', 'TF', 'ATF', '', 1, 'data/flags/tf.png'),
(78, 'Gabon', 'GA', 'GAB', '', 1, 'data/flags/ga.png'),
(79, 'Gambia', 'GM', 'GMB', '', 1, 'data/flags/gm.png'),
(80, 'Georgia', 'GE', 'GEO', '', 1, 'data/flags/ge.png'),
(81, 'Germany', 'DE', 'DEU', '', 1, 'data/flags/de.png'),
(82, 'Ghana', 'GH', 'GHA', '', 1, 'data/flags/gh.png'),
(83, 'Gibraltar', 'GI', 'GIB', '', 1, 'data/flags/gi.png'),
(84, 'Greece', 'GR', 'GRC', '', 1, 'data/flags/gr.png'),
(85, 'Greenland', 'GL', 'GRL', '', 1, 'data/flags/gl.png'),
(86, 'Grenada', 'GD', 'GRD', '', 1, 'data/flags/gd.png'),
(87, 'Guadeloupe', 'GP', 'GLP', '', 1, 'data/flags/gp.png'),
(88, 'Guam', 'GU', 'GUM', '', 1, 'data/flags/gu.png'),
(89, 'Guatemala', 'GT', 'GTM', '', 1, 'data/flags/gt.png'),
(90, 'Guinea', 'GN', 'GIN', '', 1, 'data/flags/gn.png'),
(91, 'Guinea-bissau', 'GW', 'GNB', '', 1, 'data/flags/gw.png'),
(92, 'Guyana', 'GY', 'GUY', '', 1, 'data/flags/gy.png'),
(93, 'Haiti', 'HT', 'HTI', '', 1, 'data/flags/ht.png'),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 1, 'data/flags/hm.png'),
(95, 'Honduras', 'HN', 'HND', '', 1, 'data/flags/hn.png'),
(96, 'Hong Kong', 'HK', 'HKG', '', 1, 'data/flags/hk.png'),
(97, 'Hungary', 'HU', 'HUN', '', 1, 'data/flags/hu.png'),
(98, 'Iceland', 'IS', 'ISL', '', 1, 'data/flags/is.png'),
(99, 'India', 'IN', 'IND', '', 1, 'data/flags/in.png'),
(100, 'Indonesia', 'ID', 'IDN', '', 1, 'data/flags/id.png'),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 1, 'data/flags/ir.png'),
(102, 'Iraq', 'IQ', 'IRQ', '', 1, 'data/flags/iq.png'),
(103, 'Ireland', 'IE', 'IRL', '', 1, 'data/flags/ie.png'),
(104, 'Israel', 'IL', 'ISR', '', 1, 'data/flags/il.png'),
(105, 'Italy', 'IT', 'ITA', '', 1, 'data/flags/it.png'),
(106, 'Jamaica', 'JM', 'JAM', '', 1, 'data/flags/jm.png'),
(107, 'Japan', 'JP', 'JPN', '', 1, 'data/flags/jp.png'),
(108, 'Jordan', 'JO', 'JOR', '', 1, 'data/flags/jo.png'),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 1, 'data/flags/kz.png'),
(110, 'Kenya', 'KE', 'KEN', '', 1, 'data/flags/ke.png'),
(111, 'Kiribati', 'KI', 'KIR', '', 1, 'data/flags/ki.png'),
(112, 'North Korea', 'KP', 'PRK', '', 1, 'data/flags/kp.png'),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 1, 'data/flags/kr.png'),
(114, 'Kuwait', 'KW', 'KWT', '', 1, 'data/flags/kw.png'),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 1, 'data/flags/kg.png'),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 1, 'data/flags/la.png'),
(117, 'Latvia', 'LV', 'LVA', '', 1, 'data/flags/lv.png'),
(118, 'Lebanon', 'LB', 'LBN', '', 1, 'data/flags/lb.png'),
(119, 'Lesotho', 'LS', 'LSO', '', 1, 'data/flags/ls.png'),
(120, 'Liberia', 'LR', 'LBR', '', 1, 'data/flags/lr.png'),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 1, 'data/flags/ly.png'),
(122, 'Liechtenstein', 'LI', 'LIE', '', 1, 'data/flags/li.png'),
(123, 'Lithuania', 'LT', 'LTU', '', 1, 'data/flags/lt.png'),
(124, 'Luxembourg', 'LU', 'LUX', '', 1, 'data/flags/lu.png'),
(125, 'Macau', 'MO', 'MAC', '', 1, 'data/flags/mo.png'),
(126, 'FYROM', 'MK', 'MKD', '', 1, 'data/flags/mk.png'),
(127, 'Madagascar', 'MG', 'MDG', '', 1, 'data/flags/mg.png'),
(128, 'Malawi', 'MW', 'MWI', '', 1, 'data/flags/mw.png'),
(129, 'Malaysia', 'MY', 'MYS', '', 1, 'data/flags/my.png'),
(130, 'Maldives', 'MV', 'MDV', '', 1, 'data/flags/mv.png'),
(131, 'Mali', 'ML', 'MLI', '', 1, 'data/flags/ml.png'),
(132, 'Malta', 'MT', 'MLT', '', 1, 'data/flags/mt.png'),
(133, 'Marshall Islands', 'MH', 'MHL', '', 1, 'data/flags/mh.png'),
(134, 'Martinique', 'MQ', 'MTQ', '', 1, 'data/flags/mq.png'),
(135, 'Mauritania', 'MR', 'MRT', '', 1, 'data/flags/mr.png'),
(136, 'Mauritius', 'MU', 'MUS', '', 1, 'data/flags/mu.png'),
(137, 'Mayotte', 'YT', 'MYT', '', 1, 'data/flags/yt.png'),
(138, 'Mexico', 'MX', 'MEX', '', 1, 'data/flags/mx.png'),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 1, 'data/flags/fm.png'),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 1, 'data/flags/md.png'),
(141, 'Monaco', 'MC', 'MCO', '', 1, 'data/flags/mc.png'),
(142, 'Mongolia', 'MN', 'MNG', '', 1, 'data/flags/mn.png'),
(143, 'Montserrat', 'MS', 'MSR', '', 1, 'data/flags/ms.png'),
(144, 'Morocco', 'MA', 'MAR', '', 1, 'data/flags/ma.png'),
(145, 'Mozambique', 'MZ', 'MOZ', '', 1, 'data/flags/mz.png'),
(146, 'Myanmar', 'MM', 'MMR', '', 1, 'data/flags/mm.png'),
(147, 'Namibia', 'NA', 'NAM', '', 1, 'data/flags/na.png'),
(148, 'Nauru', 'NR', 'NRU', '', 1, 'data/flags/nr.png'),
(149, 'Nepal', 'NP', 'NPL', '', 1, 'data/flags/np.png'),
(150, 'Netherlands', 'NL', 'NLD', '', 1, 'data/flags/nl.png'),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 1, 'data/flags/an.png'),
(152, 'New Caledonia', 'NC', 'NCL', '', 1, 'data/flags/nc.png'),
(153, 'New Zealand', 'NZ', 'NZL', '', 1, 'data/flags/nz.png'),
(154, 'Nicaragua', 'NI', 'NIC', '', 1, 'data/flags/ni.png'),
(155, 'Niger', 'NE', 'NER', '', 1, 'data/flags/ne.png'),
(156, 'Nigeria', 'NG', 'NGA', '', 1, 'data/flags/ng.png'),
(157, 'Niue', 'NU', 'NIU', '', 1, 'data/flags/nu.png'),
(158, 'Norfolk Island', 'NF', 'NFK', '', 1, 'data/flags/nf.png'),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 1, 'data/flags/mp.png'),
(160, 'Norway', 'NO', 'NOR', '', 1, 'data/flags/no.png'),
(161, 'Oman', 'OM', 'OMN', '', 1, 'data/flags/om.png'),
(162, 'Pakistan', 'PK', 'PAK', '', 1, 'data/flags/pk.png'),
(163, 'Palau', 'PW', 'PLW', '', 1, 'data/flags/pw.png'),
(164, 'Panama', 'PA', 'PAN', '', 1, 'data/flags/pa.png'),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 1, 'data/flags/pg.png'),
(166, 'Paraguay', 'PY', 'PRY', '', 1, 'data/flags/py.png'),
(167, 'Peru', 'PE', 'PER', '', 1, 'data/flags/pe.png'),
(168, 'Philippines', 'PH', 'PHL', '', 1, 'data/flags/ph.png'),
(169, 'Pitcairn', 'PN', 'PCN', '', 1, 'data/flags/pn.png'),
(170, 'Poland', 'PL', 'POL', '', 1, 'data/flags/pl.png'),
(171, 'Portugal', 'PT', 'PRT', '', 1, 'data/flags/pt.png'),
(172, 'Puerto Rico', 'PR', 'PRI', '', 1, 'data/flags/pr.png'),
(173, 'Qatar', 'QA', 'QAT', '', 1, 'data/flags/qa.png'),
(174, 'Reunion', 'RE', 'REU', '', 1, 'data/flags/re.png'),
(175, 'Romania', 'RO', 'ROM', '', 1, 'data/flags/ro.png'),
(176, 'Russian Federation', 'RU', 'RUS', '', 1, 'data/flags/ru.png'),
(177, 'Rwanda', 'RW', 'RWA', '', 1, 'data/flags/rw.png'),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 1, 'data/flags/kn.png'),
(179, 'Saint Lucia', 'LC', 'LCA', '', 1, 'data/flags/lc.png'),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 1, 'data/flags/vc.png'),
(181, 'Samoa', 'WS', 'WSM', '', 1, 'data/flags/ws.png'),
(182, 'San Marino', 'SM', 'SMR', '', 1, 'data/flags/sm.png'),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 1, 'data/flags/st.png'),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 1, 'data/flags/sa.png'),
(185, 'Senegal', 'SN', 'SEN', '', 1, 'data/flags/sn.png'),
(186, 'Seychelles', 'SC', 'SYC', '', 1, 'data/flags/sc.png'),
(187, 'Sierra Leone', 'SL', 'SLE', '', 1, 'data/flags/sl.png'),
(188, 'Singapore', 'SG', 'SGP', '', 1, 'data/flags/sg.png'),
(189, 'Slovak Republic', 'SK', 'SVK', '', 1, 'data/flags/sk.png'),
(190, 'Slovenia', 'SI', 'SVN', '', 1, 'data/flags/si.png'),
(191, 'Solomon Islands', 'SB', 'SLB', '', 1, 'data/flags/sb.png'),
(192, 'Somalia', 'SO', 'SOM', '', 1, 'data/flags/so.png'),
(193, 'South Africa', 'ZA', 'ZAF', '', 1, 'data/flags/za.png'),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 1, 'data/flags/gs.png'),
(195, 'Spain', 'ES', 'ESP', '', 1, 'data/flags/es.png'),
(196, 'Sri Lanka', 'LK', 'LKA', '', 1, 'data/flags/lk.png'),
(197, 'St. Helena', 'SH', 'SHN', '', 1, 'data/flags/sh.png'),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 1, 'data/flags/pm.png'),
(199, 'Sudan', 'SD', 'SDN', '', 1, 'data/flags/sd.png'),
(200, 'Suriname', 'SR', 'SUR', '', 1, 'data/flags/sr.png'),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 1, 'data/flags/sj.png'),
(202, 'Swaziland', 'SZ', 'SWZ', '', 1, 'data/flags/sz.png'),
(203, 'Sweden', 'SE', 'SWE', '', 1, 'data/flags/se.png'),
(204, 'Switzerland', 'CH', 'CHE', '', 1, 'data/flags/ch.png'),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 1, 'data/flags/sy.png'),
(206, 'Taiwan', 'TW', 'TWN', '', 1, 'data/flags/tw.png'),
(207, 'Tajikistan', 'TJ', 'TJK', '', 1, 'data/flags/tj.png'),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 1, 'data/flags/tz.png'),
(209, 'Thailand', 'TH', 'THA', '', 1, 'data/flags/th.png'),
(210, 'Togo', 'TG', 'TGO', '', 1, 'data/flags/tg.png'),
(211, 'Tokelau', 'TK', 'TKL', '', 1, 'data/flags/tk.png'),
(212, 'Tonga', 'TO', 'TON', '', 1, 'data/flags/to.png'),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 1, 'data/flags/tt.png'),
(214, 'Tunisia', 'TN', 'TUN', '', 1, 'data/flags/tn.png'),
(215, 'Turkey', 'TR', 'TUR', '', 1, 'data/flags/tr.png'),
(216, 'Turkmenistan', 'TM', 'TKM', '', 1, 'data/flags/tm.png'),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 1, 'data/flags/tc.png'),
(218, 'Tuvalu', 'TV', 'TUV', '', 1, 'data/flags/tv.png'),
(219, 'Uganda', 'UG', 'UGA', '', 1, 'data/flags/ug.png'),
(220, 'Ukraine', 'UA', 'UKR', '', 1, 'data/flags/ua.png'),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 1, 'data/flags/ae.png'),
(222, 'United Kingdom', 'GB', 'GBR', '{address_1}\n{address_2}\n{city} {postcode} {state}\n{country}', 1, 'data/flags/gb.png'),
(223, 'United States', 'US', 'USA', '', 1, 'data/flags/us.png'),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 1, 'data/flags/um.png'),
(225, 'Uruguay', 'UY', 'URY', '', 1, 'data/flags/uy.png'),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 1, 'data/flags/uz.png'),
(227, 'Vanuatu', 'VU', 'VUT', '', 1, 'data/flags/vu.png'),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 1, 'data/flags/va.png'),
(229, 'Venezuela', 'VE', 'VEN', '', 1, 'data/flags/ve.png'),
(230, 'Viet Nam', 'VN', 'VNM', '', 1, 'data/flags/vn.png'),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 1, 'data/flags/vg.png'),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 1, 'data/flags/vi.png'),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 1, 'data/flags/wf.png'),
(234, 'Western Sahara', 'EH', 'ESH', '', 1, 'data/flags/eh.png'),
(235, 'Yemen', 'YE', 'YEM', '', 1, 'data/flags/ye.png'),
(236, 'Yugoslavia', 'YU', 'YUG', '', 1, 'data/flags/yu.png'),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 1, 'data/flags/cd.png'),
(238, 'Zambia', 'ZM', 'ZMB', '', 1, 'data/flags/zm.png'),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 1, 'data/flags/zw.png');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_coupons`
--

CREATE TABLE `k4tcz2ewg_coupons` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(15) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) DEFAULT NULL,
  `min_total` decimal(15,4) DEFAULT NULL,
  `redemptions` int(11) NOT NULL DEFAULT '0',
  `customer_redemptions` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` date NOT NULL,
  `validity` char(15) NOT NULL,
  `fixed_date` date DEFAULT NULL,
  `fixed_from_time` time DEFAULT NULL,
  `fixed_to_time` time DEFAULT NULL,
  `period_start_date` date DEFAULT NULL,
  `period_end_date` date DEFAULT NULL,
  `recurring_every` varchar(35) NOT NULL,
  `recurring_from_time` time DEFAULT NULL,
  `recurring_to_time` time DEFAULT NULL,
  `order_restriction` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_coupons`
--

INSERT INTO `k4tcz2ewg_coupons` (`coupon_id`, `name`, `code`, `type`, `discount`, `min_total`, `redemptions`, `customer_redemptions`, `description`, `status`, `date_added`, `validity`, `fixed_date`, `fixed_from_time`, `fixed_to_time`, `period_start_date`, `period_end_date`, `recurring_every`, `recurring_from_time`, `recurring_to_time`, `order_restriction`) VALUES
(11, 'Half Sundays', '2222', 'F', '100.0000', '500.0000', 0, 0, '', 1, '0000-00-00', 'forever', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0),
(12, 'Half Tuesdays', '3333', 'P', '30.0000', '1000.0000', 0, 0, '', 1, '0000-00-00', 'forever', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0),
(13, 'Full Mondays', 'MTo6TuTg', 'P', '50.0000', '0.0000', 0, 1, '', 1, '0000-00-00', 'forever', NULL, '00:00:00', '23:59:00', NULL, NULL, '', '00:00:00', '23:59:00', 0),
(14, 'Full Tuesdays', '4444', 'F', '500.0000', '5000.0000', 0, 0, '', 1, '0000-00-00', 'recurring', NULL, '00:00:00', '23:59:00', NULL, NULL, '0, 2, 4, 5, 6', '00:00:00', '23:59:00', 0),
(15, 'Full Wednesdays', '5555', 'F', '5000.0000', '5000.0000', 0, 0, '', 1, '0000-00-00', 'forever', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_coupons_history`
--

CREATE TABLE `k4tcz2ewg_coupons_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `min_total` decimal(15,4) DEFAULT NULL,
  `amount` decimal(15,4) DEFAULT NULL,
  `date_used` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_currencies`
--

CREATE TABLE `k4tcz2ewg_currencies` (
  `currency_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `currency_name` varchar(32) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_symbol` varchar(3) NOT NULL,
  `currency_rate` decimal(15,8) NOT NULL,
  `symbol_position` tinyint(4) NOT NULL,
  `thousand_sign` char(1) NOT NULL,
  `decimal_sign` char(1) NOT NULL,
  `decimal_position` char(1) NOT NULL,
  `iso_alpha2` varchar(2) NOT NULL,
  `iso_alpha3` varchar(3) NOT NULL,
  `iso_numeric` int(11) NOT NULL,
  `flag` varchar(6) NOT NULL,
  `currency_status` int(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_currencies`
--

INSERT INTO `k4tcz2ewg_currencies` (`currency_id`, `country_id`, `currency_name`, `currency_code`, `currency_symbol`, `currency_rate`, `symbol_position`, `thousand_sign`, `decimal_sign`, `decimal_position`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `flag`, `currency_status`, `date_modified`) VALUES
(1, 1, 'Afghani', 'AFN', '؋', '0.00000000', 0, ',', '.', '2', 'AF', 'AFG', 4, 'AF.png', 0, '2017-06-09 06:55:12'),
(2, 2, 'Lek', 'ALL', 'Lek', '0.00000000', 0, ',', '.', '2', 'AL', 'ALB', 8, 'AL.png', 0, '2017-06-09 06:55:12'),
(3, 3, 'Dinar', 'DZD', 'د.ج', '0.00000000', 0, ',', '.', '2', 'DZ', 'DZA', 12, 'DZ.png', 0, '2017-06-09 06:55:12'),
(4, 4, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'AS', 'ASM', 16, 'AS.png', 0, '2017-06-09 06:55:12'),
(5, 5, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'AD', 'AND', 20, 'AD.png', 0, '2017-06-09 06:55:12'),
(6, 6, 'Kwanza', 'AOA', 'Kz', '0.00000000', 0, ',', '.', '2', 'AO', 'AGO', 24, 'AO.png', 0, '2017-06-09 06:55:12'),
(7, 7, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'AI', 'AIA', 660, 'AI.png', 0, '2017-06-09 06:55:12'),
(8, 8, 'Antarctican', 'AQD', 'A$', '0.00000000', 0, ',', '.', '2', 'AQ', 'ATA', 10, 'AQ.png', 0, '2017-06-09 06:55:12'),
(9, 9, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'AG', 'ATG', 28, 'AG.png', 0, '2017-06-09 06:55:12'),
(10, 10, 'Peso', 'ARS', '$', '0.00000000', 0, ',', '.', '2', 'AR', 'ARG', 32, 'AR.png', 0, '2017-06-09 06:55:12'),
(11, 11, 'Dram', 'AMD', 'դր.', '0.00000000', 0, ',', '.', '2', 'AM', 'ARM', 51, 'AM.png', 0, '2017-06-09 06:55:12'),
(12, 12, 'Guilder', 'AWG', 'ƒ', '0.00000000', 0, ',', '.', '2', 'AW', 'ABW', 533, 'AW.png', 0, '2017-06-09 06:55:12'),
(13, 13, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'AU', 'AUS', 36, 'AU.png', 1, '2017-06-09 06:55:12'),
(14, 14, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'AT', 'AUT', 40, 'AT.png', 0, '2017-06-09 06:55:12'),
(15, 15, 'Manat', 'AZN', 'ман', '0.00000000', 0, ',', '.', '2', 'AZ', 'AZE', 31, 'AZ.png', 0, '2017-06-09 06:55:12'),
(16, 16, 'Dollar', 'BSD', '$', '0.00000000', 0, ',', '.', '2', 'BS', 'BHS', 44, 'BS.png', 0, '2017-06-09 06:55:12'),
(17, 17, 'Dinar', 'BHD', '.د.', '0.00000000', 0, ',', '.', '2', 'BH', 'BHR', 48, 'BH.png', 0, '2017-06-09 06:55:12'),
(18, 18, 'Taka', 'BDT', '৳', '0.00000000', 0, ',', '.', '2', 'BD', 'BGD', 50, 'BD.png', 0, '2017-06-09 06:55:12'),
(19, 19, 'Dollar', 'BBD', '$', '0.00000000', 0, ',', '.', '2', 'BB', 'BRB', 52, 'BB.png', 0, '2017-06-09 06:55:12'),
(20, 20, 'Ruble', 'BYR', 'p.', '0.00000000', 0, ',', '.', '2', 'BY', 'BLR', 112, 'BY.png', 0, '2017-06-09 06:55:12'),
(21, 21, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'BE', 'BEL', 56, 'BE.png', 0, '2017-06-09 06:55:12'),
(22, 22, 'Dollar', 'BZD', 'BZ$', '0.00000000', 0, ',', '.', '2', 'BZ', 'BLZ', 84, 'BZ.png', 0, '2017-06-09 06:55:12'),
(23, 23, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'BJ', 'BEN', 204, 'BJ.png', 0, '2017-06-09 06:55:12'),
(24, 24, 'Dollar', 'BMD', '$', '0.00000000', 0, ',', '.', '2', 'BM', 'BMU', 60, 'BM.png', 0, '2017-06-09 06:55:12'),
(25, 25, 'Ngultrum', 'BTN', 'Nu.', '0.00000000', 0, ',', '.', '2', 'BT', 'BTN', 64, 'BT.png', 0, '2017-06-09 06:55:12'),
(26, 26, 'Boliviano', 'BOB', '$b', '0.00000000', 0, ',', '.', '2', 'BO', 'BOL', 68, 'BO.png', 0, '2017-06-09 06:55:12'),
(27, 27, 'Marka', 'BAM', 'KM', '0.00000000', 0, ',', '.', '2', 'BA', 'BIH', 70, 'BA.png', 0, '2017-06-09 06:55:12'),
(28, 28, 'Pula', 'BWP', 'P', '0.00000000', 0, ',', '.', '2', 'BW', 'BWA', 72, 'BW.png', 0, '2017-06-09 06:55:12'),
(29, 29, 'Krone', 'NOK', 'kr', '0.00000000', 0, ',', '.', '2', 'BV', 'BVT', 74, 'BV.png', 0, '2017-06-09 06:55:12'),
(30, 30, 'Real', 'BRL', 'R$', '0.00000000', 0, ',', '.', '2', 'BR', 'BRA', 76, 'BR.png', 0, '2017-06-09 06:55:12'),
(31, 31, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'IO', 'IOT', 86, 'IO.png', 0, '2017-06-09 06:55:12'),
(32, 231, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'VG', 'VGB', 92, 'VG.png', 0, '2017-06-09 06:55:12'),
(33, 32, 'Dollar', 'BND', '$', '0.00000000', 0, ',', '.', '2', 'BN', 'BRN', 96, 'BN.png', 0, '2017-06-09 06:55:12'),
(34, 33, 'Lev', 'BGN', 'лв', '0.00000000', 0, ',', '.', '2', 'BG', 'BGR', 100, 'BG.png', 0, '2017-06-09 06:55:12'),
(35, 34, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'BF', 'BFA', 854, 'BF.png', 0, '2017-06-09 06:55:12'),
(36, 35, 'Franc', 'BIF', 'Fr', '0.00000000', 0, ',', '.', '2', 'BI', 'BDI', 108, 'BI.png', 0, '2017-06-09 06:55:12'),
(37, 36, 'Riels', 'KHR', '៛', '0.00000000', 0, ',', '.', '2', 'KH', 'KHM', 116, 'KH.png', 0, '2017-06-09 06:55:12'),
(38, 37, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'CM', 'CMR', 120, 'CM.png', 0, '2017-06-09 06:55:12'),
(39, 38, 'Dollar', 'CAD', '$', '0.00000000', 0, ',', '.', '2', 'CA', 'CAN', 124, 'CA.png', 0, '2017-06-09 06:55:12'),
(40, 39, 'Escudo', 'CVE', '', '0.00000000', 0, ',', '.', '2', 'CV', 'CPV', 132, 'CV.png', 0, '2017-06-09 06:55:12'),
(41, 40, 'Dollar', 'KYD', '$', '0.00000000', 0, ',', '.', '2', 'KY', 'CYM', 136, 'KY.png', 0, '2017-06-09 06:55:12'),
(42, 41, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'CF', 'CAF', 140, 'CF.png', 0, '2017-06-09 06:55:12'),
(43, 42, 'Franc', 'XAF', '', '0.00000000', 0, ',', '.', '2', 'TD', 'TCD', 148, 'TD.png', 0, '2017-06-09 06:55:12'),
(44, 43, 'Peso', 'CLP', '', '0.00000000', 0, ',', '.', '2', 'CL', 'CHL', 152, 'CL.png', 0, '2017-06-09 06:55:12'),
(45, 44, 'Yuan Renminbi', 'CNY', '¥', '0.00000000', 0, ',', '.', '2', 'CN', 'CHN', 156, 'CN.png', 0, '2017-06-09 06:55:12'),
(46, 45, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'CX', 'CXR', 162, 'CX.png', 0, '2017-06-09 06:55:12'),
(47, 46, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'CC', 'CCK', 166, 'CC.png', 0, '2017-06-09 06:55:12'),
(48, 47, 'Peso', 'COP', '$', '0.00000000', 0, ',', '.', '2', 'CO', 'COL', 170, 'CO.png', 0, '2017-06-09 06:55:12'),
(49, 48, 'Franc', 'KMF', '', '0.00000000', 0, ',', '.', '2', 'KM', 'COM', 174, 'KM.png', 0, '2017-06-09 06:55:12'),
(50, 50, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'CK', 'COK', 184, 'CK.png', 0, '2017-06-09 06:55:12'),
(51, 51, 'Colon', 'CRC', '₡', '0.00000000', 0, ',', '.', '2', 'CR', 'CRI', 188, 'CR.png', 0, '2017-06-09 06:55:12'),
(52, 53, 'Kuna', 'HRK', 'kn', '0.00000000', 0, ',', '.', '2', 'HR', 'HRV', 191, 'HR.png', 0, '2017-06-09 06:55:12'),
(53, 54, 'Peso', 'CUP', '₱', '0.00000000', 0, ',', '.', '2', 'CU', 'CUB', 192, 'CU.png', 0, '2017-06-09 06:55:12'),
(54, 55, 'Pound', 'CYP', '', '0.00000000', 0, ',', '.', '2', 'CY', 'CYP', 196, 'CY.png', 0, '2017-06-09 06:55:12'),
(55, 56, 'Koruna', 'CZK', 'Kč', '0.00000000', 0, ',', '.', '2', 'CZ', 'CZE', 203, 'CZ.png', 0, '2017-06-09 06:55:12'),
(56, 49, 'Franc', 'CDF', 'FC', '0.00000000', 0, ',', '.', '2', 'CD', 'COD', 180, 'CD.png', 0, '2017-06-09 06:55:12'),
(57, 57, 'Krone', 'DKK', 'kr', '0.00000000', 0, ',', '.', '2', 'DK', 'DNK', 208, 'DK.png', 0, '2017-06-09 06:55:12'),
(58, 58, 'Franc', 'DJF', '', '0.00000000', 0, ',', '.', '2', 'DJ', 'DJI', 262, 'DJ.png', 0, '2017-06-09 06:55:12'),
(59, 59, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'DM', 'DMA', 212, 'DM.png', 0, '2017-06-09 06:55:12'),
(60, 60, 'Peso', 'DOP', 'RD$', '0.00000000', 0, ',', '.', '2', 'DO', 'DOM', 214, 'DO.png', 0, '2017-06-09 06:55:12'),
(61, 61, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'TL', 'TLS', 626, 'TL.png', 0, '2017-06-09 06:55:12'),
(62, 62, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'EC', 'ECU', 218, 'EC.png', 0, '2017-06-09 06:55:12'),
(63, 63, 'Pound', 'EGP', '£', '0.00000000', 0, ',', '.', '2', 'EG', 'EGY', 818, 'EG.png', 0, '2017-06-09 06:55:12'),
(64, 64, 'Colone', 'SVC', '$', '0.00000000', 0, ',', '.', '2', 'SV', 'SLV', 222, 'SV.png', 0, '2017-06-09 06:55:12'),
(65, 65, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'GQ', 'GNQ', 226, 'GQ.png', 0, '2017-06-09 06:55:12'),
(66, 66, 'Nakfa', 'ERN', 'Nfk', '0.00000000', 0, ',', '.', '2', 'ER', 'ERI', 232, 'ER.png', 0, '2017-06-09 06:55:12'),
(67, 67, 'Kroon', 'EEK', 'kr', '0.00000000', 0, ',', '.', '2', 'EE', 'EST', 233, 'EE.png', 0, '2017-06-09 06:55:12'),
(68, 68, 'Birr', 'ETB', '', '0.00000000', 0, ',', '.', '2', 'ET', 'ETH', 231, 'ET.png', 0, '2017-06-09 06:55:12'),
(69, 69, 'Pound', 'FKP', '£', '0.00000000', 0, ',', '.', '2', 'FK', 'FLK', 238, 'FK.png', 0, '2017-06-09 06:55:12'),
(70, 70, 'Krone', 'DKK', 'kr', '0.00000000', 0, ',', '.', '2', 'FO', 'FRO', 234, 'FO.png', 0, '2017-06-09 06:55:12'),
(71, 71, 'Dollar', 'FJD', '$', '0.00000000', 0, ',', '.', '2', 'FJ', 'FJI', 242, 'FJ.png', 0, '2017-06-09 06:55:12'),
(72, 72, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'FI', 'FIN', 246, 'FI.png', 0, '2017-06-09 06:55:12'),
(73, 73, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'FR', 'FRA', 250, 'FR.png', 0, '2017-06-09 06:55:12'),
(74, 75, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'GF', 'GUF', 254, 'GF.png', 0, '2017-06-09 06:55:12'),
(75, 76, 'Franc', 'XPF', '', '0.00000000', 0, ',', '.', '2', 'PF', 'PYF', 258, 'PF.png', 0, '2017-06-09 06:55:12'),
(76, 77, 'Euro  ', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'TF', 'ATF', 260, 'TF.png', 0, '2017-06-09 06:55:12'),
(77, 78, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'GA', 'GAB', 266, 'GA.png', 0, '2017-06-09 06:55:12'),
(78, 79, 'Dalasi', 'GMD', 'D', '0.00000000', 0, ',', '.', '2', 'GM', 'GMB', 270, 'GM.png', 0, '2017-06-09 06:55:12'),
(79, 80, 'Lari', 'GEL', '', '0.00000000', 0, ',', '.', '2', 'GE', 'GEO', 268, 'GE.png', 0, '2017-06-09 06:55:12'),
(80, 81, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'DE', 'DEU', 276, 'DE.png', 0, '2017-06-09 06:55:12'),
(81, 82, 'Cedi', 'GHC', '¢', '0.00000000', 0, ',', '.', '2', 'GH', 'GHA', 288, 'GH.png', 0, '2017-06-09 06:55:12'),
(82, 83, 'Pound', 'GIP', '£', '0.00000000', 0, ',', '.', '2', 'GI', 'GIB', 292, 'GI.png', 0, '2017-06-09 06:55:12'),
(83, 84, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'GR', 'GRC', 300, 'GR.png', 0, '2017-06-09 06:55:12'),
(84, 85, 'Krone', 'DKK', 'kr', '0.00000000', 0, ',', '.', '2', 'GL', 'GRL', 304, 'GL.png', 0, '2017-06-09 06:55:12'),
(85, 86, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'GD', 'GRD', 308, 'GD.png', 0, '2017-06-09 06:55:12'),
(86, 87, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'GP', 'GLP', 312, 'GP.png', 0, '2017-06-09 06:55:12'),
(87, 88, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'GU', 'GUM', 316, 'GU.png', 0, '2017-06-09 06:55:12'),
(88, 89, 'Quetzal', 'GTQ', 'Q', '0.00000000', 0, ',', '.', '2', 'GT', 'GTM', 320, 'GT.png', 0, '2017-06-09 06:55:12'),
(89, 90, 'Franc', 'GNF', '', '0.00000000', 0, ',', '.', '2', 'GN', 'GIN', 324, 'GN.png', 0, '2017-06-09 06:55:12'),
(90, 91, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'GW', 'GNB', 624, 'GW.png', 0, '2017-06-09 06:55:12'),
(91, 92, 'Dollar', 'GYD', '$', '0.00000000', 0, ',', '.', '2', 'GY', 'GUY', 328, 'GY.png', 0, '2017-06-09 06:55:12'),
(92, 93, 'Gourde', 'HTG', 'G', '0.00000000', 0, ',', '.', '2', 'HT', 'HTI', 332, 'HT.png', 0, '2017-06-09 06:55:12'),
(93, 94, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'HM', 'HMD', 334, 'HM.png', 0, '2017-06-09 06:55:12'),
(94, 95, 'Lempira', 'HNL', 'L', '0.00000000', 0, ',', '.', '2', 'HN', 'HND', 340, 'HN.png', 0, '2017-06-09 06:55:12'),
(95, 96, 'Dollar', 'HKD', '$', '0.00000000', 0, ',', '.', '2', 'HK', 'HKG', 344, 'HK.png', 0, '2017-06-09 06:55:12'),
(96, 97, 'Forint', 'HUF', 'Ft', '0.00000000', 0, ',', '.', '2', 'HU', 'HUN', 348, 'HU.png', 0, '2017-06-09 06:55:12'),
(97, 98, 'Krona', 'ISK', 'kr', '0.00000000', 0, ',', '.', '2', 'IS', 'ISL', 352, 'IS.png', 0, '2017-06-09 06:55:12'),
(98, 99, 'Rupee', 'INR', '₹', '0.00000000', 0, ',', '.', '2', 'IN', 'IND', 356, 'IN.png', 0, '2017-06-09 06:55:12'),
(99, 100, 'Rupiah', 'IDR', 'Rp', '0.00000000', 0, ',', '.', '2', 'ID', 'IDN', 360, 'ID.png', 0, '2017-06-09 06:55:12'),
(100, 101, 'Rial', 'IRR', '﷼', '0.00000000', 0, ',', '.', '2', 'IR', 'IRN', 364, 'IR.png', 0, '2017-06-09 06:55:12'),
(101, 102, 'Dinar', 'IQD', '', '0.00000000', 0, ',', '.', '2', 'IQ', 'IRQ', 368, 'IQ.png', 0, '2017-06-09 06:55:12'),
(102, 103, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'IE', 'IRL', 372, 'IE.png', 0, '2017-06-09 06:55:12'),
(103, 104, 'Shekel', 'ILS', '₪', '0.00000000', 0, ',', '.', '2', 'IL', 'ISR', 376, 'IL.png', 0, '2017-06-09 06:55:12'),
(104, 105, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'IT', 'ITA', 380, 'IT.png', 0, '2017-06-09 06:55:12'),
(105, 52, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'CI', 'CIV', 384, 'CI.png', 0, '2017-06-09 06:55:12'),
(106, 106, 'Dollar', 'JMD', '$', '0.00000000', 0, ',', '.', '2', 'JM', 'JAM', 388, 'JM.png', 0, '2017-06-09 06:55:12'),
(107, 107, 'Yen', 'JPY', '¥', '0.00000000', 0, ',', '.', '2', 'JP', 'JPN', 392, 'JP.png', 0, '2017-06-09 06:55:12'),
(108, 108, 'Dinar', 'JOD', '', '0.00000000', 0, ',', '.', '2', 'JO', 'JOR', 400, 'JO.png', 0, '2017-06-09 06:55:12'),
(109, 109, 'Tenge', 'KZT', 'лв', '0.00000000', 0, ',', '.', '2', 'KZ', 'KAZ', 398, 'KZ.png', 0, '2017-06-09 06:55:12'),
(110, 110, 'Shilling', 'KES', '', '0.00000000', 0, ',', '.', '2', 'KE', 'KEN', 404, 'KE.png', 0, '2017-06-09 06:55:12'),
(111, 111, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'KI', 'KIR', 296, 'KI.png', 0, '2017-06-09 06:55:12'),
(112, 114, 'Dinar', 'KWD', 'د.ك', '0.00000000', 0, ',', '.', '2', 'KW', 'KWT', 414, 'KW.png', 0, '2017-06-09 06:55:12'),
(113, 115, 'Som', 'KGS', 'лв', '0.00000000', 0, ',', '.', '2', 'KG', 'KGZ', 417, 'KG.png', 0, '2017-06-09 06:55:12'),
(114, 116, 'Kip', 'LAK', '₭', '0.00000000', 0, ',', '.', '2', 'LA', 'LAO', 418, 'LA.png', 0, '2017-06-09 06:55:12'),
(115, 117, 'Lat', 'LVL', 'Ls', '0.00000000', 0, ',', '.', '2', 'LV', 'LVA', 428, 'LV.png', 0, '2017-06-09 06:55:12'),
(116, 118, 'Pound', 'LBP', '£', '0.00000000', 0, ',', '.', '2', 'LB', 'LBN', 422, 'LB.png', 0, '2017-06-09 06:55:12'),
(117, 119, 'Loti', 'LSL', 'L', '0.00000000', 0, ',', '.', '2', 'LS', 'LSO', 426, 'LS.png', 0, '2017-06-09 06:55:12'),
(118, 120, 'Dollar', 'LRD', '$', '0.00000000', 0, ',', '.', '2', 'LR', 'LBR', 430, 'LR.png', 0, '2017-06-09 06:55:12'),
(119, 121, 'Dinar', 'LYD', 'ل.د', '0.00000000', 0, ',', '.', '2', 'LY', 'LBY', 434, 'LY.png', 0, '2017-06-09 06:55:12'),
(120, 122, 'Franc', 'CHF', 'CHF', '0.00000000', 0, ',', '.', '2', 'LI', 'LIE', 438, 'LI.png', 0, '2017-06-09 06:55:12'),
(121, 123, 'Litas', 'LTL', 'Lt', '0.00000000', 0, ',', '.', '2', 'LT', 'LTU', 440, 'LT.png', 0, '2017-06-09 06:55:12'),
(122, 124, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'LU', 'LUX', 442, 'LU.png', 0, '2017-06-09 06:55:12'),
(123, 125, 'Pataca', 'MOP', 'MOP', '0.00000000', 0, ',', '.', '2', 'MO', 'MAC', 446, 'MO.png', 0, '2017-06-09 06:55:12'),
(124, 140, 'Denar', 'MKD', 'ден', '0.00000000', 0, ',', '.', '2', 'MK', 'MKD', 807, 'MK.png', 0, '2017-06-09 06:55:12'),
(125, 127, 'Ariary', 'MGA', 'Ar', '0.00000000', 0, ',', '.', '2', 'MG', 'MDG', 450, 'MG.png', 0, '2017-06-09 06:55:12'),
(126, 128, 'Kwacha', 'MWK', 'MK', '0.00000000', 0, ',', '.', '2', 'MW', 'MWI', 454, 'MW.png', 0, '2017-06-09 06:55:12'),
(127, 129, 'Ringgit', 'MYR', 'RM', '0.00000000', 0, ',', '.', '2', 'MY', 'MYS', 458, 'MY.png', 0, '2017-06-09 06:55:12'),
(128, 130, 'Rufiyaa', 'MVR', 'Rf', '0.00000000', 0, ',', '.', '2', 'MV', 'MDV', 462, 'MV.png', 0, '2017-06-09 06:55:12'),
(129, 131, 'Franc', 'XOF', 'MAF', '0.00000000', 0, ',', '.', '2', 'ML', 'MLI', 466, 'ML.png', 0, '2017-06-09 06:55:12'),
(130, 132, 'Lira', 'MTL', 'Lm', '0.00000000', 0, ',', '.', '2', 'MT', 'MLT', 470, 'MT.png', 0, '2017-06-09 06:55:12'),
(131, 133, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'MH', 'MHL', 584, 'MH.png', 0, '2017-06-09 06:55:12'),
(132, 134, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'MQ', 'MTQ', 474, 'MQ.png', 0, '2017-06-09 06:55:12'),
(133, 135, 'Ouguiya', 'MRO', 'UM', '0.00000000', 0, ',', '.', '2', 'MR', 'MRT', 478, 'MR.png', 0, '2017-06-09 06:55:12'),
(134, 136, 'Rupee', 'MUR', '₨', '0.00000000', 0, ',', '.', '2', 'MU', 'MUS', 480, 'MU.png', 0, '2017-06-09 06:55:12'),
(135, 137, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'YT', 'MYT', 175, 'YT.png', 0, '2017-06-09 06:55:12'),
(136, 138, 'Peso', 'MXN', '$', '0.00000000', 0, ',', '.', '2', 'MX', 'MEX', 484, 'MX.png', 0, '2017-06-09 06:55:12'),
(137, 139, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'FM', 'FSM', 583, 'FM.png', 0, '2017-06-09 06:55:12'),
(138, 140, 'Leu', 'MDL', 'MDL', '0.00000000', 0, ',', '.', '2', 'MD', 'MDA', 498, 'MD.png', 0, '2017-06-09 06:55:12'),
(139, 141, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'MC', 'MCO', 492, 'MC.png', 0, '2017-06-09 06:55:12'),
(140, 142, 'Tugrik', 'MNT', '₮', '0.00000000', 0, ',', '.', '2', 'MN', 'MNG', 496, 'MN.png', 0, '2017-06-09 06:55:12'),
(141, 143, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'MS', 'MSR', 500, 'MS.png', 0, '2017-06-09 06:55:12'),
(142, 144, 'Dirham', 'MAD', '', '0.00000000', 0, ',', '.', '2', 'MA', 'MAR', 504, 'MA.png', 0, '2017-06-09 06:55:12'),
(143, 145, 'Meticail', 'MZN', 'MT', '0.00000000', 0, ',', '.', '2', 'MZ', 'MOZ', 508, 'MZ.png', 0, '2017-06-09 06:55:12'),
(144, 146, 'Kyat', 'MMK', 'K', '0.00000000', 0, ',', '.', '2', 'MM', 'MMR', 104, 'MM.png', 0, '2017-06-09 06:55:12'),
(145, 147, 'Dollar', 'NAD', '$', '0.00000000', 0, ',', '.', '2', 'NA', 'NAM', 516, 'NA.png', 0, '2017-06-09 06:55:12'),
(146, 148, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'NR', 'NRU', 520, 'NR.png', 0, '2017-06-09 06:55:12'),
(147, 149, 'Rupee', 'NPR', '₨', '0.00000000', 0, ',', '.', '2', 'NP', 'NPL', 524, 'NP.png', 0, '2017-06-09 06:55:12'),
(148, 150, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'NL', 'NLD', 528, 'NL.png', 0, '2017-06-09 06:55:12'),
(149, 151, 'Guilder', 'ANG', 'ƒ', '0.00000000', 0, ',', '.', '2', 'AN', 'ANT', 530, 'AN.png', 0, '2017-06-09 06:55:12'),
(150, 152, 'Franc', 'XPF', '', '0.00000000', 0, ',', '.', '2', 'NC', 'NCL', 540, 'NC.png', 0, '2017-06-09 06:55:12'),
(151, 153, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'NZ', 'NZL', 554, 'NZ.png', 0, '2017-06-09 06:55:12'),
(152, 154, 'Cordoba', 'NIO', 'C$', '0.00000000', 0, ',', '.', '2', 'NI', 'NIC', 558, 'NI.png', 0, '2017-06-09 06:55:12'),
(153, 155, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'NE', 'NER', 562, 'NE.png', 0, '2017-06-09 06:55:12'),
(154, 156, 'Naira', 'NGN', '₦', '0.00000000', 0, ',', '.', '2', 'NG', 'NGA', 566, 'NG.png', 1, '2017-06-09 06:55:12'),
(155, 157, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'NU', 'NIU', 570, 'NU.png', 0, '2017-06-09 06:55:12'),
(156, 158, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'NF', 'NFK', 574, 'NF.png', 0, '2017-06-09 06:55:12'),
(157, 112, 'Won', 'KPW', '₩', '0.00000000', 0, ',', '.', '2', 'KP', 'PRK', 408, 'KP.png', 0, '2017-06-09 06:55:12'),
(158, 159, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'MP', 'MNP', 580, 'MP.png', 0, '2017-06-09 06:55:12'),
(159, 160, 'Krone', 'NOK', 'kr', '0.00000000', 0, ',', '.', '2', 'NO', 'NOR', 578, 'NO.png', 0, '2017-06-09 06:55:12'),
(160, 161, 'Rial', 'OMR', '﷼', '0.00000000', 0, ',', '.', '2', 'OM', 'OMN', 512, 'OM.png', 0, '2017-06-09 06:55:12'),
(161, 162, 'Rupee', 'PKR', '₨', '0.00000000', 0, ',', '.', '2', 'PK', 'PAK', 586, 'PK.png', 0, '2017-06-09 06:55:12'),
(162, 163, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'PW', 'PLW', 585, 'PW.png', 0, '2017-06-09 06:55:12'),
(163, 0, 'Shekel', 'ILS', '₪', '0.00000000', 0, ',', '.', '2', 'PS', 'PSE', 275, 'PS.png', 0, '2017-06-09 06:55:12'),
(164, 164, 'Balboa', 'PAB', 'B/.', '0.00000000', 0, ',', '.', '2', 'PA', 'PAN', 591, 'PA.png', 0, '2017-06-09 06:55:12'),
(165, 165, 'Kina', 'PGK', '', '0.00000000', 0, ',', '.', '2', 'PG', 'PNG', 598, 'PG.png', 0, '2017-06-09 06:55:12'),
(166, 166, 'Guarani', 'PYG', 'Gs', '0.00000000', 0, ',', '.', '2', 'PY', 'PRY', 600, 'PY.png', 0, '2017-06-09 06:55:12'),
(167, 167, 'Sol', 'PEN', 'S/.', '0.00000000', 0, ',', '.', '2', 'PE', 'PER', 604, 'PE.png', 0, '2017-06-09 06:55:12'),
(168, 168, 'Peso', 'PHP', 'Php', '0.00000000', 0, ',', '.', '2', 'PH', 'PHL', 608, 'PH.png', 0, '2017-06-09 06:55:12'),
(169, 169, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'PN', 'PCN', 612, 'PN.png', 0, '2017-06-09 06:55:12'),
(170, 170, 'Zloty', 'PLN', 'zł', '0.00000000', 0, ',', '.', '2', 'PL', 'POL', 616, 'PL.png', 0, '2017-06-09 06:55:12'),
(171, 171, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'PT', 'PRT', 620, 'PT.png', 0, '2017-06-09 06:55:12'),
(172, 172, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'PR', 'PRI', 630, 'PR.png', 0, '2017-06-09 06:55:12'),
(173, 173, 'Rial', 'QAR', '﷼', '0.00000000', 0, ',', '.', '2', 'QA', 'QAT', 634, 'QA.png', 0, '2017-06-09 06:55:12'),
(174, 49, 'Franc', 'XAF', 'FCF', '0.00000000', 0, ',', '.', '2', 'CG', 'COG', 178, 'CG.png', 0, '2017-06-09 06:55:12'),
(175, 174, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'RE', 'REU', 638, 'RE.png', 0, '2017-06-09 06:55:12'),
(176, 175, 'Leu', 'RON', 'lei', '0.00000000', 0, ',', '.', '2', 'RO', 'ROU', 642, 'RO.png', 0, '2017-06-09 06:55:12'),
(177, 176, 'Ruble', 'RUB', 'руб', '0.00000000', 0, ',', '.', '2', 'RU', 'RUS', 643, 'RU.png', 0, '2017-06-09 06:55:12'),
(178, 177, 'Franc', 'RWF', '', '0.00000000', 0, ',', '.', '2', 'RW', 'RWA', 646, 'RW.png', 0, '2017-06-09 06:55:12'),
(179, 179, 'Pound', 'SHP', '£', '0.00000000', 0, ',', '.', '2', 'SH', 'SHN', 654, 'SH.png', 0, '2017-06-09 06:55:12'),
(180, 178, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'KN', 'KNA', 659, 'KN.png', 0, '2017-06-09 06:55:12'),
(181, 179, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'LC', 'LCA', 662, 'LC.png', 0, '2017-06-09 06:55:12'),
(182, 180, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'PM', 'SPM', 666, 'PM.png', 0, '2017-06-09 06:55:12'),
(183, 180, 'Dollar', 'XCD', '$', '0.00000000', 0, ',', '.', '2', 'VC', 'VCT', 670, 'VC.png', 0, '2017-06-09 06:55:12'),
(184, 181, 'Tala', 'WST', 'WS$', '0.00000000', 0, ',', '.', '2', 'WS', 'WSM', 882, 'WS.png', 0, '2017-06-09 06:55:12'),
(185, 182, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'SM', 'SMR', 674, 'SM.png', 0, '2017-06-09 06:55:12'),
(186, 183, 'Dobra', 'STD', 'Db', '0.00000000', 0, ',', '.', '2', 'ST', 'STP', 678, 'ST.png', 0, '2017-06-09 06:55:12'),
(187, 184, 'Rial', 'SAR', '﷼', '0.00000000', 0, ',', '.', '2', 'SA', 'SAU', 682, 'SA.png', 0, '2017-06-09 06:55:12'),
(188, 185, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'SN', 'SEN', 686, 'SN.png', 0, '2017-06-09 06:55:12'),
(189, 142, 'Dinar', 'RSD', 'Дин', '0.00000000', 0, ',', '.', '2', 'CS', 'SCG', 891, 'CS.png', 0, '2017-06-09 06:55:12'),
(190, 186, 'Rupee', 'SCR', '₨', '0.00000000', 0, ',', '.', '2', 'SC', 'SYC', 690, 'SC.png', 0, '2017-06-09 06:55:12'),
(191, 187, 'Leone', 'SLL', 'Le', '0.00000000', 0, ',', '.', '2', 'SL', 'SLE', 694, 'SL.png', 0, '2017-06-09 06:55:12'),
(192, 188, 'Dollar', 'SGD', '$', '0.00000000', 0, ',', '.', '2', 'SG', 'SGP', 702, 'SG.png', 0, '2017-06-09 06:55:12'),
(193, 189, 'Koruna', 'SKK', 'Sk', '0.00000000', 0, ',', '.', '2', 'SK', 'SVK', 703, 'SK.png', 0, '2017-06-09 06:55:12'),
(194, 190, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'SI', 'SVN', 705, 'SI.png', 0, '2017-06-09 06:55:12'),
(195, 191, 'Dollar', 'SBD', '$', '0.00000000', 0, ',', '.', '2', 'SB', 'SLB', 90, 'SB.png', 0, '2017-06-09 06:55:12'),
(196, 192, 'Shilling', 'SOS', 'S', '0.00000000', 0, ',', '.', '2', 'SO', 'SOM', 706, 'SO.png', 0, '2017-06-09 06:55:12'),
(197, 193, 'Rand', 'ZAR', 'R', '0.00000000', 0, ',', '.', '2', 'ZA', 'ZAF', 710, 'ZA.png', 0, '2017-06-09 06:55:12'),
(198, 113, 'Pound', 'GBP', '£', '0.00000000', 0, ',', '.', '2', 'GS', 'SGS', 239, 'GS.png', 0, '2017-06-09 06:55:12'),
(199, 194, 'Won', 'KRW', '₩', '0.00000000', 0, ',', '.', '2', 'KR', 'KOR', 410, 'KR.png', 0, '2017-06-09 06:55:12'),
(200, 195, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'ES', 'ESP', 724, 'ES.png', 0, '2017-06-09 06:55:12'),
(201, 196, 'Rupee', 'LKR', '₨', '0.00000000', 0, ',', '.', '2', 'LK', 'LKA', 144, 'LK.png', 0, '2017-06-09 06:55:12'),
(202, 199, 'Dinar', 'SDD', '', '0.00000000', 0, ',', '.', '2', 'SD', 'SDN', 736, 'SD.png', 0, '2017-06-09 06:55:12'),
(203, 200, 'Dollar', 'SRD', '$', '0.00000000', 0, ',', '.', '2', 'SR', 'SUR', 740, 'SR.png', 0, '2017-06-09 06:55:12'),
(204, 0, 'Krone', 'NOK', 'kr', '0.00000000', 0, ',', '.', '2', 'SJ', 'SJM', 744, 'SJ.png', 0, '2017-06-09 06:55:12'),
(205, 202, 'Lilangeni', 'SZL', '', '0.00000000', 0, ',', '.', '2', 'SZ', 'SWZ', 748, 'SZ.png', 0, '2017-06-09 06:55:12'),
(206, 203, 'Krona', 'SEK', 'kr', '0.00000000', 0, ',', '.', '2', 'SE', 'SWE', 752, 'SE.png', 0, '2017-06-09 06:55:12'),
(207, 204, 'Franc', 'CHF', 'CHF', '0.00000000', 0, ',', '.', '2', 'CH', 'CHE', 756, 'CH.png', 0, '2017-06-09 06:55:12'),
(208, 205, 'Pound', 'SYP', '£', '0.00000000', 0, ',', '.', '2', 'SY', 'SYR', 760, 'SY.png', 0, '2017-06-09 06:55:12'),
(209, 206, 'Dollar', 'TWD', 'NT$', '0.00000000', 0, ',', '.', '2', 'TW', 'TWN', 158, 'TW.png', 0, '2017-06-09 06:55:12'),
(210, 207, 'Somoni', 'TJS', '', '0.00000000', 0, ',', '.', '2', 'TJ', 'TJK', 762, 'TJ.png', 0, '2017-06-09 06:55:12'),
(211, 208, 'Shilling', 'TZS', '', '0.00000000', 0, ',', '.', '2', 'TZ', 'TZA', 834, 'TZ.png', 0, '2017-06-09 06:55:12'),
(212, 209, 'Baht', 'THB', '฿', '0.00000000', 0, ',', '.', '2', 'TH', 'THA', 764, 'TH.png', 0, '2017-06-09 06:55:12'),
(213, 210, 'Franc', 'XOF', '', '0.00000000', 0, ',', '.', '2', 'TG', 'TGO', 768, 'TG.png', 0, '2017-06-09 06:55:12'),
(214, 211, 'Dollar', 'NZD', '$', '0.00000000', 0, ',', '.', '2', 'TK', 'TKL', 772, 'TK.png', 0, '2017-06-09 06:55:12'),
(215, 212, 'Pa''anga', 'TOP', 'T$', '0.00000000', 0, ',', '.', '2', 'TO', 'TON', 776, 'TO.png', 0, '2017-06-09 06:55:12'),
(216, 213, 'Dollar', 'TTD', 'TT$', '0.00000000', 0, ',', '.', '2', 'TT', 'TTO', 780, 'TT.png', 0, '2017-06-09 06:55:12'),
(217, 214, 'Dinar', 'TND', '', '0.00000000', 0, ',', '.', '2', 'TN', 'TUN', 788, 'TN.png', 0, '2017-06-09 06:55:12'),
(218, 215, 'Lira', 'TRY', 'YTL', '0.00000000', 0, ',', '.', '2', 'TR', 'TUR', 792, 'TR.png', 0, '2017-06-09 06:55:12'),
(219, 216, 'Manat', 'TMM', 'm', '0.00000000', 0, ',', '.', '2', 'TM', 'TKM', 795, 'TM.png', 0, '2017-06-09 06:55:12'),
(220, 217, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'TC', 'TCA', 796, 'TC.png', 0, '2017-06-09 06:55:12'),
(221, 218, 'Dollar', 'AUD', '$', '0.00000000', 0, ',', '.', '2', 'TV', 'TUV', 798, 'TV.png', 0, '2017-06-09 06:55:12'),
(222, 232, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'VI', 'VIR', 850, 'VI.png', 0, '2017-06-09 06:55:12'),
(223, 219, 'Shilling', 'UGX', '', '0.00000000', 0, ',', '.', '2', 'UG', 'UGA', 800, 'UG.png', 0, '2017-06-09 06:55:12'),
(224, 220, 'Hryvnia', 'UAH', '₴', '0.00000000', 0, ',', '.', '2', 'UA', 'UKR', 804, 'UA.png', 0, '2017-06-09 06:55:12'),
(225, 221, 'Dirham', 'AED', '', '0.00000000', 0, ',', '.', '2', 'AE', 'ARE', 784, 'AE.png', 0, '2017-06-09 06:55:12'),
(226, 222, 'Pound', 'GBP', '£', '0.00000000', 0, ',', '.', '2', 'GB', 'GBR', 826, 'GB.png', 1, '2017-06-09 06:55:12'),
(227, 223, 'Dollar', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'US', 'USA', 840, 'US.png', 0, '2017-06-09 06:55:12'),
(228, 224, 'Dollar ', 'USD', '$', '0.00000000', 0, ',', '.', '2', 'UM', 'UMI', 581, 'UM.png', 0, '2017-06-09 06:55:12'),
(229, 225, 'Peso', 'UYU', '$U', '0.00000000', 0, ',', '.', '2', 'UY', 'URY', 858, 'UY.png', 0, '2017-06-09 06:55:12'),
(230, 226, 'Som', 'UZS', 'лв', '0.00000000', 0, ',', '.', '2', 'UZ', 'UZB', 860, 'UZ.png', 0, '2017-06-09 06:55:12'),
(231, 227, 'Vatu', 'VUV', 'Vt', '0.00000000', 0, ',', '.', '2', 'VU', 'VUT', 548, 'VU.png', 0, '2017-06-09 06:55:12'),
(232, 228, 'Euro', 'EUR', '€', '0.00000000', 0, ',', '.', '2', 'VA', 'VAT', 336, 'VA.png', 0, '2017-06-09 06:55:12'),
(233, 229, 'Bolivar', 'VEF', 'Bs', '0.00000000', 0, ',', '.', '2', 'VE', 'VEN', 862, 'VE.png', 0, '2017-06-09 06:55:12'),
(234, 230, 'Dong', 'VND', '₫', '0.00000000', 0, ',', '.', '2', 'VN', 'VNM', 704, 'VN.png', 0, '2017-06-09 06:55:12'),
(235, 233, 'Franc', 'XPF', '', '0.00000000', 0, ',', '.', '2', 'WF', 'WLF', 876, 'WF.png', 0, '2017-06-09 06:55:12'),
(236, 234, 'Dirham', 'MAD', '', '0.00000000', 0, ',', '.', '2', 'EH', 'ESH', 732, 'EH.png', 0, '2017-06-09 06:55:12'),
(237, 235, 'Rial', 'YER', '﷼', '0.00000000', 0, ',', '.', '2', 'YE', 'YEM', 887, 'YE.png', 0, '2017-06-09 06:55:12'),
(238, 238, 'Kwacha', 'ZMK', 'ZK', '0.00000000', 0, ',', '.', '2', 'ZM', 'ZMB', 894, 'ZM.png', 0, '2017-06-09 06:55:12'),
(239, 239, 'Dollar', 'ZWD', 'Z$', '0.00000000', 0, ',', '.', '2', 'ZW', 'ZWE', 716, 'ZW.png', 0, '2017-06-09 06:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_customers`
--

CREATE TABLE `k4tcz2ewg_customers` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address_id` int(11) NOT NULL,
  `security_question_id` int(11) NOT NULL,
  `security_answer` varchar(32) NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cart` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_customers_online`
--

CREATE TABLE `k4tcz2ewg_customers_online` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `access_type` varchar(128) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `request_uri` text NOT NULL,
  `referrer_uri` text NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_customers_online`
--

INSERT INTO `k4tcz2ewg_customers_online` (`activity_id`, `customer_id`, `access_type`, `browser`, `ip_address`, `country_code`, `request_uri`, `referrer_uri`, `date_added`, `status`, `user_agent`) VALUES
(11, 0, 'browser', 'Chrome', '::1', '0', '', 'setup/success', '2017-06-10 07:00:13', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(12, 0, 'browser', 'Chrome', '::1', '0', '', '', '2017-06-10 07:12:54', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(13, 0, 'browser', 'Chrome', '::1', '0', '', 'admin/menu_options', '2017-06-10 07:16:12', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(14, 0, 'browser', 'Chrome', '::1', '0', '', '', '2017-06-11 08:50:57', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(15, 0, 'browser', 'Chrome', '::1', '0', '', '', '2017-06-11 08:57:00', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(16, 0, 'browser', 'Chrome', '::1', '0', '', '', '2017-06-11 08:59:25', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(17, 0, 'browser', 'Chrome', '::1', '0', '', 'index.php', '2017-06-11 09:06:41', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(18, 0, 'browser', 'Chrome', '::1', '0', '', '', '2017-06-14 07:05:29', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_customer_groups`
--

CREATE TABLE `k4tcz2ewg_customer_groups` (
  `customer_group_id` int(11) NOT NULL,
  `group_name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `approval` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_customer_groups`
--

INSERT INTO `k4tcz2ewg_customer_groups` (`customer_group_id`, `group_name`, `description`, `approval`) VALUES
(11, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_extensions`
--

CREATE TABLE `k4tcz2ewg_extensions` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `data` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `version` varchar(11) NOT NULL DEFAULT '1.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_extensions`
--

INSERT INTO `k4tcz2ewg_extensions` (`extension_id`, `type`, `name`, `data`, `serialized`, `status`, `title`, `version`) VALUES
(11, 'module', 'account_module', 'a:1:{s:7:"layouts";a:1:{i:0;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:4:"left";s:8:"priority";s:1:"1";s:6:"status";s:1:"1";}}}', 1, 1, 'Account', '1.0.0'),
(12, 'module', 'local_module', 'a:3:{s:20:"location_search_mode";s:5:"multi";s:12:"use_location";s:1:"0";s:6:"status";s:1:"1";}', 1, 1, 'Local', '1.0.0'),
(13, 'module', 'categories_module', 'a:1:{s:7:"layouts";a:1:{i:0;a:4:{s:9:"layout_id";s:2:"12";s:8:"position";s:4:"left";s:8:"priority";s:1:"1";s:6:"status";s:1:"1";}}}', 1, 1, 'Categories', '1.0.0'),
(14, 'module', 'cart_module', 'a:3:{s:16:"show_cart_images";s:1:"0";s:13:"cart_images_h";s:0:"";s:13:"cart_images_w";s:0:"";}', 1, 1, 'Cart', '1.0.0'),
(15, 'module', 'reservation_module', 'a:1:{s:7:"layouts";a:1:{i:0;a:4:{s:9:"layout_id";s:2:"16";s:8:"position";s:4:"left";s:8:"priority";s:1:"1";s:6:"status";s:1:"1";}}}', 1, 1, 'Reservation', '1.0.0'),
(16, 'module', 'slideshow', 'a:6:{s:11:"dimension_h";s:3:"420";s:11:"dimension_w";s:4:"1170";s:6:"effect";s:4:"fade";s:5:"speed";s:3:"500";s:7:"layouts";a:1:{i:0;a:4:{s:9:"layout_id";s:2:"15";s:8:"position";s:3:"top";s:8:"priority";s:1:"1";s:6:"status";s:1:"1";}}s:6:"slides";a:3:{i:0;a:3:{s:4:"name";s:9:"slide.png";s:9:"image_src";s:14:"data/slide.jpg";s:7:"caption";s:0:"";}i:1;a:3:{s:4:"name";s:10:"slide1.png";s:9:"image_src";s:15:"data/slide1.jpg";s:7:"caption";s:0:"";}i:2;a:3:{s:4:"name";s:10:"slide2.png";s:9:"image_src";s:15:"data/slide2.jpg";s:7:"caption";s:0:"";}}}', 1, 1, 'Slideshow', '1.0.0'),
(18, 'payment', 'cod', 'a:5:{s:4:"name";N;s:11:"order_total";s:4:"0.00";s:12:"order_status";s:2:"11";s:8:"priority";s:1:"1";s:6:"status";s:1:"1";}', 1, 1, 'Cash On Delivery', '1.0.0'),
(20, 'module', 'pages_module', 'a:1:{s:7:"layouts";a:1:{i:0;a:4:{s:9:"layout_id";s:2:"17";s:8:"position";s:5:"right";s:8:"priority";s:1:"1";s:6:"status";s:1:"1";}}}', 1, 1, 'Pages', '1.0.0'),
(21, 'payment', 'paypal_express', 'a:11:{s:8:"priority";s:0:"";s:6:"status";s:1:"0";s:8:"api_mode";s:7:"sandbox";s:8:"api_user";s:0:"";s:8:"api_pass";s:0:"";s:13:"api_signature";s:0:"";s:10:"api_action";s:4:"sale";s:10:"return_uri";s:24:"paypal_express/authorize";s:10:"cancel_uri";s:21:"paypal_express/cancel";s:11:"order_total";s:4:"0.00";s:12:"order_status";s:2:"11";}', 1, 0, 'PayPal Express', '1.0.0'),
(23, 'theme', 'tastyigniter-orange', '', 1, 1, 'TastyIgniter Orange', '1.0.0'),
(24, 'theme', 'tastyigniter-blue', '', 1, 0, 'TastyIgniter Blue', '1.0.0'),
(25, 'module', 'banners_module', 'a:1:{s:7:"banners";a:1:{i:1;a:3:{s:9:"banner_id";s:1:"1";s:5:"width";s:0:"";s:6:"height";s:0:"";}}}', 1, 0, 'Banners', '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_languages`
--

CREATE TABLE `k4tcz2ewg_languages` (
  `language_id` int(11) NOT NULL,
  `code` varchar(7) NOT NULL,
  `name` varchar(32) NOT NULL,
  `image` varchar(32) NOT NULL,
  `idiom` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_languages`
--

INSERT INTO `k4tcz2ewg_languages` (`language_id`, `code`, `name`, `image`, `idiom`, `status`, `can_delete`) VALUES
(11, 'en', 'English', 'data/flags/gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_layouts`
--

CREATE TABLE `k4tcz2ewg_layouts` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_layouts`
--

INSERT INTO `k4tcz2ewg_layouts` (`layout_id`, `name`) VALUES
(11, 'Home'),
(12, 'Menus'),
(13, 'Checkout'),
(15, 'Account'),
(16, 'Reservation'),
(17, 'Page'),
(18, 'Local'),
(19, 'Locations');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_layout_modules`
--

CREATE TABLE `k4tcz2ewg_layout_modules` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `module_code` varchar(128) NOT NULL,
  `partial` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL,
  `options` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_layout_modules`
--

INSERT INTO `k4tcz2ewg_layout_modules` (`layout_module_id`, `layout_id`, `module_code`, `partial`, `priority`, `options`, `status`) VALUES
(60, 17, 'pages_module', 'content_right', 1, '', 1),
(65, 11, 'slideshow', 'content_top', 1, '', 1),
(66, 11, 'local_module', 'content_top', 2, '', 1),
(67, 15, 'account_module', 'content_left', 1, '', 1),
(68, 12, 'local_module', 'content_top', 1, '', 1),
(69, 12, 'categories_module', 'content_left', 1, '', 1),
(70, 12, 'cart_module', 'content_right', 1, '', 1),
(71, 13, 'local_module', 'content_top', 1, '', 1),
(72, 13, 'cart_module', 'content_right', 1, '', 1),
(73, 16, 'reservation_module', 'content_top', 1, '', 1),
(74, 18, 'local_module', 'content_top', 1, '', 1),
(75, 18, 'categories_module', 'content_left', 1, '', 1),
(76, 18, 'cart_module', 'content_right', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_layout_routes`
--

CREATE TABLE `k4tcz2ewg_layout_routes` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `uri_route` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_layout_routes`
--

INSERT INTO `k4tcz2ewg_layout_routes` (`layout_route_id`, `layout_id`, `uri_route`) VALUES
(19, 13, 'checkout'),
(41, 16, 'reservation'),
(44, 12, 'menus'),
(59, 11, 'home'),
(70, 18, 'local'),
(71, 19, 'locations'),
(72, 17, 'pages'),
(100, 15, 'account/account'),
(101, 15, 'account/details'),
(102, 15, 'account/address'),
(103, 15, 'account/orders'),
(104, 15, 'account/reservations'),
(105, 15, 'account/inbox'),
(106, 15, 'account/reviews');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_locations`
--

CREATE TABLE `k4tcz2ewg_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(32) NOT NULL,
  `location_email` varchar(96) NOT NULL,
  `description` text NOT NULL,
  `location_address_1` varchar(128) NOT NULL,
  `location_address_2` varchar(128) NOT NULL,
  `location_city` varchar(128) NOT NULL,
  `location_state` varchar(128) NOT NULL,
  `location_postcode` varchar(10) NOT NULL,
  `location_country_id` int(11) NOT NULL,
  `location_telephone` varchar(32) NOT NULL,
  `location_lat` float(10,6) NOT NULL,
  `location_lng` float(10,6) NOT NULL,
  `location_radius` int(11) NOT NULL,
  `offer_delivery` tinyint(1) NOT NULL,
  `offer_collection` tinyint(1) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `last_order_time` int(11) NOT NULL,
  `reservation_time_interval` int(11) NOT NULL,
  `reservation_stay_time` int(11) NOT NULL,
  `location_status` tinyint(1) NOT NULL,
  `collection_time` int(11) NOT NULL,
  `options` text NOT NULL,
  `location_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_locations`
--

INSERT INTO `k4tcz2ewg_locations` (`location_id`, `location_name`, `location_email`, `description`, `location_address_1`, `location_address_2`, `location_city`, `location_state`, `location_postcode`, `location_country_id`, `location_telephone`, `location_lat`, `location_lng`, `location_radius`, `offer_delivery`, `offer_collection`, `delivery_time`, `last_order_time`, `reservation_time_interval`, `reservation_stay_time`, `location_status`, `collection_time`, `options`, `location_image`) VALUES
(11, 'Lewisham', 'lewisham@tastyigniter.com', 'Mauris maximus tempor ligula vitae placerat. Proin at orci fermentum, aliquam turpis sit amet, ultrices risus. Donec pellentesque justo in pharetra rutrum. Cras ac dui eu orci lacinia consequat vitae quis sapien. Proin vehicula erat volutpat est tempor, eu feugiat diam malesuada. Mauris iaculis ac nisi at euismod. Nunc sit amet luctus ipsum. Pellentesque eget lobortis turpis. Vivamus mattis, massa ac vulputate vulputate, risus purus tincidunt nibh, vitae pellentesque ex nibh at mi. Donec placerat, urna quis interdum tempus, tellus nulla commodo leo, vitae auctor orci est congue eros. In vel ex quis orci blandit porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus tincidunt risus non mattis semper.', '44 Darnley Road', '', 'Greater London', '', 'E9 6QH', 222, '1203392202', 51.544060, -0.053999, 0, 1, 1, 20, 0, 0, 0, 1, 10, 'a:3:{s:13:"opening_hours";a:4:{s:12:"opening_type";s:4:"24_7";s:10:"daily_days";a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}s:11:"daily_hours";a:2:{s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";}s:14:"flexible_hours";a:7:{i:0;a:4:{s:3:"day";s:1:"0";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}i:1;a:4:{s:3:"day";s:1:"1";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}i:2;a:4:{s:3:"day";s:1:"2";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}i:3;a:4:{s:3:"day";s:1:"3";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}i:4;a:4:{s:3:"day";s:1:"4";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}i:5;a:4:{s:3:"day";s:1:"5";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}i:6;a:4:{s:3:"day";s:1:"6";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"1";}}}s:8:"payments";a:2:{i:0;s:3:"cod";i:1;s:14:"paypal_express";}s:14:"delivery_areas";a:4:{i:1;a:7:{s:5:"shape";s:34:"[{"shape":"_yryHzpHff@??d~@gf@?"}]";s:8:"vertices";s:219:"[{"lat":51.547200000000004,"lng":-0.048940000000000004},{"lat":51.54092000000001,"lng":-0.048940000000000004},{"lat":51.54092000000001,"lng":-0.059050000000000005},{"lat":51.547200000000004,"lng":-0.059050000000000005}]";s:6:"circle";s:71:"[{"center":{"lat":51.54406,"lng":-0.05399899999997615}},{"radius":500}]";s:4:"type";s:5:"shape";s:4:"name";s:6:"Area 1";s:6:"charge";s:2:"10";s:10:"min_amount";s:3:"100";}i:2;a:7:{s:5:"shape";s:34:"[{"shape":"kvtyHrfJrmA??j}BsmA?"}]";s:8:"vertices";s:177:"[{"lat":51.55702,"lng":-0.05754000000000001},{"lat":51.54444,"lng":-0.05754000000000001},{"lat":51.54444,"lng":-0.07776000000000001},{"lat":51.55702,"lng":-0.07776000000000001}]";s:6:"circle";s:72:"[{"center":{"lat":51.54406,"lng":-0.05399899999997615}},{"radius":1000}]";s:4:"type";s:5:"shape";s:4:"name";s:6:"Area 2";s:6:"charge";s:1:"4";s:10:"min_amount";s:2:"10";}i:3;a:7:{s:5:"shape";s:34:"[{"shape":"kvuyH`dBztB??r|D{tB?"}]";s:8:"vertices";s:147:"[{"lat":51.56214000000001,"lng":-0.01617},{"lat":51.54328,"lng":-0.01617},{"lat":51.54328,"lng":-0.04651},{"lat":51.56214000000001,"lng":-0.04651}]";s:6:"circle";s:72:"[{"center":{"lat":51.54406,"lng":-0.05399899999997615}},{"radius":1500}]";s:4:"type";s:5:"shape";s:4:"name";s:6:"Area 3";s:6:"charge";s:2:"30";s:10:"min_amount";s:3:"300";}i:4;a:7:{s:5:"shape";s:34:"[{"shape":"gmqyHlhEf|C??x{Fg|C?"}]";s:8:"vertices";s:193:"[{"lat":51.540200000000006,"lng":-0.03223},{"lat":51.515040000000006,"lng":-0.03223},{"lat":51.515040000000006,"lng":-0.07268000000000001},{"lat":51.540200000000006,"lng":-0.07268000000000001}]";s:6:"circle";s:72:"[{"center":{"lat":51.54406,"lng":-0.05399899999997615}},{"radius":2000}]";s:4:"type";s:5:"shape";s:4:"name";s:6:"Area 4";s:6:"charge";s:2:"10";s:10:"min_amount";s:3:"200";}}}', 'data/meat_pie.jpg'),
(12, 'Hackney''s Branch', 'hackney@tastyigniter.com', 'Vestibulum mattis elementum justo quis vehicula. Fusce a elementum tellus, non tincidunt felis. Maecenas a dui dictum, dictum risus id, tempor enim. Curabitur fermentum elit eu iaculis tristique. Sed lobortis purus sed dui rhoncus fringilla. Integer orci ante, placerat a purus vel, commodo convallis nisi. Maecenas tristique, dui in ullamcorper hendrerit, dui odio pellentesque erat, rutrum vulputate enim ante vel nulla.', '400 Lewisham Way', '', 'Lewisham', '', 'SE10 9HF', 222, '949200202', 51.469627, -0.008745, 0, 1, 1, 0, 0, 0, 0, 1, 0, 'a:1:{s:13:"opening_hours";a:4:{s:12:"opening_type";s:5:"daily";s:10:"daily_days";a:7:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";}s:11:"daily_hours";a:2:{s:4:"open";s:7:"2:00 AM";s:5:"close";s:7:"5:59 PM";}s:14:"flexible_hours";a:7:{i:0;a:4:{s:3:"day";s:1:"0";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:1;a:4:{s:3:"day";s:1:"1";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:2;a:4:{s:3:"day";s:1:"2";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:3;a:4:{s:3:"day";s:1:"3";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:4;a:4:{s:3:"day";s:1:"4";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:5;a:4:{s:3:"day";s:1:"5";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:6;a:4:{s:3:"day";s:1:"6";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}}}}', 'data/steamed_rice.jpg'),
(13, 'Earling Closed', 'earling@tastyigniter.com', '', '14 Lime Close', '', 'London', '', 'HA3 7JG', 222, '949200202', 51.600262, -0.325915, 0, 0, 1, 0, 0, 0, 0, 1, 0, 'a:2:{s:13:"opening_hours";a:3:{s:12:"opening_type";s:5:"daily";s:11:"daily_hours";a:2:{s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";}s:14:"flexible_hours";a:7:{i:0;a:4:{s:3:"day";s:1:"0";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:1;a:4:{s:3:"day";s:1:"1";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:2;a:4:{s:3:"day";s:1:"2";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:3;a:4:{s:3:"day";s:1:"3";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:4;a:4:{s:3:"day";s:1:"4";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:5;a:4:{s:3:"day";s:1:"5";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}i:6;a:4:{s:3:"day";s:1:"6";s:4:"open";s:8:"12:00 AM";s:5:"close";s:8:"11:59 PM";s:6:"status";s:1:"0";}}}s:14:"delivery_areas";a:3:{i:1;a:7:{s:5:"shape";s:35:"[{"shape":"ix}yHht}@hf@??h~@if@?"}]";s:8:"vertices";s:211:"[{"lat":51.60340610349442,"lng":-0.32085320675355433},{"lat":51.59711789650558,"lng":-0.32085320675355433},{"lat":51.59711789650558,"lng":-0.3309767932464638},{"lat":51.60340610349442,"lng":-0.3309767932464638}]";s:6:"circle";s:94:"[{"center":{"lat":51.62179581812303,"lng":-0.37947844769109906}},{"radius":2327.919015915706}]";s:4:"type";s:6:"circle";s:4:"name";s:6:"Area 1";s:6:"charge";s:1:"0";s:10:"min_amount";s:1:"0";}i:2;a:7:{s:5:"shape";s:35:"[{"shape":"}k~yHtt|@rmA??p}BsmA?"}]";s:8:"vertices";s:215:"[{"lat":51.606550206988835,"lng":-0.31579141345764583},{"lat":51.593973793011166,"lng":-0.31579141345764583},{"lat":51.593973793011166,"lng":-0.3360385865423723},{"lat":51.606550206988835,"lng":-0.3360385865423723}]";s:6:"circle";s:93:"[{"center":{"lat":51.5834115850791,"lng":-0.3441036832577993}},{"radius":1997.0467357168989}]";s:4:"type";s:6:"circle";s:4:"name";s:6:"Area 2";s:6:"charge";s:2:"10";s:10:"min_amount";s:3:"100";}i:3;a:7:{s:5:"shape";s:41:"[{"shape":"osbzHxjr@xhFfiHjdCxiQogJ}x@"}]";s:8:"vertices";s:212:"[{"lat":51.62823967264574,"lng":-0.26300775726963366},{"lat":51.590829689516745,"lng":-0.3107296200626024},{"lat":51.56949495892793,"lng":-0.40461508941007196},{"lat":51.62717405249217,"lng":-0.3953453750546032}]";s:6:"circle";s:73:"[{"center":{"lat":51.600262,"lng":-0.32591500000000906}},{"radius":1500}]";s:4:"type";s:5:"shape";s:4:"name";s:6:"Area 3";s:6:"charge";s:2:"10";s:10:"min_amount";s:1:"0";}}}', 'data/pesto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_location_tables`
--

CREATE TABLE `k4tcz2ewg_location_tables` (
  `location_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_location_tables`
--

INSERT INTO `k4tcz2ewg_location_tables` (`location_id`, `table_id`) VALUES
(11, 7),
(11, 16),
(11, 17),
(11, 18),
(11, 19),
(11, 20),
(11, 22);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_mail_templates`
--

CREATE TABLE `k4tcz2ewg_mail_templates` (
  `template_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `language_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_mail_templates`
--

INSERT INTO `k4tcz2ewg_mail_templates` (`template_id`, `name`, `language_id`, `date_added`, `date_updated`, `status`) VALUES
(11, 'Default', 1, '2014-04-16 01:49:52', '2014-06-16 14:44:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_mail_templates_data`
--

CREATE TABLE `k4tcz2ewg_mail_templates_data` (
  `template_data_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_mail_templates_data`
--

INSERT INTO `k4tcz2ewg_mail_templates_data` (`template_data_id`, `template_id`, `code`, `subject`, `body`, `date_added`, `date_updated`) VALUES
(11, 11, 'registration', 'Welcome to {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Welcome!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Thank you for registrating with {site_name}. Your account has now been created and you can log in using your email address and password by visiting our website or at the following URL: <a href="{account_login_link}">Click Here</a></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Thank you for using.<br> {signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-05-15 15:24:56'),
(12, 11, 'password_reset', 'Password reset at {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Reset your password!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your password has been reset successfull! Please <a href="{account_login_link}" target="_blank">login</a> using your new password: {created_password}.</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Please don''t forget to change your password after you login.<br> {signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-05-15 15:46:30'),
(13, 11, 'order', '{site_name} order confirmation - {order_number}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a title="" data-original-title="" href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font color="#596167" size="3" face="Arial, Helvetica, sans-seri; font-size: 13px;"><img src="{site_logo}" alt="{site_name}" style="display: block;" border="0" width="115" height="19"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font color="#596167" size="2" face="Arial, Helvetica, sans-serif"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font color="#596167" size="2" face="Arial, Helvetica, sans-serif"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font color="#596167" size="2" face="Arial, Helvetica, sans-serif"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" color="#57697e" size="5" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Thank you for your order!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your order has been received and will be with you shortly. <a title="" data-original-title="" href="{order_view_url}">Click here</a> to view your order progress.</span></font><br></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your order number is {order_number}<br> This is a {order_type} order.</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><br><strong>Order date:</strong> {order_date}<br><strong>Requested {order_type} time</strong> {order_time}<br><strong>Payment Method:</strong> {order_payment}</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td><div style="line-height: 24px;"><font style="font-size: 13px;" color="#57697e" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">Name/Description</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 13px;" color="#57697e" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">Unit Price</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 13px;" color="#57697e" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">Sub Total</span></font></div></td></tr><tr><td>{order_menus}<br></td><td><br></td><td><br></td></tr><tr style="border-top:1px dashed #c3cbd5;"><td><div style="line-height: 24px;"><font style="font-size: 15px;font-weight:bold;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{menu_quantity} x {menu_name}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#96a5b5" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;">{menu_options}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#96a5b5" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;">{menu_comment}</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{menu_price}</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{menu_subtotal}</span></font></div></td></tr><tr><td>{/order_menus}</td><td><br></td><td><br></td></tr><tr><td><br></td><td>{order_totals}</td><td><br></td></tr><tr><td><br></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_total_title}</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_total_value}</span></font></div></td></tr><tr><td><br></td><td>{/order_totals}<br></td><td><br></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_comment}</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_address}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span title="" data-original-title="" style="font-weight: bold;">Restaurant:</span> {location_name}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" color="#96a5b5" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-07-20 14:29:55'),
(14, 11, 'reservation', 'Your Reservation Confirmation - {reservation_number}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Thank you for your reservation!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello {first_name} {last_name},</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your reservation {reservation_number} at {location_name} has been booked for {reservation_guest_no} person(s) on {reservation_date} at {reservation_time}.</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Thanks for reserving with us online!</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-07-22 20:13:48'),
(15, 11, 'contact', 'Contact on {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Someone just contacted you!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello Admin,</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"><br></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">From: {full_name}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Topic: {contact_topic}.</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Telephone: {contact_telephone}.</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><br></span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{contact_message}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><br></span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">This inquiry was sent from {site_name}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{signature}<br></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-05-15 18:00:57'),
(16, 11, 'internal', 'Subject here', 'Body here', '2014-04-16 00:56:00', '2014-04-16 00:59:00'),
(17, 11, 'order_alert', 'New order on {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a title="" data-original-title="" href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font color="#596167" size="3" face="Arial, Helvetica, sans-seri; font-size: 13px;"><img src="{site_logo}" alt="{site_name}" style="display: block;" border="0" width="115" height="19"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font color="#596167" size="2" face="Arial, Helvetica, sans-serif"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font color="#596167" size="2" face="Arial, Helvetica, sans-serif"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font color="#596167" size="2" face="Arial, Helvetica, sans-serif"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" color="#57697e" size="5" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">You received an order!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">You just received an order from {location_name}.</span></font><br></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">The order number is {order_number}<br> This is a {order_type} order.</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><br><strong>Customer name:</strong> {first_name} {last_name}<br><strong>Order date:</strong> {order_date}<br><strong>Requested {order_type} time</strong> {order_time}<br><strong>Payment Method:</strong> {order_payment}<br><br></span></font></div><!-- padding --><div style="height: 10px; line-height: 10px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"></span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td><div style="line-height: 24px;"><font style="font-size: 13px;" color="#57697e" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">Name/Description</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 13px;" color="#57697e" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">Unit Price</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 13px;" color="#57697e" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">Sub Total</span></font></div></td></tr><tr><td>{order_menus}<br></td><td><br></td><td><br></td></tr><tr style="border-top:1px dashed #c3cbd5;"><td><div style="line-height: 24px;"><font style="font-size: 15px;font-weight:bold;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{menu_quantity} x {menu_name}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#96a5b5" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;">{menu_options}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" color="#96a5b5" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #96a5b5;">{menu_comment}</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{menu_price}</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{menu_subtotal}</span></font></div></td></tr><tr><td>{/order_menus}</td><td><br></td><td><br></td></tr><tr><td><br></td><td>{order_totals}</td><td><br></td></tr><tr><td><br></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_total_title}</span></font></div></td><td><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_total_value}</span></font></div></td></tr><tr><td><br></td><td>{/order_totals}<br></td><td><br></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" color="#57697e" size="4" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{order_comment}</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" color="#96a5b5" size="3" face="Arial, Helvetica, sans-serif"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-04-16 00:59:00');
INSERT INTO `k4tcz2ewg_mail_templates_data` (`template_data_id`, `template_id`, `code`, `subject`, `body`, `date_added`, `date_updated`) VALUES
(18, 11, 'reservation_alert', 'New reservation on {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">You received a table reservation!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Customer name:</span> {first_name} {last_name}</span></font></div><!-- padding --></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Reservation no:</span> {reservation_number} </span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Restaurant:</span> {location_name} </span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">No of guest(s):</span> {reservation_guest_no} person(s) </span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Reservation date:</span> {reservation_date}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Reservation time: </span></span></font>{reservation_time}</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">You received a table reservation from {site_name}<br></span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2014-04-16 00:56:00', '2014-04-16 00:59:00'),
(19, 11, 'registration_alert', 'New Customer on {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">You have a new customer!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Customer name:</span> {first_name} {last_name}</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00'),
(20, 11, 'password_reset_alert', 'Password reset at {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Reset your password!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello {staff_name},</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">You requested that the password be reset for the following account:</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Username: {staff_username}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Password: {created_password}</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Please do not forget to change your password after you login.<br> {signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00'),
(21, 11, 'order_update', 'Your Order Update - {order_number}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a title="" data-original-title="" href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your order has been updated to the following status: <span title="" data-original-title="" style="font-weight: bold;">{status_name}</span></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><a title="" data-original-title="" href="{order_view_url}">Click here</a> to view your order progress.</span></font><br></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your order number is: <span title="" data-original-title="" style="font-weight: bold;">{order_number}</span></span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><span title="" data-original-title="" style="font-weight: bold;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">The comments for your order are:</span></font></span></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{status_comment}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00'),
(22, 11, 'reservation_update', 'Your Reservation Update - {reservation_number}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a title="" data-original-title="" href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your reservation has been updated to the following status: <span title="" data-original-title="" style="font-weight: bold;">{status_name}</span></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your reservation number: <span title="" data-original-title="" style="font-weight: bold;">{reservation_number}</span> at <span title="" data-original-title="" style="font-weight: bold;">{location_name}</span>.</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><span title="" data-original-title="" style="font-weight: bold;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">The comments for your reservation are:</span></font></span></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{status_comment}<br></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00'),
(23, 11, 'registration_alert', 'New Customer on {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">You have a new customer!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><span style="font-weight: bold;">Customer name:</span> {first_name} {last_name}</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00'),
(24, 11, 'password_reset_alert', 'Password reset at {site_name}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div><div style="line-height: 44px;"><font style="font-size: 34px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="5"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">Reset your password!</span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Hello {staff_name},</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">You requested that the password be reset for the following account:</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Username: {staff_username}</span></font></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Password: {created_password}</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Please do not forget to change your password after you login.<br> {signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00');
INSERT INTO `k4tcz2ewg_mail_templates_data` (`template_data_id`, `template_id`, `code`, `subject`, `body`, `date_added`, `date_updated`) VALUES
(25, 11, 'order_update', 'Your Order Update - {order_number}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a title="" data-original-title="" href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your order has been updated to the following status: <span title="" data-original-title="" style="font-weight: bold;">{status_name}</span></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;"><a title="" data-original-title="" href="{order_view_url}">Click here</a> to view your order progress.</span></font><br></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your order number is: <span title="" data-original-title="" style="font-weight: bold;">{order_number}</span></span></font></div><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><span title="" data-original-title="" style="font-weight: bold;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">The comments for your order are:</span></font></span></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{status_comment}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00'),
(26, 11, 'reservation_update', 'Your Reservation Update - {reservation_number}', '<div id="mailsub" class="notification" align="center"><table style="min-width: 320px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center" bgcolor="#eff3f8"><!--[if gte mso 10]><table width="680" border="0" cellspacing="0" cellpadding="0"><tr><td><![endif]--><table class="table_width_100" style="max-width: 680px; min-width: 300px;" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr><!--header --><tr><td align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 30px; line-height: 30px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><!-- Item --><div class="mob_center_bl" style="float: left; display: inline-block; width: 115px;"><table class="mob_center" style="border-collapse: collapse;" align="left" border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td align="left" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="115"><tbody><tr><td class="mob_center" align="left" valign="top"><a title="" data-original-title="" href="{site_url}" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;"><font face="Arial, Helvetica, sans-seri; font-size: 13px;" color="#596167" size="3"><img src="{site_logo}" alt="{site_name}" style="display: block;" height="19" border="0" width="115"></font></a></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--><!--[if gte mso 10]></td><td align="right"><![endif]--><!-- Item --><div class="mob_center_bl" style="float: right; display: inline-block; width: 88px;"><table style="border-collapse: collapse;" align="right" border="0" cellpadding="0" cellspacing="0" width="88"><tbody><tr><td align="right" valign="middle"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="right"><!--social --><div class="mob_center_bl" style="width: 88px;"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td style="line-height: 19px;" align="center" width="30"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="center" width="39"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td><td style="line-height: 19px;" align="right" width="29"><a title="" data-original-title="" href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 12px;"><font face="Arial, Helvetica, sans-serif" color="#596167" size="2"></font></a></td></tr></tbody></table></div><!--social END--></td></tr></tbody></table></td></tr></tbody></table></div><!-- Item END--></td></tr></tbody></table><!-- padding --><div style="height: 50px; line-height: 50px; font-size: 10px;"></div></td></tr><!--header END--><!--content 1 --><tr><td align="center" bgcolor="#fbfcfd"><table border="0" cellpadding="0" cellspacing="0" width="90%"><tbody><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your reservation has been updated to the following status: <span title="" data-original-title="" style="font-weight: bold;">{status_name}</span></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">Your reservation number: <span title="" data-original-title="" style="font-weight: bold;">{reservation_number}</span> at <span title="" data-original-title="" style="font-weight: bold;">{location_name}</span>.</span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><span title="" data-original-title="" style="font-weight: bold;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">The comments for your reservation are:</span></font></span></div><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">{status_comment}<br></span></font></div><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><tr><td align="left"><div style="line-height: 24px;"><font style="font-size: 15px;" face="Arial, Helvetica, sans-serif" color="#57697e" size="4"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">We hope to see you again soon.<br>{signature}</span></font></div><!-- padding --><div style="height: 40px; line-height: 40px; font-size: 10px;"></div></td></tr></tbody></table></td></tr><!--content 1 END--><!--footer --><tr><td class="iage_footer" align="center" bgcolor="#ffffff"><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td align="center"><font style="font-size: 13px;" face="Arial, Helvetica, sans-serif" color="#96a5b5" size="3"><span title="" data-original-title="" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">2015 © {site_name} All Rights Reserved.</span></font></td></tr></tbody></table><!-- padding --><div style="height: 20px; line-height: 20px; font-size: 10px;"></div></td></tr><!--footer END--><tr><td><!-- padding --><div style="height: 80px; line-height: 80px; font-size: 10px;"></div></td></tr></tbody></table><!--[if gte mso 10]></td></tr></table><![endif]--></td></tr></tbody></table></div>', '2017-06-10 00:00:00', '2017-06-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_mealtimes`
--

CREATE TABLE `k4tcz2ewg_mealtimes` (
  `mealtime_id` int(11) NOT NULL,
  `mealtime_name` varchar(128) NOT NULL,
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '23:59:59',
  `mealtime_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_mealtimes`
--

INSERT INTO `k4tcz2ewg_mealtimes` (`mealtime_id`, `mealtime_name`, `start_time`, `end_time`, `mealtime_status`) VALUES
(11, 'Breakfast', '07:00:00', '10:00:00', 1),
(12, 'Lunch', '12:00:00', '14:30:00', 1),
(13, 'Dinner', '18:00:00', '20:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_menus`
--

CREATE TABLE `k4tcz2ewg_menus` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_description` text NOT NULL,
  `menu_price` decimal(15,4) NOT NULL,
  `menu_photo` varchar(255) NOT NULL,
  `menu_category_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `minimum_qty` int(11) NOT NULL,
  `subtract_stock` tinyint(1) NOT NULL,
  `mealtime_id` int(11) NOT NULL,
  `menu_status` tinyint(1) NOT NULL,
  `menu_priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_menus`
--

INSERT INTO `k4tcz2ewg_menus` (`menu_id`, `menu_name`, `menu_description`, `menu_price`, `menu_photo`, `menu_category_id`, `stock_qty`, `minimum_qty`, `subtract_stock`, `mealtime_id`, `menu_status`, `menu_priority`) VALUES
(76, 'Adobo', 'Traditional Nigerian donut ball, rolled in sugar', '200.0000', 'data/puff_puff.jpg', 0, 856, 3, 1, 0, 1, 0),
(77, 'SCOTCH EGG', 'Boiled egg wrapped in a ground meat mixture, coated in breadcrumbs, and deep-fried.', '2.0000', 'data/scotch_egg.jpg', 15, 0, 1, 1, 0, 1, 0),
(78, 'ATA RICE', 'Small pieces of beef, goat, stipe, and tendon sautéed in crushed green Jamaican pepper.', '12.0000', 'data/Seared_Ahi_Spinach_Salad.jpg', 16, 1000, 1, 0, 0, 1, 0),
(79, 'RICE AND DODO', '(plantains) w/chicken, fish, beef or goat', '11.9900', 'data/rice_and_dodo.jpg', 16, 655, 1, 1, 0, 1, 0),
(80, 'Special Shrimp Deluxe', 'Fresh shrimp sautéed in blended mixture of tomatoes, onion, peppers over choice of rice', '12.9900', 'data/deluxe_bbq_shrimp-1.jpg', 18, 265, 1, 1, 0, 1, 0),
(81, 'Whole catfish with rice and vegetables', 'Whole catfish slow cooked in tomatoes, pepper and onion sauce with seasoning to taste', '13.9900', 'data/FriedWholeCatfishPlate_lg.jpg', 24, 145, 1, 1, 0, 1, 0),
(82, 'African Salad', 'With baked beans, egg, tuna, onion, tomatoes , green peas and carrot with your choice of dressing.', '8.9900', '', 17, 500, 1, 0, 0, 1, 0),
(83, 'Seafood Salad', 'With shrimp, egg and imitation crab meat', '5.9900', 'data/seafoods_salad.JPG', 17, 490, 1, 1, 0, 1, 0),
(84, 'EBA', 'Grated cassava', '11.9900', 'data/eba.jpg', 16, 407, 1, 1, 0, 1, 0),
(85, 'AMALA', 'Yam flour', '11.9900', 'data/DSCF3711.JPG', 19, 470, 1, 1, 0, 1, 0),
(86, 'YAM PORRIDGE', 'in tomatoes sauce', '9.9900', 'data/yam_porridge.jpg', 20, 457, 1, 1, 0, 1, 0),
(87, 'Boiled Plantain', 'w/spinach soup', '9.9900', 'data/pesto.jpg', 19, 434, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_menus_specials`
--

CREATE TABLE `k4tcz2ewg_menus_specials` (
  `special_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `special_price` decimal(15,4) DEFAULT NULL,
  `special_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_menus_specials`
--

INSERT INTO `k4tcz2ewg_menus_specials` (`special_id`, `menu_id`, `start_date`, `end_date`, `special_price`, `special_status`) VALUES
(51, 81, '2014-04-10', '2014-04-30', '6.9900', 1),
(52, 76, '2014-04-23', '2014-07-31', '10.0000', 1),
(53, 86, '0000-00-00', '0000-00-00', '0.0000', 0),
(54, 87, '0000-00-00', '0000-00-00', '0.0000', 0),
(57, 84, '0000-00-00', '0000-00-00', '0.0000', 0),
(58, 77, '0000-00-00', '0000-00-00', '0.0000', 0),
(59, 78, '0000-00-00', '0000-00-00', '0.0000', 0),
(60, 79, '0000-00-00', '0000-00-00', '0.0000', 0),
(61, 85, '0000-00-00', '0000-00-00', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_menu_options`
--

CREATE TABLE `k4tcz2ewg_menu_options` (
  `menu_option_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `default_value_id` tinyint(4) NOT NULL,
  `option_values` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_menu_options`
--

INSERT INTO `k4tcz2ewg_menu_options` (`menu_option_id`, `option_id`, `menu_id`, `required`, `default_value_id`, `option_values`) VALUES
(22, 22, 85, 1, 0, 'a:3:{i:3;a:3:{s:15:"option_value_id";s:1:"8";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}i:4;a:3:{s:15:"option_value_id";s:1:"9";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}i:5;a:3:{s:15:"option_value_id";s:2:"10";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}}'),
(23, 23, 81, 0, 0, 'a:3:{i:1;a:3:{s:15:"option_value_id";s:1:"7";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}i:2;a:3:{s:15:"option_value_id";s:1:"6";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}i:3;a:3:{s:15:"option_value_id";s:2:"15";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}}'),
(24, 24, 85, 1, 0, 'a:2:{i:1;a:3:{s:15:"option_value_id";s:2:"13";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}i:2;a:3:{s:15:"option_value_id";s:2:"14";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:0:"";}}'),
(25, 22, 84, 0, 0, 'a:3:{i:1;a:3:{s:15:"option_value_id";s:1:"8";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"52";}i:2;a:3:{s:15:"option_value_id";s:1:"9";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"53";}i:3;a:3:{s:15:"option_value_id";s:2:"11";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"54";}}'),
(26, 22, 79, 0, 0, 'a:5:{i:1;a:3:{s:15:"option_value_id";s:1:"8";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"55";}i:2;a:3:{s:15:"option_value_id";s:1:"9";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"56";}i:3;a:3:{s:15:"option_value_id";s:2:"10";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"57";}i:4;a:3:{s:15:"option_value_id";s:2:"11";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"58";}i:5;a:3:{s:15:"option_value_id";s:2:"12";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"59";}}'),
(27, 24, 79, 1, 0, 'a:2:{i:6;a:3:{s:15:"option_value_id";s:2:"13";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"60";}i:7;a:3:{s:15:"option_value_id";s:2:"14";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"61";}}'),
(28, 22, 78, 1, 0, 'a:5:{i:1;a:3:{s:15:"option_value_id";s:1:"8";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"62";}i:2;a:3:{s:15:"option_value_id";s:1:"9";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"63";}i:3;a:3:{s:15:"option_value_id";s:2:"10";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"64";}i:4;a:3:{s:15:"option_value_id";s:2:"11";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"65";}i:5;a:3:{s:15:"option_value_id";s:2:"12";s:5:"price";s:0:"";s:20:"menu_option_value_id";s:2:"66";}}');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_menu_option_values`
--

CREATE TABLE `k4tcz2ewg_menu_option_values` (
  `menu_option_value_id` int(11) NOT NULL,
  `menu_option_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `new_price` decimal(15,4) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `subtract_stock` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_menu_option_values`
--

INSERT INTO `k4tcz2ewg_menu_option_values` (`menu_option_value_id`, `menu_option_id`, `menu_id`, `option_id`, `option_value_id`, `new_price`, `quantity`, `subtract_stock`) VALUES
(52, 25, 84, 22, 8, '0.0000', 0, 0),
(53, 25, 84, 22, 9, '0.0000', 0, 0),
(54, 25, 84, 22, 11, '0.0000', 0, 0),
(55, 26, 79, 22, 8, '0.0000', 0, 0),
(56, 26, 79, 22, 9, '0.0000', 0, 0),
(57, 26, 79, 22, 10, '0.0000', 0, 0),
(58, 26, 79, 22, 11, '0.0000', 0, 0),
(59, 26, 79, 22, 12, '0.0000', 0, 0),
(60, 27, 79, 24, 13, '0.0000', 0, 0),
(61, 27, 79, 24, 14, '0.0000', 0, 0),
(62, 28, 78, 22, 8, '0.0000', 0, 0),
(63, 28, 78, 22, 9, '0.0000', 0, 0),
(64, 28, 78, 22, 10, '0.0000', 0, 0),
(65, 28, 78, 22, 11, '0.0000', 0, 0),
(66, 28, 78, 22, 12, '0.0000', 0, 0),
(67, 22, 85, 22, 8, '0.0000', 0, 0),
(68, 22, 85, 22, 9, '0.0000', 0, 0),
(69, 22, 85, 22, 10, '0.0000', 0, 0),
(70, 24, 85, 24, 13, '0.0000', 0, 0),
(71, 24, 85, 24, 14, '0.0000', 0, 0),
(72, 23, 81, 23, 7, '0.0000', 0, 0),
(73, 23, 81, 23, 6, '0.0000', 0, 0),
(74, 23, 81, 23, 15, '0.0000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_messages`
--

CREATE TABLE `k4tcz2ewg_messages` (
  `message_id` int(15) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `send_type` varchar(32) NOT NULL,
  `recipient` varchar(32) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_message_meta`
--

CREATE TABLE `k4tcz2ewg_message_meta` (
  `message_meta_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `item` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_migrations`
--

CREATE TABLE `k4tcz2ewg_migrations` (
  `type` varchar(40) DEFAULT NULL,
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_migrations`
--

INSERT INTO `k4tcz2ewg_migrations` (`type`, `version`) VALUES
('core', 30);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_options`
--

CREATE TABLE `k4tcz2ewg_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(32) NOT NULL,
  `display_type` varchar(15) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_options`
--

INSERT INTO `k4tcz2ewg_options` (`option_id`, `option_name`, `display_type`, `priority`) VALUES
(22, 'Cooked', 'radio', 1),
(23, 'Toppings', 'checkbox', 2),
(24, 'Dressing', 'select', 3);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_option_values`
--

CREATE TABLE `k4tcz2ewg_option_values` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` varchar(128) NOT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_option_values`
--

INSERT INTO `k4tcz2ewg_option_values` (`option_value_id`, `option_id`, `value`, `price`, `priority`) VALUES
(6, 23, 'Peperoni', '1.9900', 2),
(7, 23, 'Jalapenos', '3.9900', 1),
(8, 22, 'Meat', '4.0000', 1),
(9, 22, 'Chicken', '2.9900', 2),
(10, 22, 'Fish', '3.0000', 3),
(11, 22, 'Beef', '4.9900', 4),
(12, 22, 'Assorted Meat', '5.9900', 5),
(13, 24, 'Dodo', '3.9900', 1),
(14, 24, 'Salad', '2.9900', 2),
(15, 23, 'Sweetcorn', '1.9900', 3);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_orders`
--

CREATE TABLE `k4tcz2ewg_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `cart` text NOT NULL,
  `total_items` int(11) NOT NULL,
  `comment` text NOT NULL,
  `payment` varchar(35) NOT NULL,
  `order_type` varchar(32) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` date NOT NULL,
  `order_time` time NOT NULL,
  `order_date` date NOT NULL,
  `order_total` decimal(15,4) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(32) NOT NULL,
  `invoice_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_order_menus`
--

CREATE TABLE `k4tcz2ewg_order_menus` (
  `order_menu_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `subtotal` decimal(15,4) DEFAULT NULL,
  `option_values` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_order_options`
--

CREATE TABLE `k4tcz2ewg_order_options` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `order_option_name` varchar(128) NOT NULL,
  `order_option_price` decimal(15,4) DEFAULT NULL,
  `order_menu_id` int(11) NOT NULL,
  `order_menu_option_id` int(11) NOT NULL,
  `menu_option_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_order_totals`
--

CREATE TABLE `k4tcz2ewg_order_totals` (
  `order_total_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `priority` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_pages`
--

CREATE TABLE `k4tcz2ewg_pages` (
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `navigation` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_pages`
--

INSERT INTO `k4tcz2ewg_pages` (`page_id`, `language_id`, `name`, `title`, `heading`, `content`, `meta_description`, `meta_keywords`, `layout_id`, `navigation`, `date_added`, `date_updated`, `status`) VALUES
(11, 11, 'About Us', 'About Us', 'About Us', '<h3 style="text-align: center;"><span style="color: #993300;">Aim</span></h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis massa ac magna sagittis, sit amet gravida metus gravida. Aenean dictum pellentesque erat, vitae adipiscing libero semper sit amet. Vestibulum nec nunc lorem. Duis vitae libero a libero hendrerit tincidunt in eu tellus. Aliquam consequat ultrices felis ut dictum. Nulla euismod felis a sem mattis ornare. Aliquam ut diam sit amet dolor iaculis molestie ac id nisl. Maecenas hendrerit convallis mi feugiat gravida. Quisque tincidunt, leo a posuere imperdiet, metus leo vestibulum orci, vel volutpat justo ligula id quam. Cras placerat tincidunt lorem eu interdum.</p>\r\n<h3 style="text-align: center;"><span style="color: #993300;">Mission</span></h3>\r\n<p>Ut eu pretium urna. In sed consectetur neque. In ornare odio erat, id ornare arcu euismod a. Ut dapibus sit amet erat commodo vestibulum. Praesent vitae lacus faucibus, rhoncus tortor et, bibendum justo. Etiam pharetra congue orci, eget aliquam orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend justo eros, sit amet fermentum tellus ullamcorper quis. Cras cursus mi at imperdiet faucibus. Proin iaculis, felis vitae luctus venenatis, ante tortor porta nisi, et ornare magna metus sit amet enim. Phasellus et turpis nec metus aliquet adipiscing. Etiam at augue nec odio lacinia tincidunt. Suspendisse commodo commodo ipsum ac sollicitudin. Nunc nec consequat lacus. Donec gravida rhoncus justo sed elementum.</p>\r\n<h3 style="text-align: center;"><span style="color: #a52a2a;">Vision</span></h3>\r\n<p>Praesent erat massa, consequat a nulla et, eleifend facilisis risus. Nullam libero mi, bibendum id eleifend vitae, imperdiet a nulla. Fusce congue porta ultricies. Vivamus felis lectus, egestas at pretium vitae, posuere a nibh. Mauris lobortis urna nec rhoncus consectetur. Fusce sed placerat sem. Nulla venenatis elit risus, non auctor arcu lobortis eleifend. Ut aliquet vitae velit a faucibus. Suspendisse quis risus sit amet arcu varius malesuada. Vestibulum vitae massa consequat, euismod lorem a, euismod lacus. Duis sagittis dolor risus, ac vehicula mauris lacinia quis. Nulla facilisi. Duis tristique ipsum nec egestas auctor. Nullam in felis vel ligula dictum tincidunt nec a neque. Praesent in egestas elit.</p>', '', '', 17, 'a:2:{i:0;s:8:"side_bar";i:1;s:6:"footer";}', '2014-04-19 16:57:21', '2015-05-07 12:39:52', 1),
(12, 11, 'Policy', 'Policy', 'Policy', '<div id="lipsum">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ligula eros, semper a lorem et, venenatis volutpat dolor. Pellentesque hendrerit lectus feugiat nulla cursus, quis dapibus dolor porttitor. Donec velit enim, adipiscing ac orci id, congue tincidunt arcu. Proin egestas nulla eget leo scelerisque, et semper diam ornare. Suspendisse potenti. Suspendisse vitae bibendum enim. Duis eu ligula hendrerit, lacinia felis in, mollis nisi. Sed gravida arcu in laoreet dictum. Nulla faucibus lectus a mollis dapibus. Fusce vehicula convallis urna, et congue nulla ultricies in. Nulla magna velit, bibendum eu odio et, euismod rhoncus sem. Nullam quis magna fermentum, ultricies neque nec, blandit neque. Etiam nec congue arcu. Curabitur sed tellus quam. Cras adipiscing odio odio, et porttitor dui suscipit eget. Aliquam non est commodo, elementum turpis at, pellentesque lorem.</p>\r\n<p>Duis nec diam diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vulputate est et lorem sagittis, et mollis libero ultricies. Nunc ultrices tortor vel convallis varius. In dolor dolor, scelerisque ac faucibus ut, aliquet ac sem. Praesent consectetur lacus quis tristique posuere. Nulla sed ultricies odio. Cras tristique vulputate facilisis.</p>\r\n<p>Mauris at metus in magna condimentum gravida eu tincidunt urna. Praesent sodales vel mi eu condimentum. Suspendisse in luctus purus. Vestibulum dignissim, metus non luctus accumsan, odio ligula pharetra massa, in eleifend turpis risus in diam. Sed non lorem nibh. Nam at feugiat urna. Curabitur interdum, diam sit amet pulvinar blandit, mauris ante scelerisque nisi, sit amet placerat mi nunc eget orci. Nulla eget quam sit amet risus rhoncus lacinia a ut eros. Praesent non libero nisi. Mauris tincidunt at purus sit amet adipiscing. Donec interdum, velit nec dignissim vehicula, libero ipsum imperdiet ligula, lacinia mattis augue dui ac lacus. Aenean molestie sed nunc at pulvinar. Fusce ornare lacus non venenatis rhoncus.</p>\r\n<p>Aenean at enim luctus ante commodo consequat nec ut mi. Sed porta adipiscing tempus. Aliquam sit amet ullamcorper ipsum, id adipiscing quam. Fusce iaculis odio ut nisi convallis hendrerit. Morbi auctor adipiscing ligula, sit amet aliquet ante consectetur at. Donec vulputate neque eleifend libero pellentesque, vitae lacinia enim ornare. Vestibulum fermentum erat blandit, ultricies felis ac, facilisis augue. Nulla facilisis mi porttitor, interdum diam in, lobortis ipsum. In molestie quam nisl, lacinia convallis tellus fermentum ac. Nulla quis velit augue. Fusce accumsan, lacus et lobortis blandit, neque magna gravida enim, dignissim ultricies tortor dui in dolor. Vestibulum vel convallis justo, quis venenatis elit. Aliquam erat volutpat. Nunc quis iaculis ligula. Suspendisse dictum sodales neque vitae faucibus. Fusce id tellus pretium, varius nunc et, placerat metus.</p>\r\n<p>Pellentesque quis facilisis mauris. Phasellus porta, metus a dignissim viverra, est elit luctus erat, nec ultricies ligula lorem eget sapien. Pellentesque ac justo velit. Maecenas semper accumsan nulla eget rhoncus. Aliquam vel urna sed nibh dignissim auctor. Integer volutpat lacus ac purus convallis, at lobortis nisi tincidunt. Vestibulum condimentum elit ac sapien placerat, at ornare libero hendrerit. Cras tincidunt nunc sit amet ante bibendum tempor. Fusce quam orci, suscipit sed eros quis, vulputate molestie metus. Nam hendrerit vitae felis et porttitor. Proin et commodo velit, id porta erat. Donec eu consectetur odio. Fusce porta odio risus. Aliquam vel erat feugiat, vestibulum elit eget, ornare sapien. Sed sed nulla justo. Sed a dolor eu justo lacinia blandit</p>\r\n</div>', '', '', 17, 'a:2:{i:0;s:8:"side_bar";i:1;s:6:"footer";}', '2014-04-19 17:21:23', '2015-05-16 09:18:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_permalinks`
--

CREATE TABLE `k4tcz2ewg_permalinks` (
  `permalink_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_permalinks`
--

INSERT INTO `k4tcz2ewg_permalinks` (`permalink_id`, `slug`, `controller`, `query`) VALUES
(11, 'about-us', 'pages', 'page_id=11');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_permissions`
--

CREATE TABLE `k4tcz2ewg_permissions` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_permissions`
--

INSERT INTO `k4tcz2ewg_permissions` (`permission_id`, `name`, `description`, `action`, `status`) VALUES
(11, 'Admin.Banners', 'Ability to access, manage, add and delete banners', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(12, 'Admin.Categories', 'Ability to access, manage, add and delete categories', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(13, 'Site.Countries', 'Ability to manage, add and delete site countries', 'a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(14, 'Admin.Coupons', 'Ability to access, manage, add and delete coupons', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(15, 'Site.Currencies', 'Ability to access, manage, add and delete site currencies', 'a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(16, 'Admin.CustomerGroups', 'Ability to access, manage, add and delete customer groups', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(17, 'Admin.Customers', 'Ability to access, manage, add and delete customers', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(18, 'Admin.CustomersOnline', 'Ability to access online customers', 'a:1:{i:0;s:6:"access";}', 1),
(19, 'Admin.Maintenance', 'Ability to access, backup, restore and migrate database', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(20, 'Admin.ErrorLogs', 'Ability to access and delete error logs file', 'a:2:{i:0;s:6:"access";i:1;s:6:"delete";}', 1),
(21, 'Admin.Extensions', 'Ability to access, manage, add and delete extension', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(22, 'Admin.MediaManager', 'Ability to access, manage, add and delete media items', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(23, 'Site.Languages', 'Ability to manage, add and delete site languages', 'a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(24, 'Site.Layouts', 'Ability to manage, add and delete site layouts', 'a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(25, 'Admin.Locations', 'Ability to access, manage, add and delete locations', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(26, 'Admin.MailTemplates', 'Ability to access, manage, add and delete mail templates', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(27, 'Admin.MenuOptions', 'Ability to access, manage, add and delete menu option items', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(28, 'Admin.Menus', 'Ability to access, manage, add and delete menu items', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(29, 'Admin.Messages', 'Ability to add and delete messages', 'a:2:{i:0;s:3:"add";i:1;s:6:"delete";}', 1),
(30, 'Admin.Orders', 'Ability to access, manage, add and delete orders', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(31, 'Site.Pages', 'Ability to manage, add and delete site pages', 'a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(32, 'Admin.Payments', 'Ability to access, add and delete extension payments', 'a:3:{i:0;s:6:"access";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(33, 'Admin.Permissions', 'Ability to manage, add and delete staffs permissions', 'a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}', 1),
(34, 'Admin.Ratings', 'Ability to add and delete review ratings', 'a:2:{i:0;s:3:"add";i:1;s:6:"delete";}', 1),
(35, 'Admin.Reservations', 'Ability to access, manage, add and delete reservations', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(36, 'Admin.Reviews', 'Ability to access, manage, add and delete user reviews', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(37, 'Admin.SecurityQuestions', 'Ability to add and delete customer registration security questions', 'a:2:{i:0;s:3:"add";i:1;s:6:"delete";}', 1),
(38, 'Site.Settings', 'Ability to manage system settings', 'a:1:{i:0;s:6:"manage";}', 1),
(39, 'Admin.StaffGroups', 'Ability to access, manage, add and delete staff groups', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(40, 'Admin.Staffs', 'Ability to access, manage, add and delete staffs', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(42, 'Admin.Statuses', 'Ability to access, manage, add and delete orders and reservations statuses', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(43, 'Admin.Tables', 'Ability to access, manage, add and delete reservations tables', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(44, 'Site.Themes', 'Ability to access, manage site themes', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1),
(45, 'Module.AccountModule', 'Ability to manage account module', 'a:1:{i:0;s:6:"manage";}', 1),
(46, 'Module.BannersModule', 'Ability to manage banners module', 'a:1:{i:0;s:6:"manage";}', 1),
(47, 'Module.CartModule', 'Ability to manage cart module', 'a:1:{i:0;s:6:"manage";}', 1),
(48, 'Module.CategoriesModule', 'Ability to manage categories module', 'a:1:{i:0;s:6:"manage";}', 1),
(49, 'Module.LocalModule', 'Ability to manage local module', 'a:1:{i:0;s:6:"manage";}', 1),
(50, 'Module.PagesModule', 'Ability to manage pages module', 'a:1:{i:0;s:6:"manage";}', 1),
(51, 'Module.ReservationModule', 'Ability to manage reservation module', 'a:1:{i:0;s:6:"manage";}', 1),
(52, 'Module.Slideshow', 'Ability to manage slideshow module', 'a:1:{i:0;s:6:"manage";}', 1),
(53, 'Payment.Cod', 'Ability to manage cash on delivery payment', 'a:1:{i:0;s:6:"manage";}', 1),
(54, 'Payment.PaypalExpress', 'Ability to manage paypal express payment', 'a:1:{i:0;s:6:"manage";}', 1),
(55, 'Site.Updates', 'Ability to apply updates when a new version of TastyIgniter is available', 'a:1:{i:0;s:3:"add";}', 1),
(56, 'Admin.Mealtimes', 'Ability to access, manage, add and delete mealtimes', 'a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_pp_payments`
--

CREATE TABLE `k4tcz2ewg_pp_payments` (
  `transaction_id` varchar(19) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `serialized` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_reservations`
--

CREATE TABLE `k4tcz2ewg_reservations` (
  `reservation_id` int(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `guest_num` int(11) NOT NULL,
  `occasion_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `reserve_time` time NOT NULL,
  `reserve_date` date NOT NULL,
  `date_added` date NOT NULL,
  `date_modified` date NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_reviews`
--

CREATE TABLE `k4tcz2ewg_reviews` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `sale_type` varchar(32) NOT NULL,
  `author` varchar(32) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `delivery` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `review_text` text NOT NULL,
  `date_added` datetime NOT NULL,
  `review_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_security_questions`
--

CREATE TABLE `k4tcz2ewg_security_questions` (
  `question_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `priority` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_security_questions`
--

INSERT INTO `k4tcz2ewg_security_questions` (`question_id`, `text`, `priority`) VALUES
(11, 'Whats your pets name?', 1),
(12, 'What high school did you attend?', 2),
(13, 'What is your father''s middle name?', 7),
(14, 'What is your mother''s name?', 3),
(15, 'What is your place of birth?', 4),
(16, 'Whats your favourite teacher''s name?', 5);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_settings`
--

CREATE TABLE `k4tcz2ewg_settings` (
  `setting_id` int(11) NOT NULL,
  `sort` varchar(45) NOT NULL,
  `item` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_settings`
--

INSERT INTO `k4tcz2ewg_settings` (`setting_id`, `sort`, `item`, `value`, `serialized`) VALUES
(7870, 'prefs', 'mail_template_id', '11', 0),
(8500, 'ratings', 'ratings', 'a:1:{s:7:"ratings";a:5:{i:1;s:3:"Bad";i:2;s:5:"Worse";i:3;s:4:"Good";i:4;s:7:"Average";i:5;s:9:"Excellent";}}', 1),
(9225, 'config', 'site_desc', '', 0),
(9241, 'config', 'search_radius', '20', 0),
(9249, 'config', 'ready_time', '45', 0),
(10836, 'prefs', 'default_location_id', '', 0),
(10839, 'config', 'site_logo', 'data/no_photo.png', 0),
(10840, 'config', 'country_id', '222', 0),
(10841, 'config', 'timezone', 'Europe/London', 0),
(10842, 'config', 'currency_id', '226', 0),
(10843, 'config', 'language_id', '11', 0),
(10844, 'config', 'customer_group_id', '11', 0),
(10845, 'config', 'page_limit', '20', 0),
(10846, 'config', 'meta_description', '', 0),
(10847, 'config', 'meta_keywords', '', 0),
(10848, 'config', 'menus_page_limit', '20', 0),
(10849, 'config', 'show_menu_images', '1', 0),
(10850, 'config', 'menu_images_h', '80', 0),
(10851, 'config', 'menu_images_w', '95', 0),
(10852, 'config', 'special_category_id', '0', 0),
(10853, 'config', 'registration_terms', '1', 0),
(10854, 'config', 'checkout_terms', '0', 0),
(10855, 'config', 'stock_warning', '0', 0),
(10856, 'config', 'stock_qty_warning', '0', 0),
(10857, 'config', 'registration_email', '1', 0),
(10858, 'config', 'customer_order_email', '1', 0),
(10859, 'config', 'customer_reserve_email', '1', 0),
(10860, 'config', 'main_address', 'a:6:{s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:4:"city";s:0:"";s:8:"postcode";s:0:"";s:11:"location_id";s:0:"";s:10:"country_id";s:1:"1";}', 1),
(10861, 'config', 'maps_api_key', '', 0),
(10863, 'config', 'distance_unit', 'mi', 0),
(10864, 'config', 'future_orders', '0', 0),
(10865, 'config', 'location_order', '1', 0),
(10866, 'config', 'location_order_email', '0', 0),
(10867, 'config', 'location_reserve_email', '0', 0),
(10868, 'config', 'approve_reviews', '1', 0),
(10869, 'config', 'new_order_status', '11', 0),
(10870, 'config', 'completed_order_status', '15', 0),
(10871, 'config', 'guest_order', '1', 0),
(10872, 'config', 'delivery_time', '45', 0),
(10873, 'config', 'collection_time', '15', 0),
(10874, 'config', 'reservation_mode', '1', 0),
(10875, 'config', 'new_reservation_status', '18', 0),
(10876, 'config', 'confirmed_reservation_status', '16', 0),
(10878, 'config', 'canceled_order_status', '19', 0),
(10879, 'config', 'canceled_reservation_status', '17', 0),
(10880, 'config', 'reservation_time_interval', '45', 0),
(10881, 'config', 'reservation_stay_time', '60', 0),
(10882, 'config', 'image_manager', 'a:11:{s:8:"max_size";s:3:"300";s:11:"thumb_width";s:3:"320";s:12:"thumb_height";s:3:"220";s:7:"uploads";s:1:"1";s:10:"new_folder";s:1:"1";s:4:"copy";s:1:"1";s:4:"move";s:1:"1";s:6:"rename";s:1:"1";s:6:"delete";s:1:"1";s:15:"transliteration";s:1:"0";s:13:"remember_days";s:1:"7";}', 1),
(10883, 'config', 'protocol', 'mail', 0),
(10884, 'config', 'mailtype', 'html', 0),
(10885, 'config', 'smtp_host', '', 0),
(10886, 'config', 'smtp_port', '', 0),
(10887, 'config', 'smtp_user', '', 0),
(10888, 'config', 'smtp_pass', '', 0),
(10889, 'config', 'log_threshold', '1', 0),
(10891, 'config', 'customer_online_time_out', '120', 0),
(10892, 'config', 'customer_online_archive_time_out', '0', 0),
(10894, 'config', 'index_file_url', '0', 0),
(10895, 'config', 'permalink', '1', 0),
(10896, 'config', 'maintenance_mode', '0', 0),
(10897, 'config', 'maintenance_message', 'Site is under maintenance. Please check back later.', 0),
(10898, 'config', 'cache_mode', '0', 0),
(10899, 'config', 'cache_time', '0', 0),
(10971, 'prefs', 'default_themes', 'a:2:{s:5:"admin";s:18:"tastyigniter-blue/";s:4:"main";s:20:"tastyigniter-orange/";}', 1),
(10972, 'prefs', 'ti_setup', 'installed', 0),
(10973, 'config', 'site_name', 'foodago', 0),
(10974, 'config', 'site_email', 'kgseagan@gmail.com', 0),
(10975, 'prefs', 'ti_version', '2.1.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_staffs`
--

CREATE TABLE `k4tcz2ewg_staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(32) NOT NULL,
  `staff_email` varchar(96) NOT NULL,
  `staff_group_id` int(11) NOT NULL,
  `staff_location_id` int(11) NOT NULL,
  `timezone` varchar(32) NOT NULL,
  `language_id` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `staff_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_staffs`
--

INSERT INTO `k4tcz2ewg_staffs` (`staff_id`, `staff_name`, `staff_email`, `staff_group_id`, `staff_location_id`, `timezone`, `language_id`, `date_added`, `staff_status`) VALUES
(11, 'Kathleen', 'kgseagan@gmail.com', 11, 0, '0', 11, '2017-06-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_staff_groups`
--

CREATE TABLE `k4tcz2ewg_staff_groups` (
  `staff_group_id` int(11) NOT NULL,
  `staff_group_name` varchar(32) NOT NULL,
  `customer_account_access` tinyint(4) NOT NULL,
  `location_access` tinyint(1) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_staff_groups`
--

INSERT INTO `k4tcz2ewg_staff_groups` (`staff_group_id`, `staff_group_name`, `customer_account_access`, `location_access`, `permissions`) VALUES
(11, 'Administrator', 1, 0, 'a:46:{i:11;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:12;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:13;a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}i:14;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:15;a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}i:16;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:17;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:18;a:1:{i:0;s:6:"access";}i:19;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:20;a:2:{i:0;s:6:"access";i:1;s:6:"delete";}i:21;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:22;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:25;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:26;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:27;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:28;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:29;a:2:{i:0;s:3:"add";i:1;s:6:"delete";}i:30;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:32;a:3:{i:0;s:6:"access";i:1;s:3:"add";i:2;s:6:"delete";}i:33;a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}i:34;a:2:{i:0;s:3:"add";i:1;s:6:"delete";}i:35;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:36;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:37;a:2:{i:0;s:3:"add";i:1;s:6:"delete";}i:39;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:40;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:41;a:2:{i:0;s:6:"access";i:1;s:6:"manage";}i:42;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:43;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:23;a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}i:24;a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}i:31;a:3:{i:0;s:6:"manage";i:1;s:3:"add";i:2;s:6:"delete";}i:38;a:1:{i:0;s:6:"manage";}i:44;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}i:45;a:1:{i:0;s:6:"manage";}i:46;a:1:{i:0;s:6:"manage";}i:47;a:1:{i:0;s:6:"manage";}i:48;a:1:{i:0;s:6:"manage";}i:49;a:1:{i:0;s:6:"manage";}i:50;a:1:{i:0;s:6:"manage";}i:51;a:1:{i:0;s:6:"manage";}i:52;a:1:{i:0;s:6:"manage";}i:53;a:1:{i:0;s:6:"manage";}i:54;a:1:{i:0;s:6:"manage";}i:55;a:1:{i:0;s:3:"add";}i:56;a:4:{i:0;s:6:"access";i:1;s:6:"manage";i:2;s:3:"add";i:3;s:6:"delete";}}');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_statuses`
--

CREATE TABLE `k4tcz2ewg_statuses` (
  `status_id` int(15) NOT NULL,
  `status_name` varchar(45) NOT NULL,
  `status_comment` text NOT NULL,
  `notify_customer` tinyint(1) NOT NULL,
  `status_for` varchar(10) NOT NULL,
  `status_color` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_statuses`
--

INSERT INTO `k4tcz2ewg_statuses` (`status_id`, `status_name`, `status_comment`, `notify_customer`, `status_for`, `status_color`) VALUES
(11, 'Received', 'Your order has been received.', 1, 'order', '#686663'),
(12, 'Pending', 'Your order is pending', 1, 'order', '#f0ad4e'),
(13, 'Preparation', 'Your order is in the kitchen', 1, 'order', '#00c0ef'),
(14, 'Delivery', 'Your order will be with you shortly.', 0, 'order', '#00a65a'),
(15, 'Completed', '', 0, 'order', '#00a65a'),
(16, 'Confirmed', 'Your table reservation has been confirmed.', 0, 'reserve', '#00a65a'),
(17, 'Canceled', 'Your table reservation has been canceled.', 0, 'reserve', '#dd4b39'),
(18, 'Pending', 'Your table reservation is pending.', 0, 'reserve', ''),
(19, 'Canceled', '', 0, 'order', '#ea0b29');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_status_history`
--

CREATE TABLE `k4tcz2ewg_status_history` (
  `status_history_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `assignee_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `status_for` varchar(32) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_tables`
--

CREATE TABLE `k4tcz2ewg_tables` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(32) NOT NULL,
  `min_capacity` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `table_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_uri_routes`
--

CREATE TABLE `k4tcz2ewg_uri_routes` (
  `uri_route_id` int(11) NOT NULL,
  `uri_route` varchar(255) NOT NULL,
  `controller` varchar(128) NOT NULL,
  `priority` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_uri_routes`
--

INSERT INTO `k4tcz2ewg_uri_routes` (`uri_route_id`, `uri_route`, `controller`, `priority`) VALUES
(1, 'locations', 'local/locations', 1),
(2, 'account', 'account/account', 2),
(3, '(:any)', 'pages', 3);

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_users`
--

CREATE TABLE `k4tcz2ewg_users` (
  `user_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `k4tcz2ewg_users`
--

INSERT INTO `k4tcz2ewg_users` (`user_id`, `staff_id`, `username`, `password`, `salt`) VALUES
(11, 11, 'kgseagan', 'adad9057e93c4d1453f50cb9c15e279921a4ba83', 'd7c0025f4');

-- --------------------------------------------------------

--
-- Table structure for table `k4tcz2ewg_working_hours`
--

CREATE TABLE `k4tcz2ewg_working_hours` (
  `location_id` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `opening_time` time NOT NULL DEFAULT '00:00:00',
  `closing_time` time NOT NULL DEFAULT '00:00:00',
  `status` tinyint(1) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `k4tcz2ewg_activities`
--
ALTER TABLE `k4tcz2ewg_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `k4tcz2ewg_addresses`
--
ALTER TABLE `k4tcz2ewg_addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `k4tcz2ewg_banners`
--
ALTER TABLE `k4tcz2ewg_banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `k4tcz2ewg_categories`
--
ALTER TABLE `k4tcz2ewg_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `k4tcz2ewg_countries`
--
ALTER TABLE `k4tcz2ewg_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `k4tcz2ewg_coupons`
--
ALTER TABLE `k4tcz2ewg_coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `k4tcz2ewg_coupons_history`
--
ALTER TABLE `k4tcz2ewg_coupons_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `k4tcz2ewg_currencies`
--
ALTER TABLE `k4tcz2ewg_currencies`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `k4tcz2ewg_customers`
--
ALTER TABLE `k4tcz2ewg_customers`
  ADD PRIMARY KEY (`customer_id`,`email`);

--
-- Indexes for table `k4tcz2ewg_customers_online`
--
ALTER TABLE `k4tcz2ewg_customers_online`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `k4tcz2ewg_customer_groups`
--
ALTER TABLE `k4tcz2ewg_customer_groups`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `k4tcz2ewg_extensions`
--
ALTER TABLE `k4tcz2ewg_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Indexes for table `k4tcz2ewg_languages`
--
ALTER TABLE `k4tcz2ewg_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `k4tcz2ewg_layouts`
--
ALTER TABLE `k4tcz2ewg_layouts`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `k4tcz2ewg_layout_modules`
--
ALTER TABLE `k4tcz2ewg_layout_modules`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `k4tcz2ewg_layout_routes`
--
ALTER TABLE `k4tcz2ewg_layout_routes`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `k4tcz2ewg_locations`
--
ALTER TABLE `k4tcz2ewg_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `k4tcz2ewg_location_tables`
--
ALTER TABLE `k4tcz2ewg_location_tables`
  ADD PRIMARY KEY (`location_id`,`table_id`);

--
-- Indexes for table `k4tcz2ewg_mail_templates`
--
ALTER TABLE `k4tcz2ewg_mail_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `k4tcz2ewg_mail_templates_data`
--
ALTER TABLE `k4tcz2ewg_mail_templates_data`
  ADD PRIMARY KEY (`template_data_id`,`template_id`,`code`);

--
-- Indexes for table `k4tcz2ewg_mealtimes`
--
ALTER TABLE `k4tcz2ewg_mealtimes`
  ADD PRIMARY KEY (`mealtime_id`);

--
-- Indexes for table `k4tcz2ewg_menus`
--
ALTER TABLE `k4tcz2ewg_menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `k4tcz2ewg_menus_specials`
--
ALTER TABLE `k4tcz2ewg_menus_specials`
  ADD PRIMARY KEY (`special_id`,`menu_id`);

--
-- Indexes for table `k4tcz2ewg_menu_options`
--
ALTER TABLE `k4tcz2ewg_menu_options`
  ADD PRIMARY KEY (`menu_option_id`);

--
-- Indexes for table `k4tcz2ewg_menu_option_values`
--
ALTER TABLE `k4tcz2ewg_menu_option_values`
  ADD PRIMARY KEY (`menu_option_value_id`);

--
-- Indexes for table `k4tcz2ewg_messages`
--
ALTER TABLE `k4tcz2ewg_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `k4tcz2ewg_message_meta`
--
ALTER TABLE `k4tcz2ewg_message_meta`
  ADD PRIMARY KEY (`message_meta_id`);

--
-- Indexes for table `k4tcz2ewg_options`
--
ALTER TABLE `k4tcz2ewg_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `k4tcz2ewg_option_values`
--
ALTER TABLE `k4tcz2ewg_option_values`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `k4tcz2ewg_orders`
--
ALTER TABLE `k4tcz2ewg_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `k4tcz2ewg_order_menus`
--
ALTER TABLE `k4tcz2ewg_order_menus`
  ADD PRIMARY KEY (`order_menu_id`);

--
-- Indexes for table `k4tcz2ewg_order_options`
--
ALTER TABLE `k4tcz2ewg_order_options`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `k4tcz2ewg_order_totals`
--
ALTER TABLE `k4tcz2ewg_order_totals`
  ADD PRIMARY KEY (`order_total_id`,`order_id`);

--
-- Indexes for table `k4tcz2ewg_pages`
--
ALTER TABLE `k4tcz2ewg_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `k4tcz2ewg_permalinks`
--
ALTER TABLE `k4tcz2ewg_permalinks`
  ADD PRIMARY KEY (`permalink_id`),
  ADD UNIQUE KEY `uniqueSlug` (`slug`,`controller`);

--
-- Indexes for table `k4tcz2ewg_permissions`
--
ALTER TABLE `k4tcz2ewg_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `k4tcz2ewg_pp_payments`
--
ALTER TABLE `k4tcz2ewg_pp_payments`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `k4tcz2ewg_reservations`
--
ALTER TABLE `k4tcz2ewg_reservations`
  ADD PRIMARY KEY (`reservation_id`,`location_id`,`table_id`);

--
-- Indexes for table `k4tcz2ewg_reviews`
--
ALTER TABLE `k4tcz2ewg_reviews`
  ADD PRIMARY KEY (`review_id`,`sale_type`,`sale_id`);

--
-- Indexes for table `k4tcz2ewg_security_questions`
--
ALTER TABLE `k4tcz2ewg_security_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `k4tcz2ewg_settings`
--
ALTER TABLE `k4tcz2ewg_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `k4tcz2ewg_staffs`
--
ALTER TABLE `k4tcz2ewg_staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_email` (`staff_email`);

--
-- Indexes for table `k4tcz2ewg_staff_groups`
--
ALTER TABLE `k4tcz2ewg_staff_groups`
  ADD PRIMARY KEY (`staff_group_id`);

--
-- Indexes for table `k4tcz2ewg_statuses`
--
ALTER TABLE `k4tcz2ewg_statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `k4tcz2ewg_status_history`
--
ALTER TABLE `k4tcz2ewg_status_history`
  ADD PRIMARY KEY (`status_history_id`);

--
-- Indexes for table `k4tcz2ewg_tables`
--
ALTER TABLE `k4tcz2ewg_tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `k4tcz2ewg_uri_routes`
--
ALTER TABLE `k4tcz2ewg_uri_routes`
  ADD PRIMARY KEY (`uri_route_id`,`uri_route`);

--
-- Indexes for table `k4tcz2ewg_users`
--
ALTER TABLE `k4tcz2ewg_users`
  ADD PRIMARY KEY (`user_id`,`staff_id`,`username`);

--
-- Indexes for table `k4tcz2ewg_working_hours`
--
ALTER TABLE `k4tcz2ewg_working_hours`
  ADD PRIMARY KEY (`location_id`,`weekday`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `k4tcz2ewg_activities`
--
ALTER TABLE `k4tcz2ewg_activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_addresses`
--
ALTER TABLE `k4tcz2ewg_addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_banners`
--
ALTER TABLE `k4tcz2ewg_banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_categories`
--
ALTER TABLE `k4tcz2ewg_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_countries`
--
ALTER TABLE `k4tcz2ewg_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_coupons`
--
ALTER TABLE `k4tcz2ewg_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_coupons_history`
--
ALTER TABLE `k4tcz2ewg_coupons_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_currencies`
--
ALTER TABLE `k4tcz2ewg_currencies`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_customers`
--
ALTER TABLE `k4tcz2ewg_customers`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_customers_online`
--
ALTER TABLE `k4tcz2ewg_customers_online`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_customer_groups`
--
ALTER TABLE `k4tcz2ewg_customer_groups`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_extensions`
--
ALTER TABLE `k4tcz2ewg_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_languages`
--
ALTER TABLE `k4tcz2ewg_languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_layouts`
--
ALTER TABLE `k4tcz2ewg_layouts`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_layout_modules`
--
ALTER TABLE `k4tcz2ewg_layout_modules`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_layout_routes`
--
ALTER TABLE `k4tcz2ewg_layout_routes`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_locations`
--
ALTER TABLE `k4tcz2ewg_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_mail_templates`
--
ALTER TABLE `k4tcz2ewg_mail_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_mail_templates_data`
--
ALTER TABLE `k4tcz2ewg_mail_templates_data`
  MODIFY `template_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_mealtimes`
--
ALTER TABLE `k4tcz2ewg_mealtimes`
  MODIFY `mealtime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_menus`
--
ALTER TABLE `k4tcz2ewg_menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_menus_specials`
--
ALTER TABLE `k4tcz2ewg_menus_specials`
  MODIFY `special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_menu_options`
--
ALTER TABLE `k4tcz2ewg_menu_options`
  MODIFY `menu_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_menu_option_values`
--
ALTER TABLE `k4tcz2ewg_menu_option_values`
  MODIFY `menu_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_messages`
--
ALTER TABLE `k4tcz2ewg_messages`
  MODIFY `message_id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_message_meta`
--
ALTER TABLE `k4tcz2ewg_message_meta`
  MODIFY `message_meta_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_options`
--
ALTER TABLE `k4tcz2ewg_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_option_values`
--
ALTER TABLE `k4tcz2ewg_option_values`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_orders`
--
ALTER TABLE `k4tcz2ewg_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_order_menus`
--
ALTER TABLE `k4tcz2ewg_order_menus`
  MODIFY `order_menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_order_options`
--
ALTER TABLE `k4tcz2ewg_order_options`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_order_totals`
--
ALTER TABLE `k4tcz2ewg_order_totals`
  MODIFY `order_total_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_pages`
--
ALTER TABLE `k4tcz2ewg_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_permalinks`
--
ALTER TABLE `k4tcz2ewg_permalinks`
  MODIFY `permalink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_permissions`
--
ALTER TABLE `k4tcz2ewg_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_reservations`
--
ALTER TABLE `k4tcz2ewg_reservations`
  MODIFY `reservation_id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_reviews`
--
ALTER TABLE `k4tcz2ewg_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_security_questions`
--
ALTER TABLE `k4tcz2ewg_security_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_settings`
--
ALTER TABLE `k4tcz2ewg_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10976;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_staffs`
--
ALTER TABLE `k4tcz2ewg_staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_staff_groups`
--
ALTER TABLE `k4tcz2ewg_staff_groups`
  MODIFY `staff_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_statuses`
--
ALTER TABLE `k4tcz2ewg_statuses`
  MODIFY `status_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_status_history`
--
ALTER TABLE `k4tcz2ewg_status_history`
  MODIFY `status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_tables`
--
ALTER TABLE `k4tcz2ewg_tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_uri_routes`
--
ALTER TABLE `k4tcz2ewg_uri_routes`
  MODIFY `uri_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `k4tcz2ewg_users`
--
ALTER TABLE `k4tcz2ewg_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
