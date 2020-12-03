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

-- --------------------------------------------------------

--
-- Table structure for table `CONFIRMED_ORDERS`
--

CREATE TABLE `CONFIRMED_ORDERS` (
  `ORDER_ID` int(255) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USER_ID` int(255) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CONFIRMED_ORDERS`
--

INSERT INTO `CONFIRMED_ORDERS` (`ORDER_ID`, `TITLE`, `USER_ID`, `DATE`) VALUES
(5, 'John Wick Chapter 1', 4, '2019-11-19'),
(6, 'John Wick Chapter 1', 4, '2019-11-19'),
(7, 'John Wick Chapter 1', 4, '2019-11-19'),
(8, 'John Wick Chapter 1', 4, '2019-11-19'),
(9, 'John Wick Chapter 1', 4, '2019-11-19'),
(10, 'Dunkirk', 4, '2019-11-19'),
(11, 'John Wick Chapter 1', 4, '2019-11-19'),
(12, 'Dunkirk', 4, '2019-11-19'),
(13, 'John Wick Chapter 1', 4, '2019-11-19'),
(14, 'Dunkirk', 4, '2019-11-19'),
(15, 'John Wick Chapter 1', 4, '2019-11-19'),
(16, 'Dunkirk', 4, '2019-11-19'),
(17, 'John Wick Chapter 1', 4, '2019-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `MOVIES`
--

CREATE TABLE `MOVIES` (
  `ID` int(20) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CASTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GENRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRICE` int(20) DEFAULT NULL,
  `DIRECTOR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RELEASE DATE` date NOT NULL,
  `VIDEO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MOVIES`
--

INSERT INTO `MOVIES` (`ID`, `TITLE`, `IMAGE`, `DESCRIPTION`, `CASTS`, `GENRE`, `PRICE`, `DIRECTOR`, `RELEASE DATE`, `VIDEO`) VALUES
(1, 'Dr Strange', '/MovieTime/Images/movies/dr-strange.jpg', ' While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts. ', 'benedict-cumberbatch,rachel-mcadams,mads-mikkelson,tilda-swinton', 'Action', 20, '', '0000-00-00', 'HSzx-zryEgM'),
(3, 'John Wick Chapter 1', '/MovieTime/Images/movies/john-wick.jpg', ' An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him. ', 'keanu-reeves,michael-nyqvist,alfie-allen', 'Action', 15, '', '0000-00-00', '2AUmvWm5ZDQ'),
(4, 'The Shawshank Redemption', '/MovieTime/Images/movies/the-shawshank-redemption.jpg', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'tim-robbins,morgan-freeman,bob-gunton,william-sadler', 'Drama', 50, 'Frank Darabont', '1994-10-14', '6hB3S9bIaco'),
(5, 'The Godfather', '/MovieTime/Images/movies/the-godfather.jpg', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', ' marlon-brando,al-pacino,james-caan,diane-keaton', 'Crime', 50, 'Francis Ford Coppola', '1972-03-24', 'sY1S34973zA'),
(6, 'The Godfather: Part II', '/MovieTime/Images/movies/the-godfather-part2.jpg', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', ' al-pacino,robert-de-niro,robert-duvall,diane-keaton', 'Crime', 50, 'Francis Ford Coppola', '1974-12-20', '9O1Iy9od7-A'),
(7, 'The Dark Knight', '/MovieTime/Images/movies/the-dark-knight.jpg', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'christian-bale,heath-ledger,aaron-eckhart,michael-caine', 'Action', 50, 'Christopher Nolan', '2008-07-18', 'EXeTwQWrcwY'),
(8, '12 Angry Men', '/MovieTime/Images/movies/12-angry-men.jpg', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'henry-fonda,lee-j-cobb,martin-balsam,john-fiedler', 'Drama', 50, ' Sidney Lumet', '1957-04-10', '_13J_9B5jEk'),
(9, 'Schindler\'s List', '/MovieTime/Images/movies/schindlers-list.jpg', 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'liam-neeson,ralph-fiennes,ben-kingsley,caroline-goodall', 'Drama', 50, ' Steven Spielberg', '1994-02-04', 'gG22XNhtnoY'),
(10, 'The Lord of the Rings: The Return of the King', '/MovieTime/Images/movies/the-lord-of-the-rings-the-return-of-the-king.jpg', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', ' elijah-wood,viggo-mortensen,ian-mckellen,orlando-bloom', 'Fantasy', 50, ' Peter Jackson', '2003-12-17', 'r5X-hFf6Bwo'),
(11, 'Pulp Fiction', '/MovieTime/Images/movies/pulp-fiction.jpg', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'john-travolta,uma-thurman,samuel-l-jackson,bruce-willis', 'Crime', 50, 'Quentin Tarantino', '1994-10-14', 's7EdQ4FqbhY'),
(12, 'The Good, the Bad and the Ugly', '/MovieTime/Images/movies/the-good-the-bad-and-the-ugly.jpg', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', ' clint-eastwood,eli-wallach,lee-van-cleef,aldo-giuffrè', 'Drama', 50, 'Sergio Leone', '1967-12-29', 'WCN5JJY_wiA'),
(13, 'Fight Club', '/MovieTime/Images/movies/fight-club.jpg', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', ' brad-pitt,edward-norton,meat-loaf,zach-grenier', 'Drama', 50, ' David Fincher', '1999-10-15', 'qtRKdVHc-cE'),
(14, 'The Lord of the Rings: The Fellowship of the Ring', '/MovieTime/Images/movies/the-lord-of-the-rings-the-fellowship-of-the-ring.jpg', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', ' elijah-wood,ian-mckellen,orlando-bloom,sean-bean', 'Fantasy', 50, 'Peter jackson', '2001-12-19', 'V75dMMIW2B4'),
(15, 'Forrest Gump', '/MovieTime/Images/movies/forrest-gump.jpg', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.', ' tom-hanks,robin-wright,gary-sinise,sally-field', 'Romance', 50, ' Robert Zemeckis', '1994-07-06', 'bLvqoHBptjg'),
(16, 'Inception', '/MovieTime/Images/movies/inception.jpg', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'leonardo-dicaprio,joseph-gordon-levitt,ellen-page,ken-watanabe', 'Sci-Fi', 50, 'Christopher Nolan', '2010-07-16', 'YoHD9XEInc0'),
(17, 'Star Wars: Episode V - The Empire Strikes Back', '/MovieTime/Images/movies/star-wars-the-empire-strikes-back.jpg', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.', 'mark-hamill,harrison-ford,carrie-fisher,billy-dee-williams', 'Fantasy', 50, 'Irvin Kershner', '1980-06-20', 'JNwNXF9Y6kY'),
(18, 'Joker', '/MovieTime/Images/movies/joker.jpg', 'In Gotham City, mentally-troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: \"The Joker\".', 'joaquin-phoenix,robert-de-niro,zazie-beetz,frances-conroy', 'Thriller', 50, 'Todd Phillips', '2019-10-04', 'zAGVQLHvwOY'),
(19, 'The Lord of the Rings: The Two Towers', '/MovieTime/Images/movies/the-lord-of-the-rings-the-two-towers.jpg', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron\'s new ally, Saruman, and his hordes of Isengard.', 'elijah-wood,ian-mckellen,viggo-mortensen,orlando-bloom', 'Fantasy', 50, 'Peter Jackson', '2002-12-18', 'LbfMDwc4azU&t=22s'),
(20, 'The Matrix', '/MovieTime/Images/movies/the-matrix.jpg', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', ' keanu-reeves, laurence-fishburne,carrie-anne-moss,hugo-weaving', 'Sci-Fi', 50, 'The Wachowski Brothers', '1999-03-31', 'm8e-FF8MsqU'),
(21, 'One Flew Over the Cuckoo\'s Nest', '/MovieTime/Images/movies/one-flew-over-the-cuckoos-nest.jpg', 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.', 'jack-nicholson,louise-fletcher,will-sampson,michael-berryman', 'Drama', 50, ' Milos Forman', '1975-11-19', 'OXrcDonY-B8'),
(22, 'Goodfellas', '/MovieTime/Images/movies/goodfellas.jpg', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', ' robert-de-niro,ray-liotta,joe-pesci,lorraine-bracco', 'Crime', 50, ' Martin Scorsese\r\n', '1990-09-21', 'qo5jJpHtI1Y'),
(23, 'Seven Samurai', '/MovieTime/Images/movies/seven-samurai.jpg', 'A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.', 'toshirô-mifune,takashi-shimura,keiko-tsushima,yukiko-shimazaki', 'Drama', 50, 'Akira Kurosawa', '1954-11-19', 'bBfgNpSQm3I'),
(24, 'Se7en', '/MovieTime/Images/movies/seven.jpg', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'morgan-freeman,brad-pitt,kevin-spacey,andrew-kevin-walker', 'Crime', 50, ' David Fincher', '1995-09-22', 'SpKbZ_3zlb0'),
(25, 'City of God', '/MovieTime/Images/movies/city-of-god.jpg', 'In the slums of Rio, two kids\' paths diverge as one struggles to become a photographer and the other a kingpin.', 'alexandre-rodrigues,leandro-firmino,matheus-nachtergaele,phellipe-haagensen', 'Crime', 50, ' Fernando Meirelles', '2004-02-13', 'dcUOO4Itgmw'),
(26, 'Life Is Beautiful', '/MovieTime/Images/movies/life-is-beautiful.jpg', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 'roberto-benigni,nicoletta-braschi,giorgio-cantarini,giustino-durano', 'Romance', 50, ' Roberto Benigni', '1999-02-12', 'pAYEQP8gx3w'),
(27, 'The Silence of the Lambs', '/MovieTime/Images/movies/the-silence-of-the-lambs.jpg', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'jodie-foster,anthony-hopkins,lawrencea-bonney,kasi-lemmons', 'Thriller', 50, 'Jonathen Demm', '1991-02-14', 'W6Mm8Sbe__o'),
(28, 'It\'s a Wonderful Life ', '/MovieTime/Images/movies/its-a-wonderful-life.jpg', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.', 'james-stewart,donna-reed,lionel-barrymore,thomas-mitchell', 'Fantasy', 50, ' Frank Capra', '1947-01-07', 'ewe4lg8zTYA'),
(29, 'Star Wars: Episode IV - A New Hope', '/MovieTime/Images/movies/star-wars-a-new-hope.jpg', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'mark-hamill,harrison-ford,carrie-fisher,alec-guinness', 'Fantasy', 50, ' George Lucas', '1977-05-25', '1g3_CFmnU7k'),
(30, 'Saving Private Ryan', '/MovieTime/Images/movies/saving-private-ryan.jpg', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'tom-hanks,matt-damon,tom-sizemore,edward-burns', 'Drama', 50, 'Steven Spielberg', '1998-07-24', 'zwhP5b4tD6g'),
(31, 'Spirited Away', '/MovieTime/Images/movies/spirited-away.jpg', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'daveigh-chase,suzanne-pleshette,miyu-irino,rumi-hiiragi', 'Adventure', 50, ' Hayao Miyazaki', '2003-03-28', 'ByXuk9QqQkk'),
(32, 'The Green Mile', '/MovieTime/Images/movies/the-green-mile.jpg', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'tom-hanks,michael-clarke-duncan,david-morse,bonnie-hunt', 'Crime', 50, 'Frank Darabont', '1999-12-10', 'Ki4haFrqSrw'),
(33, 'Léon: The Professional', '/MovieTime/Images/movies/leon-the-professional.jpg', 'Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', 'jean-reno,gary-oldman,-natalie-portman,danny-aiello', 'Crime', 50, 'Luc Besson', '1994-11-18', 'jawVxq1Iyl0'),
(34, 'Interstellar', '/MovieTime/Images/movies/interstellar.jpg', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'matthew-mcconaughey,anne-hathaway,jessica-chastain,mackenzie-foy', 'Sci-Fi', 50, ' Christopher Nolan', '2014-11-07', 'zSWdZVtXT7E'),
(35, 'Harakiri', '/MovieTime/Images/movies/harakiri.jpg', 'When a ronin requesting seppuku at a feudal lord\'s palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan\'s integrity.', 'tatsuya-nakadai,akira-ishihama,shima-iwashita,tetsurô-tanba', 'Drama', 50, 'Masaki Kobayashi', '1964-08-04', 'xjs3UBzq1Lo'),
(36, 'The Usual Suspects', '/MovieTime/Images/movies/the-usual-suspects.jpg', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', 'kevin-spacey,gabriel-byrne,chazz-palminteri,stephen-baldwin', 'Crime', 50, 'Bryan Singer', '1995-09-15', 'oiXdPolca5w'),
(37, 'The Lion King', '/MovieTime/Images/movies/the-lion-king.jpg', 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 'matthew-broderick,jeremy-irons,james-earl-jones,whoopi-goldberg', 'Adventure', 50, ' Rob Minkoff', '1994-06-24', 'hY7xBISLBIA'),
(38, 'American History X', '/MovieTime/Images/movies/american-history-x.jpg', 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.', 'edward-norton,edward-furlong,beverly-d\'angelo,jennifer-lien', 'Drama', 50, ' Tony Kaye', '1998-11-20', 'XfQYHqsiN5g'),
(39, 'Back to the Future', '/MovieTime/Images/movies/back-to-the-future.jpg', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'michael-j-fox,christopher-lloyd,lea-thompson,crispin-glover', 'Sci-Fi', 50, 'Robert Zemeckis', '1985-07-03', 'qvsgGtivCgs'),
(40, 'The Pianist', '/MovieTime/Images/movies/the-pianist.jpg', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 'adrien-brody,thomas-kretschmann,frank-finlay,emilia-fox', 'Drama', 50, 'Roman Polanski', '2003-03-28', 'BFwGqLa_oAo'),
(41, 'Modern Times ', '/MovieTime/Images/movies/modern-times.jpg', 'The Tramp struggles to live in modern industrial society with the help of a young homeless woman.', 'charles-chaplin,paulette-goddard,henry-bergman,tiny-sandford', 'Drama', 50, ' Charles Chaplin', '1936-02-25', 'GLeDdzGUTq0'),
(42, 'Terminator 2: Judgment Day', '/MovieTime/Images/movies/terminator-judgement-day.jpg', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 'arnold-schwarzenegger,linda-hamilton,edward-furlong,robert-patrick', 'Sci-Fi', 50, 'James Cameron', '1991-07-03', 'CRRlbK5w8AE'),
(43, 'Psycho', '/MovieTime/Images/movies/psycho.jpg', 'A Phoenix secretary embezzles forty thousand dollars from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'anthony-perkins,janet-leigh,vera-miles,john-gavin', 'Thriller', 50, 'Alfred Hitchcock', '1960-09-08', 'UuWTd3sAKzQ'),
(44, 'The Intouchables', '/MovieTime/Images/movies/the-intouchables.jpg', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'françois-cluzet,omar-sy,anne-le-ny,audrey-fleurot', 'Drama', 50, 'Éric Toledano', '2012-07-13', 'YbzkK06MJjE'),
(45, 'Gladiator', '/MovieTime/Images/movies/gladiator.jpg', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'russell-crowe,joaquin-phoenix,connie-nielsen,oliver-reed', 'Adventure', 50, 'Ridley Scott', '2000-05-05', 'owK1qxDselE'),
(46, 'City Lights', '/MovieTime/Images/movies/city-lights.jpg', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', 'charles-chaplin,virginia-cherrill,florence-lee,harry-myers', 'Romance', 50, 'Charles Chaplin', '1931-03-07', 'b2NTUnujk1I'),
(47, 'The Departed', '/MovieTime/Images/movies/the-departed.jpg', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'leonardo-dicaprio,matt-damon,jack-nicholson,mark-wahlberg', 'Crime', 50, 'Martin Scorsese', '2006-10-06', 'iojhqm0JTW4'),
(48, 'Whiplash', '/MovieTime/Images/movies/whiplash.jpg', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 'miles-teller,j.k.-simmons,melissa-benoist,paul-reiser', 'Drama', 50, 'Damien Chazelle', '2015-02-20', '7d_jQycdQGo'),
(49, 'Once Upon a Time in the West', '/MovieTime/Images/movies/once-upon-a-time-in-the-west.jpg', 'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.', 'henry-fonda,charles-bronson,claudia-cardinale,jason-robards', 'Drama', 50, 'Sergio Leone\r\n', '1969-07-04', ''),
(50, 'The Prestige', '/MovieTime/Images/movies/the-prestige.jpg', 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'christian-bale,hugh-jackman,scarlett-johansson,michael-caine', 'Sci-Fi', 50, 'Christopher Nolan', '2006-10-20', 'ijXruSzfGEc'),
(51, 'Parasite', '/MovieTime/Images/movies/parasite.jpg', 'All unemployed, Ki-taek\'s family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.', 'kang-ho-song,sun-kyun-lee,yeo-jeong-jo,woo-sik-choi', 'Thriller', 50, 'Joon-ho Bong', '2019-05-13', '5xH0HfJHsaY'),
(52, 'Casablanca', '/MovieTime/Images/movies/casablanca.jpg', 'A cynical American expatriate struggles to decide whether or not he should help his former lover and her fugitive husband escape French Morocco.', 'humphrey-bogart,ingrid-bergman,paul-henreid,claude-rains', 'Roamnce', 50, 'Michael Curtiz', '1943-01-23', 'BkL9l7qovsE'),
(53, 'Grave of the Fireflies', '/MovieTime/Images/movies/grave-of-the-fireflies.jpg', 'A young boy and his little sister struggle to survive in Japan during World War II.', 'tsutomu-tatsumi,ayano-shiraishi,akemi-yamaguchi,yoshiko-shinohara', 'Draman', 50, ' Isao Takahata', '1989-07-26', ''),
(54, 'Rear Window', '/MovieTime/Images/movies/rear-window.jpg', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', 'james-stewart,grace-kelly,wendell-corey,thelma-ritter', 'Thriller', 50, 'Alfred Hitchcock', '1954-09-20', 'm01YktiEZCw'),
(55, 'Avengers: Endgame ', '/MovieTime/Images/movies/endgame.jpg', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', 'robert-downey-jr,chris-evans,mark-ruffalo,chris-hemsworth', 'Drama', 50, 'Joe Russo', '2019-04-26', 'there are two of these'),
(56, 'Cinema Paradiso', '/MovieTime/Images/movies/cinema-paradiso.jpg', 'A  filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema\'s projectionist.', 'philippe-noiret,enzo-cannavale,antonella-attili,isa-danieli', 'Drama', 50, 'Giuseppe Tornatore', '1990-02-23', 'C2-GX0Tltgw'),
(57, 'Alien', '/MovieTime/Images/movies/alien.jpg', 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.', 'sigourney-weaver,tom-skerritt,john-hurt,veronica-cartwright', 'Sci-Fi', 50, 'Ridley Scott', '1979-06-02', 'LjLamj-b0I8'),
(58, 'Raiders of the Lost Ark', '/MovieTime/Images/movies/raiders-of-the-lost-arc.jpg', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler\'s Nazis can obtain its awesome powers.', 'harrison-ford,karen-allen,paul-freeman,john-rhys-davies', 'Adventure', 50, ' Steven Spielberg', '1981-06-12', 'XkkzKHCx154'),
(59, 'Memento', '/MovieTime/Images/movies/memento.jpg', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 'guy-pearce,carrie-anne-moss,joe-pantoliano,mark-boone-junior', 'Mystery', 50, 'Christopher Nolan', '2001-05-25', '0vS0E9bBSL0'),
(60, 'Apocalypse Now', '/MovieTime/Images/movies/apocalypse-now.jpg', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', 'martin-sheen,marlon-brando,robert-duvall,frederic-forrest', 'Drama', 50, 'Francis Ford Coppola ', '1979-08-15', 'FTjG-Aux_yQ'),
(61, 'The Great Dictator', '/MovieTime/Images/movies/the-great-dictator.jpg', 'Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel\'s regime.', 'charles-chaplin,paulette-goddard,jack-oakie,reginald-gardiner', 'Comedy', 50, 'Charles Chaplin', '1941-03-07', 'zroWIN-lS8E'),
(62, 'The Lives of Others', '/MovieTime/Images/movies/the-lives-of-others.jpg', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 'ulrich-mühe,martina-gedeck,sebastian-koch,ulrich-tukur', 'Thriller', 50, 'Florian Henckel von Donnersmarck', '2007-03-30', 'n3_iLOp6IhM'),
(63, 'Django Unchained', '/MovieTime/Images/movies/django-unchained.jpg', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'jamie-foxx,christoph-waltz,leonardo-dicaprio,kerry-washington', 'Drama', 50, 'Quentin Tarantino', '2012-12-25', '_iH0UBYDI4g'),
(64, 'Avengers: Infinity War', '/MovieTime/Images/movies/avengers-infinity-war.jpg', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'robert-downey-jr,chris-hemsworth,mark-ruffalo,chris-evans', 'Sci-Fi', 50, 'Anthony Russo', '2018-04-27', '6ZfuNTqbHE8&t=3s'),
(65, 'The Shining', '/MovieTime/Images/movies/the-shining.jpg', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 'jack-nicholson,shelley-duvall,danny-lloyd,scatman-crothers', 'Horror', 50, 'Stanley Kubrick', '1980-07-13', '5Cb3ik6zP2I'),
(66, 'Paths of Glory', '/MovieTime/Images/movies/paths-of-glory.jpg', 'After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.', 'kirk-douglas,ralph-meeker,adolphe-menjou,george-macready', 'Drama', 50, 'Stanley Kubrick', '1957-11-12', 'nmDA60X-f_A'),
(67, 'Spider-Man: Into the Spider-Verse ', '/MovieTime/Images/movies/spiderman-into-the-spiderverse.jpg', 'Teen Miles Morales becomes Spider-Man of his reality, crossing his path with five counterparts from other dimensions to stop a threat for all realities.', 'shameik-moore,jake-johnson,hailee-steinfeld,mahershala-ali', 'Action', 50, 'Peter Ramsey', '2018-12-14', 'g4Hbz2jLxvQ'),
(68, 'WALL·E', '/MovieTime/Images/movies/wall-e.jpg', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', 'ben-burtt,elissa-knight,jeff-garlin,fred-willard', 'Adventure', 50, 'Andrew Stanton', '2008-07-27', 'qGBZWbg_26A'),
(69, 'Princess Mononoke', '/MovieTime/Images/movies/princess-mononoke.jpg', 'On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.', 'yôji-matsuda,yuriko-ishida,yûko-tanaka,billy-crudup', 'Fantasy', 50, 'Hayao Miyazaki', '1997-12-19', '4OiMOHRDs14'),
(70, 'Sunset Blvd.', '/MovieTime/Images/movies/sunset-blvd.jpg', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.', 'william-holden,gloria-swanson,erich-von-stroheim,nancy-olson', 'Drama', 50, ' Billy Wilder', '1950-09-29', 'USv1hJTlbhg'),
(71, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '/MovieTime/Images/movies/dr-strangelove.jpg', 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.', 'peter-sellers,george-c-scott,sterling-hayden,keenan-wynn', 'Comedy', 50, 'Stanley Kubrick', '1964-01-29', '98NaJ8ss4sY'),
(72, 'Stanley Kubrick', '/MovieTime/Images/movies/stanley-kubrick.jpg', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 'min-sik-choi,ji-tae-yoo,hye-jeong-kang,dae-han-ji', 'Mystery', 50, ' Chan-wook Park', '2003-11-21', ''),
(73, 'Witness for the Prosecution', '/MovieTime/Images/movies/witness-for-the-prosecution.jpg', 'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.', 'tyrone-power,marlene-dietrich,charles-laughton,elsa-lanchester', 'Drama', 50, 'Billy Wilder', '1958-02-08', 'GMlJfiA2u7Y'),
(74, 'The Dark Knight Rises', '/MovieTime/Images/movies/the-dark-knight-rises.jpg', 'Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.', 'christian-bale,tom-hardy,anne-hathaway,gary-oldman', 'Action', 50, 'Christopher Nolan', '2012-07-20', 'GokKUqLcvD8'),
(75, 'Once Upon a Time in America ', '/MovieTime/Images/movies/once-upon-a-time-in-america.jpg', 'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.', 'robert-de-niro,james-woods,elizabeth-mcgovern,treat-williams', 'Drama', 50, 'Sergio Leone', '1984-06-01', 'LcpCRyNo8T8'),
(76, 'Aliens', '/MovieTime/Images/movies/aliens.jpg', 'Ellen Ripley is rescued by a deep salvage team after being in hypersleep for 57 years. The moon that the Nostromo visited has been colonized, but contact is lost. This time, colonial marines have impressive firepower, but will that be enough?', 'sigourney-weaver,michael-biehn,carrie-henn,paul-reiser', 'Sci-Fi', 50, 'James Cameron', '1986-07-18', 'XKSQmYUaIyE'),
(77, 'American Beauty', '/MovieTime/Images/movies/american-beauty.jpg', 'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter\'s best friend.', 'kevin-spacey,annette-bening,thora-birch,wes-bentley', 'Drama', 50, 'Sam Mendes', '1999-10-01', 'Ly7rq5EsTC8'),
(78, 'Your Name.', '/MovieTime/Images/movies/your-name.jpg', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?', 'ryûnosuke-kamiki,mone-kamishiraishi,ryô-narita,aoi-yûki', 'Romance', 50, 'Makoto Shinkai', '2017-04-05', 'xU47nhruN-Q'),
(79, 'Coco', '/MovieTime/Images/movies/coco.jpg', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 'anthony-gonzalez,gael-garcía-bernal,benjamin-bratt,alanna-ubach', 'Family', 50, 'Adrian Molina', '2017-11-22', 'Ga6RYejo6Hk'),
(80, 'Braveheart', '/MovieTime/Images/movies/braveheart.jpg', 'When his secret bride is executed for assaulting an English soldier who tried to rape her, William Wallace begins a revolt against King Edward I of England.', 'mel-gibson,sophie-marceau,patrick-mcgoohan,angus-macfadyen', 'Drama', 50, ' Mel Gibson', '1995-05-24', '1NJO0jxBtMo'),
(81, 'Das Boot', '/MovieTime/Images/movies/das-boot.jpg', 'The claustrophobic world of a WWII German U-boat; boredom, filth and sheer terror.', 'jürgen-prochnow,herbert-grönemeyer,klaus-wennemann,hubertus-bengsch', 'Thriller', 50, ' Wolfgang Petersen', '1982-02-10', '7pzKyeIex2Y'),
(82, '3 Idiots', '/MovieTime/Images/movies/3-idiots.jpg', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".', 'aamir-khan,madhavan,mona-singh,sharman-joshi', 'Comedy', 50, 'Rajkumar Hirani', '2009-12-25', 'K0eDlFX9GMc'),
(83, 'Star Wars: Episode VI - Return of the Jedi', '/MovieTime/Images/movies/star-wars-return-of-the-jedi.jpg', 'After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor\'s trap.', 'mark-hamill,harrison-ford,carrie-fisher,billy-dee-williams', 'Fantasy', 50, 'Richard Marquand', '1983-05-24', '5UfA_aKBGMc'),
(84, 'Taare Zameen Par', '/MovieTime/Images/movies/taare-zameen-par.jpg', 'An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.', 'darsheel-safary,aamir-khan,tisca-chopra,vipin-sharma', 'Family', 50, 'Amole Gupte', '2007-12-21', 'tn_2Ie_jtX8'),
(85, 'Toy Story', '/MovieTime/Images/movies/toy-story.jpg', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'tom-hanks,tim-allen,don-rickles,jim-varney', 'Comedy', 50, 'John Lasseter', '1995-11-25', '4KPTXpQehio'),
(86, 'Reservoir Dogs', '/MovieTime/Images/movies/reservoir-dogs.jpg', 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.', 'harvey-keitel,tim-roth,michael-madsen,chris-penn', 'Crime', 50, 'Quentin Tarantino', '1992-09-02', 'vayksn4Y93A'),
(87, 'Amadeus', '/MovieTime/Images/movies/amadeus.jpg', 'The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart\'s talent and claimed to have murdered him.', 'f-murray-abraham,tom-hulce,elizabeth-berridge,roy-dotrice', 'Drama', 50, 'Milos Forman', '1984-09-19', 'r7kWQj9FCGY'),
(88, 'Inglourious Basterds', '/MovieTime/Images/movies/inglourious-basterds.jpg', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner\'s vengeful plans for the same.', 'brad-pitt,diane-kruger,eli-roth,mélanie-laurent', 'Adventure', 50, 'Quentin Tarantino', '2009-08-21', 'KnrRy6kSFF0'),
(89, 'Good Will Hunting', '/MovieTime/Images/movies/good-will-hunting.jpg', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.', 'robin-williams,matt-damon,ben-affleck,stellan-skarsgård', 'Romance', 50, 'Gus Van Sant', '1998-01-09', 'PaZVjZEFkRs'),
(90, 'Dangal', '/MovieTime/Images/movies/dangal.jpg', 'Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.', 'aamir-khan,sakshi-tanwar,fatima-sana-shaikh,sanya-malhotra', 'Drama', 50, 'Nitesh Tiwari', '2016-12-21', 'x_7YlGv9u1g'),
(91, 'Requiem for a Dream', '/MovieTime/Images/movies/requiem-for-a-dream.jpg', 'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.', 'ellen-burstyn,jared-leto,jennifer-connelly,marlon-wayans', 'Drama', 50, 'Darren Aronofsky\r\n', '2000-12-15', 'lmU4KZ4'),
(92, '2001: A Space Odyssey', '/MovieTime/Images/movies/space-odyssey.jpg', 'After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.', 'keir-dullea,gary-lockwood,william-sylvester,daniel-richter', 'Sci-Fi', 50, 'Stanley Kubrick', '1968-05-12', 'oR_e9y-bka0'),
(93, 'Vertigo', '/MovieTime/Images/movies/vertigo.jpg', 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.', 'james-stewart,kim-novak,barbara-bel-geddes,tom-helmore', 'Romance', 50, 'Alfred Hitchcock', '1958-05-22', 'Z5jvQwwHQNY'),
(94, 'Eternal Sunshine of the Spotless Mind', '/MovieTime/Images/movies/eternal-sunshine-of-the-spotless-mind.jpg', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.', 'jim-carrey,kate-winslet,tom-wilkinson,gerry-robert-byrne', 'Romance', 50, 'Michel Gondry', '2004-03-19', '07-QBnEkgXU'),
(95, 'Citizen Kane', '/MovieTime/Images/movies/citizen-kane.jpg', 'Following the death of publishing tycoon, Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; \'Rosebud\'.', 'orson-welles,joseph-cotten,dorothy-comingore,agnes-moorehead', 'Drama', 50, 'Orson Welles', '1941-09-05', '8dxh3lwdOFw'),
(96, 'The Hunt', '/MovieTime/Images/movies/the-hunt.jpg', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.', 'mads-mikkelsen,thomas-bo-larsen,annika-wedderkopp,lasse-fogelstrøm', 'Drama', 50, 'Thomas Vinterberg', '2013-01-10', 'x8IifEu67yU'),
(97, 'Full Metal Jacket', '/MovieTime/Images/movies/full-metal-jacket.jpg', 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.', 'matthew-modine,r-lee-ermey,vincent-d\'onofrio,adam-baldwin', 'Drama', 50, 'Stanley Kubrick', '1987-07-10', 'Ks_MbPPkhmA'),
(98, 'North by Northwest ', '/MovieTime/Images/movies/north-by-northwest.jpg', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.', 'cary-grant,eva-marie-saint,james-mason,jessie-royce-landis', 'Adventure', 50, 'Alfred Hitchcock', '1950-09-26', 'VZmbbx2p4yI'),
(109, 'John Wick: Chapter 2', '/MovieTime/Images/movies/john-wick-2.jpg', ' After returning to the criminal underworld to repay a debt, John Wick discovers that a large bounty has been put on his life. ', 'keanu-reeves,riccardo-scamarcio-ian-mcshane', 'Action', 20, 'Chad Stahelski', '2017-02-10', 'XGk2EfbD_Ps'),
(110, 'Dunkirk', '/MovieTime/Images/movies/dunkirk.jpg', 'Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army, and evacuated during a fierce battle in World War II. ', 'fionn-whitehead,barry-keoghan,mark-rylance', 'Action, Drama, History ', 20, 'Christopher Nolan', '2017-07-21', 'F-eMt3SrfFU'),
(111, 'The Expandables', '/MovieTime/Images/movies/expandables.jpg', 'A CIA operative hires a team of mercenaries to eliminate a Latin dictator and a renegade CIA agent.', 'sylvester-stallone,jason-statham,jet-li', 'Action, Adventure, Thriller', 20, 'Sylvester Stallone', '2010-08-13', '8KtYRALe-xo');

-- --------------------------------------------------------

--
-- Table structure for table `ORDERS`
--

CREATE TABLE `ORDERS` (
  `ORDER_ID` int(255) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USER_ID` int(255) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ORDERS`
--

INSERT INTO `ORDERS` (`ORDER_ID`, `TITLE`, `USER_ID`, `DATE`) VALUES
(5, 'John Wick Chapter 1', 4, '2019-11-19'),
(6, 'John Wick Chapter 1', 4, '2019-11-19'),
(7, 'John Wick Chapter 1', 4, '2019-11-19'),
(8, 'John Wick Chapter 1', 4, '2019-11-19'),
(9, 'John Wick Chapter 1', 4, '2019-11-19'),
(10, 'Dunkirk', 4, '2019-11-19'),
(11, 'John Wick Chapter 1', 4, '2019-11-19'),
(12, 'Dunkirk', 4, '2019-11-19'),
(13, 'John Wick Chapter 1', 4, '2019-11-19'),
(14, 'Dunkirk', 4, '2019-11-19'),
(15, 'John Wick Chapter 1', 4, '2019-11-19'),
(16, 'Dunkirk', 4, '2019-11-19'),
(17, 'John Wick Chapter 1', 4, '2019-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `TRENDING`
--

CREATE TABLE `TRENDING` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MOVIE_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TRENDING`
--

INSERT INTO `TRENDING` (`ID`, `NAME`, `IMAGE`, `MOVIE_ID`) VALUES
(1, 'Dunkirk', '/MovieTime/Images/carousel/dunkirk.jpg', 110),
(2, 'Avengers Endgame', '/MovieTime/Images/carousel/avengers-endgame.jpg', 55),
(3, 'The Expandables', '/MovieTime/Images/carousel/expandables.jpg', 111),
(4, 'Inception', '/MovieTime/Images/carousel/inception.jpg', 16),
(5, 'Intersteller', '/MovieTime/Images/carousel/intersteller.jpeg', 34),
(6, 'Dr Strange', '/MovieTime/Images/carousel/drstrange.jpg', 1),
(7, 'The Dark Knight', '/MovieTime/Images/carousel/dark-knight.png', 7);

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `ID` int(255) NOT NULL,
  `FIRSTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LASTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CARDNUMBER` int(255) DEFAULT NULL,
  `CITY` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STATE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZIP_CODE` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`ID`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `PASSWORD`, `ADDRESS`, `CARDNUMBER`, `CITY`, `STATE`, `ZIP_CODE`) VALUES
(4, 'Lalit', 'Silwal', 'lalitsilwal.2599@gmail.com', '$2y$10$UKLMvADVg08owbGWPbuJteHwfVw0WeR1xbqWb52v/7cp794CYu7I2', 'flat no. 1223 abc colony', NULL, 'Shalimar bagh', 'delhi', 110009),
(5, 'jini', 'thomas', 'jt2711302@gmail.com', '$2y$10$AAZtpPaoWtcINKfJmM/zxOx50fp6zv/ghX2puMLIvluY7qgRJH/MK', 'the dark brown cupboard, west wing', NULL, 'Aslan', 'Narnia', 777),
(6, 'mahima', 'goyal', 'mahima@gmail.com', '$2y$10$Rd/FDb0E6dmHV67ZOeZ48.zSu4CYWURMlA24K8uma2GzZJe21KKEa', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CASTS`
--
ALTER TABLE `CASTS`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CONFIRMED_ORDERS`
--
ALTER TABLE `CONFIRMED_ORDERS`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `MOVIES`
--
ALTER TABLE `MOVIES`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `TRENDING`
--
ALTER TABLE `TRENDING`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CASTS`
--
ALTER TABLE `CASTS`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `CONFIRMED_ORDERS`
--
ALTER TABLE `CONFIRMED_ORDERS`
  MODIFY `ORDER_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `MOVIES`
--
ALTER TABLE `MOVIES`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `ORDERS`
--
ALTER TABLE `ORDERS`
  MODIFY `ORDER_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `TRENDING`
--
ALTER TABLE `TRENDING`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
