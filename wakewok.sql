-- phpMyAdmin SQL Dump
-- version 4.0.2
-- http://www.phpmyadmin.net
--
-- Računalo: localhost
-- Vrijeme generiranja: Tra 13, 2015 u 05:13 AM
-- Verzija poslužitelja: 5.6.11-log
-- PHP verzija: 5.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza podataka: `wakewok`
--
CREATE DATABASE IF NOT EXISTS `wakewok` DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci;
USE `wakewok`;

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  `description` text COLLATE utf8_croatian_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci AUTO_INCREMENT=16 ;

--
-- Izbacivanje podataka za tablicu `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `lat`, `long`, `description`) VALUES
(1, 'Piadina', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3a84076bfc.jpg', NULL, NULL, '<p>Piadina je jo&scaron; jedna u nizu genijalnih talijanskih kulinarskih izuma. Ba&scaron; poput pizze, i piadine su se stoljećima smatrale jelom za siroma&scaron;an puk. Danas su piadine najpopularniji street food u Italiji. U njihovu aromu satkana su stoljeća talijanske tradicije i antičke kulture. Posebnost piadina su beskvasne pogače koje se peku u posudama od terakote i pune raznim prilozima.</p><p>Piadina je na&scaron;a neokrunjena kraljica sendviča. Za izradu koristimo isključivo ručno izrađene beskvasne pogače, rađene po tradicionalnoj recepturi. Možete birati između klasične pogače i integralne. Piadina je savr&scaron;en izbor za svaku priliku. Ukusna, aromatična i sočna. Savr&scaron;en i lagan izbor za ručak. Odaberite svoju savr&scaron;enu piadinu i uživajte u okusima antičkog Mediterana!</p>'),
(2, 'Wrap', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3ab521c712.jpg', NULL, NULL, '<p>Ovaj raznoliki i jednostavan sendvič pruža zanimljivu alternativu klasičnom sendviču. Zbog mno&scaron;tvo kombinacija, beskvasne pogače i uvijek svježih sastojaka, wrap je savr&scaron;en izbor za lagani obrok. Za razliku od burritosa kod kojeg se u tortillu tradicionalno stavljaju grah i riža, u wrap se umotaju svi sastojci od kojih se inače radi sendvič - salata, meso, povrće, svježi sir&hellip;&scaron;to god poželite! Wrap je pravi kameleon koji pruža zdravu alternativu u onim trenucima kad vam se jede ne&scaron;to laganije, a drugačije!</p><p>Urbana legenda kaže da je wrap nastao u Kalifornijskom lancu &ldquo;I love juicy&rdquo; 1980-ih godina, no tu istu stvar tvrdi i restoran iz Connecticuta, Bobby Valentine&#39;s Sports Gallery Caf&eacute;, koji kažu da je wrap nastao kao kreativna pogre&scaron;ka kad im se jednog dana pokvario toaster. Njihov konobar se u tom nezgodnom trenutku sna&scaron;ao i umotao sve komponente sendviča u tortilu. Jednostavno &ndash; wrap &amp; go! Kakva slasna pogre&scaron;ka!</p>'),
(3, 'Gyros', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3a7de36151.jpg', NULL, NULL, '<p>Gyros je delikatesni grčki sendvič koji se tradicionalno radi od komadića svinjetine. Ovaj grčki okus hedonizma jedan je od na&scaron;ih najprodavanijih proizvoda. Posebnost Gyrosa proizlazi iz načina pripreme mesa zbog kojeg je ono uvijek iznimno sočno i ukusno. Meso (u grčkoj verziji svinjsko, a u turskoj janjetina, piletina, govedina&hellip;) se reže na &scaron;nite i prethodno marinira. Tako pripremljene &scaron;nite slažu se u slojevima na ražanj, koji se peče uspravno. Kad je meso s vanjske strane pečeno, struže se o&scaron;trim noževima i priprema u Gyros sendvič.</p><p>U Koykanu je Gyros sinonim za veliki, sočan i uvijek svježi sendvič napravljen od najkvalitetnijeg mesa i svježeg&nbsp; povrća. Za &scaron;to potpuniji doživljaj autentičnosti, za Gyros koristimo samo lepinje koje svaki dan sami pečemo. Na&scaron;e umake uvijek svježe pripremamo, držeći se tradicionalne recepture.</p>'),
(4, 'Falafel', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3a927a0719.jpg', NULL, NULL, '<p>Falafel su arapske okruglice od slanutka i raznih orijentalnih i mediteranskih začina. Po nekima, falafel potječe iz Egipta, odakle se pro&scaron;irio na istočnu obalu Mediterana i sjevernu Afriku. Falafel često nazivaju i vegeterijanskom inačicom ćevapčića. No, ovo jelo je mnogo vi&scaron;e od toga! Ovi bezglutenski kroketi ispunit će vas jedinstvenim spojem okusa orijenta: slanutak, sezam, tahini, kumin, korijander... 100% arome upakirane u male hrskave delicije.</p><p>Falafel nije samo bezobrazno ukusan bezmesni obrok, on je i bogat proteinima, vlaknima i folnom kiselinom. Sam slanutak ima vrlo niski indeks natrija i nezasićenih masnih kiselina. Falafel kuglice mogu se jesti kao zasebno jelo ili umotani u wrap ili kao sendvič (u lepinji).&nbsp; Zdrav izbor i punoća delikatesnog okusa orijenta!</p>'),
(5, 'Burrito', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3aa5b0c8d7.jpg', NULL, NULL, '<p>Talijani &nbsp;imaju piadine, Arapi falafel, Nijemci currywurst, a Mexico nam je i&scaron;čarobirao svoju inačicu popularnih &bdquo;streetfood&ldquo; sendviča &ndash; famozni burrito! Za sve ljubitelje začinjene meksičke hrane, burrito je nezaobilazan &bdquo;must try&ldquo;! Iako je burrito u posljednim desetljećima najveću popularnost dosegao u Americi, danas postoje mnoge teorije po kojima je ovo ustvari američko-meksička hrana. Sredi&scaron;nji i južniji Meksički restorani često niti ne nude burritose na svojem meniju, osim ako ih ne rade za potrebe američkih turista.</p><p>Nadjev &nbsp;za burrito se najče&scaron;će radi od mljevenog mesa, graha i kukuruza ili pak od pržene piletine s dodatkom povrća. Naravno, sve skupa je začinjeno crvenom paprikom ili čili papričicama.&nbsp; U Koykan burritose stavljamo i svježe pripremljeni nadjev od riže, a svaki burrito možete upotpuniti prilozima i umacima po vlastitom izboru.&nbsp; Ono po čemu se burrito&nbsp; razlikuje od tortille je to &scaron;to se u pravilu poslužuje na način da je nadjev sakriven unutar tortille. Na taj način se riža, meso, umaci i prilozi spoje u jedan savr&scaron;en, mega sočan zalogaj. Pripremite salvete jer ne &scaron;tedimo na nadjevu!</p>'),
(6, 'Quiche', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3ac319f073.jpg', NULL, NULL, '<p>Iako se danas ovaj specijalitet smatra tipično francuskim jelom, quiche originalno potječe iz ruralnih krajeva Njemačke. Riječ quiche dolazi od njemačke riječi <em>Kuchen</em>, &scaron;to znači kolač. No, Quiche nije slatki, već slani specijalitet u kojem se hrskavi i kremasti sastojci savr&scaron;eno sjedinjuju u prhkom tijestu. Najslavniji quiche je Quiche Lorraine, klasik koji osvaja nadjevom od dimljene slanine i sira pomije&scaron;anog s kremom od jaja i vrhnja.</p><p>Quiche svoju popularnost zahvaljuje jednostavnosti pripreme i raznovrsnosti nadjeva. Quiche nema pravila. Nadjevi mogu biti od povrća poput brokule, &scaron;pinata, blitve, poriluka pa sve do&nbsp; mesa, sira i morskih plodova.&nbsp;<em>Quiche</em>&nbsp;se može servirati kao doručak,ručak, večera&hellip;kao toplo ili hladno jelo, samostalno ili kao prilog. Quiche je sočan, aromatičan, prozračan. Savr&scaron;en obrok za svaku priliku!</p>'),
(7, 'Currywurst', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3ab73650f1.jpg', NULL, NULL, '<p>Currywurst je u Njemačkoj isto &scaron;to je pizza u Italiji, hot dog u Americi, a burek na Balkanu. No, currywurst je mnogo vi&scaron;e od nacionalnog fast food jela. Currywurst je kult.&nbsp;<em> &ldquo;Iz dosade sam pomije&scaron;ala začine s umakom od rajčice i okus je bio predivan&rdquo;</em> skromno je opisala Herta Hauwer kako je prije 65 godina izumila danas najpopularnije njemačko nacionalno jelo.</p><p>Samo 3 jednostavna sastojka potrebna su da se kreira ovo kultno jelo - grillana kobasica od najkvalitetnijeg svinjskog mesa, ketchup i curry prah. &nbsp;Currywurst se obično servira uz pommes frittes ili kruh. 2009. u Berlinu je otvoren i muzej posvećen ovom jelu, koji godi&scaron;nje privuče preko 80,000 posjetioca. Preko 800 milijuna currywursta pojede se u Njemačkoj svake godine, &scaron;to znači da se svake minute pojede oko 1500 currywursta!</p>'),
(8, 'Quesadilla', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3ab31834cd.jpg', NULL, NULL, '<p>Kako bi zadržao hranu toplom, zamotao bi sve u jednu veliku tortillu.</p><p>Ovo je jo&scaron; jedna sočna i ukusna meksička delicija koja se radi od meksičkih tortilla punjenih sirom i raznim sastojcima. Quesadille su posebne po tome &scaron;to se nadjev umota u tortillu i zatim po sredini presavine u trokut. Kako bi se sir savr&scaron;eno otopio i u potpunosti oslobodio svoju aromu, tako preklopljena quesadilla poprži se na grillu i servira s guacamole ili kiselim vrhnjem.</p><p>Quesadilla kakvu danas poznajemo, mje&scaron;avina je tradicija Starog i Novog svijeta. Iako je ovo tradicionalno meksička hrana, &Scaron;panjolci su je prisvojili i u njenu recepturu dodali sastojke poput piletine, govedine, morskih plodova&hellip;. Oni su i imenovali ove slasne zalogaje &ldquo;quesadilla&rdquo;, &scaron;to doslovce znači mali sirasti zalogaji. Bilo da preferirate jednostavne quesadille ili one s mesom i raznim drugim kombinacijama, svi obožavatelji sira bit će odu&scaron;evljeni bogatstvom okusa ovog jela čija receptura se stoljećima usavr&scaron;avala, da bi danas dostigla svoj aromatični vrhunac.</p>'),
(9, 'Nuggets', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3acad257a5.jpg', NULL, NULL, '<p>Nuggetsi su na&scaron;i najhrskaviji, najsočniji i najukusniji mali zalogajčići koji se mogu naručiti kao zasebno jelo ili prilog. Svaki nugget je ručno pripremljen od samo kvalitetnih dijelova piletine i pržen u visokokvalitetnom ulju.</p><p>Ne koristimo nikakve pojačivače okusa ili aditive. Vegetarijanci među vama mogu odabrati i na&scaron;e bezmesne nuggetse koji uz kuglice falafela čine idealni prilog ili samostalan snack. Ove ukusne zalogaje upotpunjujemo na&scaron;im domaćim umacima koji savr&scaron;eno pristaju uz ove zlatne krokete!</p>'),
(10, 'Ciabatta', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3a85a6768c.jpg', NULL, NULL, '<p>Tajna najfinije ciabatte: robusna i hrskava izvana, a delikatna i prozračna iznutra. Tajna Koykan ciabatte: svaki dan svježe pečena, po vlastitoj recepturi i bez ikakvih aditiva ili konzervansa! Iako se danas&nbsp; vi&scaron;e ne podrazumijeva da restorani nude svoja vlastita peciva, mi smo izrazito ponosni na na&scaron; autentični i aromatični mediteranski kruh. Postoji izreka koja kaže da je kruh život. Apsolutno se slažemo s tom mudro&scaron;ću. Zato u Koykanu svaki dan iznova ulažemo mnogo truda i pažnje u svježinu i premium kvalitetu na&scaron;ih proizvoda.</p><p>Ciabatta je nastala 1982. u malom gradu blizu Venecije, kao talijanski odgovor na popularni francuski baguette. Tradicionalne ciabatte radile su od tijesta koje se tokom prethodnih dana nije iskoristilo. Ti ostaci umijesili bi se u jednu veliku kuglu i zatim razrezali na manje komade, koji su se stavljali u pećnicu. Zbog toga je ciabatta dobila svoj nepravilan oblik i hrskavu koru s rupičastom teksturom i obiljem arome!</p>'),
(11, 'Burger', 'http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3aa20bfa64.jpg', NULL, NULL, '<p>Ponekad nam se ba&scaron; najvi&scaron;e od svega na svijetu jede veliki, mekani, sočni, hamburger. Svatko od nas ima svoju omiljenu kombinaciju za najsavr&scaron;eniji hamburger, ali ono &scaron;to ultimativno svi obožavaju je punoća okusa koju tvore mekano i gusto pecivo u kombinaciji sa sočnim grilanim mesom, te ukusnim umacima i bogatim prilozima. Mi nudimo gurmanske hamburgere od najkvalitetnijeg mesa, vlastite umake, uvijek svježe priloge i naravno - ručno rađena svježa domaća peciva!</p><p>Hamburger je vjerojatno najjednostavnije i najpopularnije jelo na svijetu. U Americi postoje čak klubovi &scaron;tovatelja kulta hamburgera. Svaki mjesec kuhari osmi&scaron;ljavaju nove recepte i kombinacije, kako bi kreirali najsavr&scaron;eniji i najukusniji hamburger. U Koykanu nudimo tri veličine hamburgera, od regular veličine do na&scaron;eg mastodonta &ndash; gospodina Mrvice! Usudi&scaron; li se izazvati ga?</p>'),
(12, 'Salata', NULL, NULL, NULL, NULL),
(13, 'Bezalkoholna pića', NULL, NULL, NULL, NULL),
(14, 'Smoothie', NULL, NULL, NULL, '<p>Smoothie je vrlo zdrava, energetska bomba satkana od raznobojnih kombinacija svježeg voća i/ili povrća. Za razliku od milkshakea, na kojeg neodoljivo podsjeća svojom teksturom, u smoothie se ne stavljaju ni sladoled ni &scaron;ećer, već samo prirodni sastojci. Najče&scaron;ći dodaci su smrznuti jogurt, med, čaj, mlijeko (najče&scaron;će sojino), lanene sjemenke, sezam i/ili ora&scaron;asti plodovi. Smoothie sadržava cijele plodove voća &scaron;to ga čini prirodnim izvorom vlakana, vitamina i minerala.</p>\r\n\r\n<p><img alt="" src="http://koykan.com/files/c/resize/d1d6489b20ad8f7d0dbc53f155736ad9/54b3acd7981ab.jpg" style="height:525px; width:1500px" /></p>\r\n\r\n<p>Smoothie se brzo priprema i odličan je izvor energije za doručak, ručak, večeru ili pak desert. Ovo piće je poprilično zasitno i može poslužiti kao niskokalorična zamjena za obrok. Povećajte dnevni unos voća i povrća ovim ukusnim i 100% prirodnim napitkom koji će vam osigurati energiju za cijeli dan!</p>'),
(15, 'Svježe Cijeđeni Sokovi', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `price` double NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci AUTO_INCREMENT=294 ;

--
-- Izbacivanje podataka za tablicu `food`
--

INSERT INTO `food` (`id`, `name`, `price`, `category`) VALUES
(18, 'Curry piletina Piadina', 22, 1),
(17, 'Lovački steak Piadina', 27, 1),
(16, 'Grill burger Piadina', 25, 11),
(15, 'Grill lungić Piadina', 25, 1),
(14, 'Grill piletina Piadina', 22, 1),
(19, 'Teriyaki piletina Piadina', 25, 1),
(20, 'Sezam nuggets Piadina', 24, 9),
(21, 'Dimljena šunka Piadina', 21, 1),
(22, 'Dimljena puretina Piadina', 22, 1),
(23, 'Pršut & Rukola Piadina', 25, 1),
(24, 'Grill tuna steak Piadina', 27, 1),
(25, 'Tuna & Rukola Piadina', 24, 1),
(26, 'Meso rakova & Rukola Piadina', 22, 1),
(27, 'Mozzarella & Rukola Piadina', 19, 1),
(28, 'Mozzarela & Grill povrće Piadina', 21, 1),
(29, 'Feta & Rukola Piadina', 19, 1),
(30, 'Feta & Grill povrće Piadina', 21, 1),
(31, 'Veggie nuggets Piadina', 21, 9),
(32, 'Grill povrće & Rukola Piadina', 17, 1),
(33, 'Grill piletina Wrap', 24, 2),
(34, 'Grill lungić Wrap', 27, 2),
(35, 'Grill burger Wrap', 25, 11),
(36, 'Lovački steak Wrap', 28, 2),
(37, 'Curry piletina Wrap', 24, 2),
(38, 'Teriyaki piletina Wrap', 27, 2),
(39, 'Sezam nuggets Wrap', 25, 9),
(40, 'Dimljena šunka Wrap', 24, 2),
(41, 'Dimljena puretina Wrap', 24, 2),
(42, 'Pršut & Rukola Wrap', 27, 2),
(43, 'Grill tuna steak Wrap', 29, 2),
(44, 'Tuna & Rukola Wrap', 27, 2),
(45, 'Meso rakova &  Rukola Wrap', 25, 2),
(46, 'Mozzarella & Rukola Wrap', 23, 2),
(47, 'Mozzarella & Grill povrće Wrap', 25, 2),
(48, 'Feta & Rukola Wrap', 23, 2),
(49, 'Feta & Grill povrće Wrap', 25, 2),
(50, 'Veggie nuggets Wrap', 23, 9),
(51, 'Grill povrće &  Rukola Wrap', 21, 2),
(52, 'Grill piletina Gyros Regular', 23, 3),
(53, 'Grill lungić Gyros Regular', 27, 3),
(54, 'Grill burger Gyros Regular', 24, 11),
(55, 'Lovački steak Gyros Regular', 27, 3),
(56, 'Curry piletina Gyros Regular', 23, 3),
(57, 'Teriyaki piletina Gyros Regular', 26, 3),
(58, 'Sezam nuggets Gyros Regular', 25, 9),
(59, 'Grill tuna steak Gyros Regular', 27, 3),
(60, 'Mozzarella & Grill povrće Gyros Regular', 24, 3),
(61, 'Feta & Grill povrće Gyros Regular', 24, 3),
(62, 'Veggie nuggets Gyros Regular', 22, 9),
(63, 'Grill povrće &  Rukola Gyros Regular', 20, 3),
(64, 'Falafel Original', 23, 4),
(65, 'Falafel  & Grill povrće', 26, 4),
(66, 'Falafel Wrap', 24, 4),
(67, 'Falafel & Grill povrće Wrap', 27, 4),
(68, 'Falafel Piadina', 23, 4),
(69, 'Falafel & Grill povrće Piadina', 26, 4),
(70, 'Chili con carne Burrito', 27, 5),
(71, 'Pollo Burrito', 28, 5),
(72, 'Curry Pollo Burrito', 28, 5),
(73, 'Queso Burrito', 24, 5),
(74, 'Tonno Burrito', 32, 5),
(75, 'Vege Burrito', 22, 5),
(76, 'Spinach & Ham Quiche Regular', 10, 6),
(77, 'Spinach & Ham Quiche Large', 18, 6),
(78, 'Zucchini & Grilled chicken Quiche Regular', 12, 6),
(79, 'Zucchini & Grilled chicken Quiche Large', 21, 6),
(80, 'Vege Quiche Regular', 10, 6),
(81, 'Vege Quiche Large', 18, 6),
(82, 'Currywurst red', 20, 7),
(83, 'Currywurst white', 20, 7),
(84, 'Currywurst JUMBO', 24, 7),
(93, 'Chili con carne Quesadilla', 25, 8),
(94, 'Pollo Quesadilla', 26, 8),
(95, 'Curry Pollo Quesadilla', 26, 8),
(96, 'Queso Quesadilla', 23, 8),
(97, 'Tonno Quesadilla', 31, 8),
(98, 'Vege Quesadilla', 23, 8),
(119, 'Grill piletina Gyros XL', 35, 3),
(120, 'Grill lungić Gyros XL', 39, 3),
(121, 'Grill burger Gyros XL', 36, 11),
(122, 'Lovački steak Gyros XL', 37, 3),
(123, 'Curry piletina Gyros XL', 35, 3),
(124, 'Teriyaki piletina Gyros XL', 37, 3),
(125, 'Sezam nuggets Gyros XL', 36, 9),
(126, 'Grill tuna steak Gyros XL', 39, 3),
(127, 'Meso rakova & Rukola Gyros XL', 35, 3),
(128, 'Mozzarella & Grill povrće Gyros XL', 35, 3),
(129, 'Feta & Grill povrće Gyros XL', 35, 3),
(130, 'Veggie nuggets Gyros XL', 32, 9),
(131, 'Grill povrće &  Rukola Gyros XL', 30, 3),
(132, 'Meso rakova & Rukola Gyros Regular', 24, 3),
(138, 'Dimljena šunka Ciabatta', 14, 10),
(139, 'Dimljena puretina Ciabatta', 14, 10),
(140, 'Pršut Ciabatta', 16, 10),
(141, 'Tuna Ciabatta', 16, 10),
(142, 'Meso rakova Ciabatta', 15, 10),
(143, 'Mozzarella & Rajčica Ciabatta', 12, 10),
(146, 'Coca-Cola 0,50L', 11, 13),
(147, 'Coca-Cola ZERO 0,50L', 11, 13),
(148, 'Sprite 0,5L', 11, 13),
(149, 'Schweppes 0,5L', 11, 13),
(150, 'Nestea 0,5L', 11, 13),
(151, 'Jamnica 0,5L', 11, 13),
(152, 'Jana 0,5L', 11, 13),
(153, 'Cappy 0,33L', 11, 13),
(154, 'Naranča 0,2L', 11, 15),
(155, 'Naranča 0,35L', 18, 15),
(156, 'Grejp 0,35L', 22, 15),
(157, 'Velika Limunada 0,5L', 10, 15),
(158, 'Banana Smoothie', 13, 14),
(159, 'Banana & Coconut Smoothie', 15, 14),
(160, 'Mango Smoothie', 15, 14),
(161, 'Mango & Coconut Smoothie', 17, 14),
(162, 'Borovnica Smoothie', 20, 14),
(163, 'Brusnica Smoothie', 20, 14),
(164, 'Malina Smoothie', 20, 14);

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_croatian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci AUTO_INCREMENT=3 ;

--
-- Izbacivanje podataka za tablicu `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`) VALUES
(1, 1, 'isinek', '8fe2b8a4c448693a8140a54b91cba9a7');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
