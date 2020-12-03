-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2019 at 04:48 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MovieTime`
--

-- --------------------------------------------------------

--
-- Table structure for table `CASTS`
--

CREATE TABLE `CASTS` (
  `ID` int(3) NOT NULL,
  `NAME` varchar(28) DEFAULT NULL,
  `IMAGE` varchar(55) DEFAULT NULL,
  `VALUE` varchar(41) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CASTS`
--

INSERT INTO `CASTS` (`ID`, `NAME`, `IMAGE`, `VALUE`) VALUES
(1, 'Benedict Cumberbatch', '/MovieTime/Images/casts/benedict-cumberbatch.jpg', 'benedict-cumberbatch'),
(2, 'Rachel McAdams', '/MovieTime/Images/casts/rachel-mcadams.jpg', 'rachel-mcadams'),
(3, 'Benedict Wong', '/MovieTime/Images/casts/benedict-wong.jpg', 'benedict-wong'),
(4, 'Mads Mikkelson', '/MovieTime/Images/casts/mads-mikkelson.jpg', 'mads-mikkelson'),
(5, 'Tilda Swinton', '/MovieTime/Images/casts/tilda-swinton.jpg', 'tilda-swinton'),
(6, 'Tim Robbins', '/MovieTime/Images/casts/tim-robbins.jpg', 'tim-robbins'),
(7, 'Morgan Freeman', '/MovieTime/Images/casts/morgan-freeman.jpg', 'morgan-freeman'),
(8, 'Bob Gunton ', '/MovieTime/Images/casts/bob-gunton.jpg', 'bob-gunton'),
(9, 'Marlon Brando', '/MovieTime/Images/casts/marlon-brando.jpg', 'marlon-brando'),
(10, 'William Sadler', '/MovieTime/Images/casts/william-sadler.jpg', 'william-sadler'),
(11, 'Al Pacino', '/MovieTime/Images/casts/al-pacino.jpg', 'al-pacino'),
(12, 'James Caan', '/MovieTime/Images/casts/james-caan.jpg', 'james-caan'),
(13, 'Diane Keaton', '/MovieTime/Images/casts/diane-keaton.jpg', 'diane-keaton'),
(14, 'Christian Bale', '/MovieTime/Images/casts/christian-bale.jpg', 'christian-bale'),
(15, 'Heath Ledger', '/MovieTime/Images/casts/heath-ledger.jpg', 'heath-ledger'),
(16, 'Aaron Eckhart', '/MovieTime/Images/casts/aaron-eckhart.jpg', 'aaron-eckhart'),
(17, 'Michael Cain', '/MovieTime/Images/casts/michael-cain.jpg', 'michael-cain'),
(18, 'Robert De Niro', '/MovieTime/Images/casts/robert-dinero.jpg', 'robert-dinero'),
(20, 'Elijah Wood', '/MovieTime/Images/casts/elijah-wood.jpg', 'elijah-wood'),
(22, 'Ian McKellen', '/MovieTime/Images/casts/ian-mckellen.jpg', 'ian-mckellen'),
(23, 'Orlando Bloom', '/MovieTime/Images/casts/orlando-bloom.jpg', 'orlando-bloom'),
(24, 'John Travolta', '/MovieTime/Images/casts/john-travolta.jpg', 'john-travolta'),
(25, 'Uma Thurman', '/MovieTime/Images/casts/uma-thurman.jpg', 'uma-thurman'),
(26, 'Samuel L. Jackson', '/MovieTime/Images/casts/samuel-l-jackson.jpg', 'samuel-l-kackson'),
(27, 'Bruce Willis', '/MovieTime/Images/casts/bruce-willis.jpg', 'bruce-willis'),
(28, 'Liam Neeson', '/MovieTime/Images/casts/liam-nesson.jpg', 'liam-neeson'),
(29, 'Ralph Fiennes', '/MovieTime/Images/casts/ralph-fiennes.jpg', 'ralph-fiennes'),
(30, 'Ben Kingsley', '/MovieTime/Images/casts/ben-kingsley.jpg', 'ben-kingsley'),
(31, 'Caroline Goodall', '/MovieTime/Images/casts/caroline-goodwall.jpg', 'caroline-goodall'),
(32, 'Henry Fonda', '/MovieTime/Images/casts/henry-fonda.jpg', 'henry-fonda'),
(33, 'Lee J Cobb', '/MovieTime/Images/casts/lee-j-cobb.jpg', 'lee-j-cobb'),
(34, 'Jamie Foxx', '/MovieTime/Images/casts/jamie-foxx.jpg', 'jamie-foxx'),
(35, 'Martin Balsam', '/MovieTime/Images/casts/martin-balsam.jpg', 'martin-balsam'),
(36, 'John Fiedler', '/MovieTime/Images/casts/john-fiedler.jpg', 'john-fiedler'),
(37, 'Joaquin Phoenix', '/MovieTime/Images/casts/jaoquin-phoenix.jpg', 'jaoquin-phoenix'),
(38, ' Zazie Beetz', '/MovieTime/Images/casts/zazie-beetz.jpg', 'zazie-beets'),
(39, 'Frances Conroy', '/MovieTime/Images/casts/frances-conroy.jpg', 'frances-conroy'),
(40, ' Brad Pitt', '/MovieTime/Images/casts/brad-pitt.jpg', 'brad-pitt'),
(41, ' Edward Norton', '/MovieTime/Images/casts/edward-norton.jpg', 'edward-norton'),
(42, ' Meat Loaf', '/MovieTime/Images/casts/meat-loaf.jpg', 'meat-loaf'),
(43, ' Zach Grenier', '/MovieTime/Images/casts/zach-grenier.jpg', 'zach-grenier'),
(44, ' Sean Bean', '/MovieTime/Images/casts/sean-bean.jpg', 'sean-bean'),
(45, ' Tom Hanks', '/MovieTime/Images/casts/tom-hanks.jpg', 'tom-hanks'),
(46, 'Robin Wright', '/MovieTime/Images/casts/robin-wright.jpg', 'robin-wright'),
(47, 'Gary Sinise', '/MovieTime/Images/casts/gary-sinise.jpg', 'gary-sinise'),
(48, ' Sally Field', '/MovieTime/Images/casts/sally-field.jpg', 'sally-field'),
(49, ' Viggo Mortensen', '/MovieTime/Images/casts/viggo-mortensen.jpg', 'viggo-mortensen'),
(50, 'Ray Liotta', '/MovieTime/Images/casts/rray-liotta.jpg', 'ray-liotta'),
(51, ' Joe Pesci', '/MovieTime/Images/casts/joe-pesci.jpg', 'joe-pesci'),
(52, ' Lorraine Bracco', '/MovieTime/Images/casts/lorraine-bracco.jpg', 'lorraine-bracco'),
(53, ' Jack Nicholson', '/MovieTime/Images/casts/jack-nicholson.jpg', 'jack-nicholeson'),
(54, ' Louise Fletcher', '/MovieTime/Images/casts/louise-fletcher.jpg', 'louise-fletcher'),
(55, ' Will Sampson', '/MovieTime/Images/casts/will-sampson.jpg', 'will-sampson'),
(56, ' Michael Berryman', '/MovieTime/Images/casts/michael-berryman.jpg', 'michael-berryman'),
(57, 'Tatsuya Nakadai', '/MovieTime/Images/casts/tatsuya-nakadai.jpg', 'tatsuya-nakadai'),
(58, 'Akira Ishihama', '/MovieTime/Images/casts/akira-ishihama.jpg', 'akira-ishihama'),
(59, ' Shima Iwashita', '/MovieTime/Images/casts/shima-iwashita.jpg', 'shima-iwashita'),
(60, 'Tetsurô Tanba', '/MovieTime/Images/casts/tetsuro-tanba.jpg', 'tetsuro-tanba'),
(61, ' Kang-ho Song', '/MovieTime/Images/casts/kang-ho-song.jpg', 'kang-ho-song'),
(62, ' Sun-kyun Lee', '/MovieTime/Images/casts/sun-kyun-lee.jpg', 'sun-kyun-lee'),
(63, ' Yeo-jeong Jo', '/MovieTime/Images/casts/yeo-jeong-jo.jpg', 'yeo-jeong-jo'),
(64, ' Woo-sik Choi', '/MovieTime/Images/casts/woo-sik-choi.jpg', 'woo-sik-choi'),
(65, 'Matthew McConaughey', '/MovieTime/Images/casts/mathew-mcconaughey.jpg', 'mathew-mcconaughey'),
(66, ' Anne Hathaway', '/MovieTime/Images/casts/anne-hathaway.jpg', 'anne-hathaway'),
(67, ' Jessica Chastain', '/MovieTime/Images/casts/jessica-chastain.jpg', 'jessica-chastain'),
(68, 'Mackenzie Foy', '/MovieTime/Images/casts/mackenzie-foy.jpg', 'mackenzie-foy'),
(69, ' Alexandre Rodrigues', '/MovieTime/Images/casts/alexandre-rodrigues.jpg', 'alexandre-rodrigues'),
(70, ' Leandro Firmino', '/MovieTime/Images/casts/leonadro-firmino.jpg', 'leandro-firmino'),
(71, 'Matheus Nachtergaele', '/MovieTime/Images/casts/matheus-nachtergaele.jpg', 'matheus-nachtergaele'),
(72, 'Phellipe Haagensen\r\n', '/MovieTime/Images/casts/phellipe-haagensen.jpg', 'phellipe-haagensen'),
(73, ' Matt Damon', '/MovieTime/Images/casts/matt-damon.jpg', 'matt-damon'),
(74, ' Tom Sizemore', '/MovieTime/Images/casts/tom-sizemore.jpg', 'tom-sizemore'),
(75, ' Edward Burns', '/MovieTime/Images/casts/edward-burns.jpg', 'edward-burns'),
(76, ' Michael Clarke Duncan', '/MovieTime/Images/casts/michael-clarke-duncan.jpg', 'michael-clarke-duncan'),
(77, ' David Morse', '/MovieTime/Images/casts/david-morse.jpg', 'david-morse'),
(78, 'Bonnie Hunt', '/MovieTime/Images/casts/bonnie-hunt.jpg', 'bonnie-hunt'),
(79, ' Roberto Benigni', '/MovieTime/Images/casts/robero-benigni.jpg', 'roberto-benigni'),
(80, ' Nicoletta Braschi', '/MovieTime/Images/casts/nicoletta-braschi.jpg', 'nicoletta-braschi'),
(81, 'Giorgio Cantarin', '/MovieTime/Images/casts/giorgio-cantarin.jpg', 'giorgio-cantarin'),
(82, 'Giustino Durano', '/MovieTime/Images/casts/giustino-durano.jpg', 'giustino-durano'),
(85, 'Kevin Spacey', '/MovieTime/Images/casts/kevin-spacey.jpg', 'kevin-spacey'),
(86, 'Andrew Kevin Walker', '/MovieTime/Images/casts/andrew-kevin-walker.jpg', 'andrew-kevin-walker'),
(87, 'Jodie Foster', '/MovieTime/Images/casts/jodie-foster.jpg', 'jodie-foster'),
(88, 'Anthony Hopkins', '/MovieTime/Images/casts/anthony-hopkins.jpg', 'anthiny-hopkins'),
(89, ' Lawrence A. Bonney', '/MovieTime/Images/casts/lawrence-a-bonney.jpg', 'lawrence-e-bonney'),
(90, 'Kasi Lemmons', '/MovieTime/Images/casts/kasi-lemmons.jpg', 'kasi-lemmons'),
(91, ' Toshirô Mifune', '/MovieTime/Images/casts/toshiro-mifune.jpg', 'toshiro-mifune'),
(92, 'Takashi Shimura', '/MovieTime/Images/casts/takashi-shimura.jpg', 'takashi-shimura'),
(93, ' Keiko Tsushima', '/MovieTime/Images/casts/keiko-tsushima.jpg', 'kieko-tsushima'),
(94, 'Yukiko Shimazaki', '/MovieTime/Images/casts/yukiko-shimazaki.jpg', 'yukiko-shimazaki'),
(95, 'James Stewart', '/MovieTime/Images/casts/james-stewart.jpg', 'james-stewart'),
(96, ' Donna Reed', '/MovieTime/Images/casts/donna-reed.jpg', 'donna-reed'),
(97, 'Lionel Barrymore', '/MovieTime/Images/casts/lionel-barrymore.jpg', 'lionel-barrymore'),
(98, 'Thomas Mitchell', '/MovieTime/Images/casts/thomas-mitchell.jpg', 'thomas-mitchell'),
(99, 'Robert Downey Jr.', '/MovieTime/Images/casts/robert-downey-jr.jpg', 'robert-downey-jr'),
(100, 'Chris Evans', '/MovieTime/Images/casts/chris-evans.jpg', 'chris-evans'),
(101, ' Mark Ruffalo', '/MovieTime/Images/casts/mark-ruffalo.jpg', 'mark-ruffalo'),
(102, 'Chris Hemsworth', '/MovieTime/Images/casts/chris-hemsworth.jpg', 'chris-hemsworth'),
(103, ' Miles Teller', '/MovieTime/Images/casts/miles-teller.jpg', 'miles-teller'),
(104, 'J.K. Simmons', '/MovieTime/Images/casts/j-k-simmons.jpg', 'j-k-simmons'),
(105, ' Melissa Benoist', '/MovieTime/Images/casts/melissa-benoist.jpg', 'melissa-benoist'),
(106, ' Paul Reiser', '/MovieTime/Images/casts/paul-reiser.jpg', 'paul-reiser'),
(107, ' François Cluzet', '/MovieTime/Images/casts/francois-cluzet.jpg', 'francois-cluzet'),
(108, 'Omar Sy', '/MovieTime/Images/casts/omar-sy.jpg', 'omar-sy'),
(109, 'Anne Le Ny', '/MovieTime/Images/casts/anne-le-ny.jpg', 'anne-le-ny'),
(110, 'Audrey Fleurot', '/MovieTime/Images/casts/audrey-fleurot.jpg', 'audrey-fleurot'),
(111, ' Hugh Jackman', '/MovieTime/Images/casts/hugh-jackman.jpg', 'hugh-jackman'),
(112, ' Scarlett Johansson', '/MovieTime/Images/casts/scarlett-johansson.jpg', 'scarlett-johansson'),
(113, 'Michael Caine', '/MovieTime/Images/casts/michael-caine.jpg', 'michael-caine'),
(114, ' Leonardo DiCaprio', '/MovieTime/Images/casts/leonardo-dicaprio.jpg', 'leonardo-dicaprio'),
(115, ' Jack Nicholson', '/MovieTime/Images/casts/jack-nicholson.jpg', 'jack-nicholson'),
(116, 'Mark Wahlberg', '/MovieTime/Images/casts/mark-wahlberg.jpg', 'mark-wahlberg'),
(117, 'Adrien Brody', '/MovieTime/Images/casts/adrien-brody.jpg', 'adrien-brody'),
(118, 'Thomas Kretschmann', '/MovieTime/Images/casts/thomas-kretschmann.jpg', 'thomas-kretschmann'),
(119, 'Frank Finlay', '/MovieTime/Images/casts/fran-finlay.jpg', 'frank-finlay'),
(120, 'Emilia Fox', '/MovieTime/Images/casts/emilia-fox.jpg', 'emilia-fox'),
(121, 'Russell Crowe', '/MovieTime/Images/casts/russell-crowe.jpg', 'russell-crowe'),
(122, ' Joaquin Phoenix', '/MovieTime/Images/casts/joaquin-phoenix.jpg', 'jaoquin-phoenix'),
(123, 'Connie Nielsen', '/MovieTime/Images/casts/connie-nielsen.jpg', 'connie-nielsen'),
(124, 'Oliver Reed', '/MovieTime/Images/casts/oliver-reed.jpg', 'oliver-reed'),
(125, 'Edward Norton', '/MovieTime/Images/casts/edward-norton.jpg', 'edward-norton'),
(126, 'Edward Furlong', '/MovieTime/Images/casts/edward-furlong.jpg', 'edward-furlong'),
(127, ' Beverly D\'Angelo', '/MovieTime/Images/casts/beverly-d-angelo.jpg', 'beverly-d-angelo'),
(128, 'Jennifer Lien', '/MovieTime/Images/casts/jennifer-lien.jpg', 'jennifer-lien'),
(129, 'Jean Reno', '/MovieTime/Images/casts/jean-reno.jpg', 'jean-reno'),
(130, ' Gary Oldman', '/MovieTime/Images/casts/gary-oldman.jpg', 'gary-oldman'),
(131, ' Natalie Portman', '/MovieTime/Images/casts/natalie-portman.jpg', 'natalie-portman'),
(132, 'Danny Aiello', '/MovieTime/Images/casts/danny-aiello.jpg', 'danny-aeillo'),
(133, 'Matthew Broderick', '/MovieTime/Images/casts/matthew-broderick.jpg', 'matthew-broderick'),
(134, ' Jeremy Irons', '/MovieTime/Images/casts/jeremy-irons.jpg', 'jeremy-irons'),
(135, ' James Earl Jones', '/MovieTime/Images/casts/james-earl-jones.jpg', 'james-earl-jones'),
(136, 'Whoopi Goldberg', '/MovieTime/Images/casts/whoopi-goldberg.jpg', 'whoopi-goldberg'),
(137, 'Philippe Noiret', '/MovieTime/Images/casts/philippe-nioret.jpg', 'phillipe-noiret'),
(138, ' Enzo Cannavale', '/MovieTime/Images/casts/enzo-cannavale.jpg', 'enzo-cannavle'),
(139, ' Antonella Attili', '/MovieTime/Images/casts/antonella-attili.jpg', 'antonella-attili'),
(140, 'Isa Danieli', '/MovieTime/Images/casts/isa-danieli.jpg', 'isa-danieli'),
(141, 'Tsutomu Tatsumi', '/MovieTime/Images/casts/tsutomu-tatsami.jpg', 'tsutomu-tatsumi'),
(142, ' Ayano Shiraishi', '/MovieTime/Images/casts/ayano-shiraishi.jpg', 'ayano-shiraishi'),
(143, 'Akemi Yamaguchi', '/MovieTime/Images/casts/akemi-yamaguchi.jpg', 'akemi-yamaguchi'),
(144, 'Yoshiko Shinohara', '/MovieTime/Images/casts/yoshiko-shinohara.jpg', 'yoshiko-shinohara'),
(145, ' Humphrey Bogart', '/MovieTime/Images/casts/jumphrey-bogart.jpg', 'humphrey-bogart'),
(146, ' Ingrid Bergman', '/MovieTime/Images/casts/ingrid-bergman.jpg', 'ingrid-bergman'),
(147, ' Paul Henreid', '/MovieTime/Images/casts/paul-henreid.jpg', 'paul-henried'),
(148, 'Claude Rains', '/MovieTime/Images/casts/claude-rains.jpg', 'claude-rains'),
(149, ' Charles Chaplin', '/MovieTime/Images/casts/charles-chaplin.jpg', 'charles-chaplin'),
(150, ' Paulette Goddard', '/MovieTime/Images/casts/paulette-goddard.jpg', 'paulette-goddard'),
(151, ' Jack OakieReginald Gardiner', '/MovieTime/Images/casts/jack-oakiereginald-gardiner.jpg', 'jack-oakieregnald-gardiner'),
(152, 'Tiny Sandford\r\n\r\n', '/MovieTime/Images/casts/tiny-sandford.jpg', 'tiny-stanford'),
(153, ' Henry Bergman', '/MovieTime/Images/casts/henry-bergman.jpg', 'henry-bergman'),
(155, 'Virginia Cherrill', '/MovieTime/Images/casts/virginia-cherrill.jpg', 'virginia-cherrill'),
(156, ' Florence Lee', '/MovieTime/Images/casts/florence-lee.jpg', 'florence-lee'),
(157, ' Harry Myers', '/MovieTime/Images/casts/harry-myers.jpg', 'harry-myers'),
(158, 'Zain Al Rafeea', '/MovieTime/Images/casts/zain-al-rafeea.jpg', 'zain-al-rafeea'),
(159, 'Yordanos Shiferaw', '/MovieTime/Images/casts/yordanos-shiferaw.jpg', 'yordanos-shiferaw'),
(160, ' Boluwatife Treasure Bankole', '/MovieTime/Images/casts/boluwatife-tresure-bankole.jpg', 'boluwatife-treasure-bankole'),
(161, 'Kawsar Al Haddad', '/MovieTime/Images/casts/kawsar-al-haddad.jpg', 'kawsar-al-haddad'),
(162, ' Ryûnosuke Kamiki', '/MovieTime/Images/casts/ryunosuke-kamiki.jpg', 'ryunosuke-kamiki'),
(163, ' Mone Kamishiraishi', '/MovieTime/Images/casts/mone-kamishiraishi.jpg', 'mone-kamishiraishi'),
(164, ' Ryô Narita', '/MovieTime/Images/casts/ryo-narita.jpg', 'ryo-narita'),
(165, 'Aoi Yûki', '/MovieTime/Images/casts/aoi-yuki.jpg', 'ayo-yuki'),
(166, ' Aamir Khan', '/MovieTime/Images/casts/aamir-khan.jpg', 'aamir-khan'),
(167, ' Sakshi Tanwar', '/MovieTime/Images/casts/sakshi-tanwar.jpg', 'sakshi-tanwar'),
(168, 'Fatima Sana Shaikh', '/MovieTime/Images/casts/fatima-sana-shaikh.jpg', 'fatima-sana-shaikh'),
(169, ' Sanya Malhotra', '/MovieTime/Images/casts/sanya-malhotra.jpg', 'sanya-malhotra'),
(170, ' Christoph Waltz', '/MovieTime/Images/casts/christoph-waltz.jpg', 'christoph-waltz'),
(171, 'Kerry Washington', '/MovieTime/Images/casts/kerry-washington.jpg', 'kerry-washington'),
(172, 'Madhavan', '/MovieTime/Images/casts/madhavan.jpg', 'madhavan'),
(173, ' Mona Singh', '/MovieTime/Images/casts/mona-singh.jpg', 'mona-singh'),
(174, 'Sharman Joshi', '/MovieTime/Images/casts/sharman-joshi.jpg', 'sharman-joshi'),
(175, 'Darsheel Safary', '/MovieTime/Images/casts/darsheel-safary.jpg', 'darsheel-safary'),
(176, ' Tisca Chopra', '/MovieTime/Images/casts/tisca-chopra.jpg', 'tisca-chopra'),
(177, 'Vipin Sharma', '/MovieTime/Images/casts/vipin-sharma.jpg', 'vipin-sharma'),
(178, ' Ulrich Mühe', '/MovieTime/Images/casts/ulrich-muhe.jpg', 'ulrich-muhe'),
(179, ' Martina Gedeck', '/MovieTime/Images/casts/martina-gedek.jpg', 'martina-gedek'),
(180, 'Sebastian Koch', '/MovieTime/Images/casts/sebastian-koch.jpg', 'sebastian-koch'),
(181, 'Ulrich Tukur\r\n', '/MovieTime/Images/casts/ulrich-tukur.jpg', 'ulrich-tukur'),
(182, ' James Woods', '/MovieTime/Images/casts/james-woods.jpg', 'james-woods'),
(183, ' Elizabeth McGovern', '/MovieTime/Images/casts/elizabet-mcgovern.jpg', 'elizabeth-mcgovern'),
(184, 'Treat Williams', '/MovieTime/Images/casts/treat-williams.jpg', 'treat-williams'),
(185, ' Jack Nicholson', '/MovieTime/Images/casts/jack-nicholson.jpg', 'jack-nicholson'),
(186, 'Shelley Duvall', '/MovieTime/Images/casts/shelley-duvall.jpg', 'shelly0duvall'),
(187, 'Danny Lloyd', '/MovieTime/Images/casts/danny-lloyd.jpg', 'danny-lloyd'),
(188, 'Scatman Crothers', '/MovieTime/Images/casts/scatman-crothers.jpg', 'scatman-crothers'),
(189, 'Martin Sheen', '/MovieTime/Images/casts/martin-sheen.jpg', 'martin-sheen'),
(190, ' Marlon Brando', '/MovieTime/Images/casts/marlon-brando.jpg', 'marlon-brando'),
(191, 'Robert Duvall', '/MovieTime/Images/casts/robert-duvall.jpg', 'robert-duvall'),
(192, 'Frederic Forrest', '/MovieTime/Images/casts/frederic-forrest.jpg', 'frederic-forrest'),
(193, ' Tyrone Power', '/MovieTime/Images/casts/tyrone-power.jpg', 'tyrone-power'),
(194, 'Marlene Dietrich', '/MovieTime/Images/casts/marlene-dietrich.jpg', 'marlene-dietrich'),
(195, 'Charles Laughton', '/MovieTime/Images/casts/charles-laughton.jpg', 'charles-laughton'),
(196, 'Elsa Lanchester', '/MovieTime/Images/casts/elsa-lanchester.jpg', 'elsa-lanchester'),
(197, ' Kirk Douglas', '/MovieTime/Images/casts/kirk-douglas.jpg', 'kirk-douglas'),
(198, 'Ralph Meeker', '/MovieTime/Images/casts/ralph-meeker.jpg', 'ralph-meeker'),
(199, ' Adolphe Menjou', '/MovieTime/Images/casts/adolphe-menjou.jpg', 'adolphe-menjoy'),
(200, ' George Macready', '/MovieTime/Images/casts/george-macready.jpg', 'george-macready'),
(201, ' William Holden', '/MovieTime/Images/casts/william-holden.jpg', 'william-holden'),
(202, 'Gloria Swanson', ' /MovieTime/Images/casts/gloria.jpg', 'gloria-swanson'),
(203, 'Erich von Stroheim', '/MovieTime/Images/casts/erich-von-stroheim.jpg', 'erich-von-stoheim'),
(204, 'Nancy Olson', '/MovieTime/Images/casts/nancy-olsen.jpg', 'nancy-olsen'),
(205, ' Mads Mikkelsen', '/MovieTime/Images/casts/mads-mikkelsen.jpg', 'mads-mikkelsen'),
(206, 'Thomas Bo Larsen', '/MovieTime/Images/casts/thomas-bo-larsen.jpg', 'thomas-bo-larsen'),
(207, ' Annika Wedderkopp', '/MovieTime/Images/casts/annika-wedderkopp.jpg', 'annika-wedderkpopp'),
(208, 'Lasse Fogelstrøm', '/MovieTime/Images/casts/lasse-fogelstrom.jpg', 'lasse-fogelstrom'),
(209, ' Payman Maadi', '/MovieTime/Images/casts/payman-maadi.jpg', 'payman-maadi'),
(210, ' Leila Hatami', '/MovieTime/Images/casts/leila-hatami.jpg', 'leila-hatami'),
(211, ' Sareh Bayat', '/MovieTime/Images/casts/sareh-bayat.jpg', 'sareh-bayat'),
(212, 'Shahab Hosseini', '/MovieTime/Images/casts/shahab-hosseini.jpg', 'shahab-hosseini'),
(213, ' Lubna Azabal', '', ''),
(214, 'Mélissa Désormeaux-Poulin', '/MovieTime/Images/casts/melissa-desormeaux-poulin.jpg', 'melissa-desormeaux-poulin'),
(215, ' Maxim Gaudette', '', ''),
(216, 'Mustafa Kamel', '/MovieTime/Images/casts/mustafa-kamel.jpg', 'mustafa-kamel'),
(217, ' Çetin Tekindor', '/MovieTime/Images/casts/cetin-tekindorjpg', 'cetin-tekindor'),
(218, 'Fikret Kuskan', '/MovieTime/Images/casts/fikret-kuskan.jpg', 'fikret-kuskan'),
(219, ' Hümeyra', '', ''),
(220, ' Ege Tanman', '/MovieTime/Images/casts/ege-tanman.jpg', 'ege-tanman'),
(221, ' Diane Kruger', '/MovieTime/Images/casts/diane-kruger.jpg', 'diane-kruger'),
(222, ' Eli Roth', '/MovieTime/Images/casts/eli-roth.jpg', 'eli-roth'),
(223, ' Mélanie Laurent', '', ''),
(224, 'Jim Carrey', '/MovieTime/Images/casts/jim-carrey.jpg', 'jim-carrey'),
(225, ' Kate Winslet', '', ''),
(226, ' Tom Wilkinson', '/MovieTime/Images/casts/tom-wilkinson.jpg', 'tom-wilkinson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CASTS`
--
ALTER TABLE `CASTS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CASTS`
--
ALTER TABLE `CASTS`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
