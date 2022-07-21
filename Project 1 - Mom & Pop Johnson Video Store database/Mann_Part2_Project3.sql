--Populating Academy_Award table with at least five valid rows of data
INSERT into Academy_Award
VALUES (456, 'Action and Romance', 2022, 'Terrance Ross', 'Richard Jackson');
INSERT into Academy_Award
VALUES (621, 'Drama', 2017, 'Maxwell James', 'Wilson Taylor');
INSERT into Academy_Award
VALUES (889, 'Comedy', 2020, 'Lebron Curry', 'Frank Riddler');
INSERT into Academy_Award
VALUES (444, 'Thriller and Romance', 2010, 'Kyle Virk', 'Brandon Kaushal');
INSERT into Academy_Award
VALUES (201, 'Fantasy and Horror', 2005, 'Faraaz Meher', 'Pauline Games');

--Populating Academy_awardMovie table with at least five valid rows of data
INSERT into Academy_awardMovie
VALUES (100987, 97644, 56134);
INSERT into Academy_awardMovie
VALUES (100989, 97700, 67122);
INSERT into Academy_awardMovie
VALUES (101442, 97803, 68003);
INSERT into Academy_awardMovie
VALUES (102056, 99331, 71961);
INSERT into Academy_awardMovie
VALUES (103775, 99558, 75644);

--Populating Actors table with at least five valid rows of data
INSERT into Actors
VALUES (200000, 'Chris', 'Nick', 'Evans');
INSERT into Actors
VALUES (200001, 'Adolf', 'Frank', 'Thomas');
INSERT into Actors
VALUES (200002, 'Johnny', 'Rodriguez', 'Depp');
INSERT into Actors
VALUES (200003, 'George', 'Patrick', 'Clonzy');
INSERT into Actors
VALUES (200004, 'Smithson', 'Adrian', 'Myers');

--Populating Movies_of_Actors table with at least five valid rows of data
INSERT into Movies_of_Actors
VALUES (53000, 200000, 100987);
INSERT into Movies_of_Actors
VALUES (53001, 200001, 100989);
INSERT into Movies_of_Actors
VALUES (53002, 200003, 101442);
INSERT into Movies_of_Actors
VALUES (53003, 200004, 103775);
INSERT into Movies_of_Actors
VALUES (53004, 200002, 102056);

--Populating Charges_INFO table with at least five valid rows of data
INSERT into Charges_INFO
VALUES (440775, 'Movie Admin Charge', 10);
INSERT into Charges_INFO
VALUES (441886, 'Movie Surcharges', 15);
INSERT into Charges_INFO
VALUES (442511, 'Movie Tax Charges', 20);
INSERT into Charges_INFO
VALUES (443993, 'Movie Holiday Charge', 35);
INSERT into Charges_INFO
VALUES (444380, 'After Hours Charge', 18);

--Populating Rental_Charges table with at least five valid rows of data
INSERT into Rental_Charges
VALUES (1012, 440775, 375);
INSERT into Rental_Charges
VALUES (3876, 441886, 821);
INSERT into Rental_Charges
VALUES (4411, 442511, 650);
INSERT into Rental_Charges
VALUES (7782, 443993, 910);
INSERT into Rental_Charges
VALUES (2119, 444380, 404);

--Populating Customer table with at least five valid rows of data
INSERT into Customer
VALUES (800900, 'Ginger', 'Jackson', '2489 Prince Philip Drive', '20907', 'January 1, 1982', '324-678-1121');
INSERT into Customer
VALUES (655188, 'Lauren', 'Bloom', '12399 Quince Orchard Drive', '90231', 'June 15, 1993', '443-895-1440');
INSERT into Customer
VALUES (228961, 'Tyler', 'Herro', '3456 Darnes Avenue', '33142', 'March 22, 1995', '217-133-9000');
INSERT into Customer
VALUES (103884, 'Gabe', 'Ramirez', '43221 West Gude Street', '85022', 'September 8, 1980', '667-887-2188');
INSERT into Customer
VALUES (777512, 'Miranda', 'Turner', '7234 Old Baltimore Street', '20866', 'December 4, 1977', '214-998-1932');

