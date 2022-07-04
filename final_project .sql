-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 03:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `image` varchar(200) NOT NULL,
  `price` int(255) NOT NULL,
  `title_en` varchar(30) NOT NULL,
  `title_ge` varchar(30) NOT NULL,
  `describtion_en` varchar(900) NOT NULL,
  `describtion_ge` varchar(900) NOT NULL,
  `id` int(30) NOT NULL,
  `extended_description_en` varchar(900) NOT NULL,
  `extended_description_ge` varchar(900) NOT NULL,
  `galery_id` int(30) NOT NULL,
  `start_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`image`, `price`, `title_en`, `title_ge`, `describtion_en`, `describtion_ge`, `id`, `extended_description_en`, `extended_description_ge`, `galery_id`, `start_date`) VALUES
('https://www.striketours.pt/wp-content/uploads/2019/10/GODERDZI-PASS.jpg', 200, 'Adjara', 'აჭარა', 'Seaside resort Batumi, city sights, mountainous Adjara, sightseeing of its beautiful \r\nnature. Do not miss the opportunity to enjoy the beauty of western Georgia', 'საზღვაო კურორტი ბათუმი, ქალაქის ღირსშესანიშნაობები, \r\nმთიანი აჭარა, მისი ულამაზესი ბუნების დათვალიერება. ნუ გაუშვებთ \r\nხელიდან დასავლეთ საქართველოს სილამაზით დატკბობის \r\nშესაძლებლობას.\r\n', 1, 'Tour period: 12-13-14 July\r\nPrice: ₾ 200\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel \r\n(2 nights and 3 days)\r\nPlaces to visit during the tour:\r\nDay I: Batumi Botanical Garden; Green Cape, Petra Castle.\r\nDay II: Batumi Trinity Cathedral; Mtirala National Park;\r\nDay III: Gonio Castle.\r\nDeparture: Tbilisi Metro Medical\r\nDeparture time: 05:00 hrs\r\n', 'ტურის პერიოდი: 12-13-14 ივლისი\r\nფასი : 200 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო \r\nსასტუმროში განთავსება (2ღამე და 3დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ბათუმის ბოტანიკური ბაღი; მწვანე კონცხი, პეტრას ციხე.\r\nII დღე: ბათუმის სამების ტაძარი; მტირალას ეროვნული პარკი;\r\nIII დღე: გონიოს ციხე.\r\nგასვლა: თბილისი მეტრო სამედიცინო\r\nგასვლის დრო : 05:00 სთ', 2, '07-12-2022'),
('https://ge.rsp.travel/upload/ge/GE_RSP_bildes/sighnaghi_alazani_valley.jpg', 250, 'Kakheti', 'კახეთი ', 'During the tour you will visit the nature of Kakheti, Bodbe Monastery, Sighnaghi Love City, \r\nGurjaani All-Holy, Alaverdi, Gremi, Ilia Lake, Nekresi, Tunnel.\r\n', ' ტურის განმავლობაში თქვენ მოინახულებთ კახეთის ბუნებას, ბოდბის\r\nმონასტერი, სიღნაღი სიყვარულის ქალაქი, გურჯაანის ყოვლადწმინდა, ალავერდი, \r\nგრემი, ილიას ტბა, ნეკრესი, გვირაბი.', 2, 'Tour period: July 15-16-17 \r\nTour price: ₾ 250 \r\nThe price includes: travel by comfortable minibus accommodation in a family hotel (2 nights \r\nand 3 days). \r\nPlaces to visit during the tour: \r\nDay I: Bodbe Monastery, Signagi Love City, All-Holy Gurjaani, Family Cellar in Chumlaki \r\n\"Simona Zavoti\", Telavi \r\nDay II: Alaverdi, Graham, Ilia Lake, Nekresi, Tunnel. \r\nDay III: King Erekle Palace, return.\r\nDeparture: Tbilisi, Opera House. \r\nDeparture time 06:00', 'ტურის პერიოდი: 15-16-17 ივლისი\r\nტურის ფასი: 250₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში\r\nგანთავსება (2ღამე და 3დღე).\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ბოდბის მონასტერი, სიღნაღი სიყვარულის ქალაქი, გურჯაანის\r\nყოვლადწმინდა, საოჯახო მარანი ჩუმლაყში \"სიმონაჲ ზავოტი\", თელავი\r\nII დღე: ალავერდი, გრემი, ილიას ტბა, ნეკრესი, გვირაბი.\r\nIII დღე: ერეკლე მეფის სასახლე, დაბრუნება\r\nგასვლა: თბილისი, ოპერის თეატრი.\r\nგასვლის დრო 06:00\r\n', 3, '07-15-2022'),
('https://cdn.stayhappening.com/events4/banners/d091668ee2eaccf710aab3efa70426c0ee2b6003f8c649b20a3efe7a6a9a9c6e-rimg-w507-h403-gmir.jpg?v=1620211696', 100, 'Pshav-Khevsureti', 'ფშავ-ხევსურეთი', 'During the tour you will visit Zhinvali Reservoir, Corsa Museum, Beautiful Bear Cross \r\nPass, Lebaikari Castle, Guru Ntsvetari, Shatili Castle City, Anatori Akldams, Mutso \r\nCastle City, Vazha Pshavela House Museum in Chargali, Return to Tbilisi', ' ტურის განმავლობაში თქვენ მოინახულებთ ჟინვალის \r\nწყალსაცავი, კორსას მუზეუმი, ულამაზეს დათვის ჯვრის \r\nუღელტეხილი,ლებაიკარის ციხე, გუროს ნაწვეთარი, შატილის ციხე \r\nქალაქი, ანატორის აკლდამები,მუცოს ციხე ქალაქი,ვაჟა ფშაველას სახლ \r\nმუზეუმი ჩარგალში,დაბრუნება თბილისისკენ', 3, 'Tour period: 10-11-12 July\r\nPrice: ₾ 100\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel \r\n(2 nights and 3 days)\r\nPlaces to visit during the tour:\r\nDay I: Zhinvali Reservoir, Corsa Museum, Beautiful Bear Cross Pass, Accommodation.\r\nDay II: Lebaikar Fortress, Guru Natsvetari, Shatili Fortress City, Anator\'s Akldamas\r\nDay III: Mutso Fortress City, Vazha Pshavela House Museum in Chargali, return to \r\nTbilisi\r\nExit: Exit Republic Square\r\nDeparture time: 07:00 hrs', 'ტურის პერიოდი: 10-11-12 ივლისი\r\nფასი : 100 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო \r\nსასტუმროში განთავსება (2ღამე და 3დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ჟინვალის წყალსაცავი, კორსას მუზეუმი, ულამაზეს დათვის ჯვრის \r\nუღელტეხილი, დაბინავება.\r\nII დღე: ლებაიკარის ციხე, გუროს ნაწვეთარი, შატილის ციხე ქალაქი, \r\nანატორის აკლდამები\r\nIII დღე: მუცოს ციხე ქალაქი,ვაჟა ფშაველას სახლ მუზეუმი \r\nჩარგალში,დაბრუნება თბილისისკენ\r\nგასვლა: გასვლა რესპუბლიკის მოედნიდან\r\nგასვლის დრო : 07:00 სთ\r\n', 1, '07-10-2022'),
('https://www.turebi.ge/uploads/photos/tours1/large/55573_5.jpg?v=1', 190, 'Samtskhe-Javakheti', 'სამცხე-ჯავახეთი', 'During the tour you will visit Manglisi, Mtavri Lake, Olyanka Monastery, Foki \r\nMonastery, Paravani Lake, Vardzia, Khertvisi Castle, Rabat Castle, Abastumani \r\nBalneological Resort (Observatory Tour), Zarzma, Borjomi, Likani (Romanov).', 'ტურის განმავლობაში თქვენ მოინახულებთ მანგლისი, მთავრის \r\nტბა,ოლიანკას მონასტერი, ფოკის მონასტერი, ფარავნის ტბა, ვარძია, \r\nხერთვისის ციხე, რაბათის ციხე, აბასთუმნის ბალნეოლოგიური კურორტი \r\n(ობსერვატორიის დათვალიერება), ზარზმა, ბორჯომი, ლიკანი \r\n(რომანოვების სასახლე).', 4, 'Tour period: July 20-21-22\r\nPrice: 190 ₾\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel \r\n(2 nights and 3 days)\r\nPlaces to visit during the tour:\r\nDay I: Manglisi, Mtavri Lake, Olyanka Monastery, Foki Monastery, Paravani Lake, \r\nAspindza Hotel accommodation\r\nDay I: Vardzia, Khertvisi Fortress, return to the hotel\r\nDay III: Rabat Fortress, Abastumani Balneological Resort (Observatory Tour), Zarzma, \r\nBorjomi, Likani (Romanov Palace).\r\nDeparture: Tbilisi Central\r\nDeparture time: 06:00 hrs', 'ტურის პერიოდი: 20-21-22 ივლისი\r\nფასი : 190 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო \r\nსასტუმროში განთავსება (2ღამე და 3დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: მანგლისი,მთავრის ტბა,ოლიანკას მონასტერი, \r\nფოკის მონასტერი,ფარავნის ტბა, ასპინძა სასტუმროში განთავსება\r\nI I დღე: ვარძია, ხერთვისის ციხე, სასტუმროში დაბრუნება\r\nIII დღე: რაბათის ციხე, აბასთუმნის ბალნეოლოგიური კურორტი \r\n(ობსერვატორიის დათვალიერება), ზარზმა, ბორჯომი, ლიკანი \r\n(რომანოვების სასახლე).\r\nგასვლა: თბილისი ცენტრალი\r\nგასვლის დრო : 06:00 სთ', 1, '07-20-2022'),
('https://img.itinari.com/pages/images/original/d32c0230-68a6-41a5-9e03-3e48b077c01e-svaneti-1.jpg?ch=DPR&dpr=2.625&w=1200&h=800&s=e7601938cc18bdc6c2896546cf0ed86c', 150, 'Svaneti', 'სვანეთი', 'During the tour, you will visit the beautiful nature of Svaneti, Svan towers, Mestia, the beautiful \r\nHatsvali, the most famous Georgian village - Ushguli, and many other fabulous and picturesque \r\nplaces', 'ტურის განმავლობაში თქვენ მოინახულებთ სვანეთის ულამაზე ბუნებას, სვანურ\r\nკოშკებს, მესტიას, ულამაზეს ჰაწვალს, ყველაზე ცნობილ ქართულ სოფელს - უშგულს და\r\nსხვა მრავალ ზღაპრულ და თვალწარმტაც ადგილს', 5, 'Tour period: 10-11-12 July\r\nTour price: 150₾ \r\nThe price includes: travel by comfortable minibus accommodation in a family hotel (2 nights \r\nand 3 days). \r\nPlaces to visit during the tour: \r\nDay I: Enguri gorge and reservoir, Barja, Mestia, Khergiani House-Museum. \r\nDay II: Heshkili huts, rocking sky, love tower, Ushguli, Lamaria church, St. Kvirike and \r\nIvlita church, Ushguli archeological museum, Queen Tamar summer and watermelon towers. \r\nDay III: Koruldi Lakes, Mestia Cathedral, Svaneti History and Ethnography Museum. \r\nDeparture: Tbilisi, Metro Delisi. \r\nDeparture time 05:00', 'ტურის პერიოდი: 10-11-12 ივლისი\r\nტურის ფასი: 150₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში\r\nგანთავსება (2ღამე და 3დღე).\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ენგურის ხეობა და წყალსაცავი, ბარჯა, მესტია, ხერგიანის სახლ-მუზეუმი.\r\nII დღე: ჰეშკილის ქოხები, საქანელა ცაში, სიყვარულის\r\nკოშკი, უშგული, ლამარიას ეკლესია, წმ.კვირიკეს და ივლიტას სახელობის\r\nტაძარი, უშგულის არქეოლოგიური მუზეუმი, თამარ მეფის საზაფხულო და\r\nსაზამთრო კოშკები.\r\nIII დღე: ქორულდის ტბები, მესტიის საკათედრო ტაძარი, სვანეთის ისტორიის\r\nდა ეთნოგრაფიის მუზეუმი.\r\nგასვლა: თბილისი, მეტრო დელისი.\r\nგასვლის დრო 05:00', 1, '07-10-2022'),
('https://images.vogue.it/Photovogue/62ef68f0-6da5-11ea-b45e-e700f626b1dd_gallery.jpg', 300, 'Kazbegi', 'ყაზბეგი', 'During the tour you will visit Lomisi Temple, Gergeti Trinity, Dariali Gorge, Alexander \r\nKazbegi House-Museum, Bazaleti Lake, Ananuri.', 'ტურის განმავლობაში თქვენ მოინახულებთ ლომისის ტაძარს, გერგეტის \r\nსამებას, დარიალის ხეობას, ალექსანდრე ყაზბეგის სახლ-მუზეუმს, ბაზალეთის \r\nტბას, ანანურს', 6, 'Tour period: July 17-18\r\nTour price: 300₾\r\nThe price includes: travel by comfortable minibus accommodation in a family hotel (2 nights \r\nand 3 days).\r\nPlaces to visit during the tour:\r\nDay I: Lake Bazaleti, Ananuri, Lomisi, accommodation.\r\nDay II: Gergeti Trinity, Dariali gorge, Alexander Kazbegi House-Museum.\r\nDeparture: Tbilisi, Opera House.\r\nDeparture time 05:00', 'ტურის პერიოდი: 17-18 ივლისი\r\nტურის ფასი: 300₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში\r\nგანთავსება (2ღამე და 3დღე).\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ბაზალეთის ტბას, ანანურს, ლომისზე ასვლა, დაბინავება.\r\nII დღე: გერგეტის სამება, დარიალის ხეობა, ალექსანდრე ყაზბეგის სახლ-მუზეუმი.\r\nგასვლა: თბილისი, ოპერის თეატრი.\r\nგასვლის დრო 05:00', 1, '07-17-2022'),
('https://mbg.ge/uploads/locblogs/large/3ea82295386fb2cbdc00066066da5f4b.jpg', 150, 'Imereti', 'იმერეთი', 'During the tour you will visit Katskhi Column, Bagrati Temple, Gelati Monastery, Sataplia, Prometheus Cave, Okatse Canyon, Martyrs, Niko Nikoladze House-Museum.', 'ტურის განმავლობაში თქვენ მოინახულებთ კაცხის სვეტს, ბაგრატის ტაძარს, გელათის მონასტერს, სათაფლიას, პრომეთეს მღვიმეს, ოკაცეს კანიონს, მოწამეთა, ნიკო ნიკოლაძის სახლ-მუზეუმი', 7, 'Tour period: July 21-22\r\nPrice: ₾ 150\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel (1 night and 2 days)\r\nPlaces to visit during the tour:\r\nDay I: Katskhi Column, Bagrati Temple, Gelati Monastery, Eaters, Accommodation\r\nDay II: Sataplia, Prometheus Cave, Niko Nikoladze House-Museum, back.\r\nExit Republic Square\r\nDeparture time: 05:00 hrs', 'ტურის პერიოდი: 21-22 ივლისი\r\nფასი : 150 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში განთავსება (1ღამე და 2დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: კაცხის სვეტი, ბაგრატის ტაძარი, გელათის მონასტერი, მოჭამეთა, დაბინავება\r\nII დღე: სათაფლია, პრომეთეს მღვიმე, ნიკო ნიკოლაძის სახლ-მუზეუმი, უკან დაბრუნება.\r\nგასვლა რესპუბლიკის მოედნიდან\r\nგასვლის დრო : 05:00 სთ', 3, '07-21-2022'),
('https://upload.wikimedia.org/wikipedia/ka/b/b3/Zugdidis_istoriul-arqiteqturuli_muzeumi.jpg', 79, 'Samegrelo', 'სამეგრელო', 'We offer a one-day tour in Samegrelo, during the tour you will see Dadiani summer residence, you will get acquainted with the landscape created in the name of Ekaterine Chavchavadze and you will enjoy nature.', 'გთავაზობთ ერთ  დღიან  ტურს სამეგრელოში, ტურის განმავლობაში დაათვალიერებთ დადიანების საზაფხულო რეზიდენციას , გაეცნობით ეკატერინე ჭავჭავაძის სახელზე შექმნილ ლანდშაფტს და ისიამოვნებთ ბუნებით.', 8, 'Tour period: July 25\r\nPrice: 79 ₾\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel (1 day)\r\nPlaces to visit during the tour:\r\nDay I: Zugdidi, Dadiani Summer Residence, Zugdidi Botanical Garden.\r\nDeparture: Kutaisi\r\nDeparture time: 10:00 p.m.', 'დამატებითი ინფორმაცია:\r\nტურის პერიოდი: 25 ივლისი\r\nფასი : 79 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში განთავსება (1დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ზუგდიდი, დადიანების საზაფხულო რეზიდენცია, ზუგდიდის ბოტანიკური ბაღი.\r\nგასვლა:  ქუთაისი\r\nგასვლის დრო : 10:00 სთ', 3, '07-25-2022'),
('https://www.turebi.ge/uploads/photos/tours1/large/64314_2.jpg?v=0', 60, 'Racha', 'რაჭა', 'During the tour you will visit the beautiful nature of Racha, Shaori Reservoir, Tskhrajvari, Nikortsminda Temple, Love Waterfall, Freezer.', 'ტურის განმავლობაში თქვენ მოინახულებთ რაჭის ულამაზე ბუნებას, შაორის წყალსაცავი, ცხრაჯვარი, ნიკორწმინდის ტაძარი, სიყვარულის ჩანჩქერი, საყინულე.', 9, 'Tour period: July 20\r\nTour price: 60₾\r\nThe price includes: travel by comfortable minibus.\r\nDay I: Departure from Tbilisi, Shaori Reservoir, Tskhrajvari, Nikortsminda Temple, Love Waterfall, Freezer, Return.\r\nDeparture: Tbilisi, Tbilisi Central.\r\nDeparture time 05:00', 'დამატებითი ინფორმაცია\r\nტურის პერიოდი: 20 ივლისი\r\nტურის ფასი: 60₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით.\r\nI დღე: თბილისიდან გასვლა, შაორის წყალსაცავი, ცხრაჯვარი, ნიკორწმინდის ტაძარი, სიყვარულის ჩანჩქერი, საყინულე, უკან დაბრუნება\r\nგასვლა: თბილისი, თბილისი ცენტრალი.\r\nგასვლის დრო 05:00', 1, '07-20-2022'),
('https://tv9news.ge/pictures/9/c278fca1865ea4d7d3f5cafa787dcca3.jpg', 200, 'Vardzia', 'ვარძია', 'Within the tour we will visit Borjomi National Park, Green Monastery, Akhaltsikhe (Rabati) and finally visit Vardzia Monastery Complex', 'ტურის ფარგლებში მოვინახულებთ ბორჯომის ეროვნულ პარკს, მწვანე მონასტერს, ახალციხეს (რაბათი) და ბოლოს ვესტუმრებით ვარძიის სამონასტრო კომპლექსი', 10, 'Tour period: July 22 - 23\r\nPrice: ₾ 250\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel (2 days 1 night)\r\nPlaces to visit during the tour:\r\nDay I: Borjomi National Park, Green Monastery,\r\nDay II: Akhaltsikhe (Rabat) and visit Vardzia monastery complex\r\nDeparture: Tbilisi\r\nDeparture time: 04:00 hrs', 'დამატებითი ინფორმაცია:\r\nტურის პერიოდი: 22 – 23 ივლისი\r\nფასი : 250 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში განთავსება (2 დღე 1 ღამე  )\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ბორჯომის ეროვნულ პარკს, მწვანე მონასტერს,\r\nII დღე: ახალციხეს (რაბათი) და  ვესტუმრებით ვარძიის სამონასტრო კომპლექს\r\nგასვლა:  თბილისი\r\nგასვლის დრო : 04:00 სთ', 3, '07-22-2022'),
('https://img.marketer.ge/2020/02/Screen-Shot-2020-02-05-at-10.23.53-AM.png', 500, 'Abkhazia', 'აფხაზეთი', 'Abkhazia is located on the western side of Georgia, on the Black Sea coast. Occupied by the Armed Forces of the Russian Federation. It is amazing with the diversity of nature, because everything is gathered here: the sea, snowy mountains, lakes or waterfalls.', 'აფხაზეთი საქართველოს დასავლეთ მხარეს, შავი ზღვის სანაპიროზე მდებარეობს. ოკუპირებულია რუსეთის ფედერაციის შეიარაღებული ძალების მიერ. გასაოცარია ბუნების მრავალფეროვნებით, რადგან აქ ყველაფერია თავმოყრილი: ზღვა, თოვლიანი მთები, ტბები თუ ჩანჩქერები.', 11, 'Tour period: 11-12-13 August\r\nPrice: ₾ 500\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel (2 nights and 3 days) Places to visit during the tour:\r\nDay I: Pskhu-Gumisti Ritsi and Bichvinta-Musera, Bichvinta resort, the deepest lake in Georgia.\r\nDay II: Sokhumi Botanical Garden - built in 1840, one of the oldest gardens in the Caucasus, Kruber Cave - 2190 meters deep cave, one of the deepest in the world\r\nDay III: Anakopi Fortress, Sharvashidze Palace, Tsebeldi Fortress, Bichvinta\r\nTemple Departure: Tbilisi, in front of the Philharmonic\r\nDeparture time: 04:00 hrs', 'ტურის პერიოდი: 11-12-13 აგვისტო\r\nფასი : 500 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში განთავსება (2ღამე და 3დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები:\r\nI დღე: ფსხუ-გუმისთის რიწის და ბიჭვინთა-მიუსერას, კურორტი ბიჭვინთა, საქართველოში ყველაზე ღრმა ტბა- რიწის ტბა.\r\nII დღე : სოხუმის ბოტანიკური ბაღი- გაშენებული 1840 წელს, ერთ-ერთი უძველესი ბაღი კავკასიაში, კრუბერის გამოქვაბული- 2190 მეტრი სიღრმის გამოქვაბული, ერთ-ერთი უღრმესია მსოფლიოში\r\nIII დღე: ანაკოფიის ციხე, შარვაშიძეების სასახლე, წებელდის ციხე, ბიჭვინთის ტაძარი\r\nგასვლა: თბილისი, ფილარმონიის წინ\r\nგასვლის დრო : 04:00 სთ', 2, '07-11-2022'),
('https://mbg.ge/uploads/locblogs/large/17934eb58783794c7c641e1fa5dc8fb5.jpg', 200, 'Guria', 'გურია', 'Starting point Ozurgeti. Likhauri Church, Likhauri Fortress, Achi Church, Ekvtime Takaishvili Museum. Kviriketi Church, Creator Church, Ruins of Philip Makharadze Museum, Chakukha, Bzhuzhe HPP, Headquarters. A plot of stone, a six-meter-long ancient winepress, one kilometer from Goniskari.', 'საწყისი პუნქტი ოზურგეთი. ლიხაურის ეკლესია, ლიხაურის ციხე, აჭის ეკლესია, ექვთიმე თაყაიშვილის მუზეუმი. კვირიკეთის ეკლესია, შემოქმედის ეკლესია, ფილიპე მახარაძის მუზეუმის ნანგრევები, ჩაქუხა, ბჟუჟჰესი, სათავანი. ქვაში ნაკვეთი, ექვსმეტრიანი უძველესი საწნახელი, გონებისკარიდან ერთ კილომეტრში.', 12, 'Tour period: 1-2-3\r\nAugust Price: ₾ 200\r\nThe price includes: Travel by comfortable minibus Accommodation in a family hotel (2 nights and 3 days) Places to visit during the tour:\r\nDay I - Departure from Tbilisi at 9 am. After about 5 hours drive we will visit Jikheti Monastery (XIX.), And after Jikheti we will visit Jumati Monastery (exact date of establishment is unknown), from where a beautiful view of the Kolkheti lowlands. After visiting Jumati Monastery we will have lunch and leave for St. In Ozurgeti where we will stay in a local hotel.\r\nDay II - After breakfast we will visit the Museum of Local Lore, after visiting the museum we will go to the resort Bakhmaro, camp in tents and have lunch. (If you wish, you can see the process of sunset from one of the mountains, which is a beautiful sight. At the end of the day we will relax by the bonfire.\r\nDay III - Early in the mornin', 'ტურის პერიოდი: 1-2-3 აგვისტო\r\nფასი : 200 ₾\r\nფასში შედის: მგზავრობა კომფორტული მიკროავტობუსით საოჯახო სასტუმროში განთავსება (2ღამე და 3დღე)\r\nტურის განმავლობაში მოსანახულებელი ადგილები: \r\nI დღე _ გამგზავრება თბილისიდან დილის 9 საათზე. დაახლოებით 5 საათიანი მგზავრობის შემდეგ მოვინახულებთ ჯიხეთის მონასტერს (XIX.), ჯიხეთის შემდეგ კი ვეწვევით ჯუმათის მონასტერს (დაარსების ზუსტი თარიღი უცნობია), საიდანაც ულამაზესი ხედი იშლება კოლხეთის დაბლობზე. ჯუმათის მონასტრის მონახულების შემდეგ ვისადილებთ და გავემგზავრებით ქ. ოზურგეთში სადაც დავბინავდებით ადგილობრივ სასტუმროში.\r\nII დღე _ საუზმის შემდეგ ვეწვევით მხარეთმცოდნეობის მუზემს, მუზეუმის დათვალიერების შემდეგ გავემგზავრებით კურორტ ბახმაროში, დავბანაკდებით კარვებში და ვისადილებთ. (სურვილის შემთხვევაში შესაძლებელია ერთ-ერთი მთიდან იხილოთ მზის ჩასვლის პროცესი, რომელიც ულამაზესი სანახაობაა  დღის ბოლოს დავისვენებთ კოცონთან.\r\nIII დღე', 2, '08-01-2022');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `title_en` varchar(30) NOT NULL,
  `title_ge` varchar(30) NOT NULL,
  `image` varchar(900) NOT NULL,
  `id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`title_en`, `title_ge`, `image`, `id`) VALUES
('Mountain', 'მთა', 'https://i.insider.com/5a271fbe7101ad7b9647b9e0?width=700', 1),
('Sea-side', 'სანაპირო', 'https://www.bonvoyagetravel.com/uploads/1/3/3/0/133015677/seychelles-gettyimages-1169388113_orig.jpeg', 2),
('Historical', 'ისტორიული', 'https://www.turebi.ge/uploads/photos/tours1/large/56621_1.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `phone_number` int(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `id` int(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `surname`, `phone_number`, `email`, `id`, `password`) VALUES
('a', 'a', 123, 'g@g.com', 6, '123'),
('sandro', 'gugunishvili', 1234, 'sandro@gmail.com', 7, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
