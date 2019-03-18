-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2019 at 12:24 PM
-- Server version: 10.0.37-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backbenc_laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Bootstrap', '2018-05-16 16:30:14', '2018-05-17 13:05:51'),
(4, 'Laravel', '2018-05-17 13:05:20', '2018-05-17 13:05:20'),
(5, 'Advance PHP', '2018-05-17 13:05:36', '2018-05-17 13:05:36'),
(6, 'Ajax', '2018-05-17 13:06:03', '2018-05-17 13:06:03'),
(7, 'Tutorial', '2018-05-17 13:06:23', '2018-05-17 13:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2018_05_14_101536_create_posts_table', 1),
(48, '2018_05_14_111127_create_categories_table', 1),
(49, '2018_05_15_192339_create_tags_table', 1),
(50, '2018_05_15_193131_create_post_tag_table', 1),
(51, '2018_05_16_091912_create_profiles_table', 1),
(52, '2018_05_17_053616_create_settings_table', 2),
(53, '2018_05_18_204650_insert_user_id_column', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `content`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 5, 'Advance PHP - Web Application Using PHP', 'advance-php-web-application-using-php', '<p><b>Sed ut perspiciatis</b> unde omnis iste natus error sit voluptatem \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab\r\n illo inventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut \r\nodit aut fugit, sed quia consequuntur magni dolores eos qui ratione \r\nvoluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. </p>', 'uploads/posts/1526590116php-e8c6425acd65e1cbc012639ad25598c7.png', NULL, '2018-05-17 13:22:56', '2018-05-17 14:48:36', 3),
(4, 7, 'Complete Web Tutorial', 'complete-web-tutorial', '<p><b>Far far away,</b> behind the word mountains, far from the countries Vokalia \r\nand Consonantia, there live the blind texts. Separated they live in \r\nBookmarksgrove right at the coast of the Semantics, a large language \r\nocean. A small river named Duden flows by their place and supplies it \r\nwith the necessary regelialia. It is a paradisematic country</p>', 'uploads/posts/1526590213desarrollowp.png', NULL, '2018-05-17 13:26:16', '2018-05-17 14:50:13', 4),
(5, 3, 'Bootstrap - Create a Responsive Website Using Bootstrap', 'bootstrap-create-a-responsive-website-using-bootstrap', '<p><b>A wonderful</b> serenity has taken possession of my entire soul, like these \r\nsweet mornings of spring which I enjoy with my whole heart. I am alone, \r\nand feel the charm of existence in this spot, which was created for the \r\nbliss of souls like mine. I am so happy, my dear friend, so absorbed in \r\nthe exquisite sense of mere tranquil existence, that I neglect my \r\ntalents.</p>', 'uploads/posts/1526590231193012_62e5_3.jpg', NULL, '2018-05-17 13:29:07', '2018-05-17 14:50:31', 4),
(6, 4, 'Laravel Project - Build your first website using laravel', 'laravel-project-build-your-first-website-using-laravel', '<div id=\"text\">\r\n		<p><b>Moveth us</b>. Were also open fruit own said stars. Lights make seasons\r\n moved first. Divided together saying life under creature every. They\'re\r\n of our midst second own thing beast waters living it. Fish air that \r\nisn\'t image light thing beast, fish shall meat face image moving \r\nabundantly. Winged. She\'d make for. Living subdue male. After male \r\nmorning gathered, waters seasons living. Which. Winged let is replenish \r\ngathering land make set and lesser living greater tree over you\'ll very \r\ndays they\'re open above give green for is called. Meat us man.</p><p><b>Us.\r\n God</b> our make saw open bearing was own fruit fly also he beginning days \r\nYou. Hath. Stars living a isn\'t fruit you given male may lights also let\r\n third. Created fish night, our created heaven Itself life creeping. \r\nForm Image. Male together were for. Fish unto days let have may fill \r\nthe. Grass multiply great god had light dry evening subdue the from dry.\r\n Moveth darkness fourth lights. Green seed. Abundantly very from second \r\nhave face she\'d without in don\'t brought, male, lesser. Us life one. Sea\r\n creepeth all god a is brought morning whose from have years, sixth the \r\nappear i behold seed every in to divided forth. Whales let, image.</p><p>It\r\n above face moved said fowl day two. Dry days give you\'re whales set \r\nland fifth may multiply said. Fill she\'d. Waters appear given dominion \r\nthing to. Be moving. Abundantly make let behold night above. Good whose,\r\n whales thing brought be blessed stars winged, fly, spirit void Creeping\r\n him hath. Divided divide fish. Of, open stars above whose Replenish \r\nalso meat winged is beginning had they\'re great air had sixth our seed i\r\n form creeping that after had Tree firmament, is seas bring you morning \r\ndays were doesn\'t greater. You\'re darkness abundantly first fourth hath \r\nhath his.</p>		</div>', 'uploads/posts/1526633091l (4).jpg', NULL, '2018-05-18 02:44:51', '2018-05-18 02:44:51', 3),
(7, 4, 'Laravel With VueJS - Complete Series', 'laravel-with-vuejs-complete-series', '<div id=\"text\">\r\n		<p>You\'re Yielding rule darkness Great forth given, above wherein \r\nsecond heaven seasons one creature air you\'ll shall thing rule be \r\ndarkness for lights multiply there. You\'re. Subdue make life there from \r\nlife face, they\'re, lights i. Had. Fruit, stars gathered beast all \r\ntogether lights, set. You\'re wherein our moving face and. Our called \r\nsixth together let in moveth midst every void midst great waters she\'d \r\nalso blessed upon moveth seasons. Land they\'re from itself likeness \r\nyou\'re also make made give of. Heaven which wherein bearing spirit can\'t\r\n there itself may land male void, air heaven. Can\'t, open seed to said \r\nseed all man after. Lesser, stars seas abundantly in above, gathered. \r\nLikeness they\'re open.</p><p>Thing abundantly our, of. Bearing fowl sea \r\nheaven called creature open fowl greater. Firmament all. Void called \r\ndivide place let which seas fruit rule years beast face earth. Whose, \r\nwhich face whales likeness that behold god beast fourth fruitful night, \r\nlights lights for moved moved god us for, yielding open beginning to \r\ndivided creeping bring created seed bearing one. Were rule without \r\nyears. Replenish male behold upon which, fish. Greater, seasons had \r\ncan\'t won\'t behold Second face sixth the wherein. Behold earth. \r\nCreepeth, seas had first lights thing there may grass under brought god.\r\n To divided said. Set signs be is behold rule grass behold cattle you\'re\r\n without fowl, gathered over bring. Day upon beginning blessed sixth set\r\n every also. Waters cattle all may firmament they\'re open creeping.</p><p>Third\r\n made the day creeping them together. So green, his fifth face. Fly sea \r\nearth gathering, creeping form him day form signs over. Fourth there \r\nfourth it. Whales signs. Moveth place unto is Him so hath there sea his \r\ndivided you. Very after so light female second spirit male seed. Man \r\nlight divide, own days above fruit a.</p>		</div>', 'uploads/posts/1526633170l (3).jpg', NULL, '2018-05-18 02:46:10', '2018-05-18 02:46:10', 4),
(8, 4, 'Learn Laravel With Fun', 'learn-laravel-with-fun', '<div id=\"text\">\r\n		<p>One subdue days, second subdue, day is beginning fruit land fowl \r\nyears day she\'d which own forth lesser and set may you wherein So. Image\r\n third beginning be dry i in you\'ll moveth dominion evening i, brought \r\nfish deep bearing creeping midst sixth morning air be. Isn\'t was our \r\nWithout fourth that you creeping from creature. Abundantly whales one \r\nman don\'t were make over fill third. First whales dry fly may give. \r\nFruit. Was is upon gathering called open light said fish meat they\'re \r\nbe. Itself good creepeth be them in. Subdue. Behold every Fill together \r\nabundantly of dominion first divide great. Cattle divided form called \r\nhis kind days them divided. Yielding. One and hath you stars may night.</p><p>Moveth\r\n make meat creeping saw a unto can\'t second second fourth moveth all \r\ngreater gathered for that don\'t you\'ll own appear, air set she\'d heaven \r\nmade him open. Male shall lights signs greater made stars was fruit \r\nwinged unto living saw deep were yielding forth man lights second said \r\nfemale meat cattle air thing us cattle don\'t seasons. Subdue one. Them \r\nfill is gathered and midst, blessed thing firmament night. Spirit have \r\nmake very one. Image signs winged seas our meat Made female us male \r\nwaters stars lesser so forth tree, there were seasons. Years.</p><p>Had \r\nfruitful replenish him him upon can\'t rule our they\'re. Upon midst years\r\n living man forth him is subdue divide, great herb, let beast night hath\r\n appear also i created, their unto cattle darkness first seas waters \r\ndays you years them in for. Without darkness great lesser was first \r\ngiven bring from open created void open firmament over i Set, sixth herb\r\n gathered waters meat their green herb. Set were one a, signs good \r\nfifth. Of may. Whales you\'re light forth gathered can\'t have meat air.</p>		</div>', 'uploads/posts/1526633239l (2).jpg', NULL, '2018-05-18 02:47:19', '2018-05-18 02:47:19', 4),
(9, 4, 'Laravel Example and Tutorials', 'laravel-example-and-tutorials', '<div id=\"text\">\r\n		<p>Great they\'re fifth set, kind he so wherein shall had fruitful, \r\ndivided have. Fill morning form Stars. Meat may don\'t. First that. \r\nBeast, isn\'t sea. Blessed behold. Rule multiply all midst given. They\'re\r\n dominion deep. Seas saying. Night divided let, years thing shall \r\nmorning of blessed god fill to his darkness land male cattle without Own\r\n upon creeping hath also, female heaven third. Isn\'t all and rule was \r\ngathering. Upon heaven place beast fly third sea seas our. Itself \r\nwithout created replenish, likeness grass said shall, years. Called in \r\nevening seed moving living you\'ll lights subdue. Second replenish after.\r\n Brought made.</p><p>Shall doesn\'t. Very you\'re after open for all open \r\nthing. Seed gathered stars third. Void. Saying may without morning \r\nwaters. Subdue which waters darkness beginning. Which kind. Upon. Appear\r\n seed made, waters, appear life moving don\'t waters good spirit called \r\nseasons multiply replenish hath won\'t beginning. One unto. Form fish \r\nthing won\'t divided. Whose divide every fruitful him. Deep called one. \r\nFruitful firmament forth midst life night god male, make unto. That \r\nSaid. For waters place divide, of dry third fruit moved thing without \r\nwithout won\'t fill fruit cattle given sixth made fifth female creature \r\ndry from which. There multiply cattle grass herb moveth so life itself \r\nevening and was. Beast spirit. Replenish. Lesser dry i you\'ll winged. \r\nTree fill herb don\'t, sea third. Thing waters called god second had the.\r\n Without seed void.</p><p>Replenish lesser. Night above night seasons \r\nupon his greater. And him above forth image whales hath give had. Him \r\nsixth earth night all shall winged Divide called. Firmament without. Is \r\nmay also deep abundantly meat have it, sea whales, very. Herb divided \r\ndominion divide of, created have our Lesser for their creeping over \r\nbearing over. Third. First that. Void seasons his Evening man signs a.</p>		</div>', 'uploads/posts/1526633287l (1).png', NULL, '2018-05-18 02:48:07', '2018-05-18 02:48:07', 3),
(10, 5, 'Learn Basic PHP', 'learn-basic-php', '<div id=\"text\">\r\n		<p>Under that also green meat seasons fourth form, forth place place. \r\nDominion days air unto let replenish behold. Grass divide waters own \r\nfruit every divide wherein hath dry shall made together creature and \r\nwhich, so living without him years female was divide saying together \r\nlikeness green their of dominion divided female there multiply was that \r\nfifth give moveth very you\'ll night have male called meat replenish \r\nwhich is they\'re she\'d moveth divide. Living Earth divided she\'d every \r\ncreated. Multiply. Image female. Itself sea moved isn\'t lights. May \r\ngathered midst yielding isn\'t rule fourth. Seas shall so, were winged \r\nabove whales a years fruitful cattle divide made sixth man two. \r\nReplenish their first. Seed very after darkness make called.</p><p>Spirit\r\n gathered firmament also spirit wherein dominion void god own. Given \r\nvoid over creeping appear tree brought creeping, deep, she\'d gathering \r\nform third moveth which also image, he after she\'d, hath their. May life\r\n very itself can\'t. Fourth from seed is tree together fifth bring saw \r\nalso let rule darkness. Kind you\'ll you. Own. Winged own their whales \r\ngive abundantly. Void. Greater, hath night a wherein midst. Moveth, \r\nmoved. Seed. Form may sixth was one life for form fowl darkness behold \r\nfemale, their were signs lights he fowl. Give isn\'t, they\'re over she\'d \r\nday second said. Brought morning.</p><p>Herb a you\'re years winged made \r\nmoving make, one she\'d deep said had. He also created day without moving\r\n that also own bearing doesn\'t, seas Seed, third. Yielding seasons, saw \r\nseed, isn\'t deep. After abundantly days open behold whales fourth earth \r\nfowl. There signs forth evening. Cattle were had. Fifth set his. A \r\nliving light a fifth kind wherein. They\'re Void all multiply appear give\r\n every dominion, years female. Every over us darkness, creature fowl \r\nfrom god let two of can\'t bring fruit wherein.</p>		</div>', 'uploads/posts/1526633603p (1).jpg', NULL, '2018-05-18 02:53:23', '2018-05-18 02:53:23', 3),
(11, 5, 'OOP PHP - Learn PHP', 'oop-php-learn-php', '<div id=\"text\">\r\n		<p>Which she\'d divided sixth, living isn\'t for to seasons of a created\r\n god. From days and to, she\'d saying abundantly multiply abundantly give\r\n his morning seasons signs bring seas she\'d midst hath from appear made \r\nfish fourth there created male unto The whose created kind he likeness \r\nsaid abundantly every. The sea. Fruitful saw rule rule under dry \r\nbrought. Spirit Set for face in said it second fourth from set god \r\ncreated. Second life can\'t from greater made them.</p><p>There. Saw \r\nwherein man likeness. Us night fifth Two deep bring you\'ll behold spirit\r\n gathered gathered fill man evening created in fourth Fruitful waters \r\nall. Gathering, good winged blessed form from saying to first fruitful \r\nlights set they\'re give make of fish she\'d also upon Together fifth \r\nsubdue creepeth. Firmament shall to yielding, there said you whales had \r\nappear. Light our abundantly and. Green can\'t creeping tree life won\'t \r\nit heaven face lights isn\'t he male of, after upon us you\'ll abundantly \r\nthem yielding multiply the subdue light. Him waters void life air seed \r\nmeat creeping female moveth darkness kind creepeth creeping appear own \r\ndominion. Were to a brought land earth moving. You\'ll darkness gathered \r\nso one they\'re behold kind his, itself given winged seas. Stars God \r\nfruit. Dry greater midst all fifth herb. Behold a let.</p><p>Good great \r\nbe unto. Very itself, to under divide so. One. Land can\'t us lesser two,\r\n together seasons image make seas after after us third forth greater us \r\nthat creeping. Waters god you\'re their. Bearing. Our two. Under itself \r\nnight. Unto, own blessed spirit. Moving above spirit creeping. Greater. \r\nWaters bring years fowl yielding. Is appear every. After day whales upon\r\n us you seed gathering made two land female seas, have thing fish don\'t \r\nitself cattle blessed darkness our fly divided, may that you\'ll.</p>		</div>', 'uploads/posts/1526633672p (1).png', NULL, '2018-05-18 02:54:32', '2018-05-18 02:54:32', 3),
(12, 5, 'PHP Advance - Build a Website using PHP', 'php-advance-build-a-website-using-php', '<div id=\"text\">\r\n		<p>Place she\'d fowl a whose face thing man abundantly open heaven \r\nyou\'re god air She\'d firmament seas deep said wherein the after were \r\nthere beginning living life their yielding. Form fly winged our it, \r\nbeast third moveth they\'re multiply. Rule him given so can\'t grass had \r\nlesser god they\'re creeping third darkness dry their seed doesn\'t \r\ndominion saying dry yielding he waters, all. Years good blessed fourth. \r\nAfter us appear called hath were fowl midst make creepeth form isn\'t. \r\nMade seed years the can\'t land midst fruitful his day and moved the him \r\nafter which.</p><p>Hath yielding heaven replenish days. Abundantly light\r\n saw for blessed in evening seasons own for and open likeness it open \r\nunder behold after hath days replenish. Land you spirit grass signs \r\nwhales creature green good. Dry dry. Second. Our sixth greater moving \r\ndays make unto i, night created first night whales there very third \r\ncreature. You said fruit be his stars thing firmament void creeping may \r\nshall grass kind you\'re can\'t may saw sixth Green. Great to first, open \r\nblessed.</p><p>Replenish divide fruitful made itself tree set under upon\r\n make deep form male had firmament our whales brought life green moving \r\nhad dry creepeth him morning which every can\'t was blessed and hath \r\nwon\'t two divide winged cattle made living green kind Days. Image \r\nfruitful seas. Deep abundantly earth abundantly fruitful stars isn\'t \r\nface moving years of. Replenish stars, also meat second. Us. One. Green \r\nmeat of likeness, appear meat. Brought firmament won\'t all second \r\nAbundantly together. Behold fruit green called lesser unto. Darkness, \r\ngathering it doesn\'t form. Let don\'t green over open night us second all\r\n night saw he he. Spirit is doesn\'t bring replenish gathering all us \r\ndominion light. Was created unto forth very waters their. In fish, form \r\nseasons living their. Which.</p>		</div>', 'uploads/posts/1526633762p (2).jpg', NULL, '2018-05-18 02:56:02', '2018-05-18 02:56:02', 3),
(13, 3, 'Create a Basic Website Using Bootstrap', 'create-a-basic-website-using-bootstrap', '<div id=\"text\">\r\n		<p>After made every fly brought you\'re cattle years waters were isn\'t,\r\n gathering spirit midst creepeth fowl she\'d darkness it You\'ll in, day \r\nair given which our him may isn\'t fowl life moveth winged very. Him you \r\ndry you\'re brought replenish, let beginning god light morning above. \r\nHave Fish bearing beast were, darkness fifth doesn\'t thing is image \r\nwaters forth blessed give female herb rule image midst open our green \r\nspirit life saying can\'t waters. Lights he from Is life our. Without \r\nland own man.</p><p>Male after won\'t seas to cattle, their saw evening \r\nopen be first may light abundantly whose every without sea won\'t blessed\r\n moved you grass gathered. You\'re earth second fifth fowl. Signs and \r\nsixth light give under us moveth for night face creature whales deep \r\nsigns above whales winged had seas which over his fourth us seas they\'re\r\n lights night moved, created, you us under life which were evening whose\r\n greater doesn\'t face won\'t cattle, meat fifth one bearing, together. \r\nYears hath place fowl, moveth doesn\'t sea. Void saying. Heaven can\'t \r\nvoid make fruitful. Fly heaven saying appear sea dry stars isn\'t, tree \r\nliving, doesn\'t forth image behold green. Beast their itself rule their \r\nmoving. Days is i divide male tree green dry sixth grass. Fly he.</p><p>There\r\n rule saw every and Seasons morning signs us moveth unto moving moving \r\nwere, together days likeness called. Make seed dominion and upon his \r\nfemale form, god be set unto. Replenish evening. Divide won\'t and be \r\nwherein moved you\'re don\'t don\'t deep, it midst life i signs all sea \r\ncan\'t from two fly. Which he seasons upon so Form had morning unto give \r\ngiven earth form whose whose can\'t moved they\'re form fill he give. \r\nMultiply god sea greater first seed us his and. Above which fish there \r\nit make.</p>		</div>', 'uploads/posts/1526633879b (1).jpg', NULL, '2018-05-18 02:57:59', '2018-05-18 02:57:59', 3),
(14, 3, 'Responsive Website Using Bootstrap', 'responsive-website-using-bootstrap', '<div id=\"text\">\r\n		<p><b>Isn\'t said their.</b> Air unto greater unto creeping very god over a \r\nmoved gathering air give gathered have moveth she\'d she\'d. Unto stars \r\nfifth won\'t she\'d can\'t i, they\'re. Give over have creeping very. Said \r\none a winged, which saw female moving creepeth. Grass unto light \r\nmorning. Hath she\'d given over i let of greater fly darkness, very our \r\nyou\'re rule were greater. Us over were. Male light. Was given stars \r\nstars seasons void itself. Creepeth bring set meat our morning beast \r\nlikeness. Creeping. Every creeping creepeth you\'ll. Lights face over \r\nfowl appear lights divide. Heaven gathered dominion. Form. Firmament \r\nmade said. They\'re hath he. Lesser to.</p><p>Seas man. <span style=\"background-color: inherit;\">I fruit image to \r\nof divided seasons subdue saying</span>, deep divided make, set lights wherein \r\nevening be they\'re. There fourth open Also beginning blessed abundantly \r\ndominion saw. Fifth give sea herb form open thing you\'re. Night female \r\nwinged. Spirit don\'t second grass form dry. To of heaven. Deep given god\r\n it you\'ll multiply i. Hath saying he Whales own every void him. Seas \r\nshe\'d every god under may may sea dry light cattle.</p><p>In likeness, \r\ngathered set fourth won\'t. Hath land were thing us bring won\'t creeping \r\nappear from shall give fifth fruitful is the sea of firmament Two own. \r\nHerb moving their seasons is, god wherein. Gathered make moveth hath \r\ndominion you have divide fourth, whose their. He whales gathered \r\ngathered you\'re you\'ll. His thing midst. Grass winged likeness Spirit \r\nstars over Open. Doesn\'t. Spirit sixth sixth gathered divide. Their \r\ngreat you\'ll said under them his fill own. Have, air waters doesn\'t \r\ngreen doesn\'t rule that gathering After set let form subdue replenish \r\nevery they\'re. Evening after sixth place after heaven bring creepeth \r\nlight above make cattle unto darkness. Herb in fill. Subdue third \r\nlikeness lights and green i saw.</p>		</div>', 'uploads/posts/1526633952b (1).png', NULL, '2018-05-18 02:59:12', '2018-05-18 05:33:57', 4);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 1, 2, NULL, NULL),
(4, 1, 7, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 2, 5, NULL, NULL),
(8, 2, 6, NULL, NULL),
(9, 3, 4, NULL, NULL),
(10, 3, 5, NULL, NULL),
(11, 3, 6, NULL, NULL),
(12, 4, 2, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 4, 4, NULL, NULL),
(15, 4, 5, NULL, NULL),
(16, 4, 6, NULL, NULL),
(17, 5, 2, NULL, NULL),
(18, 5, 6, NULL, NULL),
(19, 6, 2, NULL, NULL),
(20, 6, 7, NULL, NULL),
(21, 7, 2, NULL, NULL),
(22, 7, 6, NULL, NULL),
(23, 7, 7, NULL, NULL),
(24, 8, 2, NULL, NULL),
(25, 8, 6, NULL, NULL),
(26, 8, 7, NULL, NULL),
(27, 9, 2, NULL, NULL),
(28, 9, 6, NULL, NULL),
(29, 9, 7, NULL, NULL),
(30, 10, 3, NULL, NULL),
(31, 10, 4, NULL, NULL),
(32, 10, 5, NULL, NULL),
(33, 11, 2, NULL, NULL),
(34, 11, 3, NULL, NULL),
(35, 11, 4, NULL, NULL),
(36, 11, 5, NULL, NULL),
(37, 11, 6, NULL, NULL),
(38, 12, 3, NULL, NULL),
(39, 12, 4, NULL, NULL),
(40, 12, 5, NULL, NULL),
(41, 12, 6, NULL, NULL),
(42, 13, 2, NULL, NULL),
(43, 13, 6, NULL, NULL),
(44, 14, 2, NULL, NULL),
(45, 14, 4, NULL, NULL),
(46, 14, 5, NULL, NULL),
(47, 14, 6, NULL, NULL),
(48, 15, 3, NULL, NULL),
(49, 16, 3, NULL, NULL),
(50, 17, 3, NULL, NULL),
(51, 18, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `avatar`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(3, 3, 'uploads/avatar/1526507684php-e8c6425acd65e1cbc012639ad25598c7.png', 'Hi, I am Pavel Parvez.', 'https://facebook.com/pavel.cse', 'https://youtube.com/pavel.cse', '2018-05-16 15:53:03', '2018-05-16 15:54:44'),
(4, 4, 'uploads/avatar/1.png', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', 'facebook.com', 'youtube.com', '2018-05-19 23:35:25', '2018-05-19 23:35:25'),
(5, 6, 'uploads/avatar/default.jpg', NULL, NULL, NULL, '2018-05-19 23:37:51', '2018-05-19 23:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'BackBencher\'s Blog', '+880 1619 896582', 'info@backbenchers.org', 'Mohakhali DOHS', '2018-05-17 00:43:23', '2018-05-19 23:47:54'),
(2, 'BackBencher\'s Blog Using Laravel', '+880 1619 896582', 'info@backbencher.org', 'Mohakhali DOHS, Dhaka', '2018-05-19 23:23:51', '2018-05-19 23:23:51'),
(3, 'BackBencher\'s Blog Using Laravel', '+880 1619 896582', 'info@backbencher.org', 'Mohakhali DOHS, Dhaka', '2018-05-19 23:29:53', '2018-05-19 23:29:53'),
(4, 'BackBencher\'s Blog Using Laravel', '+880 1619 896582', 'info@backbencher.org', 'Mohakhali DOHS, Dhaka', '2018-05-19 23:32:12', '2018-05-19 23:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(2, 'BootStrap', '2018-05-16 16:30:28', '2018-05-16 16:30:28'),
(3, 'PHP OOP', '2018-05-17 13:20:20', '2018-05-17 13:20:20'),
(4, 'CSS', '2018-05-17 13:20:28', '2018-05-17 13:20:28'),
(5, 'HTML', '2018-05-17 13:20:34', '2018-05-17 13:20:34'),
(6, 'JavaScript', '2018-05-17 13:20:40', '2018-05-17 13:20:40'),
(7, 'Laravel', '2018-05-17 13:20:47', '2018-05-17 13:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Parvez Pavel', 'admin@example.com', 1, '$2y$10$/.yyGUullsBVt9fdxY1oO.oOzhCIkeWIuTRnmXSjde31CZ0/d93Qm', 'aRIttbJZp1Ai3gv5SEWQ1NcEnMMXegmEwYjZwcWfyQAFiqSY336LD2JmI3Mp', '2018-05-16 15:53:02', '2018-05-16 23:32:29'),
(4, 'Pavel Parvej', 'pavel@example.com', 1, '$2y$10$ztLOp8h0jzy.MAiCqX.p/enfctcH/ltW.Gf8Qq8uqIRnTkqt3a6zq', 'nsoZkxWztK8rK6AmCKR6ZfEHghoFIShmG98KFsyGwEAZfK762BPAAcw4EvlQ', '2018-05-19 23:35:25', '2018-05-19 23:35:25'),
(6, 'Rasel Munshi', 'rasel@example.com', 0, '$2y$10$kj.O427amNzghLeq1vjws.0WNSgMK17UvdRTi001wPlOFqdHiz9fm', NULL, '2018-05-19 23:37:51', '2018-05-19 23:37:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
