-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jemmawords
-- ------------------------------------------------------
-- Server version	5.6.34-log

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
-- Table structure for table `definition`
--

DROP TABLE IF EXISTS `definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `definition` (
  `definition_id` int(11) NOT NULL AUTO_INCREMENT,
  `definition_given` varchar(250) NOT NULL,
  PRIMARY KEY (`definition_id`),
  UNIQUE KEY `definition_id_UNIQUE` (`definition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `definition`
--

LOCK TABLES `definition` WRITE;
/*!40000 ALTER TABLE `definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `example_id` int(11) NOT NULL AUTO_INCREMENT,
  `example_sentence` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`example_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submitor`
--

DROP TABLE IF EXISTS `submitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submitor` (
  `submitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `submitor_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`submitor_id`),
  UNIQUE KEY `name_id_UNIQUE` (`submitor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submitor`
--

LOCK TABLES `submitor` WRITE;
/*!40000 ALTER TABLE `submitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `submitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submitor_word`
--

DROP TABLE IF EXISTS `submitor_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submitor_word` (
  `submitor-word_id` int(11) NOT NULL AUTO_INCREMENT,
  `submitor_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  PRIMARY KEY (`submitor-word_id`),
  UNIQUE KEY `name-word_id_UNIQUE` (`submitor-word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submitor_word`
--

LOCK TABLES `submitor_word` WRITE;
/*!40000 ALTER TABLE `submitor_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `submitor_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `word_name` varchar(45) NOT NULL,
  `definition` text NOT NULL,
  `example` text,
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `word_id_UNIQUE` (`word_id`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (7,'Jennytastic','adj. divinely gorgeous, killer hot (with crazy leggings).','You look totally Jennytastic today!'),(8,'beaben (-ning)','v. being annoyingly (and constantly) hesitant.','Stop beabenning, you\'re driving me crazy! Make up your mind already!'),(9,'hotterian','n. nice looking fashionable dorky geek.','I went to a Necronomicon convention in Köln and the room was full of hotterians.'),(10,'Müller terrier','n. newfound terrier race with puppy eyes that makes one melt, but with a raging heart if provoked. Very good at chasing planes.','The Müller terrier herded the planes into the hanger in short order.'),(11,'vogel me','interj. sorry, I\'m late.','Twenty minutes late, she rushed in the door. \"Vogel me!\"'),(12,'mickle','v. crossing eyes and pouting in a try-hard-to-look-sensual manner when angry or unsatisfied; stalking.','He used to mickle at her in the school corridor.'),(13,'bodot','n. smurf-shaped hat that one\'s wears unconditionally.','I forgot my bodot at home this morning, and I feel completely hair-exposed.'),(14,'Room 234','n. the legendary meeting place of Jemmaholics Anonymous.','[social context] Sorry, guys, I have to fly, I have some evening class in Room 234. [work context] I can\'t attend this xyz meeting, I have an important conference call in Room 234.'),(15,'Luzi','adj. totally cool and relaxed about things.','My sister was beabenning about which pair of shoes to buy, I was getting annoyed but the shop assistant was completely Luzi and waited patiently for her to decide.'),(16,'Limo','v. meant to be together since childhood but too stubborn to realize that you don\'t need to walk to love. SYM Tizi','It was clear they were Limoed.'),(17,'Hahelogue (haa-he-log)','n. To monologue through song. Usu. involves an Aula, ipod, piano or car stereo.','Her Hahelogue took place in the auditorium under cover of darkness.'),(18,'Jeggings (jeggingz)','n. Leggings made from multiple coloured fabric. Usu. sparkly and combined with magic shoes, as modelled by Jenny Hartmann. Not to be mistaken for the British invention of leggings made from mock denim fabric, as modelled by people who really shouldn\'t be wearing them.','Her pink, phosphorescent jeggings lit up the darkest hours of the strike.'),(19,'ronnie','v. to swagger in a way that it appears you have messed in your pants.','He ronnied into the room like he owned the place....we all got up and left in a hurry.'),(20,'emmalicious','adj. to possess qualities that make Jemmaholics swoon, esp. through infectious smiles, determined looks, and taking the lead. SYM jennylicious','I love your emmalicious puppy dog eyes/radiant smile/beautiful voice/warmth/loyalty/best girlfriend status.'),(21,'jennylicious','adj. to possess the qualities that make Jemmaholics swoon, esp. through amazing facial expressions and heavenly noises. SYM emmalicous','Her upward gaze and heavenly sound was completely natural and absolutely jennylicious.'),(22,'Tizi','n. persons that were meant to be together since childhood, disregarding all obstacles. SYM Limo','I never considered her my tizi, but after all of these years she still seems to think we have a future together.'),(24,'Beschenkward','n. award of awesomeness.','And the Beschenkward goes to... Luzi Beschenko!'),(23,'Luzi','v. to calm someone with absolute coolness.','She luzied the tired runaway with keys to her place and a bubble bath.'),(25,'weenus','n. cause of uncontrollable giggling.','As soon as she uttered, \"weenus,\" a fellow Jemmaholic was quickly revealed amongst the crowd.'),(26,'poltergeist ladder','n. a very high climbing device that shakes incessantly causing prolonged defying of gravity.','To free your girlfriend from a poltergeist ladder, you must turn off the f**king radio.'),(27,'magic shoes','n. a singular pair of shoes that suddenly shifts forms to meet a dramatic need or activity.','From ballroomdancing  to chasing cars, her magic shoes met the challenge.'),(28,'Caro EichVamp','n. bitchiness personified.','Caro EichVamp waltzed into the room with a smirk and a plan for humiliation.'),(29,'Beschenko','interj. awesome, really cool.','That\'s total Beschenko!'),(30,'horstheld','v. to make a Horst (or jerk) out of oneself whilst trying to be or pretend to be a hero.','Whilst horsthelding Hotte took advantage of Emma\'s friendship and dragged her into a horstheld mess.'),(31,'IchVamp','v. being all about me, myself and I.','Helena ichvamped her way into the position of power and nearly destroyed Pestalozzi in the process.'),(32,'carogar','n. as opposed to cougar, used to describe somebody attracted by and having sex with, older persons.','Sometime when I go out, I have to beat the carogar off with a stick.'),(33,'schoolgar','n. person having school fetichist relationships, as in, for example, sleeping with a student, sleeping with a teacher, and having sexual desires for a school director.','The halls of the Pestalozzi were already lined with broken hearts, yet the schoolgar had her sites on the new beach volleyball coach.'),(34,'Jennypitate','v. decapitate by the single strength of one\'s brief-but-fierce look.','She was on the edge already so when he provoked her, she jennypitated him like a mere bowling pin.'),(35,'Jemmatastic','adj. anything or anyone that embodies the combined qualities of emmaliciousness and jennyliciousness.','Any Jemmaholic would be thrilled to have a Jemmatastic girlfriend.'),(36,'Emmado (Emma-do)','n. any of Emma\'s hairdos.','My hair stylist, a non-Jemmaholic, couldn\'t understand my choice of a simple Emmado.'),(37,'Jennydo (Jenny-do)','n. any of Jenny\'s hairdos.','The question is, which Jennydo looks best?'),(38,'Jemmakuss','n. a kiss resembling any of the hot lip locks shared by Jenny and Emma.','For a Jemmaholic to experience even one Jemmakuss would be Jemmatastic.'),(39,'Chulo','n., pl (-los) (Spanish origin) a flamboyant, dandified or effeminate man.','Johnny and Frank, would you chulos like to come over to Chulos to show us your new dance moves?'),(40,'Tuthrefore (too-three-for)','v. to display slightly obsessional behaviour.','OMJ! I am absolutely tuthrefored with bullet earrings and pizza-ballet.'),(41,'Tuthrefore','n. one who displays slightly obsessional behaviour.','She\'s a total tuthrefore, she\'ll be lurking in school corridors and keeping hold of personal photos in her back pocket next.'),(42,'ozghot','n. a best male friend (derived from Timo Ozgül and Hotte) who might piss you off a bit at times, but who will always be of great advice nonetheless. (female) ozghot-queen','My ozghot and I had this heated conversation the other day about the meaning behind an eyeroll vs an eyeshift.'),(44,'zimma','n. a female best friend (derived from 2 amazing smiles) with a golden heart who will always stand by you no matter what, and who is genuinely totally and truly happy for you when you find those moments of real happiness in your life. (male) zimma-king','Most probably you will have only one zimma at a time in your friends circle. Actually you will be lucky already if you find one single zimma in your lifetime, as this kind of friend is very very rare.'),(50,'Jemmaholic','n. one who is hopelessly addicted to the jemmaliciousness of Jemma.','Every accessory, song, and legging in the mall made the jemmaholic yearn for her laptop and episode 149.'),(51,'LSI-Team','n. (Locker Scene Investigation) a group of highly trained and dedicated Jemmaholics who investigate every word, glance, smile, kiss, and footstep that occur around the Pestalozzi lockers.','After much review, the LSI-Team determined it was indeed an eye roll and not a shifty glance in episode 105.'),(46,'beriam','n. Really good female friend (derived from a bird and a So-You-Think-You-Can-Dance winner) who feels like a lovely sister and who will not judge you however poor the choices you could sometimes make. (male) beriam-king','She took the decision to pack her things for Australia though her beriam told her she might not find what she was looking for over there.'),(47,'pepiet','n. Good male friend (derived from an overtanned music producer and partner of a So-You-Think-You-Can-Dance winner) \"in ozghot becoming\", blossoming nice friendship that has all the qualities to become a very grand one. (female) pepiet-queen','He named his dog Pepiet because it was his only friend but also because he liked the sound of it; he loved saying \"Go fetch, Pepiet!\" for example, or \"charge, Pepiet, bite his Ronnie arse off!\".'),(48,'Eichklein','n. Friend (derived from a school bitch and her redhead toy*), male or female, whom you think as your best one but who will turn out as considerate for you as a troll, and who will most probably be inclined to encourage suicidal thoughts. (hickey metaphor) something that seems sensual the night before but they desperately try to hide the morning after because it actually looks gross. An Eichklein is a friend like that. ALT Eichkie, Carphie','Their friendship was based on manipulation and disdain, as unhealthy as Eichklein.'),(49,'Caronnie Town','n. Hell. Pure, absolute, cataclysmic nightmare.','These weeks without new Jemma scenes have been like Caronnie Town.'),(52,'jemmablivious','adj. state of ecstatic bliss that jemmaholics get after their daily fix of Jemma love.','While the raccoon wreaked havoc in the building, she stood jemmablivious, softly humming \"Girl from Ipanema.\"'),(53,'Emphee','n. an award of \"sparkle\" that you can find in Emma\'s eyes and smile, in the sense that it spreads joy around. (derived from trophee).','She traded in her Beschenkwards for an Emphee.'),(54,'emmanate','v. to pour out high emotions, derived from the philosophical term emanate - to come out of all things out of a higher or divine origin.','Emma emmanated so much joy and love through her smile and wonderful melodies, she enchanted everybody\'s heart. '),(55,'emmanation','n. the process of pouring out high emotions.','Filled with pure bliss, her sudden emmanation was both exhilarating and unnerving.'),(56,'emmaröten','v. to blush like Emma.','She emmarötens whenever Jenny is near.'),(57,'emmabeam','v. to smile with pure, uncontrollable bliss. (n. emmabeam, adj. emmabeamy)','She emmabeamed, and the birds sang in the warm glow of her joy.'),(58,'Caro','v. to be slapped in the face by the full force of one Caro EichVamp. This can be both physically (c.f. bitch fights) or verbally.','You know when you\'ve been Caroed.'),(60,'glücksen','v. (eng. to glücks, -ing) to smile blissfully to the point of chuckling.','The kiss was unexpected, yet she glücksed as if her world was suddenly filled with teddy bears dancing on rainbows.'),(61,'Jemmaglow','n. an unrestrained smile culminating with a slight giggle, caused by Jemma memories. (v. to jemmaglow, adj. jemmaglowy)','During the lunch meeting, she tried casually to conceal her jemmaglow behind a menu, which made it even worse.'),(62,'Jennyglow','n. a smile that meanders through every emotion, sensation, and memory  before reaching pure joy. (v. to jennyglow, adj. jennyglowy)','The unassuming photo from the Carnival party conjured a jennyglow as she relived every moment of that night.'),(63,'Jemmanescence','n. the glow on the faces of two girls in love.','Their Jemmanescence couldn\'t be mistaken for anything but love, and the world melted.'),(64,'JemmaKaboom','n. the explosion of the world caused by extreme Jemmalicious adorableness and awesomeness.','The mere thought of Jenny and Emma doing a Astaire and Rogers routine produced critical mass of awesome which resulted in the first of many JemmaKabooms.'),(65,'Jemmageddon','n. a series of cataclysmic events leading to the ultimate Jemma enlightenment.','Some say that the JemmaKaboom was the first sign of Jemmageddon.'),(66,'emma (-ing)','v. to babble nervously, particularly in the face of great beauty; to express extreme angst over seemingly trivial matters in a very quick and sudden manner.','It seemed to be a simple question, but she emma-ed about tiramisu and Dieter Bohlen.'),(67,'Oh My Leggings','interj. an expression of shock or dismay.','Oh My Leggings! Are those sparkle zebra leggings?!'),(68,'pizza-ballet','v. to dance to exhaustion while eating a pizza, usually used to combat extreme lovesickness. n. a food-related dance.','She pizza-balleted until her feet ached as much as her heart.'),(69,'bododian','n. a sensitive male friend who can be trusted to keep secrets, particularly about a Jemma relationship.','She hesitated to come out to classmates after her bododian said it might be weeks before people stopped asking stupid questions.'),(70,'emmabliviousness','n. (adj. emmablivious) lacking awareness of one\'s sexual identity.','Her emmabliviousness was obvious when she was persistently pursued by a jennylicious girl, but she couldn\'t understand why.'),(71,'OMJ!','interj. (short for Oh My Jemma!) An exclamation of pure Jemma wonder, amazement, and disbelief.','OMJ! I can\'t believe Emma didn\'t just drag Jenny off to Hamburg there and then!'),(72,'Jemma Jem','n. a small bite-size Jemma moment that gives a Jemmaholic her much needed buzz.','She queued her Jemma Jem - 184 Lovefool - and in less than a minute, she was able to face the day.'),(73,'jemmafied','n. the love-at-first-sight state anyone gets after seeing Jemma for the first time.','Jenny sat down. Emma introduced herself. And I was jemmafied on the spot.'),(74,'197','n. subtle, coded word for sex.','What? Did you just say these leggings look bad on me? There\'ll be no 197 for you tonight, babe!'),(75,'Whabam!','interj. Expression of being totally blown away.','Whabam! That girl can kiss!'),(76,'Emmapparat','n. phone used to gain speed in running to stop her girlfriend from leaving.','Without her Emmapparat, she would stand no chance to save Jenny.'),(77,'Jemma Coming Out Monument','n. the sculpture of a stack of books in the middle of the Pestalozzi courtyard where the legendary Jemma publicly declared their love in the most Jemmatastic way possible - singing, dancing, and kissing.','The perpetual line of couples waiting to come out on the Jemma Coming Out Monument has become ridiculous. You\'re in line! You\'re out already! Why do you have to proceed to dance and sing to Lovefool for the gazillionth time?!!'),(78,'piss kiss','n. an intense kiss of ultimate love and gratitude.','She picked up the urine sample, and only a piss kiss could express the overpowering love that she felt for her at that moment.'),(79,'caroke','v. to do an IchVamp-joke.','She caroked about their murderous teacher and was resoundingly told, \"halt die Klappe!\" by the entire calculus class.'),(80,'hoke','v. to make those special unintended jokes Hotterians do.','He hoked, \"a robot, Dr. Who, and Captain Kirk walked into a bar...\" The gang roared in laughter, especially when he showed them the photo of a robot, Dr. Who, and Captain Kirk that he took in a bar in Las Vegas.'),(81,'Caroquetry','n. the deed of flirting in a quite IchVampy way. (v. to caroquet)','Hotte was totally flustered by Caro\'s caroquetries. He nearly forgot to breathe or worse to check the web for new knowledge.'),(82,'so phie','adj. being very weak and not true to oneself or others; very down, thinking of suicide.','She felt so phie. With no one to turn to for comfort, not even her own reflection, she climbed the highest scaffolding and waited to be saved.'),(83,'Emmergy','n. the special vibrations someone like Emma brings into the world.','She didn\'t dare to change her plaid shirt because it was charged with Emmergy'),(85,'Jennergy','n. the special vibrations someone like Jenny brings into the world.','Her magic Jennergy made nasty bullies go away - she just had to say \"Drei\"!'),(90,'bemich','n. person that one shouldn\'t be in a relationship with as they\'re clearly not meant for each other; boring couple. Opposite of tizi.','There was absolutely no spark between them, nobody could understand why she spent half the school year with him. He was such a bemich.'),(87,'Jemmaverse','n. the world of Jemma and it\'s fandom, here on earth and abroad.','The entire Jemmaverse came together to celebrate The Jemma Coming Out Day at the Jemma Coming Out Monument. Even Jemmaholics from the Greater Milky Way took part.'),(88,'jimples','n. (always plural) georgeous dimples that make one who notices them emmabeam and his brain going belenas*.','There were plenty of other reasons to be nervous during that report in front of the whole class, but I just completely blanked out when I saw her jimples.'),(89,'going belenas','idiom. same as going bananas but with some palpable sexual tension and desire overtone.','Each time Jemmaholics catch a sight of Jenny\'s legs, they all go belenas.'),(91,'corpse under the volleyball field','idiom. to have secrets, something to hide, a dark past. (ALT skeleton in the closet)','Yes, she once left her girlfriend\'s sister lying unconscious in a ditch, but there\'s no reason why people should know her corpse under the volleyball field.'),(92,'Jemmaditation','n. the process of attuning to Emmergies and Jennergies with the aim to balance and temper them, which brings oneself nearer to the state of Jemmavana.','I won\'t be available in the next half an hour, I\'m going to jemmaditate.'),(93,'Jemmeaven','n. 1. an ethereal, transcendental, or physical place where one achieves ultimate oneness with Jemma. 2. induced state of happiness. 3. \'successfully\' knowing one in the biblical sense.','When the flashmob broke out, she thought she had died and gone to Jemmeaven.'),(94,'Jemmavana','n. transcendental state of absolute Jemma knowledge and understanding characterized by freedom from or oblivion to pain, worry, and the external world; an ideal condition of rest, harmony, stability, or joy.','Once you reach Jemmavana, every legging stitch and plaid thread is one with the fabric of the Jemmaverse.'),(95,'jemmavan','n. automobile used to \"get to know\" someone or view HaHe DVDs in the backseat; a place where 197 happens. (idiom. \"rocked it like a jemmavan\" to have amazing and reverberating success.)','If the jemmavan\'s a\'rockin\'... Well, the probability of a\'knockin\' being ill-advised is 50/50. (idiom) I rocked the biology presentation like a jemmavan.'),(96,'BJ/AJ','adv. abbr. for Before Jemma and After Jemma, calendar used in the entire Jemmaverse to adjust time (where existing) to the profound cataclysmic changes prompted by the birth of Jemma. In non-time areas it is used to match dates nevertheless to for example taking part in the Jemma Coming Out Day telepathically from afar.','Thousands and thousands of years BJ, mankind discovered fire by friction of 2 stones or 2 sticks of wood together. AJ, people make fire with their eyes.'),(97,'JRM','n. (Jemma Revival Moments) very fond moments where a HaH scene involving Jemma happens totally randomly in real life/context or is recreated intentionally by one (most probably a Jemmaholic), sparking one or others around to emmabeam (consciously or not).','While waitressing, she saw two girls mumbling behind their menus. \"Total JRM!\" she thought emmabeamingly as  she casually hurried to their table in hopes of hearing one of them order tiramisu.'),(98,'Jemmagic','n. the sudden occurring of JRMs in daily life, especially if they appear in a row or cluster. (adj. Jemmagical)','This day was full of Jemmagic. First she heard a Hotterian hoking about the connections of his boss with Scientology, then she met a woman wearing a bodot singing \"Just the Way You Are,\" and nearly fainted when she stumbled across some marvellous fluorenscent jeggings.'),(99,'JSI-Team','n. (Jemma Scene Investigators) a team a highly trained and dedicated persons who investigate all Jemma scenes at-large. Their juristiction includes: lockers, blankets, hallways, Coming Out Monuments, bathrooms (public and private), car-bicycle accidents, Saal1 (open and closed), train stations, Chulos, volleyball fields, airports, record studios, and villas.','Using state-of-the-art earbuds, the JSI-Team isolated and magnified Jenny\'s footsteps in episode 124 and concluded that she might have lost a blanket, but her trajectory remained in a forward motion.'),(100,'Jemmanami','n. enormous Jemma love wave that spreads massively like a tsunami but with a wonderful outcome, leaving people emmabeaming to the whole world.','The Jemmanami originated in the heart of Germany with a sudden and dramatic shift of the Earth\'s outer layer of Jemmergy.'),(101,'Jenny Bullet earING Effect (J-Bing Effect)','n. Jemma amazingly inspiring ascendancy that is embodied by Jenny bullet earring. Once touched by it, one\'s feels its grace and depth, prompting one\'s with new confidence to blossom and make heartfelt happy choices.','She realized how powerful the J-Bing Effect was in her life when she plucked up the courage to climb on a chair in her jeggingz at a live video conference, and sang I Will Survive in front of everyone while announcing she was quitting.'),(102,'Jemma','n. international term for those who\'ve got the love.','More Jemma!'),(103,'jemmel sigh','n. used to imitate the celestial sound of angels in heaven (German: Himmel) as expressed by Jenny Hartmann.','There were jemmel sighs all around at the mere suggestion that Jenny and Emma might return for a webseries.'),(104,'symmagy','n. (conjunction of synergy, Jemma, and Jemmergy) two or more jemmaholics defying time, distance, and langauge to produce Jemmatastic projects both abstract and tangible that would not be obtainable independently.','The symmagy was palapable as the JemMonopoly game took shape within hours across eight time zones.'),(105,'Jemmacon','n. Jemma convention, not necessarily a physical location, where Jemma fans meet from all over the world to discuss, enrich, and grow.','This year\'s Jemmacon will be better than last. It always is.'),(106,'Jaeger (Jäger) Scale','n. A scale used for rating the awesomeness (Jägerbombness) of gifs, scenes, episodes, blogs, posts, fan fiction, events ...etc. The scale ranges from 0 to 4 out of 4 Jaegers. Bonus Jaegers are allowed for all things ultra-Beschenko.','She gave the episode a Jaeger rating of 4 out 4 on account of it not only having a STAG song, but sweet Jemma moments as well.'),(107,'Göttingy','n. little thing with a huge infuriating power, because whose only role is to upset. Can take any form: someone\'s attitude, a trunk door trying to decapitate you, a delay... Really anything that has a negative vibe to it.','When one Göttingy happens after another, it becomes a Göttixy (= Göttingies in a serie).'),(108,'Jemmascent','n. a smell that reminds one of all things Jemma. SYN jemmaroma','As I poured the orange juice and munched on a grape the jemmascent filled the air, and I could picture jimples and could not help but emmabeam at the thought of Jemma.');
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_type`
--

DROP TABLE IF EXISTS `word_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word_type` (
  `word_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_title` varchar(5) NOT NULL,
  PRIMARY KEY (`word_type_id`),
  UNIQUE KEY `word_type_id_UNIQUE` (`word_type_id`),
  UNIQUE KEY `type_title_UNIQUE` (`type_title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_type`
--

LOCK TABLES `word_type` WRITE;
/*!40000 ALTER TABLE `word_type` DISABLE KEYS */;
INSERT INTO `word_type` VALUES (1,'noun'),(2,'adv'),(3,'adj'),(4,'v');
/*!40000 ALTER TABLE `word_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_word_type`
--

DROP TABLE IF EXISTS `word_word_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word_word_type` (
  `word-word_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) DEFAULT NULL,
  `word_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`word-word_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_word_type`
--

LOCK TABLES `word_word_type` WRITE;
/*!40000 ALTER TABLE `word_word_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `word_word_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-29 16:48:13
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: jemmasongs
-- ------------------------------------------------------
-- Server version	5.6.34-log

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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `artist_id_UNIQUE` (`artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `episode_description` text,
  `episode_rating` int(1) DEFAULT NULL,
  PRIMARY KEY (`episode_id`),
  UNIQUE KEY `episode_id_UNIQUE` (`episode_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (1,NULL,NULL),(24,NULL,NULL),(74,NULL,NULL),(76,NULL,NULL),(78,NULL,NULL),(80,NULL,NULL),(81,NULL,NULL),(88,NULL,NULL),(89,NULL,NULL),(93,NULL,NULL),(94,NULL,NULL),(95,NULL,NULL),(97,NULL,NULL),(103,NULL,NULL),(105,NULL,NULL),(108,NULL,NULL),(113,NULL,NULL),(115,NULL,NULL),(117,NULL,NULL),(121,NULL,NULL),(124,NULL,NULL),(125,NULL,NULL),(127,NULL,NULL),(128,NULL,NULL),(138,NULL,NULL),(139,NULL,NULL),(143,NULL,NULL),(145,NULL,NULL),(149,NULL,NULL),(153,NULL,NULL),(154,NULL,NULL),(155,NULL,NULL),(157,NULL,NULL),(167,NULL,NULL),(171,NULL,NULL),(174,NULL,NULL),(176,NULL,NULL),(184,NULL,NULL),(189,NULL,NULL),(193,NULL,NULL),(197,NULL,NULL),(200,NULL,NULL),(201,NULL,NULL),(218,NULL,NULL),(220,NULL,NULL),(222,NULL,NULL),(225,NULL,NULL),(230,NULL,NULL),(231,NULL,NULL),(234,NULL,NULL),(77,NULL,NULL),(82,NULL,NULL),(83,NULL,NULL),(91,NULL,NULL),(98,NULL,NULL),(110,NULL,NULL),(132,NULL,NULL),(136,NULL,NULL),(137,NULL,NULL),(141,NULL,NULL),(147,NULL,NULL),(151,NULL,NULL),(156,NULL,NULL),(158,NULL,NULL),(182,NULL,NULL),(186,NULL,NULL),(199,NULL,NULL),(207,NULL,NULL),(223,NULL,NULL),(104,NULL,NULL),(116,NULL,NULL),(129,NULL,NULL),(133,NULL,NULL),(146,NULL,NULL),(216,NULL,NULL);
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performer`
--

DROP TABLE IF EXISTS `performer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performer` (
  `performer_id` int(1) NOT NULL,
  `performed_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`performer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performer`
--

LOCK TABLES `performer` WRITE;
/*!40000 ALTER TABLE `performer` DISABLE KEYS */;
INSERT INTO `performer` VALUES (0,'Background Music'),(1,'Performed Music');
/*!40000 ALTER TABLE `performer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_title` varchar(45) NOT NULL,
  `song_artist` varchar(45) NOT NULL,
  `episodes` text,
  `performer_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'F**king Perfect','P!nk','138',0),(2,'Secrets','One Republic','1, 234',0),(3,'Hurt','Christina Aguilera','139',0),(4,'Road to Somewhere','Goldfrapp','197',0),(5,'Save Me from Myself','Christina Aguilera','125',0),(6,'Girl from Ipanema','Tom Jobim w/ Astrud Gilberto','225',0),(7,'Someone Like You','Adele','',0),(8,'Remember When','Avril Lavigne','220',0),(9,'Love Ain\'t Gonna Let You Down','Jamie Cullum','218',0),(10,'Like It\'s Her Birthday','Good Charlotte','145',0),(11,'Strong Enough to Cry','Shiloh','154',0),(12,'Perfect Two','Auburn','149',0),(13,'Take Me on the Floor','Veronicas','',0),(14,'Music','Madonna','108',0),(15,'Lovefool','The Cardigans','121, 98, 176, 184',1),(16,'1000 Tagen Regen','Selina Muller','200',1),(17,'Be Mine','Robyn','117, 132',1),(18,'Born This Way','Lady Gaga','201, 199',1),(19,'Can\'t Fight the Moonlight','LeAnn Rimes','93, 136',1),(20,'Love Song','P!nk','115',0),(21,'Drops of Jupiter','Train','174, 147',1),(22,'I See You Baby (Shaking That Ass)','Groove Armada','197',0),(23,'Funhouse','P!nk','155, 156',0),(24,'Fuck You','Lily Allen','127',1),(25,'Keinen Zentimeter','Clueso','105',1),(26,'Chasing Cars','Snow Patrol','222',1),(27,'You Got the Love (1986)','The Source w/ Candi Staton','230, 231, 234',1),(28,'Celebrations','Kool & The Gang','230, 150',1),(29,'Think','Aretha Franklin','193, 189, 171, ???',1),(30,'I Will Survive','Gloria Gaynor','167, 157',1),(31,'Talking about a Revolution','Tracy Chapman','124',1),(32,'Son of a Preacherman','Janis Joplin','113, 97',1),(33,'If a Song Could Get Me You','Marit Larsen','24',1),(34,'Stone Cold Sober','Paloma Faith','78, 143',1),(35,'Ain\'t No Mountain High Enough','Marvin Gaye','89, 93, 94',1),(36,'Dreams','Gabrielle','88, 81, 80, 103',1),(38,'She Said','Plan B','76, 74',1),(39,'DJ Got Us Fallin\' in Love','Usher','139',0),(40,'Almost Lover','A Fine Frenzy','128',0),(41,'Mercedes Benz','Janis Joplin','108',1),(42,'Hanging by a Moment','Lifehouse','95',0),(43,'You\'ve Got the Love (2009)','Florence + The Machine','230, 231, 234',1),(44,'Sex Bomb','Tom Jones','108',0),(45,'Love is in the Air','John Paul Young','108',0),(46,'Who\'s That Girl','Madonna','108',0),(47,'The X Files Theme','Mark Snow','Every Jemmasode :)',0),(48,'For You','Angus and Julie Stone','153',0),(49,'If I Were a Boy','Beyoncé','77, 91',1),(50,'Sweet Dreams','Beyoncé','141, 158, 186',1),(51,'Telephone','Lady Gaga','82',0),(52,'I Don\'t Need Your Love','Aereogramme','223',0),(53,'Survivor','Destiny\'s Child','182',1),(54,'Halo','Beyoncé','230',0),(55,'Broken','Tracy Chapman','83',0),(56,'This Gift','Sons & Daughters','223',0),(57,'Save Me','Aimee Mann','207, 225',1),(58,'Sympathy for the Devil','Rolling Stones','151, 137, 136',1),(59,'Let Me Entertain You','Robbie Williams','82, 110, 143?',1),(60,'Big Girls Don\'t Cry','Fergie','91',1),(61,'Lonestar','Norah Jones','104',0),(62,'Like a Virgin','Madonna','108',0),(63,'Dangerous & Sweet','Lenka','116',0),(64,'Leave Me Alone','P!nk','129',0),(65,'Your Love is My Drug','Ke$ha','145',0),(66,'Supermassive Black Hole','Muse','91',0),(67,'Not As Me','Alanis Morissette','93, 133',0),(68,'Just Hold Me','Maria Mena','128',0),(69,'Out of My Hands','Milow','129',0),(70,'Higher','Kylie Minogue','138',0),(71,'Rude Boy','Rihanna','138',0),(72,'Toyfriend','David Guetta w/ Wynter Gordon','138',0),(73,'Racecar','ZPYZ','138',0),(74,'Just the Way You Are','Bruno Mars','146, 157',1),(75,'Live with Me','Massive Attack','216',0);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_artist`
--

DROP TABLE IF EXISTS `song_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_artist` (
  `song-artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`song-artist_id`),
  UNIQUE KEY `song-artist_id_UNIQUE` (`song-artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_artist`
--

LOCK TABLES `song_artist` WRITE;
/*!40000 ALTER TABLE `song_artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `song_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_episode`
--

DROP TABLE IF EXISTS `song_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_episode` (
  `song-episode_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  PRIMARY KEY (`song-episode_id`),
  UNIQUE KEY `song-episode_id_UNIQUE` (`song-episode_id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_episode`
--

LOCK TABLES `song_episode` WRITE;
/*!40000 ALTER TABLE `song_episode` DISABLE KEYS */;
INSERT INTO `song_episode` VALUES (74,1,138),(75,2,1),(76,2,234),(77,3,139),(78,4,197),(79,5,125),(80,6,225),(81,7,0),(82,8,220),(83,9,218),(84,10,145),(85,11,154),(86,12,149),(87,13,0),(88,14,108),(89,15,121),(90,15,98),(91,15,176),(92,15,184),(93,16,200),(94,17,132),(95,17,117),(96,18,199),(97,18,201),(98,19,136),(99,19,93),(100,20,115),(101,21,147),(102,21,174),(103,22,197),(104,23,156),(105,23,155),(106,24,127),(107,25,105),(108,26,222),(109,27,134),(110,27,231),(111,27,230),(112,28,230),(113,29,171),(114,29,189),(115,29,193),(116,30,157),(117,30,167),(118,31,124),(119,32,97),(120,32,113),(121,33,24),(122,34,143),(123,34,78),(124,35,94),(125,35,93),(126,35,89),(127,36,81),(128,36,80),(129,36,103),(130,36,88),(131,38,74),(132,38,76),(133,39,139),(134,40,128),(135,41,108),(136,42,95),(137,43,234),(138,43,231),(139,43,230),(140,44,108),(141,45,108),(142,46,108),(143,47,0),(144,48,153),(145,49,91),(146,49,77),(147,50,186),(148,50,158),(149,50,141),(150,51,82),(151,52,223),(152,53,182),(153,54,230),(154,55,83),(155,56,223),(156,57,225),(157,57,207),(158,58,136),(159,58,137),(160,58,151),(161,59,110),(162,59,143),(163,59,82),(164,60,91),(165,71,138),(169,70,138),(167,72,138),(168,73,138),(170,70,138),(171,74,146),(172,74,157),(173,75,216);
/*!40000 ALTER TABLE `song_episode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-29 16:48:17
