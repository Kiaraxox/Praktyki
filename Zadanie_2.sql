INSERT INTO autorzy (Imie, Nazwisko) VALUES 
('Scott', 'Hanselman'),
('Devin', 'Rader'),
('Badrinarayanan', 'Lakshmiraghavan'),
('Jamie', 'Kurtz'),
('Brian', 'Wortman'),
('John C.','Shovic'),
('Ryan', 'Benedetti'),
('Ronan', 'Cranley'),
('Lynn', 'Beighley'),
('Unknown', 'Unknown'),
('Keerti', 'Kotaru'),
('Someone', 'Unknown');

INSERT INTO ksiazki (Tytul, IDAutora) VALUES ('Professional ASP.NET 4 in C# and VB', 1),
('Professional ASP.NET 4 in C# and VB', 2),
('Pro ASP.NET Web API Security', 3),
('ASP.NET Web API 2, 2nd Edition', 4),
('ASP.NET Web API 2, 2nd Edition', 5),
('Raspberry Pi IoT Projects', 6),
('Head First jQuery', 7),
('Head First jQuery', 8),
('Head First SQL', 9),
('Book without author', 10),
('Material Design implementation with AngularJS', 11),
('Book without ISBN', 12);

INSERT INTO szczegoloweinformacje (IDKsiazki, ISBN, Opis, Okladka) VALUES (1, '978-1-4571-0402-2', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 'professional_asp.net_4_in_c_and_vb.jpg'),

(2, '978-1-4571-0402-2', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', 'professional_asp.net_4_in_c_and_vb.jpg'),

(3, '978-1-4302-5782-0', 'ASP.NET Web API is a key part of ASP.NET MVC 4 and the platform of choice for building RESTful services that can be accessed by a wide range of devices. Everything from JavaScript libraries to RIA plugins, RFID readers to smart phones can consume your services using platform-agnostic HTTP. Fortunately, ASP.NET Web API provides a simple, robust security solution of its own that fits neatly within the ASP.NET MVC programming model and secures your code without the need for SOAP, meaning that there is no limit to the range of devices that it can work with – if it can understand HTTP, then it can be secured by Web API. These SOAP-less security techniques are the focus of this book.', 'pro_asp.net_web_api_security.jpg'),

(4, '978-1-484201-10-7', 'The ASP.NET MVC Framework has always been a good platform on which to implement REST-based services, but the introduction of the ASP.NET Web API Framework raised the bar to a whole new level. Now in release version 2.1, the Web API Framework has evolved into a powerful and refreshingly usable platform. This concise book provides technical background and guidance that will enable you to best use the ASP.NET Web API 2 Framework to build world-class REST services.', 'asp.net_web_api_2_2nd_edition.jpg'),

(5, '978-1-484201-10-7', 'The ASP.NET MVC Framework has always been a good platform on which to implement REST-based services, but the introduction of the ASP.NET Web API Framework raised the bar to a whole new level. Now in release version 2.1, the Web API Framework has evolved into a powerful and refreshingly usable platform. This concise book provides technical background and guidance that will enable you to best use the ASP.NET Web API 2 Framework to build world-class REST services.', 'asp.net_web_api_2_2nd_edition.jpg'),

(6, '978-1-484213-78-0', 'This book is designed for entry-through-intermediate-level device designers who want to build their own Internet of Things (IoT) projects for prototyping and proof-of-concept purposes. Expert makers may also find interesting new approaches. Raspberry Pi IoT Projects contains the tools needed to build a prototype of your design, sense the environment, communicate with the Internet (over the Internet and Machine to Machine communications) and display the results.', 'raspberry_pi_iot_projects.jpg'),

(7, '978-1-4493-9321-2', 'Want to add more interactivity and polish to your websites? Discover how jQuery can help you build complex scripting functionality in just a few lines of code. With Head First jQuery, you''ll quickly get up to speed on this amazing JavaScript library by learning how to navigate HTML documents while handling events, effects, callbacks, and animations. By the time you''ve completed the book, you''ll be incorporating Ajax apps, working seamlessly with HTML and CSS, and handling data with PHP, MySQL and JSON.', 'head_first_jquery.jpg'),

(8, '978-1-4493-9321-2', 'Want to add more interactivity and polish to your websites? Discover how jQuery can help you build complex scripting functionality in just a few lines of code. With Head First jQuery, you''ll quickly get up to speed on this amazing JavaScript library by learning how to navigate HTML documents while handling events, effects, callbacks, and animations. By the time you''ve completed the book, you''ll be incorporating Ajax apps, working seamlessly with HTML and CSS, and handling data with PHP, MySQL and JSON.', 'head_first_jquery.jpg'),

(9, '978-0-596-52684-9', 'Maybe you''ve written some simple SQL queries to interact with databases. But now you want more, you want to really dig into those databases and work with your data. Head First SQL will show you the fundamentals of SQL and how to really take advantage of it.', 'head_first_sql.jpg'),

(10, '978-0-596-52684-9', '', 'head_first_sql.jpg'),

(11, '978-1-484221-89-1', 'Building web and mobile apps that are interactive, fluid and provide consistent experience across devices ranging from desktops, tablets and smart phones is challenging. User Interface (UI) elements need to adapt to various screen sizes and yet the code behind need to be reusable and follow best of coding practices. Material Design with AngularJS details out building such sophisticated web and mobile apps by combining Material Design and AngularJS concepts.', 'material_design_implementation_with_angularjs.jpg'),

(12, '', '', 'head_first_sql.jpg');


INSERT INTO magazyn (IDKsiazki, Cena, Ilosc) VALUES (1, 57.00, 550),
(2, 57.00, 550),
(3, 157.00, 100),
(4, 112.00, 0),
(5, 112.00, 0),
(6, 35.50, 13),
(7, 49.90, 146),
(8, 49.90, 146),
(9, 31.00, 54),
(10, 31.00, 54),
(11, 110.00, 36),
(12, 31.00, 54);