--Populating Directors table with at least five valid rows of data
INSERT into Directors
VALUES (6000, 'James', 'Wiseman', 'Petrilli');
INSERT into Directors
VALUES (6001, 'Larry', 'Demantre', 'Junior');
INSERT into Directors
VALUES (6002, 'Jose', 'Samuel', 'Torres');
Insert into Directors
VALUES (6003, 'Yumin', 'Jao', 'Sung');
INSERT into Directors
VALUES (6004, 'David', 'Campbell', 'Fredericksburg');

--Populating Movies_of_Directors table with at least five valid rows of data
INSERT into Movies_of_Directors
VALUES (8300, 3322, 100987);
INSERT into Movies_of_Directors
VALUES (8301, 5566, 101442);
INSERT into Movies_of_Directors
VALUES (8302, 7882, 100989);
INSERT into Movies_of_Directors
VALUES (8303, 0224, 103775);
INSERT into Movies_of_Directors
VALUES (8304, 6299, 102056);

--Populating Distributors table with at least five valid rows of data
INSERT into Distributors
VALUES (110000, 'Wells Technology Productions', 1678987);
INSERT into Distributors
VALUES (510000, 'VCX Entertainment', 789331);
INSERT into Distributors
VALUES (724930, 'INDIES Retrospective Productions', 5222880);
INSERT into Distributors
VALUES (418174, 'WIXI Technology Entertainment Network', 8909466);
INSERT into Distributors
VALUES (136333, 'TY Tech Productions', 500122);

--Populating Movie table with at least five valid rows of data
INSERT into Movie
VALUES (54321, 136333, 4420, 'The Minions', 'Comedy', 180, 'PG-13');
INSERT into Movie
VALUES (28119, 724930, 3388, 'Last Ride Home', 'Horror', 240, 'R');
INSERT into Movie
VALUES (10844, 510000, 7711, 'Over and Under the Hill', 'Action and Romance', 150, 'R');
INSERT into Movie
VALUES (22388, 418174, 9255, 'Top Gun: Maverick', 'Action', 240, 'PG-13');
INSERT into Movie
VALUES (40185, 110000, 1000, 'The Gray Man', 'Action and Thriller', 210, 'R');

--Populating Rentals table with at least five valid rows of data
INSERT into Rentals
VALUES (1012, 567890, TO_DATE('2018-12-11','YYYY-MM-DD'), TO_DATE('2019-03-15','YYYY-MM-DD'), '5:00 PM at Best Buy', '1:30 PM at Best Buy', 15.02, 1.34);
INSERT into Rentals
VALUES (7782, 667301, TO_DATE('2020-09-23', 'YYYY-MM-DD'), TO_DATE('2020-12-26', 'YYYY-MM-DD'), '7:32 PM at Walmart SuperCenter', '4:15 PM at Walmart SuperCenter', 14.30, 2);
INSERT into Rentals
VALUES (2119, 383232, TO_DATE('2016-04-08', 'YYYY-MM-DD'), TO_DATE('2017-02-13', 'YYYY-MM-DD'), '12:45 PM at Meijers', '11:10 AM at Meijers', 17.23, 4.00);
INSERT into Rentals
VALUES (3876, 449942, TO_DATE('2021-10-15', 'YYYY-MM-DD'), TO_DATE('2021-11-17', 'YYYY-MM-DD'), '1:20 PM at BlockBuster', '6:30 PM at BlockBuster', 10.12, 3);
INSERT into Rentals
VALUES (4411, 514208, TO_DATE('2019-06-18', 'YYYY-MM-DD'), TO_DATE('2019-12-20', 'YYYY-MM-DD'), '7:00 AM at Target Redbox', '4:30 PM at CVS Redbox', 8.17, 7);
