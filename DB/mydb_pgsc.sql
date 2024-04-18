-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 08:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb_pgsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_mst`
--

CREATE TABLE `admin_mst` (
  `admin_id` int(3) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_mst`
--

INSERT INTO `admin_mst` (`admin_id`, `user_name`, `user_password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admission_mst`
--

CREATE TABLE `admission_mst` (
  `a_id` int(5) NOT NULL,
  `a_stud_name` varchar(50) NOT NULL,
  `a_father_name` varchar(50) NOT NULL,
  `a_email` varchar(255) NOT NULL,
  `a_mobilenumber` varchar(20) NOT NULL,
  `a_address` varchar(200) NOT NULL,
  `a_birth_date` date NOT NULL,
  `a_blood_group` varchar(5) NOT NULL,
  `a_last_qualification` varchar(30) NOT NULL,
  `a_gender` varchar(10) NOT NULL,
  `a_remark` varchar(100) NOT NULL,
  `a_interested_subject` varchar(30) NOT NULL,
  `a_img` varchar(200) NOT NULL,
  `a_status` varchar(5) NOT NULL DEFAULT '1',
  `a_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission_mst`
--

INSERT INTO `admission_mst` (`a_id`, `a_stud_name`, `a_father_name`, `a_email`, `a_mobilenumber`, `a_address`, `a_birth_date`, `a_blood_group`, `a_last_qualification`, `a_gender`, `a_remark`, `a_interested_subject`, `a_img`, `a_status`, `a_active`) VALUES
(1, 'Dhvanil Kalpeshbhai Patel', 'Kalpeshbhai Sumanbhai Patel', 'dhvanilpatel2542@gmail.com', '9737662965', 'Pipodara Water Park', '2000-04-25', 'O+', 'BCA', 'Male', 'For Best Study Place', 'Python ', '040720_123994_staff-3.jpg', '1', '1'),
(2, 'Mulchand Sen', 'Shambhulal Sen', 'mulchand.sen16@gmail.com', '9979156055', 'Nizar', '1985-01-18', 'O+', 'Ph.D.', 'Male', 'No', 'English', '070720_962396_123-removebg-preview.png', '1', '1'),
(3, 'Shivkumar Sen', 'Shambhulal Sen', 'mulchand.sen16@gmail.com', '9979156055', 'Nizar', '1985-01-18', 'O+', 'Ph.D.', 'Male', 'No', 'English', '080720_385421_2 MSS.jpg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `city_state` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_state`) VALUES
(1, 'Kolhapur', 'Maharashtra'),
(2, 'Port Blair', 'Andaman & Nicobar Islands'),
(3, 'Adilabad', 'Andhra Pradesh'),
(4, 'Adoni', 'Andhra Pradesh'),
(5, 'Amadalavalasa', 'Andhra Pradesh'),
(6, 'Amalapuram', 'Andhra Pradesh'),
(7, 'Anakapalle', 'Andhra Pradesh'),
(8, 'Anantapur', 'Andhra Pradesh'),
(9, 'Badepalle', 'Andhra Pradesh'),
(10, 'Banganapalle', 'Andhra Pradesh'),
(11, 'Bapatla', 'Andhra Pradesh'),
(12, 'Bellampalle', 'Andhra Pradesh'),
(13, 'Bethamcherla', 'Andhra Pradesh'),
(14, 'Bhadrachalam', 'Andhra Pradesh'),
(15, 'Bhainsa', 'Andhra Pradesh'),
(16, 'Bheemunipatnam', 'Andhra Pradesh'),
(17, 'Bhimavaram', 'Andhra Pradesh'),
(18, 'Bhongir', 'Andhra Pradesh'),
(19, 'Bobbili', 'Andhra Pradesh'),
(20, 'Bodhan', 'Andhra Pradesh'),
(21, 'Chilakaluripet', 'Andhra Pradesh'),
(22, 'Chirala', 'Andhra Pradesh'),
(23, 'Chittoor', 'Andhra Pradesh'),
(24, 'Cuddapah', 'Andhra Pradesh'),
(25, 'Devarakonda', 'Andhra Pradesh'),
(26, 'Dharmavaram', 'Andhra Pradesh'),
(27, 'Eluru', 'Andhra Pradesh'),
(28, 'Farooqnagar', 'Andhra Pradesh'),
(29, 'Gadwal', 'Andhra Pradesh'),
(30, 'Gooty', 'Andhra Pradesh'),
(31, 'Gudivada', 'Andhra Pradesh'),
(32, 'Gudur', 'Andhra Pradesh'),
(33, 'Guntakal', 'Andhra Pradesh'),
(34, 'Guntur', 'Andhra Pradesh'),
(35, 'Hanuman Junction', 'Andhra Pradesh'),
(36, 'Hindupur', 'Andhra Pradesh'),
(37, 'Hyderabad', 'Andhra Pradesh'),
(38, 'Ichchapuram', 'Andhra Pradesh'),
(39, 'Jaggaiahpet', 'Andhra Pradesh'),
(40, 'Jagtial', 'Andhra Pradesh'),
(41, 'Jammalamadugu', 'Andhra Pradesh'),
(42, 'Jangaon', 'Andhra Pradesh'),
(43, 'Kadapa', 'Andhra Pradesh'),
(44, 'Kadiri', 'Andhra Pradesh'),
(45, 'Kagaznagar', 'Andhra Pradesh'),
(46, 'Kakinada', 'Andhra Pradesh'),
(47, 'Kalyandurg', 'Andhra Pradesh'),
(48, 'Kamareddy', 'Andhra Pradesh'),
(49, 'Kandukur', 'Andhra Pradesh'),
(50, 'Karimnagar', 'Andhra Pradesh'),
(51, 'Kavali', 'Andhra Pradesh'),
(52, 'Khammam', 'Andhra Pradesh'),
(53, 'Koratla', 'Andhra Pradesh'),
(54, 'Kothagudem', 'Andhra Pradesh'),
(55, 'Kothapeta', 'Andhra Pradesh'),
(56, 'Kovvur', 'Andhra Pradesh'),
(57, 'Kurnool', 'Andhra Pradesh'),
(58, 'Kyathampalle', 'Andhra Pradesh'),
(59, 'Macherla', 'Andhra Pradesh'),
(60, 'Machilipatnam', 'Andhra Pradesh'),
(61, 'Madanapalle', 'Andhra Pradesh'),
(62, 'Mahbubnagar', 'Andhra Pradesh'),
(63, 'Mancherial', 'Andhra Pradesh'),
(64, 'Mandamarri', 'Andhra Pradesh'),
(65, 'Mandapeta', 'Andhra Pradesh'),
(66, 'Manuguru', 'Andhra Pradesh'),
(67, 'Markapur', 'Andhra Pradesh'),
(68, 'Medak', 'Andhra Pradesh'),
(69, 'Miryalaguda', 'Andhra Pradesh'),
(70, 'Mogalthur', 'Andhra Pradesh'),
(71, 'Nagari', 'Andhra Pradesh'),
(72, 'Nagarkurnool', 'Andhra Pradesh'),
(73, 'Nandyal', 'Andhra Pradesh'),
(74, 'Narasapur', 'Andhra Pradesh'),
(75, 'Narasaraopet', 'Andhra Pradesh'),
(76, 'Narayanpet', 'Andhra Pradesh'),
(77, 'Narsipatnam', 'Andhra Pradesh'),
(78, 'Nellore', 'Andhra Pradesh'),
(79, 'Nidadavole', 'Andhra Pradesh'),
(80, 'Nirmal', 'Andhra Pradesh'),
(81, 'Nizamabad', 'Andhra Pradesh'),
(82, 'Nuzvid', 'Andhra Pradesh'),
(83, 'Ongole', 'Andhra Pradesh'),
(84, 'Palacole', 'Andhra Pradesh'),
(85, 'Palasa Kasibugga', 'Andhra Pradesh'),
(86, 'Palwancha', 'Andhra Pradesh'),
(87, 'Parvathipuram', 'Andhra Pradesh'),
(88, 'Pedana', 'Andhra Pradesh'),
(89, 'Peddapuram', 'Andhra Pradesh'),
(90, 'Pithapuram', 'Andhra Pradesh'),
(91, 'Pondur', 'Andhra pradesh'),
(92, 'Ponnur', 'Andhra Pradesh'),
(93, 'Proddatur', 'Andhra Pradesh'),
(94, 'Punganur', 'Andhra Pradesh'),
(95, 'Puttur', 'Andhra Pradesh'),
(96, 'Rajahmundry', 'Andhra Pradesh'),
(97, 'Rajam', 'Andhra Pradesh'),
(98, 'Ramachandrapuram', 'Andhra Pradesh'),
(99, 'Ramagundam', 'Andhra Pradesh'),
(100, 'Rayachoti', 'Andhra Pradesh'),
(101, 'Rayadurg', 'Andhra Pradesh'),
(102, 'Renigunta', 'Andhra Pradesh'),
(103, 'Repalle', 'Andhra Pradesh'),
(104, 'Sadasivpet', 'Andhra Pradesh'),
(105, 'Salur', 'Andhra Pradesh'),
(106, 'Samalkot', 'Andhra Pradesh'),
(107, 'Sangareddy', 'Andhra Pradesh'),
(108, 'Sattenapalle', 'Andhra Pradesh'),
(109, 'Siddipet', 'Andhra Pradesh'),
(110, 'Singapur', 'Andhra Pradesh'),
(111, 'Sircilla', 'Andhra Pradesh'),
(112, 'Srikakulam', 'Andhra Pradesh'),
(113, 'Srikalahasti', 'Andhra Pradesh'),
(115, 'Suryapet', 'Andhra Pradesh'),
(116, 'Tadepalligudem', 'Andhra Pradesh'),
(117, 'Tadpatri', 'Andhra Pradesh'),
(118, 'Tandur', 'Andhra Pradesh'),
(119, 'Tanuku', 'Andhra Pradesh'),
(120, 'Tenali', 'Andhra Pradesh'),
(121, 'Tirupati', 'Andhra Pradesh'),
(122, 'Tuni', 'Andhra Pradesh'),
(123, 'Uravakonda', 'Andhra Pradesh'),
(124, 'Venkatagiri', 'Andhra Pradesh'),
(125, 'Vicarabad', 'Andhra Pradesh'),
(126, 'Vijayawada', 'Andhra Pradesh'),
(127, 'Vinukonda', 'Andhra Pradesh'),
(128, 'Visakhapatnam', 'Andhra Pradesh'),
(129, 'Vizianagaram', 'Andhra Pradesh'),
(130, 'Wanaparthy', 'Andhra Pradesh'),
(131, 'Warangal', 'Andhra Pradesh'),
(132, 'Yellandu', 'Andhra Pradesh'),
(133, 'Yemmiganur', 'Andhra Pradesh'),
(134, 'Yerraguntla', 'Andhra Pradesh'),
(135, 'Zahirabad', 'Andhra Pradesh'),
(136, 'Rajampet', 'Andhra Pradesh'),
(137, 'Along', 'Arunachal Pradesh'),
(138, 'Bomdila', 'Arunachal Pradesh'),
(139, 'Itanagar', 'Arunachal Pradesh'),
(140, 'Naharlagun', 'Arunachal Pradesh'),
(141, 'Pasighat', 'Arunachal Pradesh'),
(142, 'Abhayapuri', 'Assam'),
(143, 'Amguri', 'Assam'),
(144, 'Anandnagaar', 'Assam'),
(145, 'Barpeta', 'Assam'),
(146, 'Barpeta Road', 'Assam'),
(147, 'Bilasipara', 'Assam'),
(148, 'Bongaigaon', 'Assam'),
(149, 'Dhekiajuli', 'Assam'),
(150, 'Dhubri', 'Assam'),
(151, 'Dibrugarh', 'Assam'),
(152, 'Digboi', 'Assam'),
(153, 'Diphu', 'Assam'),
(154, 'Dispur', 'Assam'),
(156, 'Gauripur', 'Assam'),
(157, 'Goalpara', 'Assam'),
(158, 'Golaghat', 'Assam'),
(159, 'Guwahati', 'Assam'),
(160, 'Haflong', 'Assam'),
(161, 'Hailakandi', 'Assam'),
(162, 'Hojai', 'Assam'),
(163, 'Jorhat', 'Assam'),
(164, 'Karimganj', 'Assam'),
(165, 'Kokrajhar', 'Assam'),
(166, 'Lanka', 'Assam'),
(167, 'Lumding', 'Assam'),
(168, 'Mangaldoi', 'Assam'),
(169, 'Mankachar', 'Assam'),
(170, 'Margherita', 'Assam'),
(171, 'Mariani', 'Assam'),
(172, 'Marigaon', 'Assam'),
(173, 'Nagaon', 'Assam'),
(174, 'Nalbari', 'Assam'),
(175, 'North Lakhimpur', 'Assam'),
(176, 'Rangia', 'Assam'),
(177, 'Sibsagar', 'Assam'),
(178, 'Silapathar', 'Assam'),
(179, 'Silchar', 'Assam'),
(180, 'Tezpur', 'Assam'),
(181, 'Tinsukia', 'Assam'),
(182, 'Amarpur', 'Bihar'),
(183, 'Araria', 'Bihar'),
(184, 'Areraj', 'Bihar'),
(185, 'Arrah', 'Bihar'),
(186, 'Asarganj', 'Bihar'),
(187, 'Aurangabad', 'Bihar'),
(188, 'Bagaha', 'Bihar'),
(189, 'Bahadurganj', 'Bihar'),
(190, 'Bairgania', 'Bihar'),
(191, 'Bakhtiarpur', 'Bihar'),
(192, 'Banka', 'Bihar'),
(193, 'Banmankhi Bazar', 'Bihar'),
(194, 'Barahiya', 'Bihar'),
(195, 'Barauli', 'Bihar'),
(196, 'Barbigha', 'Bihar'),
(197, 'Barh', 'Bihar'),
(198, 'Begusarai', 'Bihar'),
(199, 'Behea', 'Bihar'),
(200, 'Bettiah', 'Bihar'),
(201, 'Bhabua', 'Bihar'),
(202, 'Bhagalpur', 'Bihar'),
(203, 'Bihar Sharif', 'Bihar'),
(204, 'Bikramganj', 'Bihar'),
(205, 'Bodh Gaya', 'Bihar'),
(206, 'Buxar', 'Bihar'),
(207, 'Chandan Bara', 'Bihar'),
(208, 'Chanpatia', 'Bihar'),
(209, 'Chhapra', 'Bihar'),
(210, 'Colgong', 'Bihar'),
(211, 'Dalsinghsarai', 'Bihar'),
(212, 'Darbhanga', 'Bihar'),
(213, 'Daudnagar', 'Bihar'),
(214, 'Dehri-on-Sone', 'Bihar'),
(215, 'Dhaka', 'Bihar'),
(216, 'Dighwara', 'Bihar'),
(217, 'Dumraon', 'Bihar'),
(218, 'Fatwah', 'Bihar'),
(219, 'Forbesganj', 'Bihar'),
(220, 'Gaya', 'Bihar'),
(221, 'Gogri Jamalpur', 'Bihar'),
(222, 'Gopalganj', 'Bihar'),
(223, 'Hajipur', 'Bihar'),
(224, 'Hilsa', 'Bihar'),
(225, 'Hisua', 'Bihar'),
(226, 'Islampur', 'Bihar'),
(227, 'Jagdispur', 'Bihar'),
(228, 'Jamalpur', 'Bihar'),
(229, 'Jamui', 'Bihar'),
(230, 'Jehanabad', 'Bihar'),
(231, 'Jhajha', 'Bihar'),
(232, 'Jhanjharpur', 'Bihar'),
(233, 'Jogabani', 'Bihar'),
(234, 'Kanti', 'Bihar'),
(235, 'Katihar', 'Bihar'),
(236, 'Khagaria', 'Bihar'),
(237, 'Kharagpur', 'Bihar'),
(238, 'Kishanganj', 'Bihar'),
(239, 'Lakhisarai', 'Bihar'),
(240, 'Lalganj', 'Bihar'),
(241, 'Madhepura', 'Bihar'),
(242, 'Madhubani', 'Bihar'),
(243, 'Maharajganj', 'Bihar'),
(244, 'Mahnar Bazar', 'Bihar'),
(245, 'Makhdumpur', 'Bihar'),
(246, 'Maner', 'Bihar'),
(247, 'Manihari', 'Bihar'),
(248, 'Marhaura', 'Bihar'),
(249, 'Masaurhi', 'Bihar'),
(250, 'Mirganj', 'Bihar'),
(251, 'Mokameh', 'Bihar'),
(252, 'Motihari', 'Bihar'),
(253, 'Motipur', 'Bihar'),
(254, 'Munger', 'Bihar'),
(255, 'Murliganj', 'Bihar'),
(256, 'Muzaffarpur', 'Bihar'),
(257, 'Narkatiaganj', 'Bihar'),
(258, 'Naugachhia', 'Bihar'),
(259, 'Nawada', 'Bihar'),
(260, 'Nokha', 'Bihar'),
(261, 'Patna', 'Bihar'),
(262, 'Piro', 'Bihar'),
(263, 'Purnia', 'Bihar'),
(264, 'Rafiganj', 'Bihar'),
(265, 'Rajgir', 'Bihar'),
(266, 'Ramnagar', 'Bihar'),
(267, 'Raxaul Bazar', 'Bihar'),
(268, 'Revelganj', 'Bihar'),
(269, 'Rosera', 'Bihar'),
(270, 'Saharsa', 'Bihar'),
(271, 'Samastipur', 'Bihar'),
(272, 'Sasaram', 'Bihar'),
(273, 'Sheikhpura', 'Bihar'),
(274, 'Sheohar', 'Bihar'),
(275, 'Sherghati', 'Bihar'),
(276, 'Silao', 'Bihar'),
(277, 'Sitamarhi', 'Bihar'),
(278, 'Siwan', 'Bihar'),
(279, 'Sonepur', 'Bihar'),
(280, 'Sugauli', 'Bihar'),
(281, 'Sultanganj', 'Bihar'),
(282, 'Supaul', 'Bihar'),
(283, 'Warisaliganj', 'Bihar'),
(284, 'Ahiwara', 'Chhattisgarh'),
(285, 'Akaltara', 'Chhattisgarh'),
(286, 'Ambagarh Chowki', 'Chhattisgarh'),
(287, 'Ambikapur', 'Chhattisgarh'),
(288, 'Arang', 'Chhattisgarh'),
(289, 'Bade Bacheli', 'Chhattisgarh'),
(290, 'Balod', 'Chhattisgarh'),
(291, 'Baloda Bazar', 'Chhattisgarh'),
(292, 'Bemetra', 'Chhattisgarh'),
(293, 'Bhatapara', 'Chhattisgarh'),
(294, 'Bilaspur', 'Chhattisgarh'),
(295, 'Birgaon', 'Chhattisgarh'),
(296, 'Champa', 'Chhattisgarh'),
(297, 'Chirmiri', 'Chhattisgarh'),
(298, 'Dalli-Rajhara', 'Chhattisgarh'),
(299, 'Dhamtari', 'Chhattisgarh'),
(300, 'Dipka', 'Chhattisgarh'),
(301, 'Dongargarh', 'Chhattisgarh'),
(302, 'Durg-Bhilai Nagar', 'Chhattisgarh'),
(303, 'Gobranawapara', 'Chhattisgarh'),
(304, 'Jagdalpur', 'Chhattisgarh'),
(305, 'Janjgir', 'Chhattisgarh'),
(306, 'Jashpurnagar', 'Chhattisgarh'),
(307, 'Kanker', 'Chhattisgarh'),
(308, 'Kawardha', 'Chhattisgarh'),
(309, 'Kondagaon', 'Chhattisgarh'),
(310, 'Korba', 'Chhattisgarh'),
(311, 'Mahasamund', 'Chhattisgarh'),
(312, 'Mahendragarh', 'Chhattisgarh'),
(313, 'Mungeli', 'Chhattisgarh'),
(314, 'Naila Janjgir', 'Chhattisgarh'),
(315, 'Raigarh', 'Chhattisgarh'),
(316, 'Raipur', 'Chhattisgarh'),
(317, 'Rajnandgaon', 'Chhattisgarh'),
(318, 'Sakti', 'Chhattisgarh'),
(319, 'Tilda Newra', 'Chhattisgarh'),
(320, 'Amli', 'Dadra & Nagar Haveli'),
(321, 'Silvassa', 'Dadra & Nagar Haveli'),
(322, 'Daman and Diu', 'Daman & Diu'),
(323, 'Daman and Diu', 'Daman & Diu'),
(324, 'Asola', 'Delhi'),
(325, 'Delhi', 'Delhi'),
(326, 'Aldona', 'Goa'),
(327, 'Curchorem Cacora', 'Goa'),
(328, 'Madgaon', 'Goa'),
(329, 'Mapusa', 'Goa'),
(330, 'Margao', 'Goa'),
(331, 'Marmagao', 'Goa'),
(332, 'Panaji', 'Goa'),
(333, 'Ahmedabad', 'Gujarat'),
(334, 'Amreli', 'Gujarat'),
(335, 'Anand', 'Gujarat'),
(336, 'Ankleshwar', 'Gujarat'),
(337, 'Bharuch', 'Gujarat'),
(338, 'Bhavnagar', 'Gujarat'),
(339, 'Bhuj', 'Gujarat'),
(340, 'Cambay', 'Gujarat'),
(341, 'Dahod', 'Gujarat'),
(342, 'Deesa', 'Gujarat'),
(343, 'Dharampur', ' India'),
(344, 'Dholka', 'Gujarat'),
(345, 'Gandhinagar', 'Gujarat'),
(346, 'Godhra', 'Gujarat'),
(347, 'Himatnagar', 'Gujarat'),
(348, 'Idar', 'Gujarat'),
(349, 'Jamnagar', 'Gujarat'),
(350, 'Junagadh', 'Gujarat'),
(351, 'Kadi', 'Gujarat'),
(352, 'Kalavad', 'Gujarat'),
(353, 'Kalol', 'Gujarat'),
(354, 'Kapadvanj', 'Gujarat'),
(355, 'Karjan', 'Gujarat'),
(356, 'Keshod', 'Gujarat'),
(357, 'Khambhalia', 'Gujarat'),
(358, 'Khambhat', 'Gujarat'),
(359, 'Kheda', 'Gujarat'),
(360, 'Khedbrahma', 'Gujarat'),
(361, 'Kheralu', 'Gujarat'),
(362, 'Kodinar', 'Gujarat'),
(363, 'Lathi', 'Gujarat'),
(364, 'Limbdi', 'Gujarat'),
(365, 'Lunawada', 'Gujarat'),
(366, 'Mahesana', 'Gujarat'),
(367, 'Mahuva', 'Gujarat'),
(368, 'Manavadar', 'Gujarat'),
(369, 'Mandvi', 'Gujarat'),
(370, 'Mangrol', 'Gujarat'),
(371, 'Mansa', 'Gujarat'),
(372, 'Mehmedabad', 'Gujarat'),
(373, 'Modasa', 'Gujarat'),
(374, 'Morvi', 'Gujarat'),
(375, 'Nadiad', 'Gujarat'),
(376, 'Navsari', 'Gujarat'),
(377, 'Padra', 'Gujarat'),
(378, 'Palanpur', 'Gujarat'),
(379, 'Palitana', 'Gujarat'),
(380, 'Pardi', 'Gujarat'),
(381, 'Patan', 'Gujarat'),
(382, 'Petlad', 'Gujarat'),
(383, 'Porbandar', 'Gujarat'),
(384, 'Radhanpur', 'Gujarat'),
(385, 'Rajkot', 'Gujarat'),
(386, 'Rajpipla', 'Gujarat'),
(387, 'Rajula', 'Gujarat'),
(388, 'Ranavav', 'Gujarat'),
(389, 'Rapar', 'Gujarat'),
(390, 'Salaya', 'Gujarat'),
(391, 'Sanand', 'Gujarat'),
(392, 'Savarkundla', 'Gujarat'),
(393, 'Sidhpur', 'Gujarat'),
(394, 'Sihor', 'Gujarat'),
(395, 'Songadh', 'Gujarat'),
(396, 'Surat', 'Gujarat'),
(397, 'Talaja', 'Gujarat'),
(398, 'Thangadh', 'Gujarat'),
(399, 'Tharad', 'Gujarat'),
(400, 'Umbergaon', 'Gujarat'),
(401, 'Umreth', 'Gujarat'),
(402, 'Una', 'Gujarat'),
(403, 'Unjha', 'Gujarat'),
(404, 'Upleta', 'Gujarat'),
(405, 'Vadnagar', 'Gujarat'),
(406, 'Vadodara', 'Gujarat'),
(407, 'Valsad', 'Gujarat'),
(408, 'Vapi', 'Gujarat'),
(409, 'Vapi', 'Gujarat'),
(410, 'Veraval', 'Gujarat'),
(411, 'Vijapur', 'Gujarat'),
(412, 'Viramgam', 'Gujarat'),
(413, 'Visnagar', 'Gujarat'),
(414, 'Vyara', 'Gujarat'),
(415, 'Wadhwan', 'Gujarat'),
(416, 'Wankaner', 'Gujarat'),
(417, 'Adalaj', 'Gujarat'),
(418, 'Adityana', 'Gujarat'),
(419, 'Alang', 'Gujarat'),
(420, 'Ambaji', 'Gujarat'),
(421, 'Ambaliyasan', 'Gujarat'),
(422, 'Andada', 'Gujarat'),
(423, 'Anjar', 'Gujarat'),
(424, 'Anklav', 'Gujarat'),
(425, 'Antaliya', 'Gujarat'),
(426, 'Arambhada', 'Gujarat'),
(427, 'Atul', 'Gujarat'),
(428, 'Ballabhgarh', 'Hariyana'),
(429, 'Ambala', 'Haryana'),
(430, 'Ambala', 'Haryana'),
(431, 'Asankhurd', 'Haryana'),
(432, 'Assandh', 'Haryana'),
(433, 'Ateli', 'Haryana'),
(434, 'Babiyal', 'Haryana'),
(435, 'Bahadurgarh', 'Haryana'),
(436, 'Barwala', 'Haryana'),
(437, 'Bhiwani', 'Haryana'),
(438, 'Charkhi Dadri', 'Haryana'),
(439, 'Cheeka', 'Haryana'),
(440, 'Ellenabad 2', 'Haryana'),
(441, 'Faridabad', 'Haryana'),
(442, 'Fatehabad', 'Haryana'),
(443, 'Ganaur', 'Haryana'),
(444, 'Gharaunda', 'Haryana'),
(445, 'Gohana', 'Haryana'),
(446, 'Gurgaon', 'Haryana'),
(447, 'Haibat(Yamuna Nagar)', 'Haryana'),
(448, 'Hansi', 'Haryana'),
(449, 'Hisar', 'Haryana'),
(450, 'Hodal', 'Haryana'),
(451, 'Jhajjar', 'Haryana'),
(452, 'Jind', 'Haryana'),
(453, 'Kaithal', 'Haryana'),
(454, 'Kalan Wali', 'Haryana'),
(455, 'Kalka', 'Haryana'),
(456, 'Karnal', 'Haryana'),
(457, 'Ladwa', 'Haryana'),
(458, 'Mahendragarh', 'Haryana'),
(459, 'Mandi Dabwali', 'Haryana'),
(460, 'Narnaul', 'Haryana'),
(461, 'Narwana', 'Haryana'),
(462, 'Palwal', 'Haryana'),
(463, 'Panchkula', 'Haryana'),
(464, 'Panipat', 'Haryana'),
(465, 'Pehowa', 'Haryana'),
(466, 'Pinjore', 'Haryana'),
(467, 'Rania', 'Haryana'),
(468, 'Ratia', 'Haryana'),
(469, 'Rewari', 'Haryana'),
(470, 'Rohtak', 'Haryana'),
(471, 'Safidon', 'Haryana'),
(472, 'Samalkha', 'Haryana'),
(473, 'Shahbad', 'Haryana'),
(474, 'Sirsa', 'Haryana'),
(475, 'Sohna', 'Haryana'),
(476, 'Sonipat', 'Haryana'),
(477, 'Taraori', 'Haryana'),
(478, 'Thanesar', 'Haryana'),
(479, 'Tohana', 'Haryana'),
(480, 'Yamunanagar', 'Haryana'),
(481, 'Arki', 'Himachal Pradesh'),
(482, 'Baddi', 'Himachal Pradesh'),
(483, 'Bilaspur', 'Himachal Pradesh'),
(484, 'Chamba', 'Himachal Pradesh'),
(485, 'Dalhousie', 'Himachal Pradesh'),
(486, 'Dharamsala', 'Himachal Pradesh'),
(487, 'Hamirpur', 'Himachal Pradesh'),
(488, 'Mandi', 'Himachal Pradesh'),
(489, 'Nahan', 'Himachal Pradesh'),
(490, 'Shimla', 'Himachal Pradesh'),
(491, 'Solan', 'Himachal Pradesh'),
(492, 'Sundarnagar', 'Himachal Pradesh'),
(493, 'Jammu', 'Jammu & Kashmir'),
(494, 'Achabbal', 'Jammu & Kashmir'),
(495, 'Akhnoor', 'Jammu & Kashmir'),
(496, 'Anantnag', 'Jammu & Kashmir'),
(497, 'Arnia', 'Jammu & Kashmir'),
(498, 'Awantipora', 'Jammu & Kashmir'),
(499, 'Bandipore', 'Jammu & Kashmir'),
(500, 'Baramula', 'Jammu & Kashmir'),
(501, 'Kathua', 'Jammu & Kashmir'),
(502, 'Leh', 'Jammu & Kashmir'),
(503, 'Punch', 'Jammu & Kashmir'),
(504, 'Rajauri', 'Jammu & Kashmir'),
(505, 'Sopore', 'Jammu & Kashmir'),
(506, 'Srinagar', 'Jammu & Kashmir'),
(507, 'Udhampur', 'Jammu & Kashmir'),
(508, 'Amlabad', 'Jharkhand'),
(509, 'Ara', 'Jharkhand'),
(510, 'Barughutu', 'Jharkhand'),
(511, 'Bokaro Steel City', 'Jharkhand'),
(512, 'Chaibasa', 'Jharkhand'),
(513, 'Chakradharpur', 'Jharkhand'),
(514, 'Chandrapura', 'Jharkhand'),
(515, 'Chatra', 'Jharkhand'),
(516, 'Chirkunda', 'Jharkhand'),
(517, 'Churi', 'Jharkhand'),
(518, 'Daltonganj', 'Jharkhand'),
(519, 'Deoghar', 'Jharkhand'),
(520, 'Dhanbad', 'Jharkhand'),
(521, 'Dumka', 'Jharkhand'),
(522, 'Garhwa', 'Jharkhand'),
(523, 'Ghatshila', 'Jharkhand'),
(524, 'Giridih', 'Jharkhand'),
(525, 'Godda', 'Jharkhand'),
(526, 'Gomoh', 'Jharkhand'),
(527, 'Gumia', 'Jharkhand'),
(528, 'Gumla', 'Jharkhand'),
(529, 'Hazaribag', 'Jharkhand'),
(530, 'Hussainabad', 'Jharkhand'),
(531, 'Jamshedpur', 'Jharkhand'),
(532, 'Jamtara', 'Jharkhand'),
(533, 'Jhumri Tilaiya', 'Jharkhand'),
(534, 'Khunti', 'Jharkhand'),
(535, 'Lohardaga', 'Jharkhand'),
(536, 'Madhupur', 'Jharkhand'),
(537, 'Mihijam', 'Jharkhand'),
(538, 'Musabani', 'Jharkhand'),
(539, 'Pakaur', 'Jharkhand'),
(540, 'Patratu', 'Jharkhand'),
(541, 'Phusro', 'Jharkhand'),
(542, 'Ramngarh', 'Jharkhand'),
(543, 'Ranchi', 'Jharkhand'),
(544, 'Sahibganj', 'Jharkhand'),
(545, 'Saunda', 'Jharkhand'),
(546, 'Simdega', 'Jharkhand'),
(547, 'Tenu Dam-cum- Kathhara', 'Jharkhand'),
(548, 'Arasikere', 'Karnataka'),
(549, 'Bangalore', 'Karnataka'),
(550, 'Belgaum', 'Karnataka'),
(551, 'Bellary', 'Karnataka'),
(552, 'Chamrajnagar', 'Karnataka'),
(553, 'Chikkaballapur', 'Karnataka'),
(554, 'Chintamani', 'Karnataka'),
(555, 'Chitradurga', 'Karnataka'),
(556, 'Gulbarga', 'Karnataka'),
(557, 'Gundlupet', 'Karnataka'),
(558, 'Hassan', 'Karnataka'),
(559, 'Hospet', 'Karnataka'),
(560, 'Hubli', 'Karnataka'),
(561, 'Karkala', 'Karnataka'),
(562, 'Karwar', 'Karnataka'),
(563, 'Kolar', 'Karnataka'),
(564, 'Kota', 'Karnataka'),
(565, 'Lakshmeshwar', 'Karnataka'),
(566, 'Lingsugur', 'Karnataka'),
(567, 'Maddur', 'Karnataka'),
(568, 'Madhugiri', 'Karnataka'),
(569, 'Madikeri', 'Karnataka'),
(570, 'Magadi', 'Karnataka'),
(571, 'Mahalingpur', 'Karnataka'),
(572, 'Malavalli', 'Karnataka'),
(573, 'Malur', 'Karnataka'),
(574, 'Mandya', 'Karnataka'),
(575, 'Mangalore', 'Karnataka'),
(576, 'Manvi', 'Karnataka'),
(577, 'Mudalgi', 'Karnataka'),
(578, 'Mudbidri', 'Karnataka'),
(579, 'Muddebihal', 'Karnataka'),
(580, 'Mudhol', 'Karnataka'),
(581, 'Mulbagal', 'Karnataka'),
(582, 'Mundargi', 'Karnataka'),
(583, 'Mysore', 'Karnataka'),
(584, 'Nanjangud', 'Karnataka'),
(585, 'Pavagada', 'Karnataka'),
(586, 'Puttur', 'Karnataka'),
(587, 'Rabkavi Banhatti', 'Karnataka'),
(588, 'Raichur', 'Karnataka'),
(589, 'Ramanagaram', 'Karnataka'),
(590, 'Ramdurg', 'Karnataka'),
(591, 'Ranibennur', 'Karnataka'),
(592, 'Robertson Pet', 'Karnataka'),
(593, 'Ron', 'Karnataka'),
(594, 'Sadalgi', 'Karnataka'),
(595, 'Sagar', 'Karnataka'),
(596, 'Sakleshpur', 'Karnataka'),
(597, 'Sandur', 'Karnataka'),
(598, 'Sankeshwar', 'Karnataka'),
(599, 'Saundatti-Yellamma', 'Karnataka'),
(600, 'Savanur', 'Karnataka'),
(601, 'Sedam', 'Karnataka'),
(602, 'Shahabad', 'Karnataka'),
(603, 'Shahpur', 'Karnataka'),
(604, 'Shiggaon', 'Karnataka'),
(605, 'Shikapur', 'Karnataka'),
(606, 'Shimoga', 'Karnataka'),
(607, 'Shorapur', 'Karnataka'),
(608, 'Shrirangapattana', 'Karnataka'),
(609, 'Sidlaghatta', 'Karnataka'),
(610, 'Sindgi', 'Karnataka'),
(611, 'Sindhnur', 'Karnataka'),
(612, 'Sira', 'Karnataka'),
(613, 'Sirsi', 'Karnataka'),
(614, 'Siruguppa', 'Karnataka'),
(615, 'Srinivaspur', 'Karnataka'),
(616, 'Talikota', 'Karnataka'),
(617, 'Tarikere', 'Karnataka'),
(618, 'Tekkalakota', 'Karnataka'),
(619, 'Terdal', 'Karnataka'),
(620, 'Tiptur', 'Karnataka'),
(621, 'Tumkur', 'Karnataka'),
(622, 'Udupi', 'Karnataka'),
(623, 'Vijayapura', 'Karnataka'),
(624, 'Wadi', 'Karnataka'),
(625, 'Yadgir', 'Karnataka'),
(626, 'Adoor', 'Kerala'),
(627, 'Akathiyoor', 'Kerala'),
(628, 'Alappuzha', 'Kerala'),
(629, 'Ancharakandy', 'Kerala'),
(630, 'Aroor', 'Kerala'),
(631, 'Ashtamichira', 'Kerala'),
(632, 'Attingal', 'Kerala'),
(633, 'Avinissery', 'Kerala'),
(634, 'Chalakudy', 'Kerala'),
(635, 'Changanassery', 'Kerala'),
(636, 'Chendamangalam', 'Kerala'),
(637, 'Chengannur', 'Kerala'),
(638, 'Cherthala', 'Kerala'),
(639, 'Cheruthazham', 'Kerala'),
(640, 'Chittur-Thathamangalam', 'Kerala'),
(641, 'Chockli', 'Kerala'),
(642, 'Erattupetta', 'Kerala'),
(643, 'Guruvayoor', 'Kerala'),
(644, 'Irinjalakuda', 'Kerala'),
(645, 'Kadirur', 'Kerala'),
(646, 'Kalliasseri', 'Kerala'),
(647, 'Kalpetta', 'Kerala'),
(648, 'Kanhangad', 'Kerala'),
(649, 'Kanjikkuzhi', 'Kerala'),
(650, 'Kannur', 'Kerala'),
(651, 'Kasaragod', 'Kerala'),
(652, 'Kayamkulam', 'Kerala'),
(653, 'Kochi', 'Kerala'),
(654, 'Kodungallur', 'Kerala'),
(655, 'Kollam', 'Kerala'),
(656, 'Koothuparamba', 'Kerala'),
(657, 'Kothamangalam', 'Kerala'),
(658, 'Kottayam', 'Kerala'),
(659, 'Kozhikode', 'Kerala'),
(660, 'Kunnamkulam', 'Kerala'),
(661, 'Malappuram', 'Kerala'),
(662, 'Mattannur', 'Kerala'),
(663, 'Mavelikkara', 'Kerala'),
(664, 'Mavoor', 'Kerala'),
(665, 'Muvattupuzha', 'Kerala'),
(666, 'Nedumangad', 'Kerala'),
(667, 'Neyyattinkara', 'Kerala'),
(668, 'Ottappalam', 'Kerala'),
(669, 'Palai', 'Kerala'),
(670, 'Palakkad', 'Kerala'),
(671, 'Panniyannur', 'Kerala'),
(672, 'Pappinisseri', 'Kerala'),
(673, 'Paravoor', 'Kerala'),
(674, 'Pathanamthitta', 'Kerala'),
(675, 'Payyannur', 'Kerala'),
(676, 'Peringathur', 'Kerala'),
(677, 'Perinthalmanna', 'Kerala'),
(678, 'Perumbavoor', 'Kerala'),
(679, 'Ponnani', 'Kerala'),
(680, 'Punalur', 'Kerala'),
(681, 'Quilandy', 'Kerala'),
(682, 'Shoranur', 'Kerala'),
(683, 'Taliparamba', 'Kerala'),
(684, 'Thiruvalla', 'Kerala'),
(685, 'Thiruvananthapuram', 'Kerala'),
(686, 'Thodupuzha', 'Kerala'),
(687, 'Thrissur', 'Kerala'),
(688, 'Tirur', 'Kerala'),
(689, 'Vadakara', 'Kerala'),
(690, 'Vaikom', 'Kerala'),
(691, 'Varkala', 'Kerala'),
(692, 'Kavaratti', 'Lakshadweep'),
(693, 'Ashok Nagar', 'Madhya Pradesh'),
(694, 'Balaghat', 'Madhya Pradesh'),
(695, 'Betul', 'Madhya Pradesh'),
(696, 'Bhopal', 'Madhya Pradesh'),
(697, 'Burhanpur', 'Madhya Pradesh'),
(698, 'Chhatarpur', 'Madhya Pradesh'),
(699, 'Dabra', 'Madhya Pradesh'),
(700, 'Datia', 'Madhya Pradesh'),
(701, 'Dewas', 'Madhya Pradesh'),
(702, 'Dhar', 'Madhya Pradesh'),
(703, 'Fatehabad', 'Madhya Pradesh'),
(704, 'Gwalior', 'Madhya Pradesh'),
(705, 'Indore', 'Madhya Pradesh'),
(706, 'Itarsi', 'Madhya Pradesh'),
(707, 'Jabalpur', 'Madhya Pradesh'),
(708, 'Katni', 'Madhya Pradesh'),
(709, 'Kotma', 'Madhya Pradesh'),
(710, 'Lahar', 'Madhya Pradesh'),
(711, 'Lundi', 'Madhya Pradesh'),
(712, 'Maharajpur', 'Madhya Pradesh'),
(713, 'Mahidpur', 'Madhya Pradesh'),
(714, 'Maihar', 'Madhya Pradesh'),
(715, 'Malajkhand', 'Madhya Pradesh'),
(716, 'Manasa', 'Madhya Pradesh'),
(717, 'Manawar', 'Madhya Pradesh'),
(718, 'Mandideep', 'Madhya Pradesh'),
(719, 'Mandla', 'Madhya Pradesh'),
(720, 'Mandsaur', 'Madhya Pradesh'),
(721, 'Mauganj', 'Madhya Pradesh'),
(722, 'Mhow Cantonment', 'Madhya Pradesh'),
(723, 'Mhowgaon', 'Madhya Pradesh'),
(724, 'Morena', 'Madhya Pradesh'),
(725, 'Multai', 'Madhya Pradesh'),
(726, 'Murwara', 'Madhya Pradesh'),
(727, 'Nagda', 'Madhya Pradesh'),
(728, 'Nainpur', 'Madhya Pradesh'),
(729, 'Narsinghgarh', 'Madhya Pradesh'),
(730, 'Narsinghgarh', 'Madhya Pradesh'),
(731, 'Neemuch', 'Madhya Pradesh'),
(732, 'Nepanagar', 'Madhya Pradesh'),
(733, 'Niwari', 'Madhya Pradesh'),
(734, 'Nowgong', 'Madhya Pradesh'),
(735, 'Nowrozabad', 'Madhya Pradesh'),
(736, 'Pachore', 'Madhya Pradesh'),
(737, 'Pali', 'Madhya Pradesh'),
(738, 'Panagar', 'Madhya Pradesh'),
(739, 'Pandhurna', 'Madhya Pradesh'),
(740, 'Panna', 'Madhya Pradesh'),
(741, 'Pasan', 'Madhya Pradesh'),
(742, 'Pipariya', 'Madhya Pradesh'),
(743, 'Pithampur', 'Madhya Pradesh'),
(744, 'Porsa', 'Madhya Pradesh'),
(745, 'Prithvipur', 'Madhya Pradesh'),
(746, 'Raghogarh-Vijaypur', 'Madhya Pradesh'),
(747, 'Rahatgarh', 'Madhya Pradesh'),
(748, 'Raisen', 'Madhya Pradesh'),
(749, 'Rajgarh', 'Madhya Pradesh'),
(750, 'Ratlam', 'Madhya Pradesh'),
(751, 'Rau', 'Madhya Pradesh'),
(752, 'Rehli', 'Madhya Pradesh'),
(753, 'Rewa', 'Madhya Pradesh'),
(754, 'Sabalgarh', 'Madhya Pradesh'),
(755, 'Sagar', 'Madhya Pradesh'),
(756, 'Sanawad', 'Madhya Pradesh'),
(757, 'Sarangpur', 'Madhya Pradesh'),
(758, 'Sarni', 'Madhya Pradesh'),
(759, 'Satna', 'Madhya Pradesh'),
(760, 'Sausar', 'Madhya Pradesh'),
(761, 'Sehore', 'Madhya Pradesh'),
(762, 'Sendhwa', 'Madhya Pradesh'),
(763, 'Seoni', 'Madhya Pradesh'),
(764, 'Seoni-Malwa', 'Madhya Pradesh'),
(765, 'Shahdol', 'Madhya Pradesh'),
(766, 'Shajapur', 'Madhya Pradesh'),
(767, 'Shamgarh', 'Madhya Pradesh'),
(768, 'Sheopur', 'Madhya Pradesh'),
(769, 'Shivpuri', 'Madhya Pradesh'),
(770, 'Shujalpur', 'Madhya Pradesh'),
(771, 'Sidhi', 'Madhya Pradesh'),
(772, 'Sihora', 'Madhya Pradesh'),
(773, 'Singrauli', 'Madhya Pradesh'),
(774, 'Sironj', 'Madhya Pradesh'),
(775, 'Sohagpur', 'Madhya Pradesh'),
(776, 'Tarana', 'Madhya Pradesh'),
(777, 'Tikamgarh', 'Madhya Pradesh'),
(778, 'Ujhani', 'Madhya Pradesh'),
(779, 'Ujjain', 'Madhya Pradesh'),
(780, 'Umaria', 'Madhya Pradesh'),
(781, 'Vidisha', 'Madhya Pradesh'),
(782, 'Wara Seoni', 'Madhya Pradesh'),
(783, 'Ahmednagar', 'Maharashtra'),
(784, 'Akola', 'Maharashtra'),
(785, 'Amravati', 'Maharashtra'),
(786, 'Aurangabad', 'Maharashtra'),
(787, 'Baramati', 'Maharashtra'),
(788, 'Chalisgaon', 'Maharashtra'),
(789, 'Chinchani', 'Maharashtra'),
(790, 'Devgarh', 'Maharashtra'),
(791, 'Dhule', 'Maharashtra'),
(792, 'Dombivli', 'Maharashtra'),
(793, 'Durgapur', 'Maharashtra'),
(794, 'Ichalkaranji', 'Maharashtra'),
(795, 'Jalna', 'Maharashtra'),
(796, 'Kalyan', 'Maharashtra'),
(797, 'Latur', 'Maharashtra'),
(798, 'Loha', 'Maharashtra'),
(799, 'Lonar', 'Maharashtra'),
(800, 'Lonavla', 'Maharashtra'),
(801, 'Mahad', 'Maharashtra'),
(802, 'Mahuli', 'Maharashtra'),
(803, 'Malegaon', 'Maharashtra'),
(804, 'Malkapur', 'Maharashtra'),
(805, 'Manchar', 'Maharashtra'),
(806, 'Mangalvedhe', 'Maharashtra'),
(807, 'Mangrulpir', 'Maharashtra'),
(808, 'Manjlegaon', 'Maharashtra'),
(809, 'Manmad', 'Maharashtra'),
(810, 'Manwath', 'Maharashtra'),
(811, 'Mehkar', 'Maharashtra'),
(812, 'Mhaswad', 'Maharashtra'),
(813, 'Miraj', 'Maharashtra'),
(814, 'Morshi', 'Maharashtra'),
(815, 'Mukhed', 'Maharashtra'),
(816, 'Mul', 'Maharashtra'),
(817, 'Mumbai', 'Maharashtra'),
(818, 'Murtijapur', 'Maharashtra'),
(819, 'Nagpur', 'Maharashtra'),
(820, 'Nalasopara', 'Maharashtra'),
(821, 'Nanded-Waghala', 'Maharashtra'),
(822, 'Nandgaon', 'Maharashtra'),
(823, 'Nandura', 'Maharashtra'),
(824, 'Nandurbar', 'Maharashtra'),
(825, 'Narkhed', 'Maharashtra'),
(826, 'Nashik', 'Maharashtra'),
(827, 'Navi Mumbai', 'Maharashtra'),
(828, 'Nawapur', 'Maharashtra'),
(829, 'Nilanga', 'Maharashtra'),
(830, 'Osmanabad', 'Maharashtra'),
(831, 'Ozar', 'Maharashtra'),
(832, 'Pachora', 'Maharashtra'),
(833, 'Paithan', 'Maharashtra'),
(834, 'Palghar', 'Maharashtra'),
(835, 'Pandharkaoda', 'Maharashtra'),
(836, 'Pandharpur', 'Maharashtra'),
(837, 'Panvel', 'Maharashtra'),
(838, 'Parbhani', 'Maharashtra'),
(839, 'Parli', 'Maharashtra'),
(840, 'Parola', 'Maharashtra'),
(841, 'Partur', 'Maharashtra'),
(842, 'Pathardi', 'Maharashtra'),
(843, 'Pathri', 'Maharashtra'),
(844, 'Patur', 'Maharashtra'),
(845, 'Pauni', 'Maharashtra'),
(846, 'Pen', 'Maharashtra'),
(847, 'Phaltan', 'Maharashtra'),
(848, 'Pulgaon', 'Maharashtra'),
(849, 'Pune', 'Maharashtra'),
(850, 'Purna', 'Maharashtra'),
(851, 'Pusad', 'Maharashtra'),
(852, 'Rahuri', 'Maharashtra'),
(853, 'Rajura', 'Maharashtra'),
(854, 'Ramtek', 'Maharashtra'),
(855, 'Ratnagiri', 'Maharashtra'),
(856, 'Raver', 'Maharashtra'),
(857, 'Risod', 'Maharashtra'),
(858, 'Sailu', 'Maharashtra'),
(859, 'Sangamner', 'Maharashtra'),
(860, 'Sangli', 'Maharashtra'),
(861, 'Sangole', 'Maharashtra'),
(862, 'Sasvad', 'Maharashtra'),
(863, 'Satana', 'Maharashtra'),
(864, 'Satara', 'Maharashtra'),
(865, 'Savner', 'Maharashtra'),
(866, 'Sawantwadi', 'Maharashtra'),
(867, 'Shahade', 'Maharashtra'),
(868, 'Shegaon', 'Maharashtra'),
(869, 'Shendurjana', 'Maharashtra'),
(870, 'Shirdi', 'Maharashtra'),
(871, 'Shirpur-Warwade', 'Maharashtra'),
(872, 'Shirur', 'Maharashtra'),
(873, 'Shrigonda', 'Maharashtra'),
(874, 'Shrirampur', 'Maharashtra'),
(875, 'Sillod', 'Maharashtra'),
(876, 'Sinnar', 'Maharashtra'),
(877, 'Solapur', 'Maharashtra'),
(878, 'Soyagaon', 'Maharashtra'),
(879, 'Talegaon Dabhade', 'Maharashtra'),
(880, 'Talode', 'Maharashtra'),
(881, 'Tasgaon', 'Maharashtra'),
(882, 'Tirora', 'Maharashtra'),
(883, 'Tuljapur', 'Maharashtra'),
(884, 'Tumsar', 'Maharashtra'),
(885, 'Uran', 'Maharashtra'),
(886, 'Uran Islampur', 'Maharashtra'),
(887, 'Wadgaon Road', 'Maharashtra'),
(888, 'Wai', 'Maharashtra'),
(889, 'Wani', 'Maharashtra'),
(890, 'Wardha', 'Maharashtra'),
(891, 'Warora', 'Maharashtra'),
(892, 'Warud', 'Maharashtra'),
(893, 'Washim', 'Maharashtra'),
(894, 'Yevla', 'Maharashtra'),
(895, 'Uchgaon', 'Maharashtra'),
(896, 'Udgir', 'Maharashtra'),
(897, 'Umarga', 'Maharastra'),
(898, 'Umarkhed', 'Maharastra'),
(899, 'Umred', 'Maharastra'),
(900, 'Vadgaon Kasba', 'Maharastra'),
(901, 'Vaijapur', 'Maharastra'),
(902, 'Vasai', 'Maharastra'),
(903, 'Virar', 'Maharastra'),
(904, 'Vita', 'Maharastra'),
(905, 'Yavatmal', 'Maharastra'),
(906, 'Yawal', 'Maharastra'),
(907, 'Imphal', 'Manipur'),
(908, 'Kakching', 'Manipur'),
(909, 'Lilong', 'Manipur'),
(910, 'Mayang Imphal', 'Manipur'),
(911, 'Thoubal', 'Manipur'),
(912, 'Jowai', 'Meghalaya'),
(913, 'Nongstoin', 'Meghalaya'),
(914, 'Shillong', 'Meghalaya'),
(915, 'Tura', 'Meghalaya'),
(916, 'Aizawl', 'Mizoram'),
(917, 'Champhai', 'Mizoram'),
(918, 'Lunglei', 'Mizoram'),
(919, 'Saiha', 'Mizoram'),
(920, 'Dimapur', 'Nagaland'),
(921, 'Kohima', 'Nagaland'),
(922, 'Mokokchung', 'Nagaland'),
(923, 'Tuensang', 'Nagaland'),
(924, 'Wokha', 'Nagaland'),
(925, 'Zunheboto', 'Nagaland'),
(950, 'Anandapur', 'Orissa'),
(951, 'Anugul', 'Orissa'),
(952, 'Asika', 'Orissa'),
(953, 'Balangir', 'Orissa'),
(954, 'Balasore', 'Orissa'),
(955, 'Baleshwar', 'Orissa'),
(956, 'Bamra', 'Orissa'),
(957, 'Barbil', 'Orissa'),
(958, 'Bargarh', 'Orissa'),
(959, 'Bargarh', 'Orissa'),
(960, 'Baripada', 'Orissa'),
(961, 'Basudebpur', 'Orissa'),
(962, 'Belpahar', 'Orissa'),
(963, 'Bhadrak', 'Orissa'),
(964, 'Bhawanipatna', 'Orissa'),
(965, 'Bhuban', 'Orissa'),
(966, 'Bhubaneswar', 'Orissa'),
(967, 'Biramitrapur', 'Orissa'),
(968, 'Brahmapur', 'Orissa'),
(969, 'Brajrajnagar', 'Orissa'),
(970, 'Byasanagar', 'Orissa'),
(971, 'Cuttack', 'Orissa'),
(972, 'Debagarh', 'Orissa'),
(973, 'Dhenkanal', 'Orissa'),
(974, 'Gunupur', 'Orissa'),
(975, 'Hinjilicut', 'Orissa'),
(976, 'Jagatsinghapur', 'Orissa'),
(977, 'Jajapur', 'Orissa'),
(978, 'Jaleswar', 'Orissa'),
(979, 'Jatani', 'Orissa'),
(980, 'Jeypur', 'Orissa'),
(981, 'Jharsuguda', 'Orissa'),
(982, 'Joda', 'Orissa'),
(983, 'Kantabanji', 'Orissa'),
(984, 'Karanjia', 'Orissa'),
(985, 'Kendrapara', 'Orissa'),
(986, 'Kendujhar', 'Orissa'),
(987, 'Khordha', 'Orissa'),
(988, 'Koraput', 'Orissa'),
(989, 'Malkangiri', 'Orissa'),
(990, 'Nabarangapur', 'Orissa'),
(991, 'Paradip', 'Orissa'),
(992, 'Parlakhemundi', 'Orissa'),
(993, 'Pattamundai', 'Orissa'),
(994, 'Phulabani', 'Orissa'),
(995, 'Puri', 'Orissa'),
(996, 'Rairangpur', 'Orissa'),
(997, 'Rajagangapur', 'Orissa'),
(998, 'Raurkela', 'Orissa'),
(999, 'Rayagada', 'Orissa'),
(1000, 'Sambalpur', 'Orissa'),
(1001, 'Soro', 'Orissa'),
(1002, 'Sunabeda', 'Orissa'),
(1003, 'Sundargarh', 'Orissa'),
(1004, 'Talcher', 'Orissa'),
(1005, 'Titlagarh', 'Orissa'),
(1006, 'Umarkote', 'Orissa'),
(1007, 'Karaikal', 'Pondicherry'),
(1008, 'Mahe', 'Pondicherry'),
(1009, 'Pondicherry', 'Pondicherry'),
(1010, 'Yanam', 'Pondicherry'),
(1011, 'Ahmedgarh', 'Punjab'),
(1012, 'Amritsar', 'Punjab'),
(1013, 'Barnala', 'Punjab'),
(1014, 'Batala', 'Punjab'),
(1015, 'Bathinda', 'Punjab'),
(1016, 'Bhagha Purana', 'Punjab'),
(1017, 'Budhlada', 'Punjab'),
(1018, 'Chandigarh', 'Punjab'),
(1019, 'Dasua', 'Punjab'),
(1020, 'Dhuri', 'Punjab'),
(1021, 'Dinanagar', 'Punjab'),
(1022, 'Faridkot', 'Punjab'),
(1023, 'Fazilka', 'Punjab'),
(1024, 'Firozpur', 'Punjab'),
(1025, 'Firozpur Cantt.', 'Punjab'),
(1026, 'Giddarbaha', 'Punjab'),
(1027, 'Gobindgarh', 'Punjab'),
(1028, 'Gurdaspur', 'Punjab'),
(1029, 'Hoshiarpur', 'Punjab'),
(1030, 'Jagraon', 'Punjab'),
(1031, 'Jaitu', 'Punjab'),
(1032, 'Jalalabad', 'Punjab'),
(1033, 'Jalandhar', 'Punjab'),
(1034, 'Jalandhar Cantt.', 'Punjab'),
(1035, 'Jandiala', 'Punjab'),
(1036, 'Kapurthala', 'Punjab'),
(1037, 'Karoran', 'Punjab'),
(1038, 'Kartarpur', 'Punjab'),
(1039, 'Khanna', 'Punjab'),
(1040, 'Kharar', 'Punjab'),
(1041, 'Kot Kapura', 'Punjab'),
(1042, 'Kurali', 'Punjab'),
(1043, 'Longowal', 'Punjab'),
(1044, 'Ludhiana', 'Punjab'),
(1045, 'Malerkotla', 'Punjab'),
(1046, 'Malout', 'Punjab'),
(1047, 'Mansa', 'Punjab'),
(1048, 'Maur', 'Punjab'),
(1049, 'Moga', 'Punjab'),
(1050, 'Mohali', 'Punjab'),
(1051, 'Morinda', 'Punjab'),
(1052, 'Mukerian', 'Punjab'),
(1053, 'Muktsar', 'Punjab'),
(1054, 'Nabha', 'Punjab'),
(1055, 'Nakodar', 'Punjab'),
(1056, 'Nangal', 'Punjab'),
(1057, 'Nawanshahr', 'Punjab'),
(1058, 'Pathankot', 'Punjab'),
(1059, 'Patiala', 'Punjab'),
(1060, 'Patran', 'Punjab'),
(1061, 'Patti', 'Punjab'),
(1062, 'Phagwara', 'Punjab'),
(1063, 'Phillaur', 'Punjab'),
(1064, 'Qadian', 'Punjab'),
(1065, 'Raikot', 'Punjab'),
(1066, 'Rajpura', 'Punjab'),
(1067, 'Rampura Phul', 'Punjab'),
(1068, 'Rupnagar', 'Punjab'),
(1069, 'Samana', 'Punjab'),
(1070, 'Sangrur', 'Punjab'),
(1071, 'Sirhind Fatehgarh Sahib', 'Punjab'),
(1072, 'Sujanpur', 'Punjab'),
(1073, 'Sunam', 'Punjab'),
(1074, 'Talwara', 'Punjab'),
(1075, 'Tarn Taran', 'Punjab'),
(1076, 'Urmar Tanda', 'Punjab'),
(1077, 'Zira', 'Punjab'),
(1078, 'Zirakpur', 'Punjab'),
(1079, 'Bali', 'Rajasthan'),
(1080, 'Banswara', 'Rajastan'),
(1081, 'Ajmer', 'Rajasthan'),
(1082, 'Alwar', 'Rajasthan'),
(1083, 'Bandikui', 'Rajasthan'),
(1084, 'Baran', 'Rajasthan'),
(1085, 'Barmer', 'Rajasthan'),
(1086, 'Bikaner', 'Rajasthan'),
(1087, 'Fatehpur', 'Rajasthan'),
(1088, 'Jaipur', 'Rajasthan'),
(1089, 'Jaisalmer', 'Rajasthan'),
(1090, 'Jodhpur', 'Rajasthan'),
(1091, 'Kota', 'Rajasthan'),
(1092, 'Lachhmangarh', 'Rajasthan'),
(1093, 'Ladnu', 'Rajasthan'),
(1094, 'Lakheri', 'Rajasthan'),
(1095, 'Lalsot', 'Rajasthan'),
(1096, 'Losal', 'Rajasthan'),
(1097, 'Makrana', 'Rajasthan'),
(1098, 'Malpura', 'Rajasthan'),
(1099, 'Mandalgarh', 'Rajasthan'),
(1100, 'Mandawa', 'Rajasthan'),
(1101, 'Mangrol', 'Rajasthan'),
(1102, 'Merta City', 'Rajasthan'),
(1103, 'Mount Abu', 'Rajasthan'),
(1104, 'Nadbai', 'Rajasthan'),
(1105, 'Nagar', 'Rajasthan'),
(1106, 'Nagaur', 'Rajasthan'),
(1107, 'Nargund', 'Rajasthan'),
(1108, 'Nasirabad', 'Rajasthan'),
(1109, 'Nathdwara', 'Rajasthan'),
(1110, 'Navalgund', 'Rajasthan'),
(1111, 'Nawalgarh', 'Rajasthan'),
(1112, 'Neem-Ka-Thana', 'Rajasthan'),
(1113, 'Nelamangala', 'Rajasthan'),
(1114, 'Nimbahera', 'Rajasthan'),
(1115, 'Nipani', 'Rajasthan'),
(1116, 'Niwai', 'Rajasthan'),
(1117, 'Nohar', 'Rajasthan'),
(1118, 'Nokha', 'Rajasthan'),
(1119, 'Pali', 'Rajasthan'),
(1120, 'Phalodi', 'Rajasthan'),
(1121, 'Phulera', 'Rajasthan'),
(1122, 'Pilani', 'Rajasthan'),
(1123, 'Pilibanga', 'Rajasthan'),
(1124, 'Pindwara', 'Rajasthan'),
(1125, 'Pipar City', 'Rajasthan'),
(1126, 'Prantij', 'Rajasthan'),
(1127, 'Pratapgarh', 'Rajasthan'),
(1128, 'Raisinghnagar', 'Rajasthan'),
(1129, 'Rajakhera', 'Rajasthan'),
(1130, 'Rajaldesar', 'Rajasthan'),
(1131, 'Rajgarh (Alwar)', 'Rajasthan'),
(1132, 'Rajgarh (Churu', 'Rajasthan'),
(1133, 'Rajsamand', 'Rajasthan'),
(1134, 'Ramganj Mandi', 'Rajasthan'),
(1135, 'Ramngarh', 'Rajasthan'),
(1136, 'Ratangarh', 'Rajasthan'),
(1137, 'Rawatbhata', 'Rajasthan'),
(1138, 'Rawatsar', 'Rajasthan'),
(1139, 'Reengus', 'Rajasthan'),
(1140, 'Sadri', 'Rajasthan'),
(1141, 'Sadulshahar', 'Rajasthan'),
(1142, 'Sagwara', 'Rajasthan'),
(1143, 'Sambhar', 'Rajasthan'),
(1144, 'Sanchore', 'Rajasthan'),
(1145, 'Sangaria', 'Rajasthan'),
(1146, 'Sardarshahar', 'Rajasthan'),
(1147, 'Sawai Madhopur', 'Rajasthan'),
(1148, 'Shahpura', 'Rajasthan'),
(1149, 'Shahpura', 'Rajasthan'),
(1150, 'Sheoganj', 'Rajasthan'),
(1151, 'Sikar', 'Rajasthan'),
(1152, 'Sirohi', 'Rajasthan'),
(1153, 'Sojat', 'Rajasthan'),
(1154, 'Sri Madhopur', 'Rajasthan'),
(1155, 'Sujangarh', 'Rajasthan'),
(1156, 'Sumerpur', 'Rajasthan'),
(1157, 'Suratgarh', 'Rajasthan'),
(1158, 'Taranagar', 'Rajasthan'),
(1159, 'Todabhim', 'Rajasthan'),
(1160, 'Todaraisingh', 'Rajasthan'),
(1161, 'Tonk', 'Rajasthan'),
(1162, 'Udaipur', 'Rajasthan'),
(1163, 'Udaipurwati', 'Rajasthan'),
(1164, 'Vijainagar', 'Rajasthan'),
(1165, 'Gangtok', 'Sikkim'),
(1166, 'Calcutta', 'West Bengal'),
(1167, 'Arakkonam', 'Tamil Nadu'),
(1168, 'Arcot', 'Tamil Nadu'),
(1169, 'Aruppukkottai', 'Tamil Nadu'),
(1170, 'Bhavani', 'Tamil Nadu'),
(1171, 'Chengalpattu', 'Tamil Nadu'),
(1172, 'Chennai', 'Tamil Nadu'),
(1173, 'Chinna salem', 'Tamil nadu'),
(1174, 'Coimbatore', 'Tamil Nadu'),
(1175, 'Coonoor', 'Tamil Nadu'),
(1176, 'Cuddalore', 'Tamil Nadu'),
(1177, 'Dharmapuri', 'Tamil Nadu'),
(1178, 'Dindigul', 'Tamil Nadu'),
(1179, 'Erode', 'Tamil Nadu'),
(1180, 'Gudalur', 'Tamil Nadu'),
(1181, 'Gudalur', 'Tamil Nadu'),
(1182, 'Gudalur', 'Tamil Nadu'),
(1183, 'Kanchipuram', 'Tamil Nadu'),
(1184, 'Karaikudi', 'Tamil Nadu'),
(1185, 'Karungal', 'Tamil Nadu'),
(1186, 'Karur', 'Tamil Nadu'),
(1187, 'Kollankodu', 'Tamil Nadu'),
(1188, 'Lalgudi', 'Tamil Nadu'),
(1189, 'Madurai', 'Tamil Nadu'),
(1190, 'Nagapattinam', 'Tamil Nadu'),
(1191, 'Nagercoil', 'Tamil Nadu'),
(1192, 'Namagiripettai', 'Tamil Nadu'),
(1193, 'Namakkal', 'Tamil Nadu'),
(1194, 'Nandivaram-Guduvancheri', 'Tamil Nadu'),
(1195, 'Nanjikottai', 'Tamil Nadu'),
(1196, 'Natham', 'Tamil Nadu'),
(1197, 'Nellikuppam', 'Tamil Nadu'),
(1198, 'Neyveli', 'Tamil Nadu'),
(1199, 'O\' Valley', 'Tamil Nadu'),
(1200, 'Oddanchatram', 'Tamil Nadu'),
(1201, 'P.N.Patti', 'Tamil Nadu'),
(1202, 'Pacode', 'Tamil Nadu'),
(1203, 'Padmanabhapuram', 'Tamil Nadu'),
(1204, 'Palani', 'Tamil Nadu'),
(1205, 'Palladam', 'Tamil Nadu'),
(1206, 'Pallapatti', 'Tamil Nadu'),
(1207, 'Pallikonda', 'Tamil Nadu'),
(1208, 'Panagudi', 'Tamil Nadu'),
(1209, 'Panruti', 'Tamil Nadu'),
(1210, 'Paramakudi', 'Tamil Nadu'),
(1211, 'Parangipettai', 'Tamil Nadu'),
(1212, 'Pattukkottai', 'Tamil Nadu'),
(1213, 'Perambalur', 'Tamil Nadu'),
(1214, 'Peravurani', 'Tamil Nadu'),
(1215, 'Periyakulam', 'Tamil Nadu'),
(1216, 'Periyasemur', 'Tamil Nadu'),
(1217, 'Pernampattu', 'Tamil Nadu'),
(1218, 'Pollachi', 'Tamil Nadu'),
(1219, 'Polur', 'Tamil Nadu'),
(1220, 'Ponneri', 'Tamil Nadu'),
(1221, 'Pudukkottai', 'Tamil Nadu'),
(1222, 'Pudupattinam', 'Tamil Nadu'),
(1223, 'Puliyankudi', 'Tamil Nadu'),
(1224, 'Punjaipugalur', 'Tamil Nadu'),
(1225, 'Rajapalayam', 'Tamil Nadu'),
(1226, 'Ramanathapuram', 'Tamil Nadu'),
(1227, 'Rameshwaram', 'Tamil Nadu'),
(1228, 'Rasipuram', 'Tamil Nadu'),
(1229, 'Salem', 'Tamil Nadu'),
(1230, 'Sankarankoil', 'Tamil Nadu'),
(1231, 'Sankari', 'Tamil Nadu'),
(1232, 'Sathyamangalam', 'Tamil Nadu'),
(1233, 'Sattur', 'Tamil Nadu'),
(1234, 'Shenkottai', 'Tamil Nadu'),
(1235, 'Sholavandan', 'Tamil Nadu'),
(1236, 'Sholingur', 'Tamil Nadu'),
(1237, 'Sirkali', 'Tamil Nadu'),
(1238, 'Sivaganga', 'Tamil Nadu'),
(1239, 'Sivagiri', 'Tamil Nadu'),
(1240, 'Sivakasi', 'Tamil Nadu'),
(1241, 'Srivilliputhur', 'Tamil Nadu'),
(1242, 'Surandai', 'Tamil Nadu'),
(1243, 'Suriyampalayam', 'Tamil Nadu'),
(1244, 'Tenkasi', 'Tamil Nadu'),
(1245, 'Thammampatti', 'Tamil Nadu'),
(1246, 'Thanjavur', 'Tamil Nadu'),
(1247, 'Tharamangalam', 'Tamil Nadu'),
(1248, 'Tharangambadi', 'Tamil Nadu'),
(1249, 'Theni Allinagaram', 'Tamil Nadu'),
(1250, 'Thirumangalam', 'Tamil Nadu'),
(1251, 'Thirunindravur', 'Tamil Nadu'),
(1252, 'Thiruparappu', 'Tamil Nadu'),
(1253, 'Thirupuvanam', 'Tamil Nadu'),
(1254, 'Thiruthuraipoondi', 'Tamil Nadu'),
(1255, 'Thiruvallur', 'Tamil Nadu'),
(1256, 'Thiruvarur', 'Tamil Nadu'),
(1257, 'Thoothukudi', 'Tamil Nadu'),
(1258, 'Thuraiyur', 'Tamil Nadu'),
(1259, 'Tindivanam', 'Tamil Nadu'),
(1260, 'Tiruchendur', 'Tamil Nadu'),
(1261, 'Tiruchengode', 'Tamil Nadu'),
(1262, 'Tiruchirappalli', 'Tamil Nadu'),
(1263, 'Tirukalukundram', 'Tamil Nadu'),
(1264, 'Tirukkoyilur', 'Tamil Nadu'),
(1265, 'Tirunelveli', 'Tamil Nadu'),
(1266, 'Tirupathur', 'Tamil Nadu'),
(1267, 'Tirupathur', 'Tamil Nadu'),
(1268, 'Tiruppur', 'Tamil Nadu'),
(1269, 'Tiruttani', 'Tamil Nadu'),
(1270, 'Tiruvannamalai', 'Tamil Nadu'),
(1271, 'Tiruvethipuram', 'Tamil Nadu'),
(1272, 'Tittakudi', 'Tamil Nadu'),
(1273, 'Udhagamandalam', 'Tamil Nadu'),
(1274, 'Udumalaipettai', 'Tamil Nadu'),
(1275, 'Unnamalaikadai', 'Tamil Nadu'),
(1276, 'Usilampatti', 'Tamil Nadu'),
(1277, 'Uthamapalayam', 'Tamil Nadu'),
(1278, 'Uthiramerur', 'Tamil Nadu'),
(1279, 'Vadakkuvalliyur', 'Tamil Nadu'),
(1280, 'Vadalur', 'Tamil Nadu'),
(1281, 'Vadipatti', 'Tamil Nadu'),
(1282, 'Valparai', 'Tamil Nadu'),
(1283, 'Vandavasi', 'Tamil Nadu'),
(1284, 'Vaniyambadi', 'Tamil Nadu'),
(1285, 'Vedaranyam', 'Tamil Nadu'),
(1286, 'Vellakoil', 'Tamil Nadu'),
(1287, 'Vellore', 'Tamil Nadu'),
(1288, 'Vikramasingapuram', 'Tamil Nadu'),
(1289, 'Viluppuram', 'Tamil Nadu'),
(1290, 'Virudhachalam', 'Tamil Nadu'),
(1291, 'Virudhunagar', 'Tamil Nadu'),
(1292, 'Viswanatham', 'Tamil Nadu'),
(1293, 'Agartala', 'Tripura'),
(1294, 'Badharghat', 'Tripura'),
(1295, 'Dharmanagar', 'Tripura'),
(1296, 'Indranagar', 'Tripura'),
(1297, 'Jogendranagar', 'Tripura'),
(1298, 'Kailasahar', 'Tripura'),
(1299, 'Khowai', 'Tripura'),
(1300, 'Pratapgarh', 'Tripura'),
(1301, 'Udaipur', 'Tripura'),
(1302, 'Achhnera', 'Uttar Pradesh'),
(1303, 'Adari', 'Uttar Pradesh'),
(1304, 'Agra', 'Uttar Pradesh'),
(1305, 'Aligarh', 'Uttar Pradesh'),
(1306, 'Allahabad', 'Uttar Pradesh'),
(1307, 'Amroha', 'Uttar Pradesh'),
(1308, 'Azamgarh', 'Uttar Pradesh'),
(1309, 'Bahraich', 'Uttar Pradesh'),
(1310, 'Ballia', 'Uttar Pradesh'),
(1311, 'Balrampur', 'Uttar Pradesh'),
(1312, 'Banda', 'Uttar Pradesh'),
(1313, 'Bareilly', 'Uttar Pradesh'),
(1314, 'Chandausi', 'Uttar Pradesh'),
(1315, 'Dadri', 'Uttar Pradesh'),
(1316, 'Deoria', 'Uttar Pradesh'),
(1317, 'Etawah', 'Uttar Pradesh'),
(1318, 'Fatehabad', 'Uttar Pradesh'),
(1319, 'Fatehpur', 'Uttar Pradesh'),
(1320, 'Fatehpur', 'Uttar Pradesh'),
(1321, 'Greater Noida', 'Uttar Pradesh'),
(1322, 'Hamirpur', 'Uttar Pradesh'),
(1323, 'Hardoi', 'Uttar Pradesh'),
(1324, 'Jajmau', 'Uttar Pradesh'),
(1325, 'Jaunpur', 'Uttar Pradesh'),
(1326, 'Jhansi', 'Uttar Pradesh'),
(1327, 'Kalpi', 'Uttar Pradesh'),
(1328, 'Kanpur', 'Uttar Pradesh'),
(1329, 'Kota', 'Uttar Pradesh'),
(1330, 'Laharpur', 'Uttar Pradesh'),
(1331, 'Lakhimpur', 'Uttar Pradesh'),
(1332, 'Lal Gopalganj Nindaura', 'Uttar Pradesh'),
(1333, 'Lalganj', 'Uttar Pradesh'),
(1334, 'Lalitpur', 'Uttar Pradesh'),
(1335, 'Lar', 'Uttar Pradesh'),
(1336, 'Loni', 'Uttar Pradesh'),
(1337, 'Lucknow', 'Uttar Pradesh'),
(1338, 'Mathura', 'Uttar Pradesh'),
(1339, 'Meerut', 'Uttar Pradesh'),
(1340, 'Modinagar', 'Uttar Pradesh'),
(1341, 'Muradnagar', 'Uttar Pradesh'),
(1342, 'Nagina', 'Uttar Pradesh'),
(1343, 'Najibabad', 'Uttar Pradesh'),
(1344, 'Nakur', 'Uttar Pradesh'),
(1345, 'Nanpara', 'Uttar Pradesh'),
(1346, 'Naraura', 'Uttar Pradesh'),
(1347, 'Naugawan Sadat', 'Uttar Pradesh'),
(1348, 'Nautanwa', 'Uttar Pradesh'),
(1349, 'Nawabganj', 'Uttar Pradesh'),
(1350, 'Nehtaur', 'Uttar Pradesh'),
(1351, 'NOIDA', 'Uttar Pradesh'),
(1352, 'Noorpur', 'Uttar Pradesh'),
(1353, 'Obra', 'Uttar Pradesh'),
(1354, 'Orai', 'Uttar Pradesh'),
(1355, 'Padrauna', 'Uttar Pradesh'),
(1356, 'Palia Kalan', 'Uttar Pradesh'),
(1357, 'Parasi', 'Uttar Pradesh'),
(1358, 'Phulpur', 'Uttar Pradesh'),
(1359, 'Pihani', 'Uttar Pradesh'),
(1360, 'Pilibhit', 'Uttar Pradesh'),
(1361, 'Pilkhuwa', 'Uttar Pradesh'),
(1362, 'Powayan', 'Uttar Pradesh'),
(1363, 'Pukhrayan', 'Uttar Pradesh'),
(1364, 'Puranpur', 'Uttar Pradesh'),
(1365, 'Purquazi', 'Uttar Pradesh'),
(1366, 'Purwa', 'Uttar Pradesh'),
(1367, 'Rae Bareli', 'Uttar Pradesh'),
(1368, 'Rampur', 'Uttar Pradesh'),
(1369, 'Rampur Maniharan', 'Uttar Pradesh'),
(1370, 'Rasra', 'Uttar Pradesh'),
(1371, 'Rath', 'Uttar Pradesh'),
(1372, 'Renukoot', 'Uttar Pradesh'),
(1373, 'Reoti', 'Uttar Pradesh'),
(1374, 'Robertsganj', 'Uttar Pradesh'),
(1375, 'Rudauli', 'Uttar Pradesh'),
(1376, 'Rudrapur', 'Uttar Pradesh'),
(1377, 'Sadabad', 'Uttar Pradesh'),
(1378, 'Safipur', 'Uttar Pradesh'),
(1379, 'Saharanpur', 'Uttar Pradesh'),
(1380, 'Sahaspur', 'Uttar Pradesh'),
(1381, 'Sahaswan', 'Uttar Pradesh'),
(1382, 'Sahawar', 'Uttar Pradesh'),
(1383, 'Sahjanwa', 'Uttar Pradesh'),
(1384, 'Saidpur', ' Ghazipur'),
(1385, 'Sambhal', 'Uttar Pradesh'),
(1386, 'Samdhan', 'Uttar Pradesh'),
(1387, 'Samthar', 'Uttar Pradesh'),
(1388, 'Sandi', 'Uttar Pradesh'),
(1389, 'Sandila', 'Uttar Pradesh'),
(1390, 'Sardhana', 'Uttar Pradesh'),
(1391, 'Seohara', 'Uttar Pradesh'),
(1392, 'Shahabad', ' Hardoi'),
(1393, 'Shahabad', ' Rampur'),
(1394, 'Shahganj', 'Uttar Pradesh'),
(1395, 'Shahjahanpur', 'Uttar Pradesh'),
(1396, 'Shamli', 'Uttar Pradesh'),
(1397, 'Shamsabad', ' Agra'),
(1398, 'Shamsabad', ' Farrukhabad'),
(1399, 'Sherkot', 'Uttar Pradesh'),
(1400, 'Shikarpur', ' Bulandshahr'),
(1401, 'Shikohabad', 'Uttar Pradesh'),
(1402, 'Shishgarh', 'Uttar Pradesh'),
(1403, 'Siana', 'Uttar Pradesh'),
(1404, 'Sikanderpur', 'Uttar Pradesh'),
(1405, 'Sikandra Rao', 'Uttar Pradesh'),
(1406, 'Sikandrabad', 'Uttar Pradesh'),
(1407, 'Sirsaganj', 'Uttar Pradesh'),
(1408, 'Sirsi', 'Uttar Pradesh'),
(1409, 'Sitapur', 'Uttar Pradesh'),
(1410, 'Soron', 'Uttar Pradesh'),
(1411, 'Suar', 'Uttar Pradesh'),
(1412, 'Sultanpur', 'Uttar Pradesh'),
(1413, 'Sumerpur', 'Uttar Pradesh'),
(1414, 'Tanda', 'Uttar Pradesh'),
(1415, 'Tanda', 'Uttar Pradesh'),
(1416, 'Tetri Bazar', 'Uttar Pradesh'),
(1417, 'Thakurdwara', 'Uttar Pradesh'),
(1418, 'Thana Bhawan', 'Uttar Pradesh'),
(1419, 'Tilhar', 'Uttar Pradesh'),
(1420, 'Tirwaganj', 'Uttar Pradesh'),
(1421, 'Tulsipur', 'Uttar Pradesh'),
(1422, 'Tundla', 'Uttar Pradesh'),
(1423, 'Unnao', 'Uttar Pradesh'),
(1424, 'Utraula', 'Uttar Pradesh'),
(1425, 'Varanasi', 'Uttar Pradesh'),
(1426, 'Vrindavan', 'Uttar Pradesh'),
(1427, 'Warhapur', 'Uttar Pradesh'),
(1428, 'Zaidpur', 'Uttar Pradesh'),
(1429, 'Zamania', 'Uttar Pradesh'),
(1430, 'Almora', 'Uttarakhand'),
(1431, 'Bazpur', 'Uttarakhand'),
(1432, 'Chamba', 'Uttarakhand'),
(1433, 'Dehradun', 'Uttarakhand'),
(1434, 'Haldwani', 'Uttarakhand'),
(1435, 'Haridwar', 'Uttarakhand'),
(1436, 'Jaspur', 'Uttarakhand'),
(1437, 'Kashipur', 'Uttarakhand'),
(1438, 'kichha', 'Uttarakhand'),
(1439, 'Kotdwara', 'Uttarakhand'),
(1440, 'Manglaur', 'Uttarakhand'),
(1441, 'Mussoorie', 'Uttarakhand'),
(1442, 'Nagla', 'Uttarakhand'),
(1443, 'Nainital', 'Uttarakhand'),
(1444, 'Pauri', 'Uttarakhand'),
(1445, 'Pithoragarh', 'Uttarakhand'),
(1446, 'Ramnagar', 'Uttarakhand'),
(1447, 'Rishikesh', 'Uttarakhand'),
(1448, 'Roorkee', 'Uttarakhand'),
(1449, 'Rudrapur', 'Uttarakhand'),
(1450, 'Sitarganj', 'Uttarakhand'),
(1451, 'Tehri', 'Uttarakhand'),
(1452, 'Muzaffarnagar', 'Uttar Pradesh'),
(1453, 'Adra', ' Purulia'),
(1454, 'Alipurduar', 'West Bengal'),
(1455, 'Arambagh', 'West Bengal'),
(1456, 'Asansol', 'West Bengal'),
(1457, 'Baharampur', 'West Bengal'),
(1458, 'Bally', 'West Bengal'),
(1459, 'Balurghat', 'West Bengal'),
(1460, 'Bankura', 'West Bengal'),
(1461, 'Barakar', 'West Bengal'),
(1462, 'Barasat', 'West Bengal'),
(1463, 'Bardhaman', 'West Bengal'),
(1464, 'Bidhan Nagar', 'West Bengal'),
(1465, 'Chinsura', 'West Bengal'),
(1466, 'Contai', 'West Bengal'),
(1467, 'Cooch Behar', 'West Bengal'),
(1468, 'Darjeeling', 'West Bengal'),
(1469, 'Durgapur', 'West Bengal'),
(1470, 'Haldia', 'West Bengal'),
(1471, 'Howrah', 'West Bengal'),
(1472, 'Islampur', 'West Bengal'),
(1473, 'Jhargram', 'West Bengal'),
(1474, 'Kharagpur', 'West Bengal'),
(1475, 'Kolkata', 'West Bengal'),
(1476, 'Mainaguri', 'West Bengal'),
(1477, 'Mal', 'West Bengal'),
(1478, 'Mathabhanga', 'West Bengal'),
(1479, 'Medinipur', 'West Bengal'),
(1480, 'Memari', 'West Bengal'),
(1481, 'Monoharpur', 'West Bengal'),
(1482, 'Murshidabad', 'West Bengal'),
(1483, 'Nabadwip', 'West Bengal'),
(1484, 'Naihati', 'West Bengal'),
(1485, 'Panchla', 'West Bengal'),
(1486, 'Pandua', 'West Bengal'),
(1487, 'Paschim Punropara', 'West Bengal'),
(1488, 'Purulia', 'West Bengal'),
(1489, 'Raghunathpur', 'West Bengal'),
(1490, 'Raiganj', 'West Bengal'),
(1491, 'Rampurhat', 'West Bengal'),
(1492, 'Ranaghat', 'West Bengal'),
(1493, 'Sainthia', 'West Bengal'),
(1494, 'Santipur', 'West Bengal'),
(1495, 'Siliguri', 'West Bengal'),
(1496, 'Sonamukhi', 'West Bengal'),
(1497, 'Srirampore', 'West Bengal'),
(1498, 'Suri', 'West Bengal'),
(1499, 'Taki', 'West Bengal'),
(1500, 'Tamluk', 'West Bengal'),
(1501, 'Tarakeswar', 'West Bengal'),
(1502, 'Chikmagalur', 'Karnataka'),
(1503, 'Davanagere', 'Karnataka'),
(1504, 'Dharwad', 'Karnataka'),
(1505, 'Gadag', 'Karnataka'),
(1506, 'Chennai', 'Tamil Nadu'),
(1507, 'Coimbatore', 'Tamil Nadu'),
(1624, 'Bardoli', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `company_mst`
--

CREATE TABLE `company_mst` (
  `com_id` int(5) NOT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_oname` varchar(100) NOT NULL,
  `com_type` varchar(50) NOT NULL,
  `com_email` varchar(256) NOT NULL,
  `com_mobile` varchar(12) NOT NULL,
  `com_cat_id` int(5) NOT NULL,
  `com_password` varchar(50) NOT NULL,
  `com_address` varchar(10000) NOT NULL,
  `com_city_id` varchar(5) NOT NULL,
  `com_maplat` varchar(20) NOT NULL DEFAULT '0',
  `com_maplong` varchar(20) NOT NULL DEFAULT '0',
  `com_logo` varchar(200) NOT NULL,
  `com_verify` varchar(5) NOT NULL DEFAULT '0',
  `com_active` varchar(5) NOT NULL DEFAULT '1',
  `com_status` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_mst`
--

INSERT INTO `company_mst` (`com_id`, `com_name`, `com_oname`, `com_type`, `com_email`, `com_mobile`, `com_cat_id`, `com_password`, `com_address`, `com_city_id`, `com_maplat`, `com_maplong`, `com_logo`, `com_verify`, `com_active`, `com_status`) VALUES
(1, 'Vimal Agro Products Pvt. Ltd.', 'Chirag Nemani', 'Proprietorship', 'chirag@vimalagro.com', '9825162859', 5, 'DCA@2020', 'Bardoli-Surat Road, Opp. Milano Multiplex, Bardoli', '1624', '0', '0', '080820_733641_WhatsApp Image 2020-08-08 at 12.35.34.jpeg', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `com_category_mst`
--

CREATE TABLE `com_category_mst` (
  `com_cat_id` int(5) NOT NULL,
  `com_cat_name` varchar(50) NOT NULL,
  `com_cat_status` varchar(5) NOT NULL DEFAULT '1',
  `com_cat_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `com_category_mst`
--

INSERT INTO `com_category_mst` (`com_cat_id`, `com_cat_name`, `com_cat_status`, `com_cat_active`) VALUES
(1, 'Abortion Policy/Anti-Abortion', '0', '1'),
(2, 'Abortion Policy/Pro-Abortion Rights', '0', '1'),
(3, 'Education', '1', '1'),
(4, 'Educational Institute', '0', '1'),
(5, 'Manufacturing', '1', '1'),
(6, 'Hotel', '1', '1'),
(7, 'Restaurant', '1', '1'),
(8, 'Chemical', '1', '1'),
(9, 'Banking', '1', '1'),
(10, 'Accounting', '1', '1'),
(11, 'Pharmacy', '1', '1'),
(12, 'IT', '1', '1'),
(13, 'Financial Services', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_mst`
--

CREATE TABLE `contact_us_mst` (
  `cu_id` int(5) NOT NULL,
  `cu_name` varchar(40) NOT NULL,
  `cu_email` varchar(255) NOT NULL,
  `cu_subject` varchar(13) NOT NULL,
  `cu_message` varchar(100) NOT NULL,
  `cu_status` varchar(5) NOT NULL DEFAULT '1',
  `cu_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us_mst`
--

INSERT INTO `contact_us_mst` (`cu_id`, `cu_name`, `cu_email`, `cu_subject`, `cu_message`, `cu_status`, `cu_active`) VALUES
(1, 'Dhvanil Kalpeshbhai Patel', 'dhvanil25@gmail.com', '9737262965', 'DK ', '1', '1'),
(2, 'Rushil Kalpeshbhai ', 'Parushoil2542@gmail.com', '7878545452', 'THis is iRidgysgpqf;sdjg;og', '1', '1'),
(3, 'Abhi', 'fkbo@gmail.com', '9090898987', 'cyf', '0', '1'),
(3893, 'Esha', 'eshabodhani01@gmail.com', 'Chemistry', 'Good morning', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `content_mst`
--

CREATE TABLE `content_mst` (
  `co_id` int(11) NOT NULL,
  `co_content` longtext NOT NULL,
  `co_type` varchar(50) NOT NULL,
  `co_status` varchar(2) NOT NULL DEFAULT '1',
  `co_active` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_mst`
--

INSERT INTO `content_mst` (`co_id`, `co_content`, `co_type`, `co_status`, `co_active`) VALUES
(1, '<h2 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Georgia, \">Vision</h2><ul><li style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\";\"=\"\">Be an institution of the tribal belt with a culture of mutual care and commitment, a satisfying and excellent work environment and continuous learning opportunities.</li><li style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\";\"=\"\">Provide a small platform to help students make themselves prepared for their future challenges and explore encouraging avenues.</li><li style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\";\"=\"\">Build up its position in the state as a pioneer amongst all educational groups with consistent growth of further branches.</li></ul><p><span style=\"color: inherit; font-family: inherit; font-size: 2rem;\">Mission</span><br></p><ul><li>To grow as a premier educational institute committed to provide the best educational environment and excellent infrastructure in the field of education.</li></ul><p class=\"MsoNormal\" style=\"margin-top:0in;margin-right:-.5in;margin-bottom:6.0pt;\nmargin-left:0in;text-align:justify;text-justify:inter-ideograph;line-height:\nnormal\"><b><span style=\"font-family:\" cambria\",\"serif\"\"=\"\"><o:p></o:p></span></b></p>\n', 'about', '1', '1'),
(2, '<p></p><h1 style=\"text-align: center; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 8px; font-size: 20px; line-height: normal;\" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" border-bottom:=\"\" 1px=\"\" dotted=\"\" rgb(153,=\"\" 153,=\"\" 153);=\"\" text-align:=\"\" -webkit-center;\"=\"\"><b>Principal\'s Message</b></h1><hr><h1 style=\"text-align: center; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 8px; font-size: 20px; line-height: normal;\" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" border-bottom:=\"\" 1px=\"\" dotted=\"\" rgb(153,=\"\" 153,=\"\" 153);=\"\" text-align:=\"\" -webkit-center;\"=\"\"><b style=\"font-size: small; font-family: verdana, Arial, Helvetica, sans-serif;\">We cannot always build the future for our youth, but we can build our youth for the future.</b><br></h1><center style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><img src=\"http://www.pgscience.org/images/Staff/Teaching/1.jpg\" class=\"imgl\" alt=\"\" width=\"125\" height=\"125\" ;=\"\" style=\"display: block; margin: 0px 8px 8px 0px; padding: 5px; border: 2px groove rgb(84, 85, 101); float: left; clear: left;\"></center><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Welcome to the Patidar Gin Science College! At our college, you will find a vibrant, engaged, friendly community of students and faculties, and other staff-members.</p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">In choosing your courses and programs of study you will be able to pursue interests and aptitudes you have already discovered or will discover an academic discipline or career path that you did not even know you were interested in, but that is just right for you.</p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">We understand the challenges that are in store for students. Our main mission is to support students in meeting the challenges they face, and to help them reach their goals. As an educator, I know how important it is to choose the right field for a person.</p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Students who select this college can have confidence that we will strive to guide the students in making wise decision so that, after graduation, they can chose a right field for their livelihood and become successful in life.</p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">Professors and lecturers with wide range of experience and who share the same mission are assigned to guide the students. Our college is a home to the faculty, under graduates and staff where we try to provide maximum facilities to all of them.</p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">We are equipped with library, laboratories and computer labs. They are even provided with innovative opportunities for local and national engagements.Hard work, dedication and perseverance are the most important traits in a person that lead to success.</p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\">The future belongs to you; your need, therefore, is to prepare yourself for an active participation in the world. This Participation demands that you become well informed and hence develop yourself like a pioneer and ultimately grow as responsible men and women.</p><strong style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: -webkit-center;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Remember \"The reward of every good action will be good only\".</strong><p></p><p style=\"text-align: center; \"><b>Principal,</b></p><p style=\"text-align: center;\"><b>Dr. B. R. Naik</b></p><p><strong style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px; text-align: -webkit-center;\"></strong></p><p style=\"text-align: center; \"><b>The Patidar Gin Science College, Bardoli, Dist. Surat, Gujarat</b></p>', 'principal', '1', '1'),
(3, '<p></p><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 8px; font-size: 20px; line-height: normal; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; color: rgb(0, 0, 0); border-bottom: 1px dotted rgb(153, 153, 153); text-align: -webkit-center;\">About Trust</h1><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 8px; font-size: 20px; line-height: normal; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" border-bottom:=\"\" 1px=\"\" dotted=\"\" rgb(153,=\"\" 153,=\"\" 153);=\"\" text-align:=\"\" -webkit-center;\"=\"\"><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><font size=\"2pt\">The Bardoli Pradesh Kelvani Mandal was founded in the year 1960 by eminent persons like Patel Raman Brothers, Shri Kalyanjibhai Kanjibhai Patel and others who made&nbsp;<a href=\"http://www.hotswisswatches.co.uk/\" style=\"outline: none; text-decoration-line: underline; color: rgb(2, 172, 238); background-color: rgb(255, 255, 255);\">replica rolex</a>&nbsp;their noble efforts and gave generous donations for the noble cause of educational upliftment of Bardoli.</font></p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><font size=\"2pt\">The first educational institute started by the Mandal was Arts and Science College in the year 1963. Later it was named as Patel Raman Brothers Arts &amp; Science College, Bardoli.</font></p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><font size=\"2pt\">In the year 1971, the Science College was bifurcated and was named, The Patidar Gin Science College after the name of&nbsp;<a href=\"http://www.showreplicawatches.co.uk/\" style=\"outline: none; color: black; background-color: rgb(255, 255, 255);\">replica watches</a>&nbsp;the sponsors- “The Patidar Ginning &amp; Pressing Co. Ltd. of Bardoli” in the year 1983.</font></p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><font size=\"2pt\">A course leading to Diploma in Pharmacy was started and the institute Dr. Dayaram Patel Pharmacy college was attached to the Science college. It was then renamed as “The Patidar Gin Science and Dr. Dayaram Patel Pharmacy College”.</font></p><p align=\"justify\" style=\"font-family: verdana, Arial, Helvetica, sans-serif; font-size: 12px;\"><font size=\"2pt\">The bifurcation of&nbsp;<a href=\"http://www.rolexreplicasstore.uk.com/\" style=\"outline: none; color: black; background-color: rgb(255, 255, 255);\">fake rolex</a>&nbsp;the Pharmacy College took place in the year 1990, and after that Science College was again renamed as “The Patidar Gin Science College”, Bardoli.</font></p></h1>', 'trust', '1', '1'),
(4, '                                  <p></p><h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 8px; font-size: 20px; line-height: normal; font-family: Georgia, \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" serif;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);=\"\" border-bottom:=\"\" 1px=\"\" dotted=\"\" rgb(153,=\"\" 153,=\"\" 153);=\"\" text-align:=\"\" -webkit-center;\"=\"\"><br></h1>\r\n                                                <h2 style=\"text-align: center; \">Academic Courses for Science</h2>\r\n                                            \r\n                                            <hr>\r\n                                        <h2>Chemistry Department</h2>\r\n                                        <hr>\r\n                                        <p align=\"justify\">Chemistry section is the biggest department with well furnished three laboratories and latest equipments with internet facilities.</p>\r\n                                        <p align=\"justify\">The department is rich with prominent professors and skilled lab technician and assistants. Staff of the department enhances their knowledge by participating in various activities, seminars conferences and refresher courses.</p>\r\n                                        <p align=\"justify\">Chemistry is one of the principal subjects offered by this college. Majority of students prefer taking this subject due to the close proximity of the chemical industries to the college.</p>\r\n                                        <p align=\"justify\">Students are given practical training for handling different hazardous chemicals and instruments like PH meter, Polari meter, conduct meter, colorimeter, retract meter, photometer etc.</p>\r\n                                        <p align=\"justify\">Generally students prefer enrolling for further post graduation studies or join the nearby industries.</p>\r\n                                        <br class=\"clear\">', 'chem', '1', '1'),
(5, '                                        <center><b>\n                                                <h2>Academic Courses for Science</h2>\n                                            </b></center>\n                                        <hr>\n                                        <h2>Mathematics Department</h2>\n                                        <hr>\n                                        <p align=\"justify\">In the college, Mathematics is taught as a principle subject. The Mathematics department consists of some experienced and highly qualified lecturers.</p>\n                                        <p align=\"justify\">The Department is well equipped with books on the recent trends and applications. Students and staff members of this department regularly participate in various workshops, seminars, conferences etc. to keep abreast with the latest development in the subject.</p>\n                                        <p align=\"justify\">Students administrate small workshop about the subject regularly. About 30 to 40 students get pass out with B.Sc. in mathematics every year.</p>\n                                        <p align=\"justify\">This course opens up gates for better job opportunities in the field of teaching, insurance, banks, government sectors, students also gets equipped to explore their chances in MCA.</p>\n                                        <br class=\"clear\">', 'math', '1', '1'),
(6, '<center><b>\r\n                                                <h2>Academic Courses for Science</h2>\r\n                                            </b></center>\r\n                                        <hr>\r\n                                        <h2>Biology Department</h2>\r\n                                        <hr>\r\n                                        <p align=\"justify\">We offer BIOSCIENCE as major subject and BOTANY as a subsidiary subject. Biology Department of this college has full-fledged laboratory and committed teachers to undertake theory and practical teaching.</p>\r\n                                        <p align=\"justify\">Ours is perhaps the only college in South Gujarat which offer Bioscience at B.Sc. level. It covers Histology, Clinical biochemistry, Hematology along with medical microbiology.</p>\r\n                                        <p align=\"justify\">Bioscience course emphasize mostly on practical aspects and almost cover all tests routinely done in pathology lab.</p>\r\n                                        <p align=\"justify\">It is in fact a Para-medical course framed in a way that students become self- sufficient and get wider exposure after graduation as eligible technician for employment in Government or semi- govt. hospitals.</p>\r\n                                        <p align=\"justify\">Biology Department normally organizes study tours and work-shops, seminars etc. under Eco-club. Students can register themselves with nominal fee and take advantage of latest events going on in the field of Biology. </p>\r\n                                        <p align=\"justify\">Chemistry section is the biggest department with well furnished three laboratories and latest equipments with internet facilities.</p>\r\n                                        <br class=\"clear\">', 'bio', '1', '1'),
(7, '                                        <center><b>\r\n                                                <h2>Academic Courses for Science</h2>\r\n                                            </b></center>\r\n                                        <hr>\r\n                                        <h2>Sports Department</h2>\r\n                                        <hr>\r\n                                        <p align=\"justify\">XYZ<br></p>\r\n                                        <br class=\"clear\">', 'sports', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `course_mst`
--

CREATE TABLE `course_mst` (
  `c_id` int(5) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_fees` varchar(20) NOT NULL,
  `c_month` varchar(20) NOT NULL,
  `c_des` varchar(100) NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_status` varchar(5) NOT NULL DEFAULT '1',
  `c_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_mst`
--

INSERT INTO `course_mst` (`c_id`, `c_name`, `c_fees`, `c_month`, `c_des`, `c_img`, `c_status`, `c_active`) VALUES
(7, 'chemistry', '103', '3', 'xyz', '070424_188463_chem.jpeg', '1', '1'),
(8, 'Mathematics', '5000', '5', 'abc', '070424_878116_maths.jpeg', '1', '1'),
(9, 'Bio-Science', '10000', '14', 'xyz', '070424_807746_070424_506579_bio.jpeg', '1', '1'),
(10, 'Sports', '500', '6', 'abx', '070424_712032_070424_899749_sports.jpeg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `download_mst`
--

CREATE TABLE `download_mst` (
  `dw_id` int(5) NOT NULL,
  `dw_title` varchar(50) NOT NULL,
  `dw_des` varchar(50) NOT NULL,
  `dw_file` varchar(200) NOT NULL,
  `dw_status` varchar(5) NOT NULL DEFAULT '1',
  `dw_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `download_mst`
--

INSERT INTO `download_mst` (`dw_id`, `dw_title`, `dw_des`, `dw_file`, `dw_status`, `dw_active`) VALUES
(13, 'Internal ', 'Exam Schedule', '080424_900894_080424_309954_Internal Exam September 2015.pdf', '1', '1'),
(14, 'Internal ', 'test', '090424_889682_6973.pdf', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `edu_mst`
--

CREATE TABLE `edu_mst` (
  `edu_id` int(10) NOT NULL,
  `edu_des` varchar(300) NOT NULL,
  `edu_status` varchar(5) NOT NULL DEFAULT '1',
  `edu_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edu_mst`
--

INSERT INTO `edu_mst` (`edu_id`, `edu_des`, `edu_status`, `edu_active`) VALUES
(1, 'Graduation', '1', '1'),
(2, 'Post Graduation', '1', '1'),
(3, 'ITI', '1', '1'),
(4, 'Diploma courses', '1', '1'),
(5, '10 Pass', '1', '1'),
(6, '12 Pass', '1', '1'),
(7, 'None of This', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `e_id` int(100) NOT NULL,
  `e_heading` varchar(255) NOT NULL,
  `e_des` varchar(255) NOT NULL,
  `e_img` varchar(255) NOT NULL,
  `e_status` varchar(100) NOT NULL DEFAULT '1',
  `e_active` varchar(100) NOT NULL DEFAULT '1',
  `e_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`e_id`, `e_heading`, `e_des`, `e_img`, `e_status`, `e_active`, `e_year`) VALUES
(3, 'de-addiction', 'abc', '1.jpg', '1', '1', '2024'),
(4, 'FY orientation', 'xyz', '2.jpg', '1', '1', '2023'),
(5, 'women empowerment', 'test', '3.jpg', '1', '1', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(50) NOT NULL,
  `g_heading` varchar(255) NOT NULL,
  `g_img` varchar(255) NOT NULL,
  `g_status` varchar(50) NOT NULL DEFAULT '1',
  `g_active` int(50) NOT NULL DEFAULT 1,
  `g_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `g_heading`, `g_img`, `g_status`, `g_active`, `g_year`) VALUES
(1, '', '1.jpeg', '0', 1, '2021'),
(2, 'img', '2.jpg', '0', 1, '2023'),
(3, 'img', '1.jpeg', '1', 1, '2021'),
(4, '2img', '2.jpg', '1', 1, '2021'),
(5, '3 img', '3.jpeg', '1', 1, '2024'),
(6, '4', '4.jpeg', '1', 1, '2021'),
(7, '5', '5.jpeg', '1', 1, '2022'),
(8, '6', '6.jpeg', '1', 1, '2023'),
(9, '7', '7.jpeg', '1', 1, '2021'),
(10, '8', '8.jpeg', '1', 1, '2021'),
(11, '9', '9.jpeg', '1', 1, '2021'),
(12, '11', '11.jpeg', '1', 1, '2023'),
(13, '12', '12.jpeg', '1', 1, '2024'),
(14, '13', '13.jpeg', '1', 1, '2023'),
(15, '15', '15.jpeg', '1', 1, '2021');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `i_id` int(5) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `i_email` varchar(255) NOT NULL,
  `i_mobile_number` varchar(12) NOT NULL,
  `i_subject` varchar(50) NOT NULL,
  `i_remark` varchar(100) NOT NULL,
  `i_date` date NOT NULL,
  `i_status` varchar(5) NOT NULL DEFAULT '1',
  `i_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`i_id`, `i_name`, `i_email`, `i_mobile_number`, `i_subject`, `i_remark`, `i_date`, `i_status`, `i_active`) VALUES
(1, 'Dhvanil Kalpeshbhai Patels', 'dhvanilpatels2542@gmail.com', '973726200', 'Spoken English', 'Confirm done', '2020-07-06', '1', '1'),
(2, 'Rushil Kalpeshbhai Patel', 'romfhp@gmail.com', '9037262950', 'ASP.NET', 'Confirm', '2020-07-06', '1', '1'),
(3, 'Shivkumar Sen', 'mulchand.sen16@gmail.com', '9979156055', 'Spoken English', 'Subject interested and will join from Monday.', '2020-07-07', '1', '0'),
(4, 'Abhi Ashokbhai Patels', 'romfhp@gmail.com', '903726295', 'PHP ', 'hrury', '2020-07-08', '1', '1'),
(5, 'Mariel Colman', 'lshi@anatolygroup.com', '0364 5264001', 'PHP ', 'Need more buyers for your website? Read this: http://bit.ly/buyers-to-your-site-now', '2021-07-05', '1', '1'),
(6, 'Chu Countryman', '1dje@urbansvg.com', '707-575-8325', 'IELTS / PTE', 'Do not pay for advertising ever again:  https://bit.ly/permanently-free-ads', '2021-08-02', '1', '1'),
(7, 'Leora Merz', 'merz.leora@gmail.com', '319-651-3919', 'IELTS / PTE', 'How To Advertise Online Without Paying A Dime :https://1mdr.short.gy/GzyjCW', '2021-09-05', '1', '1'),
(8, 'Albertina Stoltzfus', 'gemooboy.lovej@bucol.net', '574-241-0251', 'PHP ', 'Here is a list of sites where you can post free ads:  https://urlday.cc/g3ypr', '2021-11-16', '1', '1'),
(9, 'Forexlah', 'fantastic@pochtampt.com', '84345319512', 'IELTS / PTE', 'Forex en vivo. https://es.system-forex.com', '2022-01-22', '1', '1'),
(10, 'Bertha Pellegrino', 'bertha.pellegrino@gmail.com', '314-910-5542', 'Spoken English', 'Submit your site to our 30 directories all with one click here> https://bit.ly/addyoursitehere', '2022-02-16', '1', '1'),
(11, 'Forexlah', 'chair@pochtampt.com', '82968276841', 'IELTS / PTE', 'è–æ¯å¤–åŒ¯äº¤æ˜“ç³»çµ±. https://tw.forex-stock-bitcoin-brokers.com', '2022-03-28', '1', '1'),
(12, 'Heny Prajapati ', 'henyprajapati10@gmail.com', '6359939000', 'IELTS / PTE', 'Join ielts classes ', '2022-07-17', '1', '1'),
(13, 'Curt Edmunds', 'curt.edmunds@gmail.com', '0391 2625070', 'PHP ', 'Where are you located?', '2022-09-04', '1', '1'),
(14, 'Nilam', 'waghnilam488@gmail.com', '7434092680', 'IELTS / PTE', 'could you providing a demo lecture facility to new visitor?', '2022-09-10', '1', '1'),
(15, 'Id2odhv2ak', 'bachurina-1988@bk.ru', '85363793744', 'PHP ', ' 97 347 Ñ€ Ð³Ð¾Ñ‚oÐ²Ñ‹  \r\nÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ: AAAdhyeyacademy.comBBB', '2022-09-22', '1', '1'),
(16, 'Kirby Keane', 'kirby.keane@gmail.com', '06-14065993', 'R programing', 'Where are you?', '2022-10-25', '1', '1'),
(17, 'O0FMl', 'vbBdk', '4opby', 'pPtiO', 'Zb2o3', '2022-12-28', '1', '1'),
(18, '', '', '', '', '', '2022-12-28', '1', '1'),
(19, '', '', '', '', '', '2022-12-28', '1', '1'),
(20, '', '', '', '', '', '2022-12-28', '1', '1'),
(21, '', '', '', '', '', '2022-12-28', '1', '1'),
(22, '', '', '', '', '', '2022-12-28', '1', '1'),
(23, '', '', '', '', '', '2022-12-28', '1', '1'),
(24, 'MHFvR', 'dKkiM', 'dVpjH', 'imzDD', 'R7ynJ', '2022-12-28', '1', '1'),
(25, '', '', '', '', '', '2022-12-28', '1', '1'),
(26, '', '', '', '', '', '2022-12-28', '1', '1'),
(27, '', '', '', '', '', '2022-12-28', '1', '1'),
(28, '', '', '', '', '', '2022-12-28', '1', '1'),
(29, '', '', '', '', '', '2022-12-28', '1', '1'),
(30, '', '', '', '', '', '2022-12-28', '1', '1'),
(31, '', '', '', '', '', '2022-12-28', '1', '1'),
(32, '', '', '', '', '', '2022-12-28', '1', '1'),
(33, 'Hu2nd', 'D5Tsy', 'ai5MI', 'GwOZm', 'nr2kb', '2022-12-28', '1', '1'),
(34, '', '', '', '', '', '2022-12-28', '1', '1'),
(35, '', '', '', '', '', '2022-12-28', '1', '1'),
(36, '', '', '', '', '', '2022-12-28', '1', '1'),
(37, '', '', '', '', '', '2022-12-28', '1', '1'),
(38, '', '', '', '', '', '2022-12-28', '1', '1'),
(39, '', '', '', '', '', '2022-12-28', '1', '1'),
(40, '', '', '', '', '', '2022-12-28', '1', '1'),
(41, '', '', '', '', '', '2022-12-28', '1', '1'),
(42, 'R1r7B', 'VsYwc', '9Ckqk', 'LdiHd', '9go91', '2022-12-29', '1', '1'),
(43, '', '', '', '', '', '2022-12-29', '1', '1'),
(44, '', '', '', '', '', '2022-12-29', '1', '1'),
(45, '', '', '', '', '', '2022-12-29', '1', '1'),
(46, '', '', '', '', '', '2022-12-29', '1', '1'),
(47, '', '', '', '', '', '2022-12-29', '1', '1'),
(48, '', '', '', '', '', '2022-12-29', '1', '1'),
(49, '', '', '', '', '', '2022-12-29', '1', '1'),
(50, '', '', '', '', '', '2022-12-29', '1', '1'),
(51, '', '', '', '', '', '2022-12-29', '1', '1'),
(52, '', '', '', '', '', '2022-12-29', '1', '1'),
(53, ' ELGHYFRAERDJ  login2 ', 'mlg2aasrez1@mail.ru', 'mlg2aasrez', 'Spoken English', '', '2023-04-05', '1', '1'),
(54, 'Jack Quaife', 'jack.quaife@gmail.com', '037360 92 95', 'IELTS / PTE', 'Greetings\r\n\r\nIf you ever need Negative SEO or a de-rank strategy, you can hire us here\r\n\r\nhttps://ww', '2023-04-17', '1', '1'),
(55, 'Roseann Schirmeister', 'schirmeister.roseann@gmail.com', '042-4336275', 'R programing', 'I have a way to get you more customers without you having to pay for advertising. check out: www.ran', '2023-05-05', '1', '1'),
(56, 'Glenn Belz', 'belz.glenn@gmail.com', 'Lsgylbigg', 'PHP ', 'Greetings\r\n\r\nIf you ever need Negative SEO or a de-rank strategy, you can hire us here\r\n\r\nhttps://ww', '2023-05-20', '1', '1'),
(57, 'Gudrun Louise', 'nayitew742@onlcool.com', '+1 850-665-2', 'R programing', 'Hello dhyeyacademy.com, \r\n\r\nWe noticed you are only listed in 18 out of a possible 10k+ directories.', '2023-06-09', '1', '1'),
(58, 'Nohea Kalima', 'business@activehow.com', '052 797 75 9', 'IELTS / PTE', 'Have you imagined been able to own your own AI Chatbotâ€¦\r\n\r\n>> Click here to start your ChatGPT-lik', '2023-06-13', '1', '1'),
(59, '<div style=\"background-color:#4169E1;margin:auto;m', 'yaahab@any.pink', '177522845109', 'IELTS / PTE', '36b0uy', '2023-06-15', '1', '1'),
(60, 'Alvin Blanch', 'alvin.blanch4@googlemail.com', '', 'Spoken English', '\r\nPrivate Blog Network links, always have worked well for the ranks.\r\nWe`ll write quality SEO conten', '2023-06-17', '1', '1'),
(61, 'Elmo Ingle', 'makemybusinessgreatagain@gmail.com', '429 90 616', 'PHP ', 'It is with sad regret we are shutting down.\r\n\r\nWe have made all our leads available for a one time f', '2023-06-17', '1', '1'),
(62, 'Forest Crook', 'crook.forest@gmail.com', '0371 6331224', 'Spoken English', 'Hi,\r\n\r\nTake back your timeâ€”increase conversions by an average of 14x.\r\n \r\nThatâ€™s what This AI ca', '2023-06-19', '1', '1'),
(63, 'Shirley Costas', 'makemybusinessgreatagain@gmail.com', '0339 1305556', 'PHP ', 'It is with sad regret we are shutting down.\r\n\r\nWe have made all our leads available for a one time f', '2023-06-23', '1', '1'),
(64, '<div style=\"background-color:#4169E1;margin:auto;m', 'yaahab@any.pink', '423411938719', 'IELTS / PTE', '6vxl10', '2023-06-23', '1', '1'),
(65, 'ðŸŒ Hello World! https://national-team.top/go/hez', 'wbodh@merepost.com', '411306913581', 'IELTS / PTE', '56xq79', '2023-06-24', '1', '1'),
(66, 'Claudette Gsell', 'claudette.gsell@gmail.com', '60 159 01 69', 'PHP ', 'Hi there\r\nDo you want to get backlinks from domains that have tons of ranking keywords?\r\n\r\nhttps://w', '2023-06-29', '1', '1'),
(67, 'Push it to the limit cool Wolf you are the best an', 'thar95585@gmail.com\r\n', 'Push it to', 'Spoken English', '', '2023-07-03', '1', '1'),
(68, 'Push it to the limit cool Wolf you are the best an', 'buimouffsa1988@mail.ru\r\n', 'Push it to', 'Spoken English', '', '2023-07-06', '1', '1'),
(69, 'Clark MacPherson', 'macpherson.clark@gmail.com', '04.98.75.60.', 'PHP ', 'Is this your website? dhyeyacademy.com? I just sent you a message via the contact form on your site ', '2023-07-06', '1', '1'),
(70, 'Megan Atkinson', 'meganatkinson352@gmail.com', '20-36-43-70', 'R programing', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safel', '2023-07-12', '1', '1'),
(71, 'Everett Summers', 'dfy@activehow.com', '0361 6260072', '', 'get over 1,000 authority links\r\nDONE-for-YOU authority links\r\nNEW done-for-you authority links syste', '2023-07-13', '1', '1'),
(72, 'Dwain Burwell', 'dwain.burwell@gmail.com', '416-372-0353', 'PHP ', 'I was just on your website do you have any postal and shipping supplies, we offer the best pricing f', '2023-07-15', '1', '1'),
(73, 'Push it to the limit cool Wolf you are the best an', 'wwwwwwhz@gmail.com\r\n', 'Push it to', 'IELTS / PTE', '', '2023-07-17', '1', '1'),
(74, 'ðŸŒ Hello World! https://national-team.top/go/hez', 'guuema@mailto.plus', '138127002632', 'IELTS / PTE', 'xx608x', '2023-07-19', '1', '1'),
(75, 'Lena Usher', 'lena.usher@msn.com', '0495 97 55 4', 'IELTS / PTE', 'Hi\r\n\r\nIf you ever need Negative SEO or a de-rank strategy, you can hire us here\r\n\r\nhttps://www.speed', '2023-07-19', '1', '1'),
(76, 'Ð—apaÐ±Ð°Ñ‚Ñ‹Ð²aÐ¹Ñ‚e Ñ Ð½Ð°Ð´ÐµÐ¶Ð½Ñ‹Ð¼ Ð¿Ñ€Ð¾eÐ', 'quaitipo1983@mail.ru', 'quaitipo19', 'Spoken English', '', '2023-08-01', '1', '1'),
(77, 'Hai Hargis', 'hargis.hai@gmail.com', '06-63362598', 'Spoken English', 'Accidental overdose is the #1 cause of death for people aged 18-45 in the United States.\r\n\r\n \r\n\r\nNar', '2023-08-02', '1', '1'),
(78, 'Ð¡Ñ‚aÐ½ÑŒÑ‚e Ñ‡Ð°cÑ‚ÑŒÑŽ ycÐ¿eÑˆÐ½Ñ‹Ñ… Ñ‚pÐµÐ¹Ð´ep', 'quaitipo1983+45@mail.ru', 'quaitipo19', 'IELTS / PTE', '', '2023-08-03', '1', '1'),
(79, 'Libby Evans', 'libbyevans461@gmail.com', '(11) 5610-78', 'Spoken English', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safel', '2023-08-03', '1', '1'),
(80, 'Quyen Longmore', 'quyen.longmore@gmail.com', '06-41217990', 'PHP ', 'Hey there, \r\n\r\nDo you use Google adwords for your business marketing campaigns?\r\n\r\nToday we are goin', '2023-08-04', '1', '1'),
(81, 'oNJ yBQY Ð£3Ð½aÐ¹Ñ‚e ceÐºÑ€ÐµÑ‚Ñ‹ ycÐ¿ÐµÑˆÐ½Ñ‹Ñ… u', 'credwale1987+1@mail.ru', 'credwale19', 'IELTS / PTE', '', '2023-08-09', '1', '1'),
(82, 'Lorrine Haddon', 'haddon.lorrine50@googlemail.com', '0250-6126483', 'R programing', 'Hello,\r\n\r\nTired of paying thousands of dollars for leads? We have made the entire LinkedIn Database ', '2023-08-09', '1', '1'),
(83, 'Jenna Frank', 'rena.gregor40@googlemail.com', '(02) 4226 82', 'IELTS / PTE', 'Hi Leader, \r\n\r\nHave you ever wished your product could come to life in a way your customers could be', '2023-08-09', '1', '1'),
(84, 'wzj eLKlRK Ð”Ð¾Ð¶Ð´Ð¸Ñ‚ÐµÑÑŒ Ð·Ð²Ð¾Ð½kÐ° Ð½aÑˆeÐ³', 'credwale1987+1@mail.ru', 'credwale19', 'IELTS / PTE', '', '2023-08-12', '1', '1'),
(85, 'O04IW46LPJYP https://dzen.ru sgjvhnbtcbtfgdjgfb', 'namaror1988@mail.ru', '+74953516855', 'Spoken English', 'O04IW46LPJYP https://dzen.ru sgjvhnbtcbtfgdjgfb', '2023-08-12', '1', '1'),
(86, 'Push it to the limit cool Wolf you are the best an', '002kajalgautam@gmail.com\r\n', 'Push it to', 'PHP ', 'Push it to the limit cool Wolf you are the best and you can do everything https://www.samsung.com sm', '2023-08-14', '1', '1'),
(87, '?? ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ ÐšÐžÐœÐŸÐÐÐ˜Ð•Ð™ ', 'thar95585@gmail.com\r\n', '?? ÐžÑ‚ 25 0', 'IELTS / PTE', '?? ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ ÐšÐžÐœÐŸÐÐÐ˜Ð•Ð™ 1 Ð¸ ÐšÐžÐœÐŸÐÐÐ˜Ð•Ð™ 2. ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½Ð¾ÑÑ‚Ð¸ ', '2023-08-24', '1', '1'),
(88, 'ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ Ð¡ÐÐ™Ð¢Ð Ð¸ Ð Ð•ÐšÐ›', 'spiralcrusex1985@rambler.ru\r\n', 'ÐžÑ‚ 25 000 ', 'IELTS / PTE', 'ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ Ð¡ÐÐ™Ð¢Ð Ð¸ Ð Ð•ÐšÐ›ÐÐœÐÐžÐ™ ÐšÐÐœÐŸÐÐÐ˜Ð˜. ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð¿', '2023-08-24', '1', '1'),
(89, 'ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ Ð¡ÐÐ™Ð¢Ð Ð¸ Ð Ð•ÐšÐ›', 'taisiya_sursova@mail.ru\r\n', 'ÐžÑ‚ 25 000 ', 'PHP ', 'ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ Ð¡ÐÐ™Ð¢Ð Ð¸ Ð Ð•ÐšÐ›ÐÐœÐÐžÐ™ ÐšÐÐœÐŸÐÐÐ˜Ð˜. ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð¿', '2023-08-26', '1', '1'),
(90, 'ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ Ð¡ÐÐ™Ð¢Ð Ð¸ Ð Ð•ÐšÐ›', 'ghrammsang@gmail.com\r\n', 'ÐžÑ‚ 25 000 ', 'IELTS / PTE', 'ÐžÑ‚ 25 000 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñ Ð¡ÐÐ™Ð¢Ð Ð¸ Ð Ð•ÐšÐ›ÐÐœÐÐžÐ™ ÐšÐÐœÐŸÐÐÐ˜Ð˜. ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð¿', '2023-08-26', '1', '1'),
(91, 'FFnOQdbYPYRpwSvfjgvhPYumuIbWgKLXmjCjnHPLZMynNdMFxQ', 'parsavali21.21@gmail.com', 'parsavali2', 'Spoken English', '', '2023-08-28', '1', '1'),
(92, 'Megan Atkinson', 'meganatkinson149@gmail.com', '', 'R programing', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safel', '2023-08-30', '1', '1'),
(93, 'Megan Atkinson', 'meganatkinson149@gmail.com', '', '', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safel', '2023-09-04', '1', '1'),
(94, 'Thank you For your hard work over the years! For t', 'admin@donorsmail.ru\r\n', 'Thank you ', 'IELTS / PTE', 'Thank you For your hard work over the years! For this, we give you the opportunity. https://google.c', '2023-09-04', '1', '1'),
(95, 'Jimmy', 'stevie.pauley@gmail.com', '2544844872', 'PHP ', 'Hi there,\r\nMonthly Seo Services - Professional/ Affordable Seo Services\r\nHire the leading seo market', '2023-09-05', '1', '1'),
(96, 'Joe Andrews', 'dfysuite@earnmorenow.info', '436 1698', '', 'PROVEN, Done-For-You, SOCIAL syndication \r\nSocial Syndication â€“ 100% done-for-you\r\nrank FAST with ', '2023-09-07', '1', '1'),
(97, 'Billy Goldman', 'rpm@solveques.xyz', '(91) 4717-64', 'PHP ', 'Have you ever wondered why so many people donâ€™t make it online?\r\n\r\nItâ€™s not a lack of training.\r', '2023-09-13', '1', '1'),
(98, 'Winston Winder', 'winston.winder78@outlook.com', '53 162 07 90', 'IELTS / PTE', 'Accidental overdose is the #1 cause of death for people aged 18-45 in the United States.\r\n\r\n \r\n\r\nNar', '2023-09-15', '1', '1'),
(99, 'Thank you For your hard work over the years! For t', 'info5@donorsmail.ru\r\n', 'Thank you ', 'PHP ', 'Thank you For your hard work over the years! For this, we give you the opportunity. https://google.c', '2023-09-19', '1', '1'),
(100, 'Diane Laclair', 'fs@vaulemedia.com', '(08) 9033 80', 'PHP ', '\r\nWouldnâ€™t you rather earn passive income by promoting services related to the topic of your websi', '2023-09-20', '1', '1'),
(101, 'Alexander Escobar', 'escobar.alexander12@yahoo.com', '0704-3560724', 'IELTS / PTE', 'I just left you this message on your website contact form at dhyeyacademy.com and I have also sent i', '2023-09-22', '1', '1'),
(102, 'Megan Atkinson', 'meganatkinson149@gmail.com', '617-350-4392', '', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers safely and', '2023-09-23', '1', '1'),
(103, 'James', 'minor.rozella@gmail.com', '5292918445', 'IELTS / PTE', 'Hi there,\r\nMonthly Seo Services - Professional/ Affordable Seo Services\r\nHire the leading seo market', '2023-09-23', '1', '1'),
(104, 'Beulah Greenhalgh', 'beulah.greenhalgh@gmail.com', '42-76-17-22', 'Spoken English', 'TimeSuite is the most advanced Construction and Project ERP ever produced.\r\n\r\nAdvanced because itâ€™', '2023-09-25', '1', '1'),
(105, 'T8WEGN926D9O https://dzen.ru sgjvhnbtcbstfgdjgfbs', 'mail1@donorsmail.ru', '+74959169070', 'Spoken English', 'T8WEGN926D9O https://dzen.ru sgjvhnbtcbstfgdjgfbs', '2023-09-26', '1', '1'),
(106, 'Michael Sinclair', 'msinclair.hivemailers@gmail.com', '(08) 8384 18', '', 'Hello,\r\n  \r\nI was looking at your site and wanted to ask if you would be interested in getting one-h', '2023-09-27', '1', '1'),
(107, 'Okeygorandom https://www.google.com/', 'kepslofe+3445@bk.ru', 'Okeygorand', 'IELTS / PTE', '', '2023-10-04', '1', '1'),
(108, 'Alexandra Cordero', 'monetag@vauleonline.co', '077 1509 800', 'Spoken English', 'Hi,\r\n\r\nAccording to recent reports, digital ad spend in the world is projected to reach US$271.20bn ', '2023-10-08', '1', '1'),
(109, 'Lilia Spruson', 'lilia.spruson56@yahoo.com', '60 189 62 69', 'PHP ', 'Hey,\r\n\r\nWe are testing out a new system where we provide B2B Data for free.\r\n\r\nIt works in every cou', '2023-10-09', '1', '1'),
(110, 'Michael Sinclair', 'msinclair.hivemailers@gmail.com', '(03) 5361 65', '', 'Hello,\r\n  \r\nI was looking at your site and wanted to ask if you would be interested in getting one-h', '2023-10-10', '1', '1'),
(111, 'Okeygorandom https://yandex.by/', 'statsscelt+7785@bk.ru', 'Okeygorand', 'Spoken English', '', '2023-10-16', '1', '1'),
(112, 'Maria Ormond', 'maria@furthertrends.com', '0303-9456535', 'R programing', 'Hey,\r\n\r\nHave you guys seen the new free A.I. tool that turns your website content into videos?\r\n\r\nCh', '2023-10-17', '1', '1'),
(113, 'Leta Brunton', 'leta.brunton15@gmail.com', '0224-4096272', 'PHP ', 'Accidental overdose is the #1 cause of death for people aged 18-45 in the United States.\r\n\r\n \r\n\r\nNar', '2023-10-17', '1', '1'),
(114, 'Thank you For your hard work over the years! For t', 'nicometz503@gmail.com\r\n', 'Thank you ', 'Spoken English', '', '2023-10-18', '1', '1'),
(115, 'Aurelio Hanlon', 'hanlon.aurelio@outlook.com', '03931 89 74 ', 'Spoken English', 'Hello,\r\n\r\nWe noticed dhyeyacademy.com is only listed in 8 out of 2500 directories.\r\n\r\nThis severly i', '2023-10-20', '1', '1'),
(116, 'Rhea Webster', 'rhea.webster@yahoo.com', '0387 7137562', 'R programing', 'Hello to dhyeyacademy.com Webmaster.\r\n\r\nItâ€™s Rhea here, bringing you a quick note about your websi', '2023-10-21', '1', '1'),
(117, 'Della Burdett', 'della.burdett@gmail.com', '026 685 49 1', 'Spoken English', 'Dear to dhyeyacademy.com Admin!\r\n\r\nItâ€™s Della , with a quick thought about your website dhyeyacade', '2023-10-21', '1', '1'),
(118, 'Jim', 'rodolfo.ennor@yahoo.com', '7781916698', '', 'Hi there!\r\nTop Rated SEO Agency. Personalized Service from Dedicated Account Team. ROI Driven. Relat', '2023-11-02', '1', '1'),
(119, 'Alecia Dann', 'dann.alecia@gmail.com', '(31) 7996-27', 'R programing', 'Want to find out how to promote your site without paying for advertising? Check out: ivxxi.com', '2023-11-04', '1', '1'),
(120, 'Michael Sinclair', 'eric.royster@googlemail.com', '(02) 4913 61', 'PHP ', 'Hello,\r\n  \r\nI was looking at your site and wanted to ask if you would be interested in getting one-h', '2023-11-06', '1', '1'),
(121, 'Michael Sinclair', 'cathern.drost@msn.com', '078 6898 899', '', 'Hello,\r\n  \r\nI was looking at your site and wanted to ask if you would be interested in getting one-h', '2023-11-08', '1', '1'),
(122, 'Danielhoups', 'yourmail@gmail.com', '8425685413', 'IELTS / PTE', 'Esperio Ð½Ðµ Ð²Ñ‹Ð²Ð¾Ð´Ð¸Ñ‚ Ð´ÐµÐ½ÑŒÐ³Ð¸? \r\nÐ¡Ð¾Ð¿Ñ€Ð¾Ð²Ð¾Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð¿Ð¾ Ñ‡Ð°Ñ€Ð´Ð¶Ð±ÑÐºÑƒ Ð´Ð¾ ', '2023-11-09', '1', '1'),
(123, 'Libby Evans', 'libbyevans461@gmail.com', '044 877 27 6', 'IELTS / PTE', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers safely and', '2023-11-10', '1', '1'),
(124, 'Markus Oconner', 'oconner.markus29@outlook.com', '06-80007136', 'PHP ', 'To the dhyeyacademy.com Admin. This is Markus and I just found your site at dhyeyacademy.com...\r\n\r\nI', '2023-11-11', '1', '1'),
(125, 'Libby Evans', 'libbyevans461@gmail.com', '03.97.92.78.', 'IELTS / PTE', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers safely and', '2023-11-13', '1', '1'),
(126, 'Sophia Hebblethwaite', 'hebblethwaite.sophia@gmail.com', '60 177 34 98', 'Spoken English', 'Say goodbye to advertising costs and hello to more customers. Go to http://Sophia.tg4.xyz', '2023-11-16', '1', '1'),
(127, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(128, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '${857148834+994306878}', '', '2023-11-16', '1', '1'),
(129, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '/*1*/{{850053238+826290754}}', '2023-11-16', '1', '1'),
(130, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(131, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(132, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '${@var_dump(md5(398347655))};', '', '2023-11-16', '1', '1'),
(133, 'jfeKuGntwi\nexpr 913975785 + 858208990\n', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(134, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(135, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '${920095838+947155092}', '2023-11-16', '1', '1'),
(136, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(137, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(138, 'jfeKuGntwi|expr 932976263 + 876890177 ', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(139, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '${(995169110+819761664)?c}', '2023-11-16', '1', '1'),
(140, '${967872893+894018659}', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(141, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(142, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(143, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(144, 'jfeKuGntwi$(expr 844829707 + 862336606)', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(145, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(146, 'jfeKuGntwi&set /A 949287239+860922065', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(147, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '#set($c=874539082+982305917)${c}$c', '2023-11-16', '1', '1'),
(148, 'jfeKuGntwi', '${921767705+978068259}', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(149, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(150, 'expr 805742370 + 807192680', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(151, '${@var_dump(md5(359169264))};', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(152, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(153, 'jfeKuGntwi', 'NAifLJLDQW', '${805568604+', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(154, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '<%- 996977484+988569452 %>', '2023-11-16', '1', '1'),
(155, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM\"a', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(156, 'jfeKuGntwi', 'NAifLJLDQW\nexpr 868330438 + 848163473\n', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(157, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '${856567513+971638203}', '2023-11-16', '1', '1'),
(158, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '/*1*/{{841004896+804581968}}', '', '2023-11-16', '1', '1'),
(159, 'jfeKuGntwi', 'NAifLJLDQW', 'extractvalue', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(160, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(161, 'jfeKuGntwi', 'NAifLJLDQW|expr 846316239 + 818518643 ', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(162, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '${834206118+911016199}', '', '2023-11-16', '1', '1'),
(163, 'jfeKuGntwi', '${@var_dump(md5(800403171))};', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(164, 'jfeKuGntwi', 'NAifLJLDQW$(expr 947023036 + 858759208)', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(165, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(166, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '${(824721444+859493301)?c}', '', '2023-11-16', '1', '1'),
(167, 'jfeKuGntwi', 'NAifLJLDQW&set /A 962205352+855016523', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(168, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(169, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '#set($c=920098212+956690817)${c}$c', '', '2023-11-16', '1', '1'),
(170, 'jfeKuGntwi', 'NAifLJLDQW', '${@var_dump(', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(171, 'jfeKuGntwi', 'expr 841971765 + 954586041', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(172, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(173, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', '<%- 825235112+874070712 %>', '', '2023-11-16', '1', '1'),
(174, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM\ne', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(175, 'jfeKuGntwi', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(176, 'jfeKuGntwi\"and/**/extractvalue(1,concat(char(126),', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(177, 'extractvalue(1,concat(char(126),md5(1703424339)))', 'NAifLJLDQW', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(178, 'jfeKuGntwi', 'NAifLJLDQW\"and/**/extractvalue(1,concat(char(126),md5(1630356976)))and\"', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(179, 'jfeKuGntwi', 'extractvalue(1,concat(char(126),md5(1651525684)))', 'UWjCOZTaYM', 'ZYBfjcaBTu', '', '2023-11-16', '1', '1'),
(180, 'Susan Karsh', 'porteus.vernita@outlook.com', '06-89484784', 'IELTS / PTE', 'Hello,\r\n\r\nI was on your site today and I wanted to see if you would be open to getting a FREE 7-Day ', '2023-11-20', '1', '1'),
(181, 'John', 'JVhQPd.hqbtd@bakling.click', '1', 'R programing', 'Kamryn Larson', '2023-11-24', '1', '1'),
(182, 'Theresa Smith', 'pansy.nobles81@gmail.com', '0473 98 21 4', '', 'Hello,\r\n\r\nI work for Elebands. \r\n\r\nWe make ultra-thin, fashionable, all day wearable body weight ban', '2023-11-26', '1', '1'),
(183, 'Kairi', 'JvmsAJ.wbmwwt@sandcress.xyz', '1', 'R programing', 'Finn Bautista', '2023-11-27', '1', '1'),
(184, 'Margaret Z. Cole', 'genie@realdollar.xyz', '0382 7087366', 'R programing', 'Speaking this 20 word prayer script will change your life.  í ½í¹\r\n\r\nIt will raise your vibration â', '2023-11-28', '1', '1'),
(185, 'Philomena Hodson', 'philomena.hodson@googlemail.com', '06-99382497', 'R programing', 'Hello,\r\n\r\nWe are a bulk email service. \r\n\r\nWe have very large email lists and can filter it out to y', '2023-11-28', '1', '1'),
(186, 'Kassie Pedigo', 'pedigo.kassie@googlemail.com', '0911 23 77 6', 'IELTS / PTE', 'Want To Eliminate Employee Complaints, Want To Be Known As The Gold Standard In Employee Satisfactio', '2023-11-29', '1', '1'),
(187, 'Susan Karsh', 'maricruz.gwendolen@msn.com', '03332 27 13 ', 'PHP ', 'Hello Again,\r\n\r\nI sent a message a few days ago but Iâ€™m not sure if you received it so I figured I', '2023-11-29', '1', '1'),
(188, 'Theresa Smith', 'hong.oddo97@gmail.com', '0295-9228157', '', 'Hello again,\r\n\r\nI sent a message a few days ago but Iâ€™m not sure if you received it so I figured I', '2023-12-01', '1', '1'),
(189, 'CjsryTWlTDBJwIicJ', 'tCJidI.hqjcqjq@maxeza.click', '1', 'R programing', 'BLQKmbHjwsLthTNkzKPsuv', '2023-12-02', '1', '1'),
(190, 'Jason Wells', 'notification@domainsystems.co', '+1-922-519-3', 'R programing', 'Warning: We are not responsible for any monetary loss, data loss, downgrade in SEO rankings, missed ', '2023-12-04', '1', '1'),
(191, 'Charles Smith', 'gaylord.barrett@outlook.com', '465 0297', 'PHP ', 'Can you imagine how powerful it would be if you had someone that can handle ALL your social syndicat', '2023-12-05', '1', '1'),
(192, 'khHJbSKCMJjOeEdJ', 'xdYhcL.bmbdcdj@borasca.xyz', '1', 'R programing', 'KJlrJNOUnulNUkulmvv', '2023-12-05', '1', '1'),
(193, 'Bette Halford', 'halford.bette@msn.com', '06-74979840', 'PHP ', 'If your company uses promotional products, I have awesome products that your marketing team should k', '2023-12-07', '1', '1'),
(194, 'mike wazera', 'mike@mikewazera.com', '05.73.57.61.', 'Spoken English', 'I have a massive list of people who want to buy things from you, I just need a message to send them.', '2023-12-09', '1', '1'),
(195, 'Harriet Mayon', 'mayon.harriet@outlook.com', '486 1317', '', 'I now offer contact form blasting service. With my DFY service you can either do a targeted blast to', '2023-12-13', '1', '1'),
(196, 'Chassidy Gibbs', 'chassidy.gibbs15@gmail.com', '(07) 3440 81', '', 'Get your unlimited leads for free on LeadsBox.biz', '2023-12-13', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jobpost_mst`
--

CREATE TABLE `jobpost_mst` (
  `job_id` int(5) NOT NULL,
  `job_name` varchar(300) NOT NULL,
  `job_postdate` date NOT NULL,
  `job_appdate` date NOT NULL,
  `city_id` int(10) NOT NULL,
  `job_address` varchar(500) NOT NULL,
  `job_vacancy` varchar(100) NOT NULL,
  `job_ex` varchar(20) NOT NULL,
  `job_ex_year` int(2) NOT NULL,
  `job_ex_month` int(2) NOT NULL,
  `job_nature` varchar(100) NOT NULL,
  `job_stime` time NOT NULL,
  `job_etime` time NOT NULL,
  `edu_id` int(5) NOT NULL,
  `job_edu_specify` varchar(500) NOT NULL,
  `job_des` varchar(1000) NOT NULL,
  `job_salary` varchar(1000) NOT NULL,
  `com_id` varchar(10) NOT NULL,
  `job_active` varchar(5) NOT NULL DEFAULT '1',
  `job_status` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobpost_mst`
--

INSERT INTO `jobpost_mst` (`job_id`, `job_name`, `job_postdate`, `job_appdate`, `city_id`, `job_address`, `job_vacancy`, `job_ex`, `job_ex_year`, `job_ex_month`, `job_nature`, `job_stime`, `job_etime`, `edu_id`, `job_edu_specify`, `job_des`, `job_salary`, `com_id`, `job_active`, `job_status`) VALUES
(1, 'Back Office Management', '2020-08-08', '2020-08-31', 1624, 'GIDC, Opp. Milano Multiplex, Ten Road, Bardoli, Dist: Surat, Gujarat, India 394601', '1', 'Fresher', 0, 0, 'Full Time', '08:00:00', '18:00:00', 1, 'BBA / MBA / B.Com. / M.Com.', 'Senior Account Executive', '20000', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `job_admin`
--

CREATE TABLE `job_admin` (
  `ja_id` int(11) NOT NULL,
  `ja_user` varchar(50) NOT NULL,
  `ja_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_admin`
--

INSERT INTO `job_admin` (`ja_id`, `ja_user`, `ja_password`) VALUES
(1, 'jadmin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `job_applied`
--

CREATE TABLE `job_applied` (
  `ja_id` int(5) NOT NULL,
  `com_id` int(5) NOT NULL,
  `job_id` int(5) NOT NULL,
  `stud_id` int(5) NOT NULL,
  `ja_date` date NOT NULL,
  `ja_status` varchar(5) NOT NULL DEFAULT '1',
  `ja_active` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applied`
--

INSERT INTO `job_applied` (`ja_id`, `com_id`, `job_id`, `stud_id`, `ja_date`, `ja_status`, `ja_active`) VALUES
(1, 1, 1, 1, '2020-08-08', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `job_selected`
--

CREATE TABLE `job_selected` (
  `js_id` int(5) NOT NULL,
  `ja_id` int(5) NOT NULL,
  `job_id` int(5) NOT NULL,
  `js_person` varchar(100) NOT NULL,
  `js_pcontact` varchar(20) NOT NULL,
  `js_address` varchar(400) NOT NULL,
  `js_date` date NOT NULL,
  `js_time` time NOT NULL,
  `js_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_selected_interview`
--

CREATE TABLE `job_selected_interview` (
  `jsi_id` int(5) NOT NULL,
  `ja_id` int(5) NOT NULL,
  `com_id` int(5) NOT NULL,
  `job_post` varchar(20) NOT NULL,
  `stud_id` int(5) NOT NULL,
  `job_salary` varchar(12) NOT NULL,
  `select_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(100) NOT NULL,
  `n_title` varchar(255) NOT NULL,
  `n_des` varchar(255) NOT NULL,
  `n_files` varchar(255) NOT NULL,
  `n_status` varchar(100) NOT NULL DEFAULT '1',
  `n_active` varchar(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_des`, `n_files`, `n_status`, `n_active`) VALUES
(1, 'Calendar', '<pre>\r\nAcedamic Calender 2017-18<a href=\"academic.php\">Click</a>\r\nAcedamic Calender 2018-19Click\r\nAcedamic Calender 2019-20Click\r\nAcedamic Calender 2020-21Click\r\n</pre>', '', '1', '0'),
(2, 'Events:2015-2016', '<pre>\r\nDe-Addiction Programme (Vyashan Mukti Abhiyan)<a href=\"events.php\">Click</a>\r\n\r\nFirst Year Orientation ProgrammeClick\r\n\r\nWomen EmpowermentClick\r\n\r\nA Man & The Genius Of Ramanujhan Maths 2015-2016Click\r\n\r\nAlumni Asociation MeetingClick\r\n\r\nBlood Dona', '', '1', '0'),
(3, ' Question Paper & Answer Key', '<pre>\r\nF.Y.B.Sc. Sem 1\r\nExam Oct 2015(Ques)Click\r\n\r\nS.Y.B.Sc. Sem 3\r\nExam Oct 2015(Ques)Click\r\n\r\nF.Y.B.Sc. Sem 1\r\nExam Oct 2014(Ques)Click\r\n\r\nF.Y.B.Sc. Sem 1\r\nExam Oct 2015(Ans)Click\r\n\r\nS.Y.B.Sc. Sem 3\r\nExam Oct 2015(Ans)Click\r\n\r\nF.Y.B.Sc. Sem 1\r\nExam Oct', '', '1', '0'),
(4, 'Minor Research Project ', 'Click', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `recent_news`
--

CREATE TABLE `recent_news` (
  `r_id` int(5) NOT NULL,
  `r_name` varchar(50) NOT NULL,
  `r_remark` varchar(150) NOT NULL,
  `r_date` date NOT NULL,
  `r_img` varchar(200) NOT NULL,
  `r_status` varchar(5) NOT NULL DEFAULT '1',
  `r_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recent_news`
--

INSERT INTO `recent_news` (`r_id`, `r_name`, `r_remark`, `r_date`, `r_img`, `r_status`, `r_active`) VALUES
(1, 'Ashok  bhavsar', '6.5 band', '2020-07-05', '050720_459758_ashok bhavsar.jpeg', '1', '1'),
(2, 'Henil Patel', '6.5 band', '2020-07-05', '050720_575350_IMG-20200704-WA0002.jpg', '1', '1'),
(3, 'Drashti Patel', '6.5 band', '2020-07-05', '050720_780954_IMG-20200704-WA0022.jpg', '1', '1'),
(4, 'Hani Vyad', '7.0 band', '2020-07-05', '050720_322576_IMG-20200704-WA0003.jpg', '1', '1'),
(5, 'Hiral Desai', '6.5 band', '2020-07-05', '050720_701322_IMG-20200704-WA0004.jpg', '1', '1'),
(6, 'Kejal', '6.5 band', '2020-07-05', '050720_826562_IMG-20200704-WA0021.jpg', '1', '1'),
(7, 'Khyati Patel', '6.0 band', '2020-07-05', '050720_456824_IMG-20200704-WA0005.jpg', '1', '1'),
(8, 'Krishna Shah', '6.5 band', '2020-07-05', '050720_262955_IMG-20200704-WA0020.jpg', '1', '1'),
(9, 'Dr Mahendra Ghoghari', '6.5 band', '2020-07-05', '050720_590947_IMG-20200704-WA0006.jpg', '1', '1'),
(10, 'Parth ', '6.5 band', '2020-07-05', '050720_504154_IMG-20200704-WA0019.jpg', '0', '1'),
(11, 'Manish Shukla', '7.0 band', '2020-07-05', '050720_462567_IMG-20200704-WA0007.jpg', '1', '1'),
(12, 'Parva Shah', '6.5 band', '2020-07-05', '050720_387330_IMG-20200704-WA0018.jpg', '1', '1'),
(13, 'Parav Shah', '6.5 band', '2020-07-05', '050720_903308_IMG-20200704-WA0008.jpg', '1', '1'),
(14, 'Rajendra Patel', '7.0 band', '2020-07-05', '050720_621905_IMG-20200704-WA0009.jpg', '1', '1'),
(15, 'Sweta Patel', '6.5 band ', '2020-07-05', '050720_464717_IMG-20200704-WA0010.jpg', '1', '1'),
(16, 'Shefali Desai', '6.0 ', '2020-07-05', '050720_253881_IMG-20200704-WA0017.jpg', '1', '1'),
(17, 'Tarunkumar Patel', '6.5 band ', '2020-07-05', '050720_583647_IMG-20200704-WA0016.jpg', '1', '1'),
(18, 'Janvi Panchal', '6.0', '2020-07-05', '050720_287142_IMG-20200704-WA0011.jpg', '1', '1'),
(19, 'Tulsi Patel', '6.5', '2020-07-05', '050720_736816_IMG-20200704-WA0012.jpg', '1', '1'),
(20, 'Bhargav', '7.0', '2020-07-05', '050720_612934_IMG-20200704-WA0015.jpg', '1', '1'),
(21, 'Rajvirsinh', '8.0', '2020-07-05', '050720_361848_IMG-20200704-WA0014.jpg', '1', '1'),
(22, 'Tanisha patel', 'Spoken English', '2023-05-31', '260623_798999_Tanisha patel (1).jpg', '0', '1'),
(23, 'Jitendrabhai', 'Canada Visitor Visa', '2023-06-22', '260623_933282_jitendrabhai patel2.jpg', '0', '1'),
(24, 'Minaxiben Patel', 'Canada Visitor Visa', '2023-06-22', '260623_677955_minaxiben  patel2.jpg', '0', '1'),
(25, 'ielts', 'band achievers', '2023-06-12', '260623_670761_Copy of RECENT IELTS BAND ACHIVER.jpg', '0', '1'),
(26, 'canada', 'visitor visa', '2023-06-01', '260623_632363_CANADA VISITOR VISA.jpg', '0', '1'),
(27, 'usa', 'study visa', '2023-06-20', '260623_157512__Krisha Patel (1).jpg', '1', '1'),
(28, 'canada', 'study visa', '2023-06-08', '260623_641251_DEV MISTRY (2).jpg', '0', '1'),
(29, 'usa', 'study visa', '2023-06-01', '260623_761318_Dipen patel.jpg', '1', '1'),
(30, 'usa', 'study visa', '2023-06-07', '260623_326981_Dipen patel.jpg', '0', '1'),
(31, 'usa', 'usa study visa', '2023-06-07', '260623_763910_Harshil Mistry.jpg', '1', '1'),
(32, 'usa', 'study visa', '2023-06-06', '260623_636582_raj patel.jpg', '1', '1'),
(33, 'usa', 'study visa', '2023-06-12', '260623_265233_Disha patel (1).jpg', '1', '1'),
(34, 'usa', 'study visa', '2023-06-14', '260623_625967_Krupa bhakta.jpg', '1', '1'),
(35, 'usa', 'study visa', '2023-06-05', '260623_747108_krins bhakta.jpg', '1', '1'),
(36, 'usa', 'study visa', '2023-06-19', '260623_639819_Nidhi prajapati.jpg', '1', '1'),
(37, 'usa', 'usa study visa', '2023-06-04', '260623_880501_fenil ahir .jpg', '1', '1'),
(38, 'usa', 'study visa', '2023-06-28', '260623_178272_Dhwani patel.jpg', '1', '1'),
(39, 'usa', 'study visa', '2023-06-29', '260623_285504_Richa dakhara.jpg', '1', '1'),
(40, 'usa', 'study visa', '2023-06-29', '260623_561750_Vidhi patel (2).jpg', '1', '1'),
(41, 'Tanisha patel', 'spoken english', '2023-06-01', '260623_998651_Tanisha patel (1).jpg', '1', '1'),
(42, 'Mira bhakta', 'spoken english', '2023-06-01', '260623_482383_Mira Bhakta.jpg', '1', '1'),
(43, 'khushi sing', 'spoken english', '2023-06-06', '260623_746593_Khushi Sing.jpg', '1', '1'),
(44, 'ronak panchal', 'spoken english', '2023-06-13', '260623_488874_Ronak Panchal.jpg', '1', '1'),
(45, 'Alay Patel', 'Spoken English', '2023-06-08', '260623_223692_Alay patel.jpg', '1', '1'),
(46, 'het mistry', 'spoken english', '2023-06-13', '260623_170492_Het Mistry.jpg', '1', '1'),
(47, 'Priyanshi Luhar', 'Spoken English', '2023-06-12', '260623_493532_Priyanshi Luhar.jpg', '1', '1'),
(48, 'Smit Panchal', 'Spoken English', '2023-06-07', '260623_797981_Smit panchal.jpg', '1', '1'),
(49, 'Arshad Rangrej', 'Spoken English', '2023-06-07', '260623_962722_Arshad Rangrej.jpg', '1', '1'),
(50, 'Diya Ahir', 'Spoken English', '2023-06-05', '260623_470640_Diya Ahir.jpg', '1', '1'),
(51, 'Ayush patel', 'Spoken English', '2023-06-12', '260623_498882_Ayush patel.jpg', '1', '1'),
(52, 'Fenil Patel', 'Spoken English', '2023-06-01', '260623_574485_Fenil patel.jpg', '1', '1'),
(53, 'Dev Mistry', 'Canada Study Visa', '2023-06-01', '260623_195313_DEV MISTRY.jpg', '1', '1'),
(54, 'Hetvi Gamit', 'Canada Study Visa', '2023-06-01', '260623_121453_HETVI GAMIT.jpg', '1', '1'),
(55, 'Jay Patel', 'Canada Study Visa', '2023-06-13', '260623_388891_JAY PATEL.jpg', '1', '1'),
(56, 'Raj Prajapati', 'Canada Study visa', '2023-06-06', '260623_828665_RAJ PRAJAPATI.jpg', '1', '1'),
(57, 'Prisha Upadhyay', 'Canada Study Visa', '2023-06-05', '260623_340297_PRISHA UPADHYAY.jpg', '1', '1'),
(58, 'Sagar Parmar', 'Canada', '2023-06-01', '260623_204516_SAGAR PARMAR.jpg', '1', '1'),
(59, 'Mayur Chauhan', 'Canada', '2023-06-20', '260623_688508_Mayur Chauhan.jpg', '1', '1'),
(60, 'Hemal Rama', 'Canada', '2023-06-06', '260623_808726_HEMAL RAMA.jpg', '1', '1'),
(61, 'Krisha shah', 'Canada', '2023-06-29', '260623_751570_Krisha Shah.jpg', '1', '1'),
(62, 'Mitali vyas', '8 band in IELTS', '2023-07-12', '120723_875567_MITALI VYAS (4).jpg', '1', '1'),
(63, 'Raj Vaghela', 'Ielts 8 band', '2023-07-13', '130723_385847_RAJ VAGHELA (3).jpg', '1', '1'),
(64, 'Kaushal Joshi', 'Ielts 6.5 Band', '2023-07-13', '130723_646356_KAUSHAL JOSHI.jpg', '1', '1'),
(65, 'Ritesh Patel', 'Ielts 6.5 Band', '2023-07-13', '130723_125424_RITESH PATEL.jpg', '1', '1'),
(66, 'VIDHI PATEL', 'DUOLINGO 120', '2023-07-26', '260723_346795_VIDHI PATEL (3).jpg', '1', '1'),
(67, 'VANSH PATEL', 'DUOLINGO 130', '2023-07-26', '260723_354552_Vansh Patel.jpg', '1', '1'),
(68, 'NIDHI PRAJAPATI', 'DUOLINGO 105', '2023-07-26', '260723_711593_NIDHI PRAJAPATI (1).jpg', '1', '1'),
(69, 'KRISHA PATEL', 'DUOLINGO 125', '2023-07-26', '260723_832000_KRISHA PATEL (1).jpg', '1', '1'),
(70, 'KRUPA BHAKTA', 'DUOLINGO 110', '2023-07-26', '260723_277515_KRUPA BHAKTA (1).jpg', '1', '1'),
(71, 'SHIV PATEL', 'DUOLINGO 100', '2023-07-26', '260723_307396_SHIV PATEL.jpg', '1', '1'),
(72, 'VISHNU PATEL', 'DUOLINGO 115', '2023-07-26', '260723_357037_VISHNU PATEL.jpg', '1', '1'),
(73, 'ISHA PATEL', 'DUOLINGO 115', '2023-07-26', '260723_146990_ISHA PATEL.jpg', '1', '1'),
(74, 'VRINDA PATEL', 'DUOLINGO 110', '2023-07-26', '260723_803787_VRINDA PATEL.jpg', '1', '1'),
(75, 'HEER PATEL', 'DUOLINGO 115', '2023-07-26', '260723_658176_HEER PATEL .jpg', '1', '1'),
(76, 'HENA PATEL', 'DUOLINGO 125', '2023-07-26', '260723_782186_Brown and Gray Minimalist Live Webinar Instagram Post.jpg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `skill_mst`
--

CREATE TABLE `skill_mst` (
  `skill_id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `skill_des` varchar(300) NOT NULL,
  `skill_status` varchar(5) NOT NULL DEFAULT '1',
  `skill_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill_mst`
--

INSERT INTO `skill_mst` (`skill_id`, `job_id`, `skill_des`, `skill_status`, `skill_active`) VALUES
(1, 1, 'PHP5', '1', '1'),
(2, 1, 'HTML', '1', '1'),
(3, 1, 'CSS', '1', '1'),
(4, 1, 'JAVASCRIPT', '1', '1'),
(5, 2, 'Communication', '1', '1'),
(6, 2, 'Flexibility', '1', '1'),
(7, 2, 'Leadership', '1', '1'),
(8, 0, 'Communication', '1', '1'),
(9, 0, 'Communication', '1', '1'),
(10, 0, 'TALLY', '1', '1'),
(11, 0, 'Node js', '1', '1'),
(12, 0, 'Node js', '1', '1'),
(13, 3, 'PHP', '1', '1'),
(14, 4, 'Communication', '1', '1'),
(15, 4, 'Java', '1', '1'),
(16, 1, 'Communication', '1', '1'),
(17, 1, 'Coordination', '1', '1'),
(18, 1, 'Accounting', '1', '1'),
(19, 1, 'Management', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `slider_mst`
--

CREATE TABLE `slider_mst` (
  `sd_id` int(50) NOT NULL,
  `sd_heading` varchar(50) NOT NULL,
  `sd_img` varchar(255) NOT NULL,
  `sd_status` varchar(3) NOT NULL DEFAULT '1',
  `sd_active` varchar(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_mst`
--

INSERT INTO `slider_mst` (`sd_id`, `sd_heading`, `sd_img`, `sd_status`, `sd_active`) VALUES
(1, 'Main gate', '1.JPG', '0', '1'),
(2, 'DCA means Dhyey Career Academy', 'Marisha Final.JPG', '0', '1'),
(3, 'French', 'Frenchg.JPG', '0', '1'),
(26, 'Manish Shukla', 'Manish Shukla.JPG', '0', '1'),
(27, 'Germany', 'banner-01.jpg', '0', '1'),
(28, 'Germany', 'germany-3study.jpg', '0', '1'),
(29, 'IELTS', 'modules-touchstone-educationals-study-abroad-pte-spoken-english.jpg', '0', '1'),
(30, 'Study', 'Where to study.JPG', '0', '1'),
(31, 'Dream Career in Germany', 'Website-banner-5.jpg', '0', '1'),
(32, 'usa visa', 'Copy of vidhi patel (1).jpg', '0', '1'),
(33, 'usa study visa', 'Krupa bhakta.jpg', '0', '1'),
(34, 'Mock test', 'mock test.jpg', '0', '1'),
(35, 'usa study', '_Krisha Patel (1).jpg', '0', '1'),
(37, 'Maingate', '1.jpg', '1', '1'),
(38, 'college garden', '2.jpg', '1', '1'),
(39, 'college', '3.jpg', '0', '1'),
(40, 'xyz', '1.jpg', '0', '1'),
(41, 'college campus', 'bg_2.jpg', '0', '1'),
(42, 'test', '9fim2na9j5sr24we68tg.jpg', '0', '1'),
(43, 'college', '3.jpg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `s_type` varchar(100) NOT NULL,
  `s_status` varchar(50) NOT NULL DEFAULT '1',
  `s_active` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `designation`, `subject`, `email`, `img`, `s_type`, `s_status`, `s_active`) VALUES
(1, '', '', '', '', '', '', '0', '1'),
(2, 'Mr. A.G.Parmar', 'Assistant Professor', 'Bio-Science', 'arjunsinh06@yahoo.com', '2.jpg', 'Teaching', '1', '1'),
(3, 'Mr.H.J.Parekh', 'Senior clerk', '-', 'NA@NA', 'N1.jpg', 'Non-Teaching', '1', '1'),
(4, 'Ms.A.M.Patel', 'Lab Technician', '-', 'NA@NA', 'N2.jpg', 'Non-Teaching', '1', '1'),
(6, 'Ms. N.M.Chaudhari', 'Lab Assistant', '-', 'NA@NA', 'N3.jpg', 'Non-Teaching', '1', '1'),
(7, 'Mr. R.B.Gamit', 'Assistant Professor', 'Chemistry', 'rameshbhai.gamit@yahoo.in', '3.jpg', 'Teaching', '1', '1'),
(8, 'Mr.N.B.Patel', 'Assistant Professor', 'Chemistry', 'patelnavinbhaib@gmail.com', '4.jpg', 'Teaching', '1', '1'),
(9, 'Mr.K.N.Patel', 'Assistant Professor', 'Physics', 'kanaiyalalpatel10@yahoo.com', '5.jpg', 'Teaching', '1', '1'),
(10, 'Mr. A.K.Dhyani', 'Assistant Professor', 'Physics', 'dhyanianil@yahoo.com', '6.jpg', 'Teaching', '1', '1'),
(11, 'Mrs.P.H. Patel', 'Assistant Professor', 'Chemistry', 'phpatel654@gmail.com', '7.jpg', 'Teaching', '1', '1'),
(12, 'Mr.K.D.Patel', 'Assistant Professor', 'Physics', 'patelkd1954@gmail.com', '8.jpg', 'Teaching', '1', '1'),
(13, 'Dr. Y.G.Mansur', 'Assistant Professor', 'Physics', 'yunusmansur@yahoo.com', '9.jpg', 'Teaching', '1', '1'),
(14, 'Dr.B.N. Gamit', 'Assistant Professor', 'Chemistry', 'drbngamit@gmail.com', '10.jpg', 'Teaching', '1', '1'),
(15, 'Dr. J.R.Patel', 'Assistant Professor', 'Bio-Science', 'jenirpatel@yahoo.co.in', '11.jpg', 'Teaching', '1', '1'),
(16, 'Dr.H.M.Patel', 'Assistant Professor', 'Chemistry', 'hsps21@gmail.com', '12.jpg', 'Teaching', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE `student_reg` (
  `stud_id` int(11) NOT NULL,
  `stud_fname` varchar(200) NOT NULL,
  `stud_mname` varchar(200) NOT NULL,
  `stud_lname` varchar(200) NOT NULL,
  `stud_gender` varchar(10) NOT NULL,
  `stud_email` varchar(255) NOT NULL,
  `stud_password` varchar(100) NOT NULL,
  `stud_mobile` varchar(30) NOT NULL,
  `edu_id` int(5) NOT NULL,
  `stud_edu_specify` varchar(100) NOT NULL,
  `stud_ex` varchar(100) NOT NULL,
  `stud_ex_year` varchar(100) NOT NULL,
  `stud_ex_month` int(5) NOT NULL,
  `city_id` int(5) NOT NULL,
  `stud_address` varchar(500) NOT NULL,
  `stud_resume` varchar(500) NOT NULL,
  `stud_img` varchar(500) NOT NULL,
  `stud_verify` varchar(5) NOT NULL DEFAULT '0',
  `stud_active` varchar(5) NOT NULL DEFAULT '1',
  `stud_status` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_reg`
--

INSERT INTO `student_reg` (`stud_id`, `stud_fname`, `stud_mname`, `stud_lname`, `stud_gender`, `stud_email`, `stud_password`, `stud_mobile`, `edu_id`, `stud_edu_specify`, `stud_ex`, `stud_ex_year`, `stud_ex_month`, `city_id`, `stud_address`, `stud_resume`, `stud_img`, `stud_verify`, `stud_active`, `stud_status`) VALUES
(1, 'Dhvanil', 'Kalpeshbhahi ', 'Patel', 'Male', 'dhvanilpatel2518@gmail.com', '123', '9737262965', 1, 'BCA', 'Experience', '3', 6, 1624, 'Pipodara ', '230720_740318_9fim2na9j5sr24we68tg.jpg', '230720_775830_dk.png', '1', '1', '1'),
(2, 'Mulchand', 'S', 'Sen', 'Male', 'mulchand.sen16@gmail.com', '123+321', '9979156055', 2, 'MBA', 'Experience', '10', 0, 0, 'Nizar', '230720_706877_Applicationform.pdf', '230720_479205_Fees Payment-1.jpg', '1', '1', '1'),
(3, 'Sihvkumar', 'S', 'Sen', 'Male', 'mulchand.sen@gmail.com', '123+321', '9428747463', 1, 'BBA', 'Experience', '1', 6, 396, 'Bardoli', '240720_295185_Alay - IELTS Confirmation Receipt.pdf', '240720_352878_Koala.jpg', '0', '1', '1'),
(4, 'Shivkumar', 'S', 'Sen', 'Male', 'mulchand.sen16@gmail.com', '123+321', '9428747463', 1, 'BBA', 'Experience', '1', 2, 396, 'Nizar, Bardoli', '240720_375435_Feedback Form - Expert Session.docx', '240720_940171_123.jpg', '0', '1', '1'),
(5, 'Dhvanil', 'Kalpeshbhai', 'Patel', 'Male', 'study2542@gmail.com', 'Dk25', '9737262965', 1, 'BCA', 'Experience', '1', 6, 396, 'pipodara', '070820_525565_IMG-20200806-WA0004.jpg', '070820_401573_IMG-20200802-WA0001.jpg', '0', '1', '1'),
(6, 'Dhvanil', 'Kalpeshbhai', 'Patel', 'Male', 'study2542@gmail.com', '123', '9737262965', 1, 'BCA', 'Fresher', '0', 0, 396, 'pipodara', '070820_208667_IMG-20200806-WA0003.jpg', '070820_125752_IMG-20200804-WA0008.jpg', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stud_skill`
--

CREATE TABLE `stud_skill` (
  `sskill_id` int(5) NOT NULL,
  `sskill_des` varchar(100) NOT NULL,
  `stud_id` varchar(10) NOT NULL,
  `sskill_status` varchar(5) NOT NULL DEFAULT '1',
  `sskill_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud_skill`
--

INSERT INTO `stud_skill` (`sskill_id`, `sskill_des`, `stud_id`, `sskill_status`, `sskill_active`) VALUES
(1, 'PHP', '1', '1', '1'),
(2, 'Node js', '1', '1', '1'),
(3, 'JAVASCRIPT', '1', '1', '1'),
(4, 'JQUERY', '1', '1', '1'),
(5, 'AJAX', '1', '1', '1'),
(6, 'Communication', '2', '1', '1'),
(7, 'Leadership', '2', '1', '1'),
(8, 'Team Building', '2', '1', '1'),
(9, 'Communication', '3', '1', '1'),
(10, 'Leadership', '3', '1', '1'),
(11, 'Team Player', '3', '1', '1'),
(12, 'Communication', '4', '1', '1'),
(13, 'HTML', '5', '1', '1'),
(14, 'bootstrap ', '5', '1', '1'),
(15, 'PHP', '6', '1', '1'),
(16, 'ajax', '6', '1', '1'),
(17, 'codeigniter', '6', '1', '1'),
(18, 'Laravel', '6', '1', '1'),
(19, 'I Can Hold My Own', '0', '1', '1'),
(20, 'I Can Hold My Own', '0', '1', '1'),
(21, 'I Can Hold My Own', '0', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `success_story_mst`
--

CREATE TABLE `success_story_mst` (
  `ssm_id` int(5) NOT NULL,
  `ssm_title` varchar(50) NOT NULL,
  `ssm_date` date NOT NULL,
  `ssm_des` varchar(200) NOT NULL,
  `ssm_img` varchar(255) NOT NULL,
  `ssm_active` varchar(5) NOT NULL DEFAULT '1',
  `ssm_status` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `success_story_mst`
--

INSERT INTO `success_story_mst` (`ssm_id`, `ssm_title`, `ssm_date`, `ssm_des`, `ssm_img`, `ssm_active`, `ssm_status`) VALUES
(1, 'VTCBBs', '2020-07-13', 'Student Talk Show', '130720_245914_img5.jpg', '1', '0'),
(2, 'Canada Visa Approval ', '2019-11-01', 'Received scholarship for Ph.D by University of Waterloo, Canada.', '160720_719088_Manishkumar Shukla.JPG', '1', '1'),
(3, 'Canada Visa Approval  May 2020 Intake', '2020-03-15', 'Sweta Patel our proud SDS student got visa approval for May 2020 intake.', '160720_557942_rsz_sweta_1.jpg', '1', '1'),
(4, 'Canada Visa Approval  May 2020 Intake', '2020-03-15', 'Sweta Patel our proud SDS student got visa approval for May 2020 intake.', '160720_551541_Sweta 1.JPG', '1', '0'),
(5, 'Visa Approval  for Canada', '2019-10-24', 'Canada Visa with 4 years GAP', '160720_923053_Tarun.JPG', '1', '1'),
(6, 'Our Success Stories', '2019-06-02', 'All students', '160720_672423_Congratulations.JPG', '1', '1'),
(7, 'SDS Band in first attempt', '2019-09-20', '6.5 Band overall with at least 6 in each in IELTS.', '160720_888974_Hiral Desai.JPG', '1', '1'),
(8, 'IELTS Achiever', '2019-10-20', 'Drashti Patel', '160720_725655_Drashti IELTS.JPG', '1', '1'),
(9, 'IELTS Achiever', '2019-10-20', 'SDS Band score achiever - Sweta Patel', '160720_495120_Sweta Patel.JPG', '1', '1'),
(10, 'Canada Visa Approval', '2019-01-20', 'Our proud SDS student studying in Canada.', '160720_152104_Parth Windsor Admission.JPG', '1', '1'),
(11, 'IELTS Achiever', '2019-03-28', 'IELTS SDS Band Achiever', '160720_173235_Krishna Shah.JPG', '1', '1'),
(12, '6.5 SDS Band in IELTS', '2021-04-02', 'Congratulations Serene Desai', '020421_244083_Serene Desai.JPG', '1', '1'),
(13, '6.5 SDS Band in IELTS', '2021-04-02', 'Congratulations Jay !', '020421_491009_Jay Desai.JPG', '1', '1'),
(14, 'Congratulations for TRU Admission', '2021-03-23', 'Congratulations Jenish for TRU Admission.', '020421_527564_TRU Admission.JPG', '1', '1'),
(15, '2021 Success Story', '2021-03-17', 'The success story at the beginning of the year.', '020421_746359_B2.JPG', '1', '1'),
(16, 'Heena Chauhan ', '2021-01-01', '	Canada Visa Approval', '280821_814267_HEENA CHAUHAN-01.jpg', '1', '0'),
(17, 'Canada Visa Approval 2022', '2022-03-01', 'Congratulation Gaurav Tarasariya for Canada study visa approval. ', '220222_887330_Gaurav Tarasariya.png', '1', '1'),
(18, 'Canada Visa Approval 2022', '2022-03-01', 'Congratulation Benaifer Mirzan for Canada study visa approval. ', '220222_411599_Benaifer Mirzan.png', '1', '1'),
(19, 'Canada Visa Approval 2022', '2022-02-12', 'Congratulation Swetang Patel for Canada study visa approval.', '220222_870096_Swetang Patel.png', '1', '1'),
(20, 'Canada Visa Approval 2022', '2022-01-04', 'Congratulation Gracy Mistry for Canada study visa approval.', '220222_921105_Gracy Mistry.png', '1', '1'),
(21, 'Canada Visa Approval 2022', '2022-02-02', 'Congratulation Harsh Patel for Canada study visa approval. ', '220222_526423_Harsh Patel (3).png', '1', '1'),
(22, 'Canada Visa Approval 2022', '2022-02-15', 'Congratulation Pankaj Sabhaya for Canada study visa approval. ', '220222_919309_Pankaj Sabhaya.png', '1', '1'),
(23, 'Canada Visa Approval 2022', '2022-02-06', 'Congratulation Swapnili Patel for Canada study visa approval.', '220222_870340_Swapanili Patel.png', '1', '1'),
(24, 'Congratulations for Canada Visa Approval 2022', '2022-03-31', 'Congratulations Drashti Patel from Surat.', '310322_816215_Drashti Patel.png', '1', '1'),
(25, 'Congratulations for Canada Visa Approval 2022', '2022-07-10', 'Congratulation Smit Patel for Canada Study  Visa approval ', '120722_589537_Smit Patel.png', '1', '1'),
(26, 'Duolingo Score', '2022-03-07', 'Congratulation Hemanshu Hire for getting 110 score in Duolingo. ', '071122_538084_Hemanshu hire.png', '1', '1'),
(27, 'Canada Visa Approval 2022', '2022-07-04', 'Congratulation Arkapriya Majumder for Canada study visa approval.', '071122_963512_Arkapriya Majumder (1).png', '1', '1'),
(28, 'IELTS Band Score', '2022-08-31', 'Congratulations Vinay Patel for scoring SDS Bands in IELTS.', '071122_637009_Vinay Patel.png', '1', '1'),
(29, 'Canada Visa Approval 2022', '2022-09-12', 'Congratulation Vansh Desai for Canada study visa approval.', '071122_544076_Vansh Desai (1).png', '1', '1'),
(30, 'IELTS Band Score', '2022-05-23', 'Congratulation Vidhi Tailo for getting SDS Band score in IELTS.', '071122_135749_Vidhi Tailor (4).png', '1', '1'),
(31, 'Duolingo Score', '2022-08-15', 'Congratulations Abhi Patel for getting 120 Score in Duolingo.', '071122_625572_Abhi Patel (1).png', '1', '1'),
(32, 'IELTS Band Score', '2022-05-30', 'Congratulation Pranay Chauhan for getting SDS Band in IELTS.', '071122_463122_Pranay Chauhan.png', '1', '1'),
(33, 'Canada Visa Approval 2022', '2022-07-29', 'Congratulation Surbhi Patel for Canada study visa approval.', '071122_501755_Surbhi Patel.png', '1', '1'),
(34, 'Canada Visa Approval 2022', '2022-09-13', 'Congratulation Raj Mistry for Canada study visa approval.', '071122_556141_Raj Mistry.png', '1', '1'),
(35, 'Canada Visa Approval 2022', '2022-08-04', 'Congratulation Mayank Vaishnav for Canada study visa approval.', '071122_424731_Mayank Vaishnav.png', '1', '1'),
(36, 'Duolingo Score', '2022-08-08', 'Congratulation  Krisha Patel for Scoring 125 in Duolingo.', '071122_821159_Krisha patel (2).png', '1', '1'),
(37, 'IELTS Band Score', '2022-07-19', 'Congratulation Priyanshi Patel for getting SDS band in IELTS.', '071122_978532_Priyanshi Patel (3).png', '1', '1'),
(38, 'Canada Visa Approval 2022', '2022-08-31', 'Congratulation Parth Chosla for Canada study visa approval.', '071122_152356_Parth chosla (1000 Ã— 500 px).png', '1', '1'),
(39, 'Duolingo Score', '2022-10-11', 'Congratulations Priya Patel for getting 125 score in Duolingo.', '071122_722325_Priya Patel.png', '1', '1'),
(40, 'IELTS Band Score', '2022-06-29', 'Congratulation Ansh Mahale for getting SDS band score in IELTS .', '071122_665694_Ansh Mahale.png', '1', '1'),
(41, 'Canada Visa Approval 2022', '2022-08-07', 'Congratulation Rakshit Patel for Canada study visa approval.', '071122_509338_Rakshit Patel.png', '1', '1'),
(42, 'IELTS Band Score', '2022-09-12', 'Congratulations Divya KHatri for getting SDS Score in IELTS.', '071122_470676_Divya Khatri (1).png', '1', '1'),
(43, 'Canada Visa Approval 2022', '2022-10-31', 'Congratulation Moxita Shah for Canada study visa approval.', '071122_163047_Moxita Visa.png', '1', '1'),
(44, 'IELTS Band Score', '2022-09-05', 'Congratulation Harsh Chaudhari for getting SDS band score in IELTS.', '071122_140769_Harsh Chaudhari.png', '1', '1'),
(45, 'Duolingo Score', '2022-09-29', 'Congratulation Raj Patel for scoring 120 in Duolingo.', '071122_156166_Raj Patel.png', '1', '1'),
(46, 'Canada Visa Approval 2022', '2022-10-03', 'Congratulation Tanishka Prajapati for Canada study visa approval.', '071122_324406_Tanishka Prajapati (3).png', '1', '1'),
(47, 'Canada Visa Approval 2022', '2022-08-01', 'Congratulation Abhi Patel for UK study visa approval.', '081122_913910_Abhi Patel (5).png', '1', '1'),
(48, 'IELTS Band Score', '2022-09-29', 'Congratulation Abhishek Panchal for getting SDS band score in IELTS.', '081122_626907_Abhishek Panchal (1).png', '1', '1'),
(49, 'IELTS Band Score', '2022-08-30', 'Congratulation Chirag Modi for getting SDS band score in IELTS.', '081122_566402_Chirag Modi.png', '1', '1'),
(50, 'Canada Visa Approval 2022', '2022-08-15', 'Congratulation Dipesh Mistry for CANADA Spouse Visa.', '081122_448814_Dipesh Mistry - Spouse Visa.png', '1', '1'),
(51, 'IELTS Band Score', '2022-07-11', 'Congratulation Dhwani Patel for getting SDS band in IELTS.', '081122_875211_Dhwani Patel.png', '1', '1'),
(52, 'IELTS Band Score', '2022-10-10', 'Congratulation Hari Patel for getting SDS score Band in IELTS.', '081122_123509_Hari Patel (2).png', '1', '1'),
(53, 'IELTS Band Score', '2022-09-28', 'Congratulation Hetvi Gamit for scorring SDS band in IELTS.', '081122_638642_Hetvi Gamit.png', '1', '1'),
(54, 'IELTS Band Score', '2022-07-25', 'Congratulation Karan Suvarna for getting SDS score in IELTS.', '081122_446037_Karan.jpg', '1', '1'),
(55, 'IELTS Band Score', '2022-08-31', 'Congratulation Khushbu Kanabar for getting SDS band score in IELTS.', '081122_652077_Khushbu Kanabar.png', '1', '1'),
(56, 'IELTS Band Score', '2022-05-09', 'Congratulation Kishan Patel for getting SDS band score in IELTS.', '081122_324268_Kishan Patel.jpg', '1', '1'),
(57, 'IELTS Band Score', '2022-09-29', 'Congratulation Krins Bhakta for getting SDS band score in IELTS.', '081122_154790_Krinsh Bhakta.png', '1', '1'),
(58, 'IELTS Band Score', '2022-09-13', 'Congratulation Nikhil Patel for getting SDS Band in IELTS.', '081122_166311_Nikhil Patel (2).png', '1', '1'),
(59, 'IELTS Band Score', '2022-10-17', 'Congratulation Parva Desai for getting SDS Band in IELTS.', '081122_792920_Parva Desai.png', '1', '1'),
(60, 'IELTS Band Score', '2022-09-29', 'Congratulation Prashant Shukla for getting SDS Band in IELTS.', '081122_456729_Prashant Shukla.png', '1', '1'),
(61, 'IELTS Band Score', '2022-08-16', 'Congratulation Prativ Patel for getting SDS Band in IELTS.', '081122_935438_Prativ Patel (1).png', '1', '1'),
(62, 'IELTS Band Score', '2022-09-12', 'Congratulation Prisha Upadhyay for getting SDS Band in IELTS.', '081122_484185_Prisha Upadhyay.png', '1', '1'),
(63, 'IELTS Band Score', '2022-07-27', 'Congratulation Priyanshi Patel for getting SDS Band in IELTS.', '081122_634870_Priyanshi Patel (3).png', '1', '1'),
(64, 'IELTS Band Score', '2022-10-03', 'Congratulation Sahil Solanki for getting SDS Band in IELTS.', '081122_366102_Sahil Solanki.png', '1', '1'),
(65, 'IELTS Band Score', '2022-10-17', 'Congratulation Sanjeet Nikam for getting SDS Band in IELTS.', '081122_153846_Sanjeet Nikam.png', '1', '1'),
(66, 'IELTS Band Score', '2022-07-20', 'Congratulation Shruti Patel for getting SDS Band in IELTS.', '081122_974481_Shruti Patel.png', '1', '1'),
(67, 'IELTS Band Score', '2022-10-10', 'Congratulation Sufiyan Kureshi for getting SDS Band in IELTS.', '081122_518658_Sufiyan.png', '1', '1'),
(68, 'IELTS Band Score', '2022-10-10', 'Congratulation Uzair Killedar for getting SDS Band in IELTS.', '081122_159235_Uzair Killedar (2).png', '1', '1'),
(69, 'IELTS Band Score', '2022-10-19', 'Congratulation Priya Patel for getting SDS Band in IELTS.', '081122_338095_WhatsApp Image 2022-10-20 at 8.03.38 AM.jpeg', '1', '1'),
(70, 'Canada Visa Approval 2022', '2022-11-07', 'Congratulation Janki Patel for Canada study visa approval.', '081122_432568_Janki Patel.png', '1', '1'),
(71, 'IELTS Band Score', '2022-11-09', 'Congratulations Krupa Bhakta for getting SDS Score in IELTS. Fastest Result in IELTS. Preparation within 2 weeks. Proud student of DCA.', '101122_246730_WhatsApp Image 2022-11-09 at 4.46.51 PM.jpeg', '1', '1'),
(72, 'canada', '2023-06-01', 'visa', '260623_437487_Copy of Hemal Rama (1).jpg', '1', '1'),
(73, 'canada', '2023-06-21', 'visitor visa', '260623_565106_Copy of SURESH PATEL.jpg', '1', '1'),
(74, 'ielts', '2023-06-13', 'band', '260623_537132_VRUTIK PANCHAL.jpg', '1', '1'),
(75, 'usa', '2023-06-07', 'visa', '260623_331697__USA visa 2023.jpg', '1', '1'),
(76, 'ielts', '2023-06-13', 'band', '260623_978159_LISTENING 8.5.jpg', '1', '1'),
(77, 'ielts', '2023-06-07', 'band', '260623_724247_RISHITA MAKWANA.jpg', '1', '1'),
(78, 'canada', '2023-06-08', 'visitor visa', '260623_522217_KANTABEN PRAJAPATI.jpg', '1', '1'),
(79, 'canada', '2023-06-07', 'visitor visa', '260623_481549_Hetal PATEL(ANAND) (1).jpg', '1', '1'),
(80, 'canada', '2023-06-08', 'visa', '260623_953657_DIVYA PRAJAPATI.jpg', '1', '1'),
(81, 'Canada Visitor Visa', '2023-07-02', 'Visitor Visa', '040723_309157_JITENDRABHAI PATEL (1).jpg', '1', '1'),
(82, 'Canada Visitor Visa', '2023-07-02', 'Visitor Visa', '040723_605763_JITENDRABHAI PATEL (1).jpg', '1', '1'),
(83, 'Usa Study Visa', '2023-07-02', 'Study Visa', '040723_751601_Copy of vidhi patel (1).jpg', '1', '1'),
(84, 'IELTS BAND', '2023-07-04', 'BAND', '040723_460368_FENIL AHIR (3).jpg', '1', '1'),
(85, 'IELTS ', '2023-07-03', 'BAND', '040723_265381_ROHAN PATEL (2).jpg', '1', '1'),
(86, 'US STUDY VISA', '2023-07-04', 'US STUDY VISA', '040723_695327_KRUPA BHAKTA.jpg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `lastupdatedate` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `username`, `emailid`, `password`, `usertype`, `lastupdatedate`, `status`) VALUES
(1, 'ronak', 'ronak@gmail.com', '123', 'admin', '2020-06-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_mst`
--

CREATE TABLE `teacher_mst` (
  `t_id` int(5) NOT NULL,
  `t_fname` varchar(20) NOT NULL,
  `t_mname` varchar(20) NOT NULL,
  `t_lname` varchar(20) NOT NULL,
  `t_designation` varchar(20) NOT NULL,
  `t_info` varchar(100) NOT NULL,
  `t_mobile_no` varchar(12) NOT NULL,
  `t_email` varchar(255) NOT NULL,
  `t_facebook_url` varchar(255) NOT NULL,
  `t_twitter_url` varchar(255) NOT NULL,
  `t_linkedin_url` varchar(255) NOT NULL,
  `t_instgram_url` varchar(255) NOT NULL,
  `t_status` varchar(5) NOT NULL DEFAULT '1',
  `t_active` varchar(5) NOT NULL DEFAULT '1',
  `t_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_mst`
--

INSERT INTO `teacher_mst` (`t_id`, `t_fname`, `t_mname`, `t_lname`, `t_designation`, `t_info`, `t_mobile_no`, `t_email`, `t_facebook_url`, `t_twitter_url`, `t_linkedin_url`, `t_instgram_url`, `t_status`, `t_active`, `t_img`) VALUES
(4, 'Dr Mulchand', 'S', 'Sen', 'Founder & CEO', 'Certified IELTS Trainer\r\nCertified Career Counselor\r\nCertified Zone Trainer', '9979156055', 'mulchand.sen16@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '0', '1', 'WhatsApp Image 2021-08-01 at 10.42.50 AM (1).jpeg'),
(5, 'Dhvanil', 'k', 'Patel', 'Prof', 'PHP Developer ASP Developer', '9737262965', 'dhvanilpatel2542@gmail.com', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', '0', '1', 'Dwanil.JPG'),
(6, 'Rushil', 'k', 'Patel', 'Eng', 'Auto Mobile ', '9090903220', 'rushil@gmail.com', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', '0', '1', 'bg_2.jpg'),
(7, 'Dr. Ronak', 'K', 'Panchal', 'Faculty & Advisor', 'Advisor & IT Professional', '9898257016', 'dr.ronak.k.panchal@gmail.com', 'https://www.linkedin.com/in/ronak-panchal-phd/', 'https://www.linkedin.com/in/ronak-panchal-phd/', 'https://www.linkedin.com/in/ronak-panchal-phd/', 'https://www.linkedin.com/in/ronak-panchal-phd/', '0', '1', 'my (3).png'),
(8, 'Miral', '.', 'Patel', 'English Faculty', 'Faculty', '9898989898', 'NILESH1728SONAL@GMAIL.COM', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '0', '1', 'tuxpi.com.1593883062.jpg'),
(9, 'Dilshad', '.', 'Patel', 'IELTS Teacher', 'IELTS Teacher', '9773049023', 'D.patel_04@hotmail.com', 'https://www.tuxpi.com/photo-effects/shape-tool', 'https://www.tuxpi.com/photo-effects/shape-tool', 'https://www.tuxpi.com/photo-effects/shape-tool', 'https://www.tuxpi.com/photo-effects/shape-tool', '0', '1', 'tuxpi.com.1608271356.jpg'),
(10, 'Dr. Ronak', 'K', 'Panchal', 'Associate Professor', 'Expert in Data Science', '9898257016', 'ronakvtcbb@gmail.com', 'https://linkedin.com/in/ronak-panchal-phd', 'https://linkedin.com/in/ronak-panchal-phd', 'https://linkedin.com/in/ronak-panchal-phd', 'https://linkedin.com/in/ronak-panchal-phd', '0', '1', 'mypngphoto.png'),
(11, 'PIYUSH', 'ASHOKBHAI', 'SHAH', 'IELTS TEACHER', 'FACULTY', '9408024151', 'piyush3378@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '0', '1', 'WhatsApp Image 2021-08-28 at 10.05.16 AM.jpeg'),
(12, 'TRUPTI', 'KULDIPSINH', 'GOHIL', 'IELTS TEACHER', 'FACULTY', '7016459965', 'trupti36@yahoo.com', 'http://instagram.com/pandaxnation', 'http://instagram.com/pandaxnation', 'http://instagram.com/pandaxnation', 'http://instagram.com/pandaxnation', '0', '1', 'WhatsApp Image 2021-08-28 at 10.24.25 AM.jpeg'),
(13, 'JAY', 'RAKESHKUMAR', 'PATEL', 'IELTS TEACHER', 'FACULTY', '7016459965', 'jaypatel7769@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '0', '1', 'WhatsApp Image 2021-08-28 at 10.31.13 AM.jpeg'),
(14, 'JAY', 'R', 'PATEL', 'IELTS TEACHER', 'FACULTY', '7016459965', 'jaypatel7769@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'http://instagram.com/pandaxnation', '0', '1', 'jai.jpg'),
(15, 'TRUPTI', 'K', 'GOHIL', 'IELTS TEACHER', 'FACULTY', '6353054439', 'trupti36@yahoo.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '1', '1', 'WhatsApp Image 2021-08-28 at 10.24.25 AM.jpeg'),
(16, 'PIYUSH', 'A', 'SHAH', 'IELTS TEACHER', 'FACULTY', '9408024151', 'piyush3378@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '0', '1', 'WhatsApp Image 2021-08-28 at 10.05.16 AM.jpeg'),
(17, 'JANVI', 'D', 'PARMAR', 'IELTS TEACHER', 'FACULTY\r\n\r\n', '9898938580', 'janviparmar8580@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '0', '1', 'WhatsApp Image 2021-08-28 at 11.43.27 AM.jpeg'),
(18, 'VISHWA', 'H', 'GANDHI', 'IELTS TEACHER', 'FACULTY', '7096022621', 'vishgandhi99@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '0', '1', 'WhatsApp Image 2021-08-28 at 11.51.11 AM.jpeg'),
(19, 'AMIT', 'G', 'MISTRY', 'DESIGNER ', 'FACULTY', '7016054351', 'amitmistry916@gmail.com', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', 'https://m.facebook.com/?_rdr', '0', '1', '_DSC0079-01.jpeg'),
(20, 'Divyesh', 'A', 'Patel', 'Admin Staff', 'Admin Staff', '9909839576', 'pateldivyesh869@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.25.00 AM.jpeg'),
(21, 'Mitali', 'B', 'Parmar', 'Admin Staff', 'Faculty', '7698095439', 'Parmarmishti@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.53 AM.jpeg'),
(22, 'Karan', 'R', 'Patel', 'Admin Staff', 'Admin Staff', '9023571259', 'patel.karan0496@gmail.com', ' https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (7).jpeg'),
(23, 'Jay', 'A', 'Barot', 'Admin Staff', 'Admin staff', '9664632204', 'jayabhishek@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM.jpeg'),
(24, 'Urvashi', 'N', 'Patel', 'Admin Staff', 'Admin Staff', '7567813055', 'up006729@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', ' https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (6).jpeg'),
(25, 'Dhruvi', 'A', 'Patel', 'Admin Staff', 'Admin Staff', '9737759003', 'kissupatel503@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (9).jpeg'),
(26, 'Kiran', 'J', 'Patel', 'Assistant Faculty', 'Faculty', '6353705540', 'patelkiran98989@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (10).jpeg'),
(27, 'Jay', 'H', 'Patel', 'Ielts Teacher', 'Faculty', '9586513117', 'jaypatel25j@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (1).jpeg'),
(28, 'Pranali ', 'R', 'Shelake', 'Ielts Teacher', 'Faculty', '9309811520', 'pranalishelake3@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (2).jpeg'),
(29, 'Drashti', 'V', 'Patel', 'Spoken English Teach', 'Faculty', '9081705811', 'pdrashti81100@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (8).jpeg'),
(30, 'Khushi', 'R', 'Upadhyay', 'Ielts Teacher', 'Faculty', '9265414760', 'khushiii2912@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (3).jpeg'),
(31, 'Uzairkhan', 'I', 'Killedar', 'Business Development', 'SALES PROFESSIONAL', '8141252502', 'uzairkilledar479@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (4).jpeg'),
(32, 'Malav', 'N', 'Patel', 'Ielts Teacher', 'Faculty', '9099640089', 'malavp13@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 10.08.54 AM (5).jpeg'),
(33, 'Bhumika', 'D', 'Parmar', 'Spoken English Teach', 'Faculty', '8141525703', 'Bhumi8791@gmail.com', 'https://www.facebook.com/dhyey.careeracademy', 'https://twitter.com/MulchandSen1', 'https://in.linkedin.com/in/dr-mulchand-sen-203649172', 'https://www.instagram.com/dr.mulchand/?hl=en', '1', '1', 'WhatsApp Image 2023-06-27 at 2.01.56 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_mst`
--

CREATE TABLE `testimonial_mst` (
  `tm_id` int(5) NOT NULL,
  `tm_name` varchar(50) NOT NULL,
  `tm_designation` varchar(50) NOT NULL,
  `tm_des` varchar(50) NOT NULL,
  `tm_img` varchar(100) NOT NULL,
  `tm_status` varchar(5) NOT NULL DEFAULT '1',
  `tm_active` varchar(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial_mst`
--

INSERT INTO `testimonial_mst` (`tm_id`, `tm_name`, `tm_designation`, `tm_des`, `tm_img`, `tm_status`, `tm_active`) VALUES
(1, 'Ronak Panchal', 'Ronak Pancahl', 'Ronak Pancahl', 'bg_5.jpg', '0', '1'),
(2, 'Ronak Panchal', 'Expert in software Developement', 'Expert in software Developement', 'WhatsApp Image 2023-06-24 at 5.00.10 PM.jpeg', '0', '1'),
(3, 'Dhvanil', 'Dhvanil Patel', 'Dhvanil Patel', 'bg_5.jpg', '0', '1'),
(4, 'Viral', 'Prof', 'VTCBB', 'IMG-20200628-WA0002.jpg', '1', '1'),
(5, 'Baxis Patel', 'prof', 'MS university  of Baroda', 'IMG-20200628-WA0003.jpg', '1', '1'),
(6, 'Prof. Vaibhav Desai', 'Assistant Professor', 'SDJ International College, Surat', 'IMG-20200628-WA0000.jpg', '1', '1'),
(7, 'Manish Shukla', 'Research Scholar at University of Waterloo, Canada', 'University of Waterloo', 'Manish_Shukla_80.jpg', '1', '1'),
(8, 'Raj Patel', 'PG Student', 'Sheridan College', 'Rj_Patel_80.jpg', '1', '1'),
(9, 'Dr. Jitesh Parmar', 'Controller of Examination', 'Uka Tarsadia University', 'Jitesh_Sir_2_80.jpg', '1', '1'),
(10, 'Dr. Keyur Nayak', 'Director', 'Laxmi Institute of Management, Sarigam', 'Keyur_Nayak_80.jpg', '1', '1'),
(11, 'Prof. Aditi Bhatt', 'Co-ordinator', 'SDJ International College, Surat', 'Aditi Madam.JPG', '1', '1'),
(12, 'Dr. Bhavesh Vanparia', 'Assistant Professor', 'Department of HRD, VNSGU, Surat', 'Bhavesh_Vanparia_89.jpg', '1', '1'),
(13, 'Shree Bardoli Vibhag Mochi Gnati Parishad', 'President', 'Bhavik Arya', 'BVMGPN_89.jpg', '1', '1'),
(14, 'Parva Shah', 'PG Student', 'Fanshawe College, Canada', 'Parva Shah.JPG', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `website_setting`
--

CREATE TABLE `website_setting` (
  `id` int(25) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `video` text NOT NULL,
  `address` varchar(250) NOT NULL,
  `status` int(25) NOT NULL DEFAULT 1,
  `active` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `website_setting`
--

INSERT INTO `website_setting` (`id`, `logo`, `email`, `contact`, `video`, `address`, `status`, `active`) VALUES
(13, 'new2.gif', 'prin.brnaik@gmail.com', '6549871235', 'https://www.youtube.com/watch?v=641bOMS70CY', 'madhi', 0, '1'),
(14, 'testimonial-bg (2).jpg', 'prin.brnaik@gmail.com', '6549871235', 'https://youtu.be/HN3pm9qYAUs', 'umbhel', 0, '1'),
(16, 'logo.png', 'sciencecollegebardoli@gmail.com', '02622-220003', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6stlCkUDG_s?si=0-DS6e0fWPsAG3Xv\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', 'THE PATIDAR GIN SCIENCE COLLEGE, SARDAR BAUG, BARDOLI DIST. SURAT, (GUJARAT) PIN-394601', 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_mst`
--
ALTER TABLE `admin_mst`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admission_mst`
--
ALTER TABLE `admission_mst`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company_mst`
--
ALTER TABLE `company_mst`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `com_category_mst`
--
ALTER TABLE `com_category_mst`
  ADD PRIMARY KEY (`com_cat_id`);

--
-- Indexes for table `contact_us_mst`
--
ALTER TABLE `contact_us_mst`
  ADD PRIMARY KEY (`cu_id`);

--
-- Indexes for table `content_mst`
--
ALTER TABLE `content_mst`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `course_mst`
--
ALTER TABLE `course_mst`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `download_mst`
--
ALTER TABLE `download_mst`
  ADD PRIMARY KEY (`dw_id`);

--
-- Indexes for table `edu_mst`
--
ALTER TABLE `edu_mst`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `jobpost_mst`
--
ALTER TABLE `jobpost_mst`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_admin`
--
ALTER TABLE `job_admin`
  ADD PRIMARY KEY (`ja_id`);

--
-- Indexes for table `job_applied`
--
ALTER TABLE `job_applied`
  ADD PRIMARY KEY (`ja_id`);

--
-- Indexes for table `job_selected`
--
ALTER TABLE `job_selected`
  ADD PRIMARY KEY (`js_id`);

--
-- Indexes for table `job_selected_interview`
--
ALTER TABLE `job_selected_interview`
  ADD PRIMARY KEY (`jsi_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `recent_news`
--
ALTER TABLE `recent_news`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `skill_mst`
--
ALTER TABLE `skill_mst`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `slider_mst`
--
ALTER TABLE `slider_mst`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_reg`
--
ALTER TABLE `student_reg`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `stud_skill`
--
ALTER TABLE `stud_skill`
  ADD PRIMARY KEY (`sskill_id`);

--
-- Indexes for table `success_story_mst`
--
ALTER TABLE `success_story_mst`
  ADD PRIMARY KEY (`ssm_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `teacher_mst`
--
ALTER TABLE `teacher_mst`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `testimonial_mst`
--
ALTER TABLE `testimonial_mst`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `website_setting`
--
ALTER TABLE `website_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_mst`
--
ALTER TABLE `admin_mst`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission_mst`
--
ALTER TABLE `admission_mst`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;

--
-- AUTO_INCREMENT for table `company_mst`
--
ALTER TABLE `company_mst`
  MODIFY `com_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `com_category_mst`
--
ALTER TABLE `com_category_mst`
  MODIFY `com_cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_us_mst`
--
ALTER TABLE `contact_us_mst`
  MODIFY `cu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3894;

--
-- AUTO_INCREMENT for table `content_mst`
--
ALTER TABLE `content_mst`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_mst`
--
ALTER TABLE `course_mst`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `download_mst`
--
ALTER TABLE `download_mst`
  MODIFY `dw_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `edu_mst`
--
ALTER TABLE `edu_mst`
  MODIFY `edu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `e_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `i_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `jobpost_mst`
--
ALTER TABLE `jobpost_mst`
  MODIFY `job_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_admin`
--
ALTER TABLE `job_admin`
  MODIFY `ja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_applied`
--
ALTER TABLE `job_applied`
  MODIFY `ja_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_selected`
--
ALTER TABLE `job_selected`
  MODIFY `js_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_selected_interview`
--
ALTER TABLE `job_selected_interview`
  MODIFY `jsi_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recent_news`
--
ALTER TABLE `recent_news`
  MODIFY `r_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `skill_mst`
--
ALTER TABLE `skill_mst`
  MODIFY `skill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slider_mst`
--
ALTER TABLE `slider_mst`
  MODIFY `sd_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_reg`
--
ALTER TABLE `student_reg`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stud_skill`
--
ALTER TABLE `stud_skill`
  MODIFY `sskill_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `success_story_mst`
--
ALTER TABLE `success_story_mst`
  MODIFY `ssm_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_mst`
--
ALTER TABLE `teacher_mst`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testimonial_mst`
--
ALTER TABLE `testimonial_mst`
  MODIFY `tm_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `website_setting`
--
ALTER TABLE `website_setting`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
