SELECT * FROM `country` WHERE Continent="South America";

SELECT Name, Population FROM `country` WHERE Name="Germany";

SELECT * FROM city 
JOIN country ON city.CountryCode=country.Code 
WHERE country.Name="Japan";

SELECT * FROM country 
WHERE Continent="Africa" 
ORDER BY Population DESC LIMIT 3;

SELECT name, LifeExpectancy 
FROM country 
WHERE 1000000<Population<5000000;

SELECT * FROM country 
JOIN countrylanguage ON country.Code=countrylanguage.CountryCode 
WHERE countrylanguage.Language="French" AND countrylanguage.IsOfficial = "T";

SELECT Title FROM Album
JOIN Artist ON Artist.ArtistId=Album.ArtistId
WHERE Artist.Name="AC/DC";

Select FirstName, LastName, Email FROM Customer 
WHERE Country="Brazil";

Select * FROM Playlist;

Select COUNT(*) FROM Track 
JOIN Genre ON Genre.GenreId=Track.GenreId 
WHERE Genre.Name="Rock";

Select * FROM Employee WHERE ReportsTo=2;

SELECT c.FirstName, c.LastName, SUM(i.Total) FROM Customer c
JOIN Invoice i ON i.CustomerId=c.CustomerId
GROUP BY c.FirstName,c.LastName;

CREATE TABLE Artists (
    Artist_ID int PRIMARY KEY,
    Name varchar(300),
    Birthdate date,
    Nationality varchar(100)
);

CREATE TABLE OilPaintings (
    Painting_ID int PRIMARY KEY,
    Artist_ID int,
    Date_Created date,
    Primary_Color varchar(255),
    Price decimal(10, 2),
    FOREIGN KEY (Artist_ID) REFERENCES Artists(Artist_ID)
);

CREATE TABLE Ceramics (
    Ceramic_ID int PRIMARY KEY,
    Artist_ID int,
    Date_Created date,
    Type varchar(255),
    Price decimal(10, 2),
    Primary_Color varchar(300),
    FOREIGN KEY (Artist_ID) REFERENCES Artists(Artist_ID)
);

INSERT INTO Artists (Artist_ID, Name, Birthdate, Nationality)
VALUES
    (1, 'SOOS', '1979-03-30', 'Dutch'),
    (2, 'Noa', '2003-10-25', 'Spanish'),
    (3, 'Anna', '2002-11-14', 'Russian')
    (4, 'Moi', '1981-04-14', 'Russian'),
    (5, 'Bay', '2003-11-1', 'Australian');

INSERT INTO OilPaintings (Painting_ID, Artist_ID, Date_Created, Primary_Color, Price)
VALUES
    (2379237, 4, '2016-03-30', 'red', 234.32 ),
    (3843905, 2, '2023-10-25', 'blue', 1222.40),
    (2340934, 5, '2002-11-14', 'purple', 432.65),
    (8579835, 2, '1981-04-14', 'purple', 765.34),
    (3452084, 3, '2003-11-1',  'green', 12345.43);

INSERT INTO Ceramics (Ceramic_ID, Artist_ID, Date_Created, Type, Price, Primary_Color)
VALUES
    (15, 1, '2019-03-30', 'bowl', 2452.23, 'pink'),
    (16, 4, '2020-10-25', 'vase', 98765.23, 'purple'),
    (17, 3, '2020-11-14', 'vase', 123.64, 'blue'),
    (18, 2, '2010-04-14', 'plate', 543.34, 'green'),
    (19, 5, '2018-11-1', 'mug', 1234567.89, 'blue');

SELECT * FROM `OilPaintings` 
JOIN Artists ON Artists.Artist_ID=OilPaintings.Artist_ID
WHERE Artists.Name="Noa";

SELECT * FROM `Ceramics` ORDER BY Price DESC; 

SELECT * FROM `OilPaintings` WHERE Primary_Color = "blue"; 